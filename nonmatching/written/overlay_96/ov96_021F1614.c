#include "global.h"
#include "bg_window.h"
#include "sprite.h"
#include "unk_02005D10.h"
#include "pokeathlon/pokeathlon.h"

extern u32 ov96_0221BC8C[4];
extern u32 ov96_0221BC9C[6];
extern u32 ov96_0221BCB4[6];

void ov96_021F2B68(u8 *p, u32 oldValue, u32 newValue, PokeathlonCourseData *data);
void ov96_021F295C(u32 value, BgConfig *bgConfig);
void ov96_021F4364(u32 a, u32 b);
void *ov96_021EAA20(void *a);
Sprite *ov96_021E8BAC(void *a);
void ov96_021EABE0(void *obj, u32 a);
void ov96_021EAB38(void *obj, u32 a);
void ov96_021EAB74(void *obj, u32 a);
void ov96_021EB01C(void *obj, u32 a, u32 b, u32 c);
void ov96_021EB52C(void *obj, u32 a, u32 b);
void ov96_021EB06C(void *obj, u32 a, u32 b, s32 *out1, s32 *out2);
void ov96_021EAF60(void *obj, u32 a, u32 b, void *c);
Sprite *ov96_021EB5B8(void *obj);
u8 *ov96_021E60C0(PokeathlonCourseData *data, int mode, int index);
u8 *ov96_021E60D8(PokeathlonCourseData *data, int mode, int index);
void *ov96_021EAA04(void *obj, u32 index);
void ov96_021EAC0C(void *obj, u32 a);
void ov96_021EAED4(void *obj, u32 a, s32 b, u32 c, u32 d);
void ov96_021F2E80(PokeathlonCourseData *data, u8 *p, void *obj, u32 index, u32 value);
void ov96_021F4390(u32 a, u32 b, u32 c);
void ov96_021F2E2C(u8 *p, u32 index);
BOOL ov96_021F3180(u32 a, u32 b, u32 c, s32 *out);
void ov96_021E658C(PokeathlonCourseData *data, u32 index, u32 value);
void ov96_021F2FEC(u8 *alloc, u8 *entry);
void ov96_021F2D98(u8 *p);
void ov96_021F4688(u32 a, u32 b, u32 c);
void ov96_021F45F4(u8 *p, int flag, u8 *flags);

#define A8(off) (*(u8 *)(alloc + (off)))
#define A16(off) (*(u16 *)(alloc + (off)))
#define A32(off) (*(u32 *)(alloc + (off)))

