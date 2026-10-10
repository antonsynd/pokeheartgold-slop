#include "global.h"

extern void NNS_SndStrmStart(void *strm);

typedef struct {
    u32 unk0;
    u8 *manager;
} UnkStruct_0221A684;

extern UnkStruct_0221A684 _0221A684;

void ov00_021E79B4(void) {
    NNS_SndStrmStart(_0221A684.manager + 0x19F8);
}
