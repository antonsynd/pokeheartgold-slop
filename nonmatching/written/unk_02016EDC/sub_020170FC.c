#include "global.h"

extern u32 _020F61F8[];

void sub_020179D4(void *monAnim);
void sub_02017A1C(void *monAnim);
u32 Pokepic_ResumePaletteFade(void *sprite);

#define ANIM_U8(p, off) (*(u8 *)((u8 *)(p) + (off)))
#define ANIM_U32(p, off) (*(u32 *)((u8 *)(p) + (off)))

#define CAPTURE_R2_R3()                                                                 \
    do {                                                                                \
        __asm__ volatile("movs %0, r2" : "=l"(r2v) : : "cc");                           \
        __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");                           \
    } while (0)

void sub_020170FC(u8 *param_1)
{
    u32 r2v;
    u32 r3v;
    u32 i;
    u32 inactive;
    u8 *tr;
    u32 fn;
    u32 res;
    u32 cmd;

    __asm__ volatile("movs %0, r2" : "=l"(r2v) : : "cc");
    __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");

    ANIM_U32(param_1, 0x18) = 0;
    ANIM_U32(param_1, 0x44) = 0;

    inactive = 0;
    for (i = 0; i < 4; i++) {
        tr = param_1 + 0x7c + i * 0x54;
        if (ANIM_U32(tr, 0) != 0) {
            if (ANIM_U8(tr, 0x2d) == 0) {
                fn = ANIM_U32(tr, 0x50);
                ((u32 (*)(u32, u32, u32, u32))fn)((u32)tr, (u32)param_1, fn, r3v);
                CAPTURE_R2_R3();
            } else {
                ANIM_U8(tr, 0x2d) = ANIM_U8(tr, 0x2d) - 1;
            }
        } else {
            inactive++;
        }
    }

    if (inactive == 4) {
        ANIM_U8(param_1, 0x1cd) = 0;
    }

    if (ANIM_U8(param_1, 0x1cd) != 0) {
        sub_020179D4(param_1);
        CAPTURE_R2_R3();
        sub_02017A1C(param_1);
        CAPTURE_R2_R3();
        return;
    }

    if (ANIM_U8(param_1, 0x1cf) != 0) {
        res = Pokepic_ResumePaletteFade(*(void **)param_1);
        CAPTURE_R2_R3();
        if (res != 0) {
            return;
        }
        ANIM_U8(param_1, 0x1cf) = 0;
    }

    while (1) {
        ANIM_U32(param_1, 0x44) = ANIM_U32(param_1, 0x44) + 1;
        cmd = *(u32 *)ANIM_U32(param_1, 0xc);
        if (cmd >= 0x22) {
            GF_AssertFail();
            CAPTURE_R2_R3();
        }
        fn = _020F61F8[*(u32 *)ANIM_U32(param_1, 0xc)];
        ((u32 (*)(u32, u32, u32, u32))fn)((u32)param_1, fn, r2v, r3v);
        CAPTURE_R2_R3();

        if (ANIM_U32(param_1, 0x1c) != 0) {
            return;
        }
        ANIM_U32(param_1, 0xc) = ANIM_U32(param_1, 0xc) + 4;
        if (ANIM_U32(param_1, 0x18) != 0) {
            return;
        } else if (ANIM_U8(param_1, 0x1cd) != 0) {
            sub_020179D4(param_1);
            CAPTURE_R2_R3();
            sub_02017A1C(param_1);
            CAPTURE_R2_R3();
            return;
        }
        if (ANIM_U32(param_1, 0x44) >= 256) {
            break;
        }
    }
    GF_AssertFail();
    CAPTURE_R2_R3();
    ANIM_U32(param_1, 0x1c) = 1;
}