void ov96_021F1614(PokeathlonCourseData *param0) {
    u8 *alloc = PokeathlonCourse_GetHeapAllocPtr4(param0);
    u8 *entry = ov96_021E8A20(PokeathlonCourse_GetDataCopyArea(param0) + 0xf0);
    u8 mode = ov96_021E5F24(param0);
    u32 word1C = *(u32 *)(entry + 0x1c);
    u32 word20;
    u32 selected;
    int slot;
    u8 level;
    u8 flagA;
    u8 flagB;
    u8 stat;
    u8 shape;
    u8 seqBase;
    u8 oldValue;
    u8 newValue;
    u8 i;
    u8 r4;
    u8 *c;
    u8 *base;
    Sprite *sprite;
    Sprite *sprite2;
    u8 state;
    u8 want;
    u8 prev;
    u8 anim;
    u8 anim2;
    u8 tmp8;
    s32 extra;
    s32 out84;
    s32 out88;
    s32 out7C;
    s32 out80;
    s32 out78;
    u16 tilemap[8];
    u32 arrA[6];
    u32 arrB[6];
    u32 srcA[6];
    u32 srcB[6];
    VecFx32 scale;
    VecFx32 one;
    VecFx32 matrix;
    VecFx32 matrix2;
    u8 flags[12];
    u8 *obj;
    u8 *obj2;
    u8 *info;
    int k;
    u32 idx;

    selected = (word1C >> 28) & 0xf;
    slot = ((s32)word1C >> 24) & 0xf;
    level = (u8)((s32)*(u32 *)(entry + 0x18) >> 24);
    word20 = *(u32 *)(entry + 0x20);
    flagA = (u8)(((s32)word20 >> 13) & 1);
    flagB = (u8)(((s32)word20 >> 14) & 1);
    stat = (u8)(((s32)word20 >> 15) & 7);
    shape = (u8)(((s32)word20 >> 26) & 3);
    seqBase = (u8)((s32)word20 >> 18);
    want = (u8)((u8)(((s32)word20 >> 28) & 0xf) + 1);
    if (flagB == 0) {
        ov96_021E8A20(PokeathlonCourse_GetDataCopyArea(param0))[8] = 0;
    }
    oldValue = (u8)A16(0x730);
    newValue = (u8)slot;
    if (oldValue != newValue) {
        A16(0x730) = newValue;
        for (k = 0; k < 12; k++) {
            A8(0x73c + k) = 0;
        }
        ov96_021F2B68(alloc + 0x7ac, oldValue, newValue, param0);
    }
    r4 = level;
    if (r4 == 0) {
        info = *(u8 **)(alloc + 0x738);
        BG_LoadScreenTilemapData(*(BgConfig **)alloc, 1, info + 0xc, *(u32 *)(info + 8));
        ScheduleBgTilemapBufferTransfer(*(BgConfig **)alloc, 1);
        A32(0x7a8) = 0;
    } else if (r4 >= 0x2b) {
        for (k = 0; k < 8; k++) {
            tilemap[k] = ((u16 *)ov96_0221BC8C)[k];
        }
        LoadRectToBgTilemapRect(*(BgConfig **)alloc, 1, tilemap, 0xe, 2, 4, 2);
        ov96_021F295C(0x2a, *(BgConfig **)alloc);
    } else {
        if (A32(0x7a8) == 0) {
            if (want <= 1 && r4 >= 0x20) {
                PlaySE(0x6d7);
                A32(0x7a8) = 1;
            } else if (want > 1 && r4 >= 0x1c) {
                PlaySE(0x6d7);
                A32(0x7a8) = 1;
            } else if (want > 3 && r4 >= 0x15) {
                PlaySE(0x6d7);
                A32(0x7a8) = 1;
            }
        }
        ov96_021F295C(r4, *(BgConfig **)alloc);
    }
    if (flagA != 0) {
        PlaySE(0x8cf);
    }
    ov96_021F4364(A32(0x774), want);
    for (k = 0; k < 6; k++) {
        srcA[k] = ov96_0221BC9C[k];
    }
    for (k = 0; k < 6; k++) {
        srcB[k] = ov96_0221BCB4[k];
    }
    base = alloc + 0x20;
    for (i = 0; i < 12; i++) {
        c = base + (i / 3) * 0x1b0 + (i % 3) * 0x90;
        sprite = ov96_021E8BAC(ov96_021EAA20(*(void **)c));
        state = (u8)(((s32) * (u32 *)(entry + 0x1c) >> (i * 2)) & 3);
        anim = (u8)(((s32) * (u32 *)(entry + 0x20) >> i) & 1);
        if (state == 0) {
            extra = 0;
            if (A16(0x778 + i * 4) == 0) {
                A16(0x778 + i * 4) = 1;
            } else if (A16(0x778 + i * 4) == 1) {
                for (k = 0; k < 6; k++) {
                    arrA[k] = srcA[k];
                }
                for (k = 0; k < 6; k++) {
                    arrB[k] = srcB[k];
                }
                scale.x = (s32)(4096.0f * ((float *)arrA)[A16(0x77a + i * 4) >> 1]);
                scale.y = (s32)(4096.0f * ((float *)arrA)[A16(0x77a + i * 4) >> 1]);
                scale.z = (s32)(4096.0f * ((float *)arrA)[A16(0x77a + i * 4) >> 1]);
                ov96_021EB06C(*(void **)c, entry[i], entry[0xc + i], &out88, &out84);
                if (out84 >= 0xb0) {
                    extra = ((s32 *)arrB)[A16(0x77a + i * 4) >> 1];
                }
                A16(0x77a + i * 4) = A16(0x77a + i * 4) + 1;
                ov96_021EABE0(*(void **)c, 1);
                Sprite_SetAffineScale(sprite, &scale);
                if (A16(0x77a + i * 4) >= 0xc) {
                    A16(0x778 + i * 4) = 2;
                }
            } else {
                ov96_021EAB38(*(void **)c, 0);
            }
            ov96_021EB52C(*(void **)(c + 8), 1, 0);
            ov96_021EAB74(*(void **)c, 0);
            ov96_021EB01C(*(void **)c, entry[i], extra + entry[0xc + i], 1);
            flags[i] = 1;
            continue;
        }
        A16(0x778 + i * 4) = 0;
        A16(0x77a + i * 4) = 0;
        one.x = 0x1000;
        one.y = 0x1000;
        one.z = 0x1000;
        ov96_021EABE0(*(void **)c, 0);
        if (anim != 0) {
            ov96_021EB52C(*(void **)(c + 8), 1, 1);
            if (i / 3 == mode) {
                if (IsSEPlaying(0x890) == 0) {
                    PlaySE(0x890);
                }
            }
        } else {
            ov96_021EB52C(*(void **)(c + 8), 1, 0);
        }
        Sprite_SetAffineScale(sprite, &one);
        ov96_021EAB38(*(void **)c, 1);
        if (state == 2 && A8(0x73c + i) == 0) {
            A8(0x73c + i) = 1;
            ov96_021EAF60(*(void **)(alloc + 0x76c), i, 1, c + 0x68);
        } else if (state == 1 && A8(0x73c + i) == 1) {
            A8(0x73c + i) = 0;
            ov96_021EAF60(*(void **)(alloc + 0x76c), i, 1, c + 0x48);
        }
        flags[i] = 0;
        prev = entry[i];
        tmp8 = entry[0xc + i];
        anim2 = (u8)(((s32) * (u32 *)(entry + 0x18) >> (i * 2)) & 3);
        *(s32 *)(c + 0xc) = prev << 12;
        *(s32 *)(c + 0x10) = tmp8 << 12;
        matrix.x = 0;
        matrix.y = 0;
        matrix.z = 0;
        matrix.x = *(s32 *)(c + 0xc);
        matrix.y = *(s32 *)(c + 0x10);
        Sprite_SetMatrix(ov96_021EB5B8(*(void **)(c + 4)), &matrix);
        matrix2.x = 0;
        matrix2.y = 0;
        matrix2.z = 0;
        matrix2.x = *(s32 *)(c + 0xc);
        matrix2.y = *(s32 *)(c + 0x10);
        switch (ov96_021E60C0(param0, i / 3, i % 3)[7]) {
        case 1:
            matrix2.y = matrix2.y - (2 << 14);
            break;
        case 2:
            matrix2.y = matrix2.y - (2 << 14);
            break;
        case 3:
            matrix2.y = matrix2.y - (1 << 16);
            break;
        default:
            GF_AssertFail();
            break;
        }
        Sprite_SetMatrix(ov96_021EB5B8(*(void **)(c + 8)), &matrix2);
        obj = ov96_021EAA04(*(void **)(alloc + 0x76c), i);
        want = (u8)(anim2 + 1);
        ov96_021EAC0C(obj, want);
        ov96_021EB01C(obj, prev, tmp8, 1);
        if (i / 3 == mode) {
            if (ov96_021E60D8(param0, mode, i % 3)[2] != 0) {
                ov96_021EAED4(obj, 0, *(s16 *)(alloc + 0x7d0), want, 0);
            }
        }
        if (flagB != 0) {
            obj2 = ov96_021EAA04(*(void **)(alloc + 0x76c), i);
            Sprite_SetAnimActiveFlag(sprite, 0);
            A8(0x7af) = 1;
            ov96_021F2E80(param0, alloc + 0x7ac, obj2, i, want);
        } else {
            Sprite_SetAnimActiveFlag(sprite, 1);
        }
        if (selected == i) {
            if (stat >= 1 && stat <= 4) {
                sprite2 = ov96_021EB5B8(*(void **)(c + 4));
                ov96_021EB52C(*(void **)(c + 4), 1, 1);
                Sprite_SetAnimCtrlSeq(sprite2, stat + 2);
                if (stat <= 2) {
                    PlaySE(0x88d);
                } else if (stat == 3) {
                    PlaySE(0x88e);
                } else {
                    PlaySE(0x88f);
                }
                ov96_021F4390(A32(0x774), i / 3, stat);
                ov96_021F2E2C(alloc + 0x7ac, i);
            } else {
                GF_AssertFail();
            }
        }
        if (i / 3 == mode) {
            ov96_021EB06C(*(void **)c, prev, tmp8, &out80, &out7C);
            if (state == 1) {
                if (ov96_021F3180((u8)A16(0x730), (u16)out80, (u16)out7C, &out78) != 0) {
                    ov96_021E658C(param0, i % 3, 1);
                    continue;
                }
            }
            ov96_021E658C(param0, i % 3, 0);
        }
    }
    ov96_021F2FEC(alloc, entry);
    if (A8(0x7af) != 0 && flagB == 0) {
        ov96_021F2D98(alloc + 0x7ac);
    }
    ov96_021F4688(A32(0x774), seqBase, shape);
    ov96_021F45F4(*(u8 **)(alloc + 0x774), flagB, flags);
}
