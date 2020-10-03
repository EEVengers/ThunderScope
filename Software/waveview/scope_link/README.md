# Scope Link

## Setup

You will need to download and install the D3XX ftdi drivers
* They can be found on the [ftdi website](https://www.ftdichip.com/Drivers/D3XX.htm).
    * Extract the files to the correct locations
    * Run the following commands
```
sudo cp libft3xx.so /usr/lib/
sudo cp libft3xx.so.0.5.21 /usr/lib/
sudo cp 51-ftd3xx.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules
```

## Running

Only 2 command line arguments are implemented currently

### Test Sinc Interpolation
Not quite sure what this does yet
```
./scope --TestSync
```

### Test Data Throughput
Not quite sure what this does yet either
```
./scope --TestDataThrougput
```
