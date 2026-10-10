#include "global.h"
#include "gf_gfx_planes.h"
#include "pokepic.h"
#include "unk_02026E30.h"

typedef struct UnkStruct_ov40_0222BD30 {
    u8 filler_000[4];
    u32 unk_04;
    u8 filler_008[0x44 - 0x08];
    int unk_44;
    u8 filler_048[0x64 - 0x48];
    PokepicManager *unk_64;
} UnkStruct_ov40_0222BD30;

typedef int (*UnkFunc_ov40_0222BD30)(UnkStruct_ov40_0222BD30 *work, void *self, u32 offset, u32 r3);

extern UnkFunc_ov40_0222BD30 ov40_022450F0[];
extern UnkFunc_ov40_0222BD30 ov40_02245108[];
extern UnkFunc_ov40_0222BD30 ov40_02245140[];
extern UnkFunc_ov40_0222BD30 ov40_02245168[];
extern UnkFunc_ov40_0222BD30 ov40_02245220[];
extern UnkFunc_ov40_0222BD30 ov40_02245238[];
extern UnkFunc_ov40_0222BD30 ov40_0224533C[];
extern UnkFunc_ov40_0222BD30 ov40_02245368[];
extern UnkFunc_ov40_0222BD30 ov40_02245470[];
extern UnkFunc_ov40_0222BD30 ov40_022455F4[];
extern UnkFunc_ov40_0222BD30 ov40_02245B98[];
extern UnkFunc_ov40_0222BD30 ov40_02245B44[];
extern UnkFunc_ov40_0222BD30 ov40_02245B30[];
extern UnkFunc_ov40_0222BD30 ov40_02245CA8[];

void ov40_0222BF64(UnkStruct_ov40_0222BD30 *work, int a1, int a2, int *state);
void ov40_0222BF80(UnkStruct_ov40_0222BD30 *work, int a1);
void ov40_02230D20(UnkStruct_ov40_0222BD30 *work);
void ov40_0223D5E8(UnkStruct_ov40_0222BD30 *work);

// Each call through a table is compared on all four argument registers: r1 holds the pointer
// itself, r2 the table offset and r3 still holds the function's own fourth argument.
#define RUN_TABLE(table) ((table)[work->unk_04])(work, (table)[work->unk_04], work->unk_04 * 4, entryR3)

int ov40_0222BD30(UnkStruct_ov40_0222BD30 *work, int *state) {
    u32 entryR3;
    __asm__ volatile("movs %0, r3" : "=l"(entryR3) : : "cc");
    int result;

    switch (*state) {
    case 0:
        result = RUN_TABLE(ov40_022450F0);
        ov40_0222BF64(work, 1, result, state);
        if (result != 0) {
            if (work->unk_44 == 1) {
                ov40_0222BF80(work, 0);
            } else {
                ov40_0222BF80(work, 1);
            }
        }
        break;
    case 1:
        result = RUN_TABLE(ov40_02245108);
        ov40_0222BF64(work, 0x10, result, state);
        break;
    case 2:
        result = RUN_TABLE(ov40_02245140);
        ov40_0222BF64(work, 0x10, result, state);
        break;
    case 3:
        result = RUN_TABLE(ov40_02245168);
        ov40_0222BF64(work, 0x10, result, state);
        break;
    case 4:
        result = RUN_TABLE(ov40_02245220);
        ov40_0222BF64(work, 0x10, result, state);
        break;
    case 5:
        result = RUN_TABLE(ov40_02245238);
        ov40_0222BF64(work, 0x10, result, state);
        break;
    case 6:
        result = RUN_TABLE(ov40_0224533C);
        ov40_0222BF64(work, 0x10, result, state);
        break;
    case 7:
        result = RUN_TABLE(ov40_02245368);
        ov40_0222BF64(work, 0x10, result, state);
        break;
    case 8:
    case 9:
        result = RUN_TABLE(ov40_02245470);
        ov40_0222BF64(work, 0x10, result, state);
        break;
    case 10:
    case 11:
    case 12:
        result = RUN_TABLE(ov40_022455F4);
        ov40_0222BF64(work, 0x10, result, state);
        break;
    case 13:
        result = RUN_TABLE(ov40_02245B98);
        ov40_0222BF64(work, 0x10, result, state);
        break;
    case 14:
        result = RUN_TABLE(ov40_02245B44);
        ov40_0222BF64(work, 0x10, result, state);
        break;
    case 15:
        result = RUN_TABLE(ov40_02245B30);
        ov40_0222BF64(work, 0x10, result, state);
        break;
    case 16:
        ov40_0222BF64(work, 0xFF, 1, state);
        break;
    case 17:
        result = RUN_TABLE(ov40_02245CA8);
        ov40_0222BF64(work, 0x10, result, state);
        break;
    case 18:
        ov40_02230D20(work);
        break;
    default:
        return 1;
    }

    Thunk_G3X_Reset();
    PokepicManager_DrawAll(work->unk_64);
    RequestSwap3DBuffers(1, 0);
    ov40_0223D5E8(work);
    return 0;
}
