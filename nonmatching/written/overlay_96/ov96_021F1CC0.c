#include "global.h"
#include "pokeathlon/pokeathlon.h"

extern s32 ov96_0221BC64[3];

BOOL ov96_021F2F7C(void *obj, s32 a, s32 b);
void ov96_021E8228(PokeathlonCourseData *data, u32 index, u32 sub, u32 kind, u32 value);
BOOL ov96_021F218C(u8 *a, u8 *b);
void ov96_021F2AA4(u8 *entity);
BOOL ov96_021F22FC(u8 *alloc, u8 *entity, u8 index, VecFx32 *out);
void ov96_021F234C(u8 *alloc);
u16 CalcAngleBetweenVecs(VecFx32 *a, VecFx32 *b);

#define ENTITY(base, i) ((base) + ((i) / 3) * 0x1b0 + ((i) % 3) * 0x90)

void ov96_021F1CC0(PokeathlonCourseData *param0) {
    u8 *alloc = PokeathlonCourse_GetHeapAllocPtr4(param0);
    u8 *base = alloc + 0x20;
    u8 *e;
    u8 *f;
    int i;
    int j;
    int flag;
    VecFx32 forward;
    VecFx32 cross;
    VecFx32 angleA;
    VecFx32 zero50;
    VecFx32 zero2C;
    VecFx32 cur;
    VecFx32 dir;
    VecFx32 diff;
    float scale;
    float distF;
    float step;
    s32 dist;
    u16 angle;

    for (i = 0; i < 12; i++) {
        e = ENTITY(base, i);
        if (e[0x46] != 0) {
            e[0x47] = (s8)e[0x47] - 1;
            if ((s8)e[0x47] <= 0) {
                e[0x46] = 0;
            }
        }
        if (*(s32 *)(e + 0x18) != 0) {
            if (ov96_021F2F7C(*(void **)e, *(s32 *)(e + 0x28), *(s32 *)(e + 0x2c)) != 0) {
                *(s32 *)(e + 0x18) = 0;
                e[0x45] = 0;
                e[0x44] = 0;
                ov96_021E8228(param0, (u8)(i / 3), (u8)(i % 3), 5, 1);
                ov96_021E8228(param0, (u8)(i / 3), (u8)(i % 3), 1, 1);
                f = alloc + i;
                if (f[0x7e0] != 0) {
                    ov96_021E8228(param0, (u8)(i / 3), (u8)(i % 3), 8, 1);
                }
                f[0x7e0] = 0;
            }
        }
    }
    for (i = 0; i < 12; i++) {
        e = ENTITY(base, i);
        if (*(s32 *)(e + 0x18) == 2) {
            flag = 1;
            for (j = 0; j < 12; j++) {
                if (i == j) {
                    continue;
                }
                f = ENTITY(base, j);
                if (*(s32 *)(f + 0x18) != 0) {
                    if (ov96_021F218C(e, f) != 0) {
                        flag = 0;
                        break;
                    }
                }
            }
            if (flag != 0) {
                *(s32 *)(e + 0x18) = 1;
            }
        }
    }
    forward.x = ov96_0221BC64[0];
    forward.y = ov96_0221BC64[1];
    forward.z = ov96_0221BC64[2];
    for (i = 0; i < 12; i++) {
        e = ENTITY(base, i);
        if (*(s32 *)(e + 0x18) == 0) {
            continue;
        }
        e[0x41] = 0;
        *(s32 *)(e + 0x34) = 0;
        *(s32 *)(e + 0x38) = 0;
        *(s32 *)(e + 0x3c) = 0;
        cur = *(VecFx32 *)(e + 0x28);
        VEC_Subtract((VecFx32 *)(e + 0x1c), &cur, &diff);
        dist = VEC_Mag(&diff);
        if (dist <= 0) {
            ov96_021F2AA4(e);
            continue;
        }
        VEC_Normalize(&diff, &dir);
        if (e[0x44] != 0) {
            scale = 0.5f;
        } else {
            scale = (float)((double)(float)e[0x89] / 10.0);
        }
        distF = (float)dist;
        step = 4096.0f * scale;
        if (distF <= step) {
            cur = *(VecFx32 *)(e + 0x1c);
        } else {
            zero50.x = 0;
            zero50.y = 0;
            zero50.z = 0;
            VEC_MultAdd((fx32)(4096.0f * scale), &dir, &zero50, &diff);
            VEC_Add(&diff, &cur, &cur);
        }
        if (dist != 0) {
            angleA = forward;
            cross.x = dir.y;
            cross.y = 0;
            cross.z = dir.x;
            angle = CalcAngleBetweenVecs(&angleA, &cross);
            if (angle <= 0x2000 || angle >= 0xE000) {
                e[0x40] = 4;
            } else if (angle > 0x2000 && angle < 0x6000) {
                e[0x40] = 2;
            } else if (angle >= 0x6000 && angle <= 0xA000) {
                e[0x40] = 3;
            } else {
                e[0x40] = 1;
            }
        }
        if (*(s32 *)(e + 0x18) == 1) {
            if (ov96_021F22FC(alloc, e, (u8)i, &diff) == 0) {
                zero2C.x = 0;
                zero2C.y = 0;
                zero2C.z = 0;
                if (e[0x44] != 0) {
                    continue;
                }
                e[0x41] = 1;
                scale = (float)((double)(float)*(u16 *)(e + 0x8a) / 10.0);
                VEC_MultAdd((fx32)(4096.0f * (scale + (float)e[0x46])), &dir, &zero2C, (VecFx32 *)(e + 0x34));
                if (*(u16 *)(e + 0x8e) != 0) {
                    *(u16 *)(e + 0x8e) = *(u16 *)(e + 0x8e) - 1;
                } else {
                    GF_AssertFail();
                }
            } else {
                ov96_021F2AA4(e);
                *(VecFx32 *)(e + 0x28) = cur;
            }
        } else {
            *(u16 *)(e + 0x8e) = 0;
            *(VecFx32 *)(e + 0x28) = cur;
        }
    }
    ov96_021F234C(alloc);
}
