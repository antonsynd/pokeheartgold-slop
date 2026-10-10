#include "global.h"
#include "overlay_manager.h"
#include "screen_fade.h"
#include "unk_0208805C.h"
#include "unk_02005D10.h"
#include "sound_02004A44.h"
#include "unk_02026E30.h"
#include "camera.h"
#include "gf_3d_render.h"

extern BOOL ov104_021E5E78(u8 *obj);
extern void ov104_021E5EB0(u8 idx, enum HeapID heapID);
extern void ov104_021E5BEC(u8 *data);
extern const MtxFx33 ov104_021E5F3C;
extern const VecFx32 ov104_021E5EFC;

BOOL ov104_021E59E4(OverlayManager *man, int *state) {
    u8 *data = OverlayManager_GetData(man);
    u8 *obj = data + 4 + data[0x168] * 0x6C;
    BOOL ret = FALSE;
    u8 i;

    switch (*state) {
    case 0:
        if (ov104_021E5E78(obj)) {
            ov104_021E5EB0(data[0x168], (enum HeapID)0x95);
            (*state)++;
        }
        break;
    case 1:
        if (IsPaletteFadeFinished()) {
            data[0x168]++;
            data[0x169]++;
            if (data[0x169] >= 3) {
                ret = TRUE;
            } else {
                ov104_021E5BEC(data);
                sub_020880CC(0, (enum HeapID)0x95);
                *state = 0;
            }
        }
        break;
    }

    if (**(s32 **)(obj + 0x64) == 0) {
        /* a full word load, then truncated (matters for the ARM9's rotated unaligned loads) */
        PlaySE((u16)((volatile u32 *)*(u32 **)(data + 0x16C))[data[0x168]]);
        if (data[0x168] == 2) {
            Sound_SetSceneAndPlayBGM(0x44, 0x447, 1);
        }
    }

    for (i = 0; i < 2; i++) {
        s32 *anm = *(s32 **)(obj + 0x64 + i * 4);
        u8 *res = *(u8 **)((u8 *)anm + 8);
        s32 next = anm[0] + FX32_ONE;
        if (next < (s32)(*(u16 *)(res + 4) << 12)) {
            anm[0] = next;
        }
    }

    {
        MtxFx33 rot = ov104_021E5F3C;
        VecFx32 scale = ov104_021E5EFC;
        VecFx32 trans;
        trans.x = 0;
        trans.y = 0;
        trans.z = 0;
        Thunk_G3X_Reset();
        Camera_PushLookAtToNNSGlb();
        GF3dRender_DrawModel((NNSG3dRenderObj *)obj, &trans, &rot, &scale);
        RequestSwap3DBuffers((GXSortMode)1, (GXBufferMode)1);
    }
    return ret;
}
