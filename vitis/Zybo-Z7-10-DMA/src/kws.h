/*#ifndef KWS_H
#define KWS_H

#include <stdint.h>

#define KWS_INPUT_SAMPLES 16000

void KWS_Init(void);
void KWS_Run(const int16_t *audio_16k, int num_samples);

#endif
*/

#ifndef KWS_H
#define KWS_H

#include <stdint.h>

#define KWS_INPUT_SAMPLES 16000

#ifdef __cplusplus
extern "C" {
#endif

void KWS_Init(void);
void KWS_Run(const int16_t *audio_16k, int num_samples);

#ifdef __cplusplus
}
#endif

#endif
