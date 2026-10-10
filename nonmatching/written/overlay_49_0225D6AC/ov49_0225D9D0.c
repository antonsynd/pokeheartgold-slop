#include "global.h"

#include "heap.h"
#include "unk_02018000.h"

typedef struct UnkStruct_ov49_0225D9D0 {
    struct {
        void *data;
        u8 padding_04[0xC];
    } unk_00[2];
    void *unk_20[2][3];
    UnkStruct_020180BC unk_38[2][4];
} UnkStruct_ov49_0225D9D0;

typedef u32 (*UnkFunc_ov49_0225D9D0)(u32, u32, u32, u32);

#define CAPTURE_R2_R3(a, b)                                        \
    do {                                                           \
        register u32 _r2 __asm__("r2");                            \
        register u32 _r3 __asm__("r3");                            \
        __asm__ volatile("" : "=r"(_r2), "=r"(_r3));               \
        a = _r2;                                                   \
        b = _r3;                                                   \
    } while (0)

void ov49_0225D9D0(UnkStruct_ov49_0225D9D0 *param0, NNSFndAllocator *param1) {
    int v0, v1;
    NNSG3dTexKey v2;
    NNSG3dTexKey v3;
    NNSG3dPlttKey v4;
    NNSG3dResTex *v5;
    u32 r2v, r3v;

    for (v0 = 0; v0 < 2; v0++) {
        for (v1 = 0; v1 < 4; v1++) {
            sub_020180F8(&param0->unk_38[v0][v1], param1);
        }
    }

    for (v0 = 0; v0 < 2; v0++) {
        Heap_Free(param0->unk_00[v0].data);
    }

    for (v0 = 0; v0 < 2; v0++) {
        for (v1 = 0; v1 < 3; v1++) {
            v5 = NNS_G3dGetTex(param0->unk_20[v0][v1]);

            NNS_G3dTexReleaseTexKey(v5, &v2, &v3);
            CAPTURE_R2_R3(r2v, r3v);
            ((UnkFunc_ov49_0225D9D0)NNS_GfdDefaultFuncFreeTexVram)(v2, (u32)NNS_GfdDefaultFuncFreeTexVram, r2v, r3v);
            CAPTURE_R2_R3(r2v, r3v);
            ((UnkFunc_ov49_0225D9D0)NNS_GfdDefaultFuncFreeTexVram)(v3, (u32)NNS_GfdDefaultFuncFreeTexVram, r2v, r3v);

            v4 = NNS_G3dPlttReleasePlttKey(v5);
            CAPTURE_R2_R3(r2v, r3v);
            ((UnkFunc_ov49_0225D9D0)NNS_GfdDefaultFuncFreePlttVram)(v4, (u32)NNS_GfdDefaultFuncFreePlttVram, r2v, r3v);

            Heap_Free(param0->unk_20[v0][v1]);
        }
    }
}
