#include "d_delay.h"

void d_delay(uint_fast32_t sample_delay, uint_fast32_t input_buffer[BUFFERSIZE][2], uint_fast32_t output_buffer[BUFFERSIZE][2]) {
    static uint_fast32_t delayed_buffer[BUFFERSIZE][2];
}