#include "global.h"

void ov13_0222281C(int seed, u8 *dst, int size, const s8 *key, int keyLen) {
    int half = size / 2;
    int k = seed % keyLen;
    int i;

    for (i = 0; i < half; i++) {
        dst[i] = (u8)i;
        dst[i] = (u8)(key[k] ^ (s8)dst[i]);
        k++;
        if (k >= keyLen) {
            k = 0;
        }
    }
}
