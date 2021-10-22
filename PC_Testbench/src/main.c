#include <stdlib.h>
#include <stdint.h>

/* Wave-File Read/Write/Info by W. Danny Gillam:
   https://faculty.fiu.edu/~wgillam/wavfiles.html */
#include "wav.h"

int main() {
    struct wav_info info;

    const uint_fast8_t BUFFERSIZE = 16;

    const char* input_file = "../../test_data/Ensoniq_Dope_77.wav";
    const char* output_file = "../../test_data/Ensoniq_Dope_77_out.wav";
    
    printf("Hello, World!\n");
    
    FILE* fp = fopen(input_file,"rb");
    if(fp == 0) {
        fprintf(stderr,"Error with fseek in read_wav_info in wav.c\n");
        exit(EXIT_FAILURE);
    }

    read_wav_info(&info, fp);

    print_wav_info(&info);

    FILE* fwp = fopen(output_file, "wb");
    write_wav_hdr(&info, fwp);
    
    int_fast32_t buffer[BUFFERSIZE][info.num_channels];

    uint_fast32_t batches = info.num_samples / BUFFERSIZE;
    uint_fast8_t rest = info.num_samples % BUFFERSIZE;

    uint32_t counter_read = 0;
    uint32_t counter_write = 0;

    for (uint_fast32_t i = 0; i < (batches + 1); i++)
    {
        for (uint_fast8_t j = 0; j < BUFFERSIZE; j++)
        {
            if ((i >= batches) && (j >= rest))
            {
                for (uint_fast8_t k = 0; k < info.num_channels; k++)
                {
                    buffer[j][k] = 0;
                }
            } else {
                read_sample(&info, fp, buffer[j]);
                counter_read++;
            }
        }

        /* RUN DUT HERE ON BUFFER */

        for (uint_fast8_t j = 0; j < BUFFERSIZE; j++)
        {
            if ((i < batches) || (j < rest))
            {
                write_sample(&info, fwp, buffer[j]);
                counter_write++;
            }
        }
    }

    printf("Read: %d times, Write: %d times\n", counter_read, counter_write);

    fclose(fp);
    fclose(fwp);
}
