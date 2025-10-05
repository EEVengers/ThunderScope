import pyvisa
import serial
import time

meas_p = ["+VUSB_M2","+VUSB_M2","3V3","3V3","+1V0","+1V0","VCM","3V3_ACQ","+VUSB_ACQ","+VUSB_ACQ",
          "+1V8_LDO","+1V8_LDO","+1V2_MGT","+1V8","+1V8","+2V5","+2V5","+2V5_ACQ","+2V5_ACQ",
          "+1V8_ACQ","+12V_PCIe","+12V_PCIe","BIAS_4","BIAS_3","BIAS_2","BIAS_1","+5V_PGA",
          "+5V_PGA","+3V3_PGA","+VBIAS","-5V","-5V","-VBIAS","+5V3_CP","+5V3_CP","+5V",
          "+5V3_LDO","+5V3_LDO","+VUSB","+VUSB","+VUSB_5V3","+VUSB_5V3"]

meas_n = ["GND","+VUSB_M2_R","GND","3V3_R","GND","+1V0_R","GND","GND","GND","+VUSB_ACQ_R",
          "GND","+1V8_LDO_R","GND","GND","+1V8_R","GND","+2V5_R","GND","+2V5_ACQ_R",
          "GND","GND","+12V_PCIe_R","GND","GND","GND","GND","GND",
          "+5V_PGA_R","GND","GND","GND","-5V_R","GND","GND","+5V3_CP_R","GND",
          "GND","+5V3_LDO_R","GND","+VUSB_R","GND","+VUSB_5V3_R"]

ser = serial.Serial('COM9', 9600, timeout=1)

rm = pyvisa.ResourceManager()
k2000 = rm.open_resource('GPIB0::2::INSTR')

with open("mux_scan_measurements.csv", "w") as f:
    for x in range (42):
        ser.write((str(x+1)+"\n").encode('utf-8'))
        time.sleep(0.05)
        voltage_meas = k2000.query_ascii_values(":measure:voltage?")
        f.write(meas_p[x] + "," + meas_n[x] + "," + str(voltage_meas[0]) + "\n")
        time.sleep(0.05)