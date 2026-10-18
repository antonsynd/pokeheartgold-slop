#include "global.h"

extern u32 ov96_0221D9C8[];

void ov96_0221A730(void *a0);

void ov96_0221A5B8(void *a0, u32 idx) {
    if (ov96_0221D9C8[idx] == 0) {
        ov96_0221A730(a0);
    } else {
        GF_AssertFail();
    }
}
