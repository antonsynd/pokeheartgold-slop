#include "global.h"
#include "pokeathlon/pokeathlon.h"
#include "pokeathlon/pokeathlon_save.h"

void ov96_021EDF84(u32 *dst, Pokeathlon_UnkSubStruct_B00 *src);
void ov96_021EDFFC(u8 *out, u32 *in);
u8 ov96_021EE040(u8 *in, u8 *out);
u32 ov96_021EDF7C(u32 idx);
u32 ov96_021EDF5C(int value);

typedef struct UnkStruct_ov96_021EE0AC {
    u32 unk0;
    u32 unk4;
} UnkStruct_ov96_021EE0AC;

void ov96_021EE0AC(UnkStruct_ov96_021EE0AC *param0, PokeathlonCourseData *param1) {
    // The original's frame is [push {r3-r6, lr}] [0x94 bytes of locals]; the table is at sp+0x20, i.e. 0x88
    // below the entry sp, and the index (a u8 from ov96_021EE040) is not bounds checked.
    u32 saved[5];
    register u32 *savedPtr __asm__("r0") = saved;
    __asm__ volatile("str r3, [r0]\n\tstr r4, [r0, #4]\n\tstr r5, [r0, #8]\n\tstr r6, [r0, #12]\n\tmov r1, lr\n\tstr r1, [r0, #16]"
                     :
                     : "l"(savedPtr)
                     : "r1", "memory");
    u32 *entrySp = (u32 *)((u8 *)__builtin_frame_address(0) + 8);
    u32 table[29] __attribute__((aligned(4)));
    u8 bytes[0x20] __attribute__((aligned(4)));
    u8 idx;
    int i;
    u32 entry;
    Pokeathlon_UnkSubStruct_B00 *src;

    for (i = 0; i < 29; i++) {
        table[i] = 0;
    }
    for (i = 1; i < 0x1e; i++) {
        bytes[i] = 0;
    }
    src = PokeathlonSave_GetAgainUnkB00(Save_Pokeathlon_Get(PokeathlonCourse_GetSaveData(param1)));
    ov96_021EDF84(table, src);
    ov96_021EDFFC(&bytes[1], table);
    idx = ov96_021EE040(&bytes[1], &bytes[0]);
    param0->unk0 = bytes[0] + ov96_021EDF7C(idx);
    if (idx < 29) {
        entry = table[idx];
    } else if (idx < 34) {
        entry = saved[idx - 29];
    } else {
        entry = (entrySp - 0x22)[idx];
    }
    param0->unk4 = (param0->unk4 & 0xff000000) | (entry & 0x00ffffff);
    param0->unk4 = (ov96_021EDF5C(src->unk70) << 24) | (param0->unk4 & 0x00ffffff);
}
