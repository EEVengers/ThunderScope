#include "thunderscopehw_private.h"

#ifdef WIN32
typedef void (*thunderscopehw_iterate_device_callback)(PSP_DEVICE_INTERFACE_DETAIL_DATA dev_detail, void* context);
int thunderscopehw_iterate_devices(thunderscopehw_iterate_device_calback cb, void* context)
{
	GUID guid = GUID_DEVINTERACE_XDMA;
	HDEVINFO device_info = SetupDiGetClassDevs((LPGUID)&guid, NULL, NULL, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE);
	if (device_info == INVALID_HANDLE_VALUE) {
		fprintf(stderr, "GetDevices INVALID_HANDLE_VALUE\n");
		return 0;
	}
	SP_DEVICE_INTERFACE_DATA device_interface;
	device_interface.cbSize = sizeof(SP_DEVICE_INTERFACE_DATA);
	// enumerate through devices
	DWORD index;
	for (index = 0; SetupDiEnumDeviceInterfaces(device_info, NULL, &guid, index, &device_interface); ++index) {
		// get required buffer size
		ULONG detailLength = 0;
		if (!SetupDiGetDeviceInterfaceDetail(device_info, &device_interface, NULL, 0, &detailLength, NULL) && GetLastError() != ERROR_INSUFFICIENT_BUFFER) {
			fprintf(stderr, "SetupDiGetDeviceInterfaceDetail - get length failed\n");
			break;
		}
		// allocate space for device interface detail
		PSP_DEVICE_INTERFACE_DETAIL_DATA dev_detail = (PSP_DEVICE_INTERFACE_DETAIL_DATA)HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, detailLength);
		if (!dev_detail) {
			fprintf(stderr, "HeapAlloc failed\n");
			break;
		}
		dev_detail->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA);

		// get device interface detail
		if (!SetupDiGetDeviceInterfaceDetail(device_info, &device_interface, dev_detail, detailLength, NULL, NULL)) {
			fprintf(stderr, "SetupDiGetDeviceInterfaceDetail - get detail failed\n");
			HeapFree(GetProcessHeap(), 0, dev_detail);
			break;
		}
		(*cb)(dev_detail);
		HeapFree(GetProcessHeap(), 0, dev_detail);
	}

	SetupDiDestroyDeviceInfoList(device_info);
}

struct thunderscopehw_scan_callback_context {
	uint64_t* scope_ids;
	int max_ids;
	int count;
};

static int thunderscopehw_scan_callback(PSP_DEVICE_INTERFACE_DETAIL_DATA dev_detail, void* context) {
	struct thunderscopehw_scan_callback_context* data = context;
	if (data->count < data->max_ids) {
		*(data->scope_ids) = data->count;
	}
	data->count++;
}

int thunderscopehw_scan(uint64_t* scope_ids, int max_ids)
{
	struct thunderscopehw_scan_callback_context context;
	context.scope_ids = scope_ids;
	context.max_ids = max_ids;
	context.count = 0;
	thunderscopehw_iterate_devices(&thunderscopehw_scan_callback, (void*)&context);
	return data->count;
}

struct thunderscopehw_connect_callback_context {
	uint64_t scope_id;
	ThunderScopeHW* ts;
	int count;
};

static int thunderscopehw_connect_callback(PSP_DEVICE_INTERFACE_DETAIL_DATA dev_detail, void* context) {
	struct thunderscopehw_connect_callback_context* data = context;
	if (data->count == data->scope_id) {
		char connection_string[256];
		sprintf(connection_string,"%s\\%s",dev_detail->DevicePath, user_device);
		data->ts->user_handle = CreateFile(connection_string, GENERIC_READ | GENERIC_WRITE, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);

		if (data->ts->user_handle == INVALID_HANDLE_VALUE)
			fprintf(stderr, "Failed to open user handle, win32 error code: %d\n", GetLastError());

		sprintf(connection_string,"%s\\%s",dev_detail->DevicePath, c2h_0_device);
		data->ts->c2h_0_handle = CreateFile(connection_string, GENERIC_READ | GENERIC_WRITE, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);

		if (data->ts->c2h_0_handle == INVALID_HANDLE_VALUE)
			fprintf(stderr, "Failed to open c2h_0 handle, win32 error code: %d\n", GetLastError());

		if (data->ts->c2h_0_handle != INVALID_HANDLE_VALUE &&
		    data->ts->user_handle != INVALID_HANDLE_VALUE) {
			data->ts->connected = true;
		}


	}
	data->count++;
}

int thunderscopehw_connect(struct ThunderScopeHW* ts, uint64_t scope_id)
{
	struct thunderscopehw_connect_callback_context context;
	context.ts = ts;
	context.scope_id = scope_id;
	context.count = 0;
	thunderscopehw_iterate_devices(&thunderscopehw_connect_callback, (void*)&context);
	if (!ts->connected)
		return THUNDERSCOPEHW_STATUS_OPEN_FAILED;
	return thunderscopehw_initboard(ts);
}

int thunderscopehw_disconnect(struct ThunderScopeHW* ts)
{
	// adc power down
	// datamover reg = 0

	if (ts->user_handle != INVALID_USER_HANDLE) {
		CloseHandle(ts->user_handle);
		ts->user_handle = INVALID_USER_HANDLE;
	}
	if (ts->c2h_0_handle != INVALID_USER_HANDLE) {
		CloseHandle(ts->c2h_0_handle);
		ts->c2h_0_handle = INVALID_USER_HANDLE;
	}
	ts->connected = false;
}

int thunderscopehw_read_handle(struct ThunderScopeHW* ts, HANDLE h, uint8_t* data, uint64_t addr, uint64_t bytes)
{
	LARGE_INTEGER offset;
	offset.QuadPart = addr;
	// set file pointer to offset of target address within PCIe BAR
	if (INVALID_SET_FILE_POINTER == SetFilePointerEx(hPCIE, offset, NULL, FILE_BEGIN)) {
		fprintf(stderr, "Error setting file pointer for PCIeLink::_Read(), win32 error code: %d\n", GetLastError());
		return false;
	}

	// read from device into buffer
	DWORD bytesRead;
	if (!ReadFile(hPCIE, buff, bytes, &bytesRead, NULL)) {
		fprintf(stderr, "read handle failed, win32 error code: %d\n", GetLastError());
		return false;
	}
	return true;
}

int thunderscopehw_write_handle(struct ThunderScopeHW* ts, HANDLE h, uint8_t* data, uint64_t addr, uint64_t bytes)
{
	LARGE_INTEGER offset;
	offset.QuadPart = address;
	// set file pointer to offset of target address within PCIe BAR
	if (INVALID_SET_FILE_POINTER == SetFilePointerEx(hPCIE, offset, NULL, FILE_BEGIN)) {
		fprintf(stderr, "Error setting file pointer for PCIeLink::_Read(), win32 error code: %d\n", GetLastError());
		return false;
	}

	// write from buffer to device
	DWORD bytesWritten;
	if (!WriteFile(hPCIE, buff, bytesToWrite, &bytesWritten, NULL)) {
		fprintf(stderr, "write handle failed, win32 error code: %d\n", GetLastError());
		return false;
	}
	return true;
}

#endif
