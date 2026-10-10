#include "global.h"

#include "error_handling.h"
#include "gf_3d_render.h"
#include "gf_gfx_loader.h"
#include "heap.h"

typedef u32 (*ov89_0225A878_Free)(u32, u32, u32, u32);

extern BOOL ov89_0225A958(void *p0, void *tex);
extern BOOL ov89_0225A9B4(void *tex);
extern void ov89_0225AA24(void *tex, NARC *narc, NARC *narc2, void *a, int b);

BOOL ov89_0225A878(void *param0, u8 *param1, NARC *param2, NARC *param3, void *param4, int param5) {
    /* the free routines are called through pointers with r1 = the routine, r2/r3 as the previous call left them */
    u32 r2v, r3v;
    u32 key4x4 = 0;
    u32 keyTex = 0;
    u32 plttKey;
    u8 *set;
    u8 *dict;
    u8 *mdl;
    int v4;
    int i;
    ov89_0225A878_Free freeFn;

    *(void **)param1 = GfGfxLoader_LoadFromOpenNarc(param2, 0x1d, 0, 0x7d, 0);
    if (*(void **)param1 == NULL) {
        GF_AssertFail();
    }

    set = (u8 *)NNS_G3dGetMdlSet(*(void **)param1);
    *(u8 **)(param1 + 4) = set;
    if (set != NULL) {
        dict = set + 8;
        if ((u32)dict == 0 || set[9] == 0) {
            dict = NULL;
        } else {
            dict = dict + *(u16 *)(set + 0xe) + 4;
        }
        if (dict != NULL) {
            mdl = set + *(u32 *)dict;
        } else {
            mdl = NULL;
        }
    } else {
        mdl = NULL;
    }
    *(u8 **)(param1 + 8) = mdl;

    *(void **)(param1 + 0xc) = NNS_G3dGetTex(*(void **)param1);
    if (*(void **)(param1 + 0xc) != NULL) {
        ov89_0225AA24(*(void **)(param1 + 0xc), param2, param3, param4, param5);
        v4 = ov89_0225A9B4(*(void **)(param1 + 0xc));
        if (v4 == 0 || ov89_0225A958(param0, *(void **)(param1 + 0xc)) == 0) {
            if (v4 == 1) {
                NNS_G3dTexReleaseTexKey(*(void **)(param1 + 0xc), &keyTex, &key4x4);
                __asm__ volatile("movs %0, r2" : "=l"(r2v) : : "cc");
                __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");
                freeFn = (ov89_0225A878_Free)NNS_GfdDefaultFuncFreeTexVram;
                freeFn(keyTex, (u32)freeFn, r2v, r3v);
                __asm__ volatile("movs %0, r2" : "=l"(r2v) : : "cc");
                __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");
                freeFn = (ov89_0225A878_Free)NNS_GfdDefaultFuncFreeTexVram;
                freeFn(key4x4, (u32)freeFn, r2v, r3v);
                plttKey = NNS_G3dPlttReleasePlttKey(*(void **)(param1 + 0xc));
                __asm__ volatile("movs %0, r2" : "=l"(r2v) : : "cc");
                __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");
                freeFn = (ov89_0225A878_Free)NNS_GfdDefaultFuncFreePlttVram;
                freeFn(plttKey, (u32)freeFn, r2v, r3v);
            }
            if (*(void **)param1 != NULL) {
                Heap_Free(*(void **)param1);
            }
            for (i = 0; i < 0x10; i++) {
                param1[i] = 0;
            }
            return 0;
        }
        GF3dRender_BindModelSet(*(void **)param1, *(void **)(param1 + 0xc));
    }
    return 1;
}
