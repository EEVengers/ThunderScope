#!/bin/bash

transferSize=$1
transferCount=$2
channelPairs=$3

tool_path=../tools

testError=0

# Run the PCIe DMA streaming test
echo "Info: Running PCIe DMA streaming test"
echo "      transfer size:  $transferSize"
echo "      transfer count: $transferCount"
echo "Info: Only channels that have both h2c and c2h will be tested as the other"
echo "      interfaces are left unconnected in the PCIe DMA example design. "

# Setup the DMA c2h channels to wait for incomming data from the h2c channels.
for ((i=0; i<$channelPairs; i++))
do
  rm -f data/output_datafile${i}_4K.bin
  echo "Info: DMA setup to read from c2h channel $i. Waiting on write data to channel $i."
  $tool_path/dma_from_device -d /dev/xdma0_c2h_${i} -f data/output_datafile${i}_4K.bin -s $transferSize -c $transferCount &
done

# Wait to make sure the DMA is ready to receive data.
sleep 1s

# Setup the DMA to write to the h2c channels. Data will be push out the h2c channel
# and then read back through the c2h channel and written to the output data file.
for ((i=0; i<$channelPairs; i++))
do
  echo "Info: Writing to h2c channel $i. This will also start reading data on c2h channel $i."
  $tool_path/dma_to_device -d /dev/xdma0_h2c_${i} -f data/datafile${i}_4K.bin -s $transferSize -c $transferCount &
done

# Wait for the current transactions to complete
echo "Info: Wait the for current transactions to complete."
wait

# Verify that the written data matches the read data.
for ((i=0; i<$channelPairs; i++))
do
  echo "Info: Checking data integrity."
  cmp data/output_datafile${i}_4K.bin data/datafile${i}_4K.bin -n $transferSize
  returnVal=$?
  if [ ! $returnVal == 0 ]; then
    echo "Error: The data written did not match the data that was read."
    echo "       write data file: data/datafile${i}_4K.bin"
    echo "       read data file:  data/output_datafile${i}_4K.bin"
    testError=1
  else
    echo "Info: Data check passed for c2h and h2c channel $i."
  fi
done

# Exit with an error code if an error was found during testing
if [ $testError -eq 1 ]; then
  echo "Error: Test completed with Errors."
  exit 1
fi

# Report all tests passed and exit
echo "Info: All PCIe DMA streaming tests passed."
exit 0
