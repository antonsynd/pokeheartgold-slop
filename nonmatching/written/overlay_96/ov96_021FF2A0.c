#include "global.h"

int sub_02020F4C(void *a, void *b, void *c, void *d, void *e);
int ov96_021FF67C(VecFx32 *param_1, VecFx32 *param_2, VecFx32 *param_3, int param_4);

extern const int ov96_0221C5FC[4];
extern const int ov96_0221C60C[4];

/*
 * The asm keeps the objects it passes to callees (and reads back after them) in its own frame: with
 * asm_sp = entry_sp - 0xb8 (push {r4-r7, lr}, then 0xa4 bytes), the position pair at +0x24, the target pair at
 * +0x1c, the callee's output vector at +0x2c, the segment point at +0x78, the offset vector at +0x6c, the
 * MultAdd operand at +0x60 and its result at +0x54. The callees are not run by the check, so they leave those
 * words as they were; the C reads and passes them at the same addresses (entry_sp - 0xb8 + off, with
 * `__builtin_frame_address(0) + 8` as the entry sp under the check's clang -O0 Thumb build). framePadding keeps
 * the C's own locals out of that part of the frame.
 *
 * The fifth argument (param_5) is in the caller's frame at entry_sp, and the asm writes the advanced pointer back
 * into that slot on the first-phase hit path.
 */
#define FRAME_SIZE 0xb8
#define SLOT(off) ((s32 *)(asmSp + (off)))

int ov96_021FF2A0(VecFx32 *param_1, VecFx32 *param_2, int param_3, int *param_4, int *param_5)
{
    u8 framePadding[0x90]; /* first local: keeps the C locals below the asm's frame image */
    u8 *asmSp;
    int *param_5Slot;
    int *dst;
    int i;
    int j;
    int *entry;
    int hit;
    s32 min;
    s32 max;
    VecFx32 *seg;
    int ret;

    asmSp = (u8 *)__builtin_frame_address(0) + 8 - FRAME_SIZE;
    param_5Slot = (int *)((u8 *)__builtin_frame_address(0) + 8);
    (void)framePadding;
    dst = param_5;

    if (*param_4 == 3) {
        return 0;
    }

    *SLOT(0x24) = (param_1->x + (int)((u32)(param_1->x >> 11) >> 20)) >> 12;
    *SLOT(0x28) = (param_1->y + (int)((u32)(param_1->y >> 11) >> 20)) >> 12;
    *SLOT(0x1c) = (param_2->x + (int)((u32)(param_2->x >> 11) >> 20)) >> 12;
    *SLOT(0x20) = (param_2->y + (int)((u32)(param_2->y >> 11) >> 20)) >> 12;

    for (i = 0; i < 4; i++) {
        entry = param_4 + 4 * i;
        if (sub_02020F4C(param_4 + 9 + 4 * i, param_4 + 11 + 4 * i, SLOT(0x24), SLOT(0x1c), SLOT(0x2c)) != 0) {
            dst[0] = *SLOT(0x2c) << 12;
            dst[1] = *SLOT(0x30) << 12;
            dst[2] = 0;
            return ov96_0221C5FC[i];
        }
        hit = 0;
        if (*SLOT(0x24) == entry[9]) {
            s32 a = entry[10];
            s32 b = entry[12];
            if (a < b) {
                min = a;
                max = b;
            } else {
                min = b;
                max = a;
            }
            if (!(min > *SLOT(0x28)) && !(*SLOT(0x28) > max)) {
                hit = 1;
            }
        }
        if (hit) {
            s32 a = param_1->x;
            s32 b = param_1->y;
            dst[0] = a;
            dst[1] = b;
            dst += 2;
            *param_5Slot = (int)dst;
            dst[0] = param_1->z;
            return ov96_0221C5FC[i];
        }
    }

    entry = param_4;
    for (j = 0; j < 4; j++) {
        VecFx32 *segPoint = (VecFx32 *)SLOT(0x78);

        segPoint->x = entry[1] << 12;
        segPoint->y = entry[2] << 12;
        segPoint->z = 0;
        VEC_Subtract(param_2, segPoint, (VecFx32 *)SLOT(0x6c));
        if (!(VEC_Mag((VecFx32 *)SLOT(0x6c)) > (param_3 << 12))) {
            ret = ov96_021FF67C(param_1, param_2, segPoint, param_3 << 12);
            VEC_Subtract(param_2, param_1, (VecFx32 *)SLOT(0x60));
            VEC_MultAdd(ret, (VecFx32 *)SLOT(0x60), param_1, (VecFx32 *)SLOT(0x54));
            dst[0] = *SLOT(0x54);
            dst[1] = *SLOT(0x58);
            dst[2] = 0;
            return ov96_0221C60C[j];
        }
        entry += 2;
    }

    {
        s32 x = param_2->x;
        s32 y;
        s32 left;
        s32 right;
        s32 top;
        s32 bottom;
        s32 dLeft;
        s32 dRight;
        s32 dTop;
        s32 dBottom;
        int xCode;
        int yCode;
        int xFirst;
        int yFirst;
        int result;

        if ((param_4[1] << 12) > x) {
            return 0;
        }
        if (x > (param_4[5] << 12)) {
            return 0;
        }
        y = param_2->y;
        if ((param_4[2] << 12) > y) {
            return 0;
        }
        if (y > (param_4[6] << 12)) {
            return 0;
        }

        {
            s32 a = param_2->x;
            s32 b = param_2->y;
            dst[0] = a;
            dst[1] = b;
            dst[2] = param_2->z;
        }
        left = param_4[1];
        right = param_4[5];
        x = param_2->x;
        dLeft = (left << 12) - x;
        dRight = (right << 12) - x;
        if (dLeft < 0) {
            dLeft = (s32)(0u - (u32)dLeft);
        }
        if (dRight < 0) {
            dRight = (s32)(0u - (u32)dRight);
        }
        if (dLeft < dRight) {
            xCode = 0xd;
        } else {
            dLeft = dRight;
            xCode = 0xb;
        }

        top = param_4[2];
        y = param_2->y;
        bottom = param_4[6];
        dTop = (top << 12) - y;
        dBottom = (bottom << 12) - y;
        if (dTop < 0) {
            dTop = (s32)(0u - (u32)dTop);
        }
        if (dBottom < 0) {
            dBottom = (s32)(0u - (u32)dBottom);
        }
        if (dTop < dBottom) {
            yCode = 0xa;
        } else {
            dTop = dBottom;
            yCode = 0xc;
        }

        if (dLeft <= dTop) {
            xFirst = 1;
            yFirst = 0;
            result = xCode;
        } else {
            xFirst = 0;
            yFirst = 1;
            result = yCode;
        }
        if (xFirst) {
            if (xCode == 0xd) {
                dst[0] = (left - param_3) << 12;
                return result;
            }
            dst[0] = (right + param_3) << 12;
            return result;
        }
        if (yFirst) {
            if (yCode == 0xa) {
                dst[1] = (top - param_3) << 12;
                return result;
            }
            dst[1] = (bottom + param_3) << 12;
            return result;
        }
        return result;
    }
}
