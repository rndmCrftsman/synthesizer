#include <soundio/soundio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <math.h>
#include <string.h>

/* Wave-File Read/Write/Info by W. Danny Gillam:
   https://faculty.fiu.edu/~wgillam/wavfiles.html */
#include "config.h"
#include "wav.h"
#include "sound.h"
// #include "d_delay.h"

// static const int BUFFERSIZE = 16;
static const char* input_file = "../test_data/synth.wav";
static const char* output_file = "../test_data/synth_out.wav";

static struct wav_info info;
static int replay_active = false;
static FILE* f_replay = NULL;

static const float PI = 3.1415926535f;
static float seconds_offset = 0.0f;

static void write_callback(struct SoundIoOutStream *outstream, int frame_count_min, int frame_count_max);

int main() {    
    FILE* fp = fopen(input_file,"rb");
    if(fp == 0) {
        fprintf(stderr,"Error with fseek in read_wav_info in wav.c\n");
        exit(EXIT_FAILURE);
    }

    // FILE* f_csv = fopen("Ensoniq_Dope_77.csv", "w");
    // if(f_csv == 0) {
    //     printf("Could not open csv-file");
    //     exit(EXIT_FAILURE);
    // }

    read_wav_info(&info, fp);

    print_wav_info(&info);

    FILE* fwp = fopen(output_file, "wb");
    write_wav_hdr(&info, fwp);
    
    int_fast32_t buffer[BUFFERSIZE][2];
    static int_fast32_t last_buffer[BUFFERSIZE][2];

    uint_fast32_t batches = info.num_samples / BUFFERSIZE;
    uint_fast32_t rest = info.num_samples % BUFFERSIZE;

    uint32_t counter_read = 0;
    uint32_t counter_write = 0;

    for (uint_fast32_t i = 0; i < (batches + 1); i++)
    {
        if(i >= batches) {
            for (uint_fast32_t j = 0; j < BUFFERSIZE; j++)
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
        } else {
            read_sample_buffer_int32(&info, fp, buffer);
            counter_read += BUFFERSIZE;
        }

        /* RUN DUT HERE ON BUFFER */



        for (uint_fast32_t j = 0; j < BUFFERSIZE; j++)
        {
            if ((i < batches) || (j < rest))
            {
                write_sample(&info, fwp, buffer[j]);
                counter_write++;
            }
        }

        for (uint_fast32_t k = 0; k < BUFFERSIZE; k++)
        {
            last_buffer[k][0] = buffer[k][0];
            last_buffer[k][1] = buffer[k][1];
        }
        

    //     for (uint_fast8_t k = 0; k < BUFFERSIZE; k++)
    //     {
    //         char string_to_write[100];
    //         // sprintf(string_to_write, "%i, %i\n", (int16_t) buffer[k][0], (int16_t) buffer[k][1]);
    //         sprintf(string_to_write, "%i\n", (int16_t) buffer[k][0]);
    //         // printf("size: %li", strlen(string_to_write));
    //         fwrite(string_to_write, 1, strlen(string_to_write), f_csv);
    //         // int16_t casted = (int16_t) buffer[k][0];
    //         // int32_t recasted = (int32_t) casted;
    //         // printf("before: %li, after: %i, recasted: %i\n", buffer[k][0], casted, recasted);
    //     }
    }

    printf("Read: %d times, Write: %d times\n", counter_read, counter_write);

    fclose(fp);
    fclose(fwp);

    // fclose(f_csv);

    f_replay = fopen(output_file, "rb");

    if(f_replay == 0) {
        fprintf(stderr,"Error with playback\n");
        exit(EXIT_FAILURE);
    }

    read_wav_info(&info, f_replay);

    replay_active = true;

    // Play (NOT WORKING)
    setup_soundio(&write_callback);

    // WILL NEVER BE EXECUTED SINCE IN sound.c IS A BLOCKING FOR-LOOP!

    while(replay_active) {
        ;
    }
    
    // replay_active = false;
    
    fclose(f_replay);

}

