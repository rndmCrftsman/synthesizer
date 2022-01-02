#ifndef __H_D_DELAY
#define __H_D_DELAY

#include <stdint.h>
#include "config.h"

typedef struct dd_config
{
    uint_fast16_t sample_delay;
    uint_fast32_t *samplebuffer_left;
    uint_fast32_t *samplebuffer_right;
};

inline struct dd_config d_delay_config(uint_fast16_t sample_delay);
void d_delay(uint_fast32_t sample_delay, uint_fast32_t input_buffer[BUFFERSIZE][2], uint_fast32_t output_buffer[BUFFERSIZE][2]);

#endif // __H_D_DELAY