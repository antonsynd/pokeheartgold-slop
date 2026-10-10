#include "global.h"
#include "filesystem.h"
#include "sprite_system.h"
#include "sprite.h"
#include "pokeathlon/pokeathlon.h"

extern u8 ov96_0221CFBC[];
void ov96_0220F280(u8 *p);
void *ov96_021EAA04(u8 *a, u32 b);
void ov96_021EAB38(void *a, u32 b);
u32 ov96_021E60C0(u8 *a, u32 b, u32 c);
u32 ov96_021E6138(u32 a);
void ov96_021EAF70(void *a, u32 b, u32 c);
void *ov96_021EAA20(void *a);
u8 *ov96_021E8BB0(void *a);
void ov96_0220D554(void *a, u32 b);
void ov96_021EB10C(void *a, float b, float c);
void ov96_021EAC0C(void *a, u32 b);
void ov96_021EAF94(void *a, u32 b, u32 c);
u32 ov96_021E6104(void);
void ov96_021EAF6C(void *a, u32 b);
void ov96_021EB0A4(void *a, u32 b, u32 c, u32 *d, u32 *e);
u8 *ov96_0220F378(u8 *a, u32 b, u32 c);
void ov96_021EABA8(void *a, u32 b);
u32 ov96_021E64F8(u8 *a, void *b, u32 c, void *d, u32 e);
u32 ov96_021E62AC(u8 *a, u32 b, u32 c, void *d, u32 e, u32 f, void *g);
u8 *ov96_021E8A20(void *ptr);

// The original keeps its locals in a 0x58-byte stack frame (sp+0 .. sp+0x57). It indexes buf40 by the
// return value of ov96_021E6138 without a bounds check, so the frame is mirrored field for field to let
// out-of-range reads see what the original sees.
typedef struct Frame_ov96_0220F4A0 {
    u32 outArg[3];  // sp+0x00: stack arguments of the calls below
    u32 param1;     // sp+0x0c
    u32 rm;         // sp+0x10
    u32 v14;        // sp+0x14
    u32 v18;        // sp+0x18
    u32 q;          // sp+0x1c
    u32 Q;          // sp+0x20
    u32 X;          // sp+0x24
    u32 v28;        // sp+0x28
    u32 v2c;        // sp+0x2c
    u32 v30;        // sp+0x30
    u32 arr34[3];   // sp+0x34
    u32 buf40[6];   // sp+0x40
} Frame_ov96_0220F4A0;

// Reads a word at the original's stack address `addr`: its own frame (sp .. sp+0x57), the registers its
// prologue pushed (r3-r7, lr), or the caller's frame and anything else, where the address is real.
static u32 ov96_0220F4A0_ReadWord(Frame_ov96_0220F4A0 *fr, u32 *saved, u32 origSp, u32 addr)
{
    u32 off = addr - origSp;
    if (off < 0x58) {
        return ((u32 *)fr)[off / 4];
    }
    if (off < 0x70) {
        return saved[(off - 0x58) / 4];
    }
    return *(u32 *)addr;
}

