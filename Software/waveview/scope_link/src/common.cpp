#include "common.hpp"

// Create the buffer pool to get new buffer space from
// TODO Put a cap on the max size and initialize with a proper estimate
boost::pool_allocator<buffer,
    boost::default_user_allocator_new_delete,
    boost::details::pool::default_mutex,
    64, 0> bufferAllocator;

boost::pool_allocator<int8_t,
    boost::default_user_allocator_new_delete,
    boost::details::pool::default_mutex,
    DEFAULT_WINDOW * BUFFER_SIZE, 0> windowAllocator;

uint32_t windowSize = DEFAULT_WINDOW;
uint32_t persistanceSize = 1;

char* inputFile = NULL;
char* outputFile = NULL;

/*******************************************************************************
 * writeToCsv()
 *
 * Writes the persistance buffer's data to CSV file.
 *
 * Arguments:
 *   char* filename - Filename for output to be written to.
 *   int8_t* data - Pointer to data to be written to the file.
 *   uint32_t row - How many rows to copy from beginnig of the data pointer.
 *   uint32_t col - How many columns to copy from each row.
 *
 * Return:
 *   uint32_t - returns 0 on success.
 ******************************************************************************/
uint32_t writeToCsv (char* filename, int8_t* data, uint32_t row, uint32_t col, int8_t numCh)
{
    std::ofstream file;
    file.open(filename);

    uint32_t j = 0;

    // Row
    for (uint32_t i = 0; i < row; i++ ) {
        // Column
        for (j = 0; j < col - 1; j++ ) {
            file << (int)*(data + (j + i * windowSize * numCh)) << ",";
        }
        file << (int)*(data + (j + i * windowSize * numCh));
        file << std::endl;
    }

    file.close();
    return 0;
}

/*******************************************************************************
 * bufferFunctor()
 *
 * deallocates the buffer passed to it.
 *
 * Arguments:
 *   buffer* a - The buffer to deallocate
 * Return:
 *   None
 ******************************************************************************/
void bufferFunctor(buffer* a)
{
    bufferAllocator.deallocate(a, 1);
}

