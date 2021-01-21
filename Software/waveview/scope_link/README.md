# Scope Link

## Setup

You will need to download and install the D3XX ftdi drivers
* They can be found on the [ftdi website](https://www.ftdichip.com/Drivers/D3XX.htm).
    * Extract the files to the correct locations
    * Run the following commands
    * Ensure that the lib exists at scope_link/lib/FTD3XXLibrary_v1.3.0.4/x64/FTD3XX.lib (The lib file to move over is the one that is ~13kb in size)
```


//Linux instructions --Legacy
sudo cp libftd3xx.so /usr/lib/
sudo cp libftd3xx.so.0.5.21 /usr/lib/
sudo cp 51-ftd3xx.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules
```

## Running

Only 2 command line arguments are implemented currently

### Test Sinc Interpolation -- TEST FUNCTION DOESNT REALLY DO ANYTHING FOR THE FINAL PRODUCT
Not quite sure what this does yet
```
./scope --TestSync
```

### Test Data Throughput -- TEST FUNCTION DOESNT REALLY DO ANYTHING FOR THE FINAL PRODUCT
Not quite sure what this does yet either
```
./scope --TestDataThrougput
```