void ov96_0220F4A0(u8 *param_1)
{
    Frame_ov96_0220F4A0 fr;
    u32 saved[6]; // r3, r4, r5, r6, r7, lr as the prologue pushes them
    register u32 *savedPtr __asm__("r2") = saved;
    u32 entrySp;
    u32 origSp;
    u32 i;
    u32 k;
    u32 q;
    u32 rm;
    u32 t;
    u32 uidx;
    u32 addr;
    u8 *P;
    u8 *Q;
    u8 *r5;
    void *r4;
    u8 *ret2;
    void *list;
    u32 flag;

    __asm__ volatile("stmia %0!, {r3, r4, r5, r6}" : "+r"(savedPtr) : : "memory");
    saved[4] = ((u32 *)__builtin_frame_address(0))[0];
    saved[5] = ((u32 *)__builtin_frame_address(0))[1];
    entrySp = (u32)((u8 *)__builtin_frame_address(0) + 8);
    origSp = entrySp - 0x70;

    fr.param1 = (u32)param_1;
    fr.buf40[0] = 0;
    fr.buf40[1] = 0;
    fr.buf40[2] = 0;
    fr.buf40[3] = 0;
    fr.buf40[4] = 0;
    fr.buf40[5] = 0;
    ReadWholeNarcMemberByIdPair(fr.buf40, 0xaa, 0x11);
    if (param_1 == 0) {
        GF_AssertFail();
    }
    if (*(u32 *)(param_1 + 4) == 0) {
        GF_AssertFail();
    }
    P = *(u8 **)(param_1 + 4);
    ov96_0220F280(P);
    for (k = 0; k < 4; k++) {
        u32 *w = (u32 *)(param_1 + 0x23c + 0xe4 * k);
        *w = (*w & ~3u) | (k & 3);
    }

    Q = param_1 + 0x164;
    fr.Q = (u32)Q;
    for (i = 0; i < 12; i++) {
        q = i / 3;
        rm = i % 3;
        fr.rm = rm;
        fr.q = q;
        r5 = Q + 0xe4 * q + 0x48 * rm;

        fr.X = (u32)ov96_021EAA04(*(u8 **)(param_1 + 0x20), (u8)i);
        ov96_021EAB38((void *)fr.X, 1);

        t = ov96_021E60C0(P, i / 3, i % 3);
        uidx = ov96_021E6138(t);
        addr = origSp + 0x40 + 8 * uidx - 8;
        {
            u32 w0 = ov96_0220F4A0_ReadWord(&fr, saved, origSp, addr);
            u32 w1 = ov96_0220F4A0_ReadWord(&fr, saved, origSp, addr + 4);
            ov96_021EAF70((void *)fr.X, w0, w1);
        }

        r4 = ov96_021EAA04(*(u8 **)(param_1 + 0x20), (u8)i);
        fr.v28 = (u32)ov96_021E8BB0(ov96_021EAA20(r4));
        ov96_0220D554(r4, 0);
        ov96_021EB10C(r4, 1.0f, 1.0f);

        {
            u8 *T = (u8 *)ov96_0221CFBC + 12 * q + 4 * rm;
            fr.v18 = (u32)(s32)(s16) * (u16 *)(T + 0);
            fr.v14 = (u32)(s32)(s16) * (u16 *)(T + 2);
        }
        ov96_021EAC0C(r4, 2);
        ov96_021EAF94(r4, fr.v18, fr.v14);
        t = ov96_021E6104();
        ov96_021EAF6C(r4, t);
        fr.outArg[0] = origSp + 0x2c;
        ov96_021EB0A4(r4, fr.v18, fr.v14, &fr.v30, &fr.v2c);

        *(void **)r5 = P;
        *(u32 *)(r5 + 0x40) = (*(u32 *)(r5 + 0x40) & 0xFFF0FFFFu) | ((i & 0xf) << 16);
        *(u8 *)(r5 + 0x45) = (u8)q;
        *(u8 *)(r5 + 0x46) = (u8)rm;
        *(void **)(r5 + 4) = r4;
        *(u32 *)(r5 + 0x40) = (*(u32 *)(r5 + 0x40) & 0xFCFFFFFFu) | (((*(u16 *)((u8 *)fr.v28 + 4)) & 3) << 24);
        *(u8 **)(r5 + 8) = ov96_0220F378(P, (u8)q, (u8)rm);
        *(u32 *)(r5 + 0xc) = 2;
        *(u32 *)(r5 + 0x40) = (*(u32 *)(r5 + 0x40) & 0xFF0FFFFFu) | (2u << 20);
        *(u32 *)(r5 + 0x1c) = fr.v30 << 12;
        *(u32 *)(r5 + 0x20) = fr.v2c << 12;
        *(u32 *)(r5 + 0x10) = fr.v30 << 12;
        *(u32 *)(r5 + 0x14) = fr.v2c << 12;

        flag = ov96_021E5F24(P);
        if (q == flag) {
            *(u16 *)((u8 *)fr.arr34 + 4 * rm) = (u16)fr.v18;
            *(u16 *)((u8 *)fr.arr34 + 4 * rm + 2) = (u16)fr.v14;
            list = SpriteManager_GetSpriteList(*(void **)(param_1 + 0x10));
            fr.outArg[0] = 1;
            Sprite_SetDrawPriority((Sprite *)ov96_021E64F8(P, r4, *(u32 *)(param_1 + 0x1c), list, 1), 4);
            ov96_021EABA8(r4, 6);
        } else {
            ov96_021EABA8(r4, 7);
        }

        flag = ov96_021E5F24(P);
        if (flag == 0) {
            ret2 = ov96_021E8A20(PokeathlonCourse_GetDataCopyArea(P) + 0x28);
            *(u8 *)(ret2 + i + 4) = (u8)fr.v30;
            *(u8 *)(ret2 + i + 0x10) = (u8)fr.v2c;
        }
    }

    list = SpriteManager_GetSpriteList(*(void **)(param_1 + 0x10));
    fr.outArg[0] = 1;
    fr.outArg[1] = 3;
    fr.outArg[2] = origSp + 0x34;
    ov96_021E62AC(P, 0, *(u32 *)(param_1 + 0x1c), list, 1, 3, fr.arr34);
}
