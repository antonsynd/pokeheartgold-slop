#include "global.h"

extern s16 ov96_0221D6E4[][2];

void *ov96_021EAA04(void *param_1, u8 param_2);
void ov96_021EAB38(void *param_1, u8 param_2);
void *ov96_021E60C0(void *param_1, u8 param_2, u8 param_3);
int ov96_021E6138(void *param_1);
void ov96_021EAF70(void *param_1, u32 param_2, u32 param_3);
u32 ov96_021EAA20(void *param_1);
void ov96_021EABE0(void *param_1, u32 param_2);
void ov96_02218510(void *param_1, u32 param_2);
BOOL ov96_021E5F24(void *param_1);
void ov96_021EAC0C(void *param_1, u32 param_2);
void ov96_021EABA8(void *param_1, u32 param_2);
void ov96_021EAF94(void *param_1, s32 param_2, s32 param_3);
u32 ov96_021E6104(void);
void ov96_021EAF6C(void *param_1, u32 param_2);
void ov96_021EB0A4(void *param_1, s32 param_2, s32 param_3, s32 *param_4, s32 *param_5);
void *ov96_0221935C(void *param_1, u8 param_2, u8 param_3);
void ov96_021E62AC(void *param_1, u32 param_2, u32 param_3, void *param_4, u32 param_5, u32 param_6, void *param_7);
void ov96_02218578(void *param_1, u32 param_2);
void ov96_0221918C(void *param_1);
void *SpriteManager_GetSpriteList(void *param_1);

/*
 * Word `offset` of the asm's frame (offset from the asm's sp; the frame is 0x5c bytes, then the saved r4-r7 and lr,
 * and the entry sp is at 0x70). The loop below indexes a 6-word block at sp+0x44 with a callee's return value and
 * no bound, so the read can land on the outputs just below it (sp+0x38..0x44), the saved registers, or the
 * caller's frame. `img` stands for sp+0x30..0x6f; anything else is read relative to the entry sp
 * (__builtin_frame_address(0) + 8 under the check's clang -O0 Thumb build). A macro, so no helper frame sits
 * between the entry sp and the memory it reads.
 */
#define FRAME_WORD(dst, offset)                                                               \
    do {                                                                                      \
        o = (offset);                                                                         \
        if (o - 0x30 < 0x40) {                                                                \
            dst = img[(o - 0x30) >> 2];                                                       \
        } else {                                                                              \
            dst = *(volatile u32 *)((u32)__builtin_frame_address(0) + 8 - 0x70 + o);          \
        }                                                                                     \
    } while (0)

void ov96_02217B84(u8 *param_1, void *param_2)
{
    u32 callerR4, callerR5, callerR6;
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(callerR6) : : "cc");

    /* the asm's frame from sp+0x30: [0] sp+0x30, [1] sp+0x34, [2] sp+0x38, [3] sp+0x3c, [4] sp+0x40 (two s16),
       [5..10] the 6-word block at sp+0x44, [11..15] saved r4, r5, r6, r7, lr at sp+0x5c..0x6c */
    u32 img[16];
    u32 o;
    u32 w0, w1;
    int k;
    int j;
    int i;
    u8 q;
    u8 rem;
    s32 x;
    s32 y;
    u32 *entry;
    void *spr;
    void *r;
    u32 *e;
    u8 *a;
    u8 *b;
    u8 *c;
    s16 (*t)[2];

    img[11] = callerR4;
    img[12] = callerR5;
    img[13] = callerR6;
    img[14] = *(u32 *)__builtin_frame_address(0);
    img[15] = (u32)__builtin_return_address(0);
    for (k = 5; k < 11; k++) {
        img[k] = 0;
    }
    ReadWholeNarcMemberByIdPair(&img[5], 0xaa, 0x13);

    if (param_1 == NULL) {
        GF_AssertFail();
    }
    ov96_0221918C(param_2);

    for (k = 0; k < 12; k++) {
        q = (u8)(k / 3);
        rem = (u8)(k % 3);
        entry = (u32 *)(param_1 + 0x20c + q * 0xa8 + rem * 0x10);

        spr = ov96_021EAA04(*(void **)(param_1 + 0x1c), (u8)k);
        ov96_021EAB38(spr, (u8)(rem == 0));
        i = ov96_021E6138(ov96_021E60C0(param_2, q, rem));
        FRAME_WORD(w0, 0x3c + ((u32)i << 3));
        FRAME_WORD(w1, 0x40 + ((u32)i << 3));
        ov96_021EAF70(spr, w0, w1);

        spr = ov96_021EAA04(*(void **)(param_1 + 0x1c), (u8)k);
        ov96_021EAA20(spr);
        ov96_021EABE0(spr, 2);
        ov96_02218510(spr, 1);
        x = ov96_0221D6E4[q][0];
        y = ov96_0221D6E4[q][1];
        if (q == ov96_021E5F24(param_2)) {
            ((s16 *)&img[4])[0] = (s16)x;
            ((s16 *)&img[4])[1] = (s16)y;
        }
        ov96_021EAC0C(spr, 2);
        ov96_021EABA8(spr, 7);
        ov96_021EAF94(spr, x, y);
        ov96_021EAF6C(spr, ov96_021E6104());
        ov96_021EB0A4(spr, x, y, (s32 *)&img[3], (s32 *)&img[2]);
        entry[3] = (entry[3] & ~0xf) | (k & 0xf);
        entry[0] = (u32)spr;
        r = ov96_0221935C(param_2, q, rem);
        entry[1] = (u32)r;
        entry[2] = *(u32 *)((u8 *)r + 8);
    }

    spr = SpriteManager_GetSpriteList(*(void **)(param_1 + 0xc));
    ov96_021E62AC(param_2, 0, *(u32 *)(param_1 + 0x18), spr, 1, 1, &img[4]);

    e = (u32 *)(param_1 + 0x1a4);
    a = param_1 + 0x198;
    b = param_1 + 0x20c;
    c = param_1;
    t = ov96_0221D6E4;
    for (j = 0; j < 4; j++) {
        e[2] = (u32)a;
        e[1] = (u32)b;
        e[3] = *(u32 *)(param_1 + 0x180);
        e[0] = (u32)param_2;
        ov96_021EB0A4(*(void **)e[1], t[0][0], t[0][1], (s32 *)&img[1], (s32 *)&img[0]);
        ov96_02218578(e, 1);
        e[0x18] = (e[0x18] & 0xFFF0FFFF) | 0x20000;
        b += 0xa8;
        t += 1;
        e[0xb] = img[1] << 12;
        e[0xc] = img[0] << 12;
        e[8] = img[1] << 12;
        e[9] = img[0] << 12;
        e[0x18] = (e[0x18] & 0xFFCFFFFF) | ((u32)(j & 3) << 20);
        e[0x15] = 0;
        *((u8 *)e + 0x5f) = 3;
        *(u32 *)(c + 0x23c) = j;
        a += 0xa8;
        c += 0xa8;
        e += 0x2a;
    }
}
