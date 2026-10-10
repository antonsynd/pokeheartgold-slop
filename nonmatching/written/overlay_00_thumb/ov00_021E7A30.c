#include "global.h"

extern int MIC_StopAutoSampling(void);
extern void NNS_SndStrmStop(void *strm);
extern void NNS_SndStrmFreeChannel(void *strm);
extern void VCT_Cleanup(void);
extern void Heap_FreeExplicit(u32 heapID, void *ptr);

typedef struct {
    s32 timeToProcess;
    u8 *manager;
} UnkStruct_ov00_021E7A30;

extern UnkStruct_ov00_021E7A30 _0221A684;

void ov00_021E7A30(void) {
    /* The callback is void(void); the asm calls it with r0 = &_0221A684 and r1 = 0 left over. */
    void (*callback)(void *, int);
    u8 *m;

    if (_0221A684.manager != NULL) {
        callback = *(void (**)(void *, int))(_0221A684.manager + 0x198C);

        MIC_StopAutoSampling();
        NNS_SndStrmStop(_0221A684.manager + 0x19F8);
        NNS_SndStrmFreeChannel(_0221A684.manager + 0x19F8);
        VCT_Cleanup();

        m = _0221A684.manager;
        Heap_FreeExplicit(*(u32 *)(m + 0x19F4), *(void **)(m + 0x888));
        m = _0221A684.manager;
        Heap_FreeExplicit(*(u32 *)(m + 0x19F4), *(void **)(m + 0x880));
        _0221A684.manager = NULL;

        if (callback != NULL) {
            callback(&_0221A684, 0);
        }
    }
}
