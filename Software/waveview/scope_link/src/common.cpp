#include "common.hpp"
#include "logger.hpp"

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

bool loadFromFile ( char* filename, boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ)
{
    std::ifstream stream;
    stream.open(filename);

    char delim = '\n';
    std::string tmp;

    INFO << "Loading from file " << filename;

    buffer* tempBuffer;
    tempBuffer = bufferAllocator.allocate(1);
    bufferAllocator.construct(tempBuffer);
    uint32_t tmpBufPos = 0;

    if (!stream.is_open()) {
        ERROR << "Stream is closed. Expects relative path. Run from waveview folder";
        return false;
    }

    while (std::getline(stream, tmp, delim)) {
        DEBUG << "Parsing line into buffer";
        // Parse the line into a buffer
        typedef boost::tokenizer<boost::char_separator<char>> tokenizer;
        boost::char_separator<char> sep{","};
        tokenizer tok{tmp, sep};
        for (const auto &t : tok) {

            if (std::stoi(t) > 255) {
                ERROR << "Number greater than 255";
            } else if (std::stoi(t) > INT8_MAX) {
                ERROR << "Number greater than 127 is converted to negative";
            } else if ((int8_t)std::stoi(t) < -128) {
                ERROR << "Number less than -128";
            }

            tempBuffer->data[tmpBufPos] = (int8_t)std::stoi(t);

            tmpBufPos++;
            if (tmpBufPos == BUFFER_SIZE) {
                DEBUG << "Adding buffer to queue from file";
                // Buffer is now full push it
                outputQ->push(tempBuffer);

                // Create a new one to fill
                tempBuffer = bufferAllocator.allocate(1);
                bufferAllocator.construct(tempBuffer);
                tmpBufPos = 0;
            }
        }
    }
    // Deleted any partially filled buffer
    bufferAllocator.deallocate(tempBuffer, 1);

    return true;
}

