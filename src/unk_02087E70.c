#include "global.h"

#include "constants/heap.h"

#include "overlay_manager.h"
#include "system.h"

// External symbols kept out of shared headers to avoid IPA cascade; declared
// locally with the types they were matched against (opaque structs as void *).
void *sub_02087A78(OverlayManager *man);
void sub_0200616C(int a0);
void *Save_Misc_Get(void *saveData);
void sub_0202AC0C(void *saveMisc, u8 *a1);
BOOL sub_02055198(void *fieldSystem, u16 seqNo);
int sub_02087988(void *mgr);
void sub_0203E354(void);
void GfGfx_SwapDisplay(void);
void GF_SndHandleSetPlayerVolume(u32 a0, u32 a1);

void ov40_0222B6E0(void *a0);
void ov40_0222B934(void *a0);
BOOL ov40_0222BD30(void *a0, int *a1);
void ov40_0222C480(void *a0);
void ov40_0222CA8C(void *a0);
void ov40_0222CABC(void *a0);
void ov40_0222CF94(void *a0);
void ov40_0222D55C(void *a0);
void *ov40_0222DAC0(void *a0);

FS_EXTERN_OVERLAY(OVY_40);

// Accessors into the 0x4170-byte battle-context block (sub_02087A78 result).
#define CTX_10(c)   (*(int **)((u8 *)(c) + 0x10))
#define CTX_58(c)   (*(void **)((u8 *)(c) + 0x58))
#define CTX_5C(c)   (*((u8 *)(c) + 0x5C))
#define CTX_6F0(c)  (*(void **)((u8 *)(c) + 0x6F0))
#define CTX_6F4(c)  (*(void **)((u8 *)(c) + 0x6F4))
#define CTX_SAVE(c) (*(void **)((u8 *)(c) + 0x830))

static BOOL sub_02087E70(OverlayManager *man, int *state, int flag) {
    void *ctx;
    sub_0200616C(0);
    Heap_Create(HEAP_ID_3, HEAP_ID_109, 0x55000);
    ctx = sub_02087A78(man);
    ov40_0222C480(ctx);
    GF_SndHandleSetPlayerVolume(1, 0x2a);
    GF_SndHandleSetPlayerVolume(7, 0x2a);
    if (flag != 0) {
        sub_02055198(NULL, 0x482);
    }
    if (flag == 0) {
        sub_0202AC0C(Save_Misc_Get(CTX_SAVE(ctx)), &CTX_5C(ctx));
        if (CTX_5C(ctx) >= 7) {
            CTX_5C(ctx) = 0;
        }
        CTX_58(ctx) = ov40_0222DAC0(ctx);
    } else {
        CTX_58(ctx) = (void *)0x7FDD;
    }
    ov40_0222B6E0(ctx);
    return TRUE;
}

static BOOL sub_02087EF8(OverlayManager *man, int *state) {
    return sub_02087E70(man, state, 0);
}

static BOOL sub_02087F04(OverlayManager *man, int *state) {
    return sub_02087E70(man, state, 1);
}

static BOOL sub_02087F10(OverlayManager *man, int *state) {
    void *ctx = sub_02087A78(man);
    CTX_10(ctx) = state;
    if (ov40_0222BD30(ctx, state)) {
        return TRUE;
    }
    return FALSE;
}

static BOOL sub_02087F2C(OverlayManager *man, int *state) {
    void *ctx = sub_02087A78(man);
    switch (*state) {
    case 0:
        ov40_0222CABC(ctx);
        (*state)++;
        break;
    case 1:
        ov40_0222CA8C(ctx);
        ov40_0222CF94(ctx);
        ov40_0222D55C(ctx);
        (*state)++;
        break;
    case 2:
        if (sub_02087988(CTX_6F0(ctx)) == 0) {
            (*state)++;
        }
        break;
    case 3:
        if (sub_02087988(CTX_6F4(ctx)) == 0) {
            (*state)++;
        }
        break;
    default:
        ov40_0222B934(ctx);
        Heap_Destroy(HEAP_ID_109);
        UnloadOverlayByID(FS_OVERLAY_ID(OVY_40));
        gSystem.screensFlipped = 0;
        GfGfx_SwapDisplay();
        sub_0203E354();
        return TRUE;
    }
    return FALSE;
}

const OverlayManagerTemplate _021028B4 = { sub_02087EF8, sub_02087F10, sub_02087F2C, FS_OVERLAY_ID(OVY_40) };
const OverlayManagerTemplate _021028C4 = { sub_02087F04, sub_02087F10, sub_02087F2C, FS_OVERLAY_ID(OVY_40) };