static void write_callback(struct SoundIoOutStream *outstream,
        int frame_count_min, int frame_count_max)
{
    const struct SoundIoChannelLayout *layout = &outstream->layout;
    float float_sample_rate = outstream->sample_rate;
    float seconds_per_frame = 1.0f / float_sample_rate;
    struct SoundIoChannelArea *areas;
    int frames_left = 60000;
    if(frames_left > frame_count_max) {
        frames_left = frame_count_max;
    }
    int err;

    // printf("frames min: %d, frames max: %d\n", frame_count_min, frame_count_max);

    // if (frame_count_max < BUFFERSIZE || frame_count_min > BUFFERSIZE) {
    //     fprintf(stderr, "Buffersize not allowed by libsoundio/driver\n");
    //     exit(1);
    // }

    while (frames_left > 0) {
        int frame_count = frames_left;

        if ((err = soundio_outstream_begin_write(outstream, &areas, &frame_count))) {
            fprintf(stderr, "%s\n", soundio_strerror(err));
            printf("%s\n", soundio_strerror(err));
            exit(1);
        }

        if (!frame_count)
            break;

        // float pitch = 220.0f;
        // float radians_per_second = pitch * 2.0f * PI;
        // for (int frame = 0; frame < frame_count; frame += 1) {
        //     float sample = sinf((seconds_offset + frame * seconds_per_frame) * radians_per_second);
        //     for (int channel = 0; channel < layout->channel_count; channel += 1) {
        //         float *ptr = (float*)(areas[channel].ptr + areas[channel].step * frame);
        //         *ptr = sample;
        //     }
        // }
        // seconds_offset = fmodf(seconds_offset + seconds_per_frame * frame_count, 1.0f);

        // printf("left: %i, count: %in", frames_left, frame_count);
        uint32_t batches = frame_count / BUFFERSIZE + 1;
        // printf("batches: %i\n", batches);
        uint32_t num_samples_read;
        float data[BUFFERSIZE][info.num_channels];
        float sample;
        for (int batch = 0; batch < batches; batch++) {
            num_samples_read = read_sample_buffer_float(&info, f_replay, BUFFERSIZE, data);
            for (uint32_t s = 0; s < BUFFERSIZE; s++) {
                // data[s][0] = -4000;
                // if((batch % 20) >= 10) data[s][0] *= -1;
                if(s + batch*BUFFERSIZE < frame_count) {
                    // int16_t sample_int = 0;
                    if(s < num_samples_read) {
                        // sample_int = (int16_t) data[s][0]; //  -4000 + 500*s;
                        sample = data[s][0];
                        // printf("sample: %0.4f\n", sample);
                    }
                    // float sample = ((float) sample_int / INT16_MAX);
                    // printf("sample int: %i, after: %.4f\n", sample_int, sample);
                    for (int channel = 0; channel < layout->channel_count; channel += 1) {
                        float *ptr = (float*)(areas[channel].ptr + areas[channel].step * (batch*BUFFERSIZE+s));
                        *ptr = sample; // sample;
                    }
                }
            }
            // printf("num_samples_read = %i\n", num_samples_read);
            if(num_samples_read < BUFFERSIZE) {
                fseek(f_replay, 44, SEEK_SET); // typical WAV-header offset = 44 Byte
                printf("Reread file\n");
            }
        }

        // for (int frame = 0; frame < frame_count - batches*BUFFERSIZE; frame += 1) {
        //     int_fast32_t sample_int[info.num_channels];
        //     read_sample(&info, f_replay, sample_int);
        //     float sample = ((float) sample_int[0]) / powf(2, 21); 
        //     for (int channel = 0; channel < layout->channel_count; channel += 1) {
        //         float *ptr = (float*)(areas[channel].ptr + areas[channel].step * frame);
        //         *ptr = sample;
        //     }
        // }

        if ((err = soundio_outstream_end_write(outstream))) {
            fprintf(stderr, "%s\n", soundio_strerror(err));
            printf("%s\n", soundio_strerror(err));
            exit(1);
        }

        frames_left -= frame_count;
    }
}