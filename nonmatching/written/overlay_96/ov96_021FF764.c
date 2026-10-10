#include "global.h"

typedef struct UnkStruct_ov96_021FF764 {
    u8 unk_00[0x7C];
    s32 unk_7C;
    s32 unk_80;
    u8 unk_84[7];
    u8 unk_8B;
    VecFx32 unk_8C;
    u8 unk_98[4];
    u8 unk_9C;
    u8 unk_9D;
    u8 unk_9E[6];
    u8 unk_A4;
    u8 unk_A5[4];
    u8 unk_A9;
    u8 unk_AA[0x26];
    u8 unk_D0;
    u8 unk_D1[3];
} UnkStruct_ov96_021FF764; // size 0xD4

void ov96_021EB0A4(void *obj, s32 x, s32 y, s32 *outX, s32 *outY);
void ov96_021EAF78(void *obj, s32 x, s32 y, s32 *outX, s32 *outY, s32 *outRadius);
void ov96_021E8228(void *ctx, u32 param_2, u32 param_3, u32 param_4, u32 param_5);
void GF_AssertFail(void);

// The objects an entry points to are a table of pointers at its start, indexed by unk_8B.
#define OV96_021FF764_OBJECT(e) (*(void **)((u8 *)(e) + 4 * (e)->unk_8B))
// 0x1c-byte records are indexed by unk_8B too: a float at +0x20, a word at +0x24, bytes at +0x2f and +0x30.
#define OV96_021FF764_RECORD(e, id) ((u8 *)(e) + 0x1c * (id))

u32 ov96_021FF764(void *param_1, UnkStruct_ov96_021FF764 *param_2, VecFx32 *param_3)
{
    UnkStruct_ov96_021FF764 *entryI;
    UnkStruct_ov96_021FF764 *entryJ;
    u32 result;
    s32 i;
    s32 j;
    u32 idI;
    u32 savedId;
    void *objI;
    void *objJ;
    s32 xI;
    s32 yI;
    s32 xJ;
    s32 yJ;
    s32 radiusJ;
    s32 radiusI;
    VecFx32 posJ;
    VecFx32 posI;
    VecFx32 diff;
    VecFx32 zero;
    VecFx32 out;
    s32 xIOriginal;

    result = 0;
    posI.z = 0;
    posJ.z = 0;
    i = 0;
    entryI = param_2;
    do {
        idI = entryI->unk_8B;
        if (entryI->unk_9D != 0 || entryI->unk_A9 != 0) {
            goto next_i;
        }
        objI = OV96_021FF764_OBJECT(entryI);
        ov96_021EB0A4(objI, entryI->unk_7C / 4096, entryI->unk_80 / 4096, &xI, &yI);
        entryJ = param_2;
        for (j = 0; j < 4; j++, entryJ++) {
            s32 curX;

            if (i == j) {
                continue;
            }
            if (entryJ->unk_9D != 0) {
                continue;
            }
            curX = xI;
            objJ = OV96_021FF764_OBJECT(entryJ);
            ov96_021EB0A4(objJ, entryJ->unk_7C / 4096, entryJ->unk_80 / 4096, &xJ, &yJ);
            xIOriginal = entryI->unk_7C;
            if ((double)entryI->unk_7C > 3145728.0 && entryJ->unk_7C < 0x100000) {
                xJ = (s32)((double)xJ + 1024.0);
            } else if ((double)entryJ->unk_7C > 3145728.0 && xIOriginal < 0x100000) {
                curX = (s32)((double)curX + 1024.0);
            }
            ov96_021EAF78(objJ, xJ << 12, yJ << 12, &posJ.x, &posJ.y, &radiusJ);
            ov96_021EAF78(objI, curX << 12, yI << 12, &posI.x, &posI.y, &radiusI);
            VEC_Subtract(&posJ, &posI, &diff);
            if (VEC_Mag(&diff) < (radiusJ + radiusI) * 4096) {
                if (entryI->unk_98[j] != 0) {
                    continue;
                }
                zero.x = 0;
                zero.y = 0;
                zero.z = 0;
                if (VEC_DotProduct(&diff, &entryI->unk_8C) <= 0) {
                    continue;
                }
                if (VEC_Mag(&entryI->unk_8C) != 0) {
                    savedId = entryI->unk_8B;
                    VEC_MultAdd((s32)(4096.0f * *(float *)(OV96_021FF764_RECORD(entryI, savedId) + 0x20)), &entryI->unk_8C, &zero, &entryJ->unk_8C);
                    if (VEC_Mag(&entryJ->unk_8C) > 0xB000) {
                        zero.x = 0;
                        zero.y = 0;
                        zero.z = 0;
                        VEC_Normalize(&entryJ->unk_8C, &entryJ->unk_8C);
                        VEC_MultAdd(0xB000, &entryJ->unk_8C, &zero, &entryJ->unk_8C);
                    }
                }
                {
                    u8 *record = OV96_021FF764_RECORD(entryJ, idI);

                    if (record[0x30] == 1) {
                        *(u32 *)(record + 0x24) = 0;
                        record[0x30] = 2;
                        entryJ->unk_A4 = record[0x2F];
                        ov96_021E8228(param_1, entryJ->unk_D0, entryJ->unk_8B, 1, 1);
                    }
                }
                entryI->unk_8C.x = 0;
                entryI->unk_8C.y = 0;
                entryI->unk_8C.z = 0;
                {
                    u8 *record = OV96_021FF764_RECORD(entryI, savedId);

                    if (record[0x30] == 1) {
                        *(u32 *)(record + 0x24) = 0;
                        record[0x30] = 2;
                        entryI->unk_A4 = record[0x2F];
                        ov96_021E8228(param_1, entryI->unk_D0, entryI->unk_8B, 1, 1);
                    }
                }
                if (entryI->unk_98[j] != 0) {
                    GF_AssertFail();
                }
                if (entryJ->unk_98[i] != 0) {
                    GF_AssertFail();
                }
                entryJ->unk_98[j] = 1;
                entryI->unk_98[i] = 1;
                if (result == 0) {
                    out.x = 0;
                    out.y = 0;
                    out.z = 0;
                    result = 1;
                    VEC_Subtract(&posJ, &posI, &out);
                    VEC_Normalize(&out, &out);
                    VEC_MultAdd(radiusI << 12, &out, &posI, &out);
                    if ((double)out.x >= 4194304.0) {
                        out.x = (s32)((double)out.x - 4194304.0);
                    }
                    *param_3 = out;
                }
                entryJ->unk_A9 = 6;
                entryI->unk_A9 = 0x12;
                ov96_021E8228(param_1, entryJ->unk_D0, entryJ->unk_8B, 4, 1);
                ov96_021E8228(param_1, entryI->unk_D0, entryI->unk_8B, 4, 1);
                break;
            } else {
                entryI->unk_98[j] = 0;
                entryJ->unk_98[i] = 0;
            }
        }
    next_i:
        entryI++;
        i++;
    } while (i < 4);
    return result;
}
