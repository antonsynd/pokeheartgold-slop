#include "global.h"
#include "assert.h"
#include "filesystem.h"
#include "follow_mon.h"

typedef struct PokeathlonCourseData PokeathlonCourseData;
extern u8 *PokeathlonCourse_GetParticipantUnk04(PokeathlonCourseData *data, int index);

typedef struct UnkStruct_ov96_021E6168 {
    u16 species;
    u16 unk2;
    u16 unk4;
    u8 unk6;
    u8 unk7;
    int unk8;
    u32 unkC;
} UnkStruct_ov96_021E6168;

void ov96_021E6168(PokeathlonCourseData *data, int index, int slot, UnkStruct_ov96_021E6168 *out) {
    u8 *base;
    u8 *ent;
    u32 buf; // the asm reads into the stack slot that holds the pushed r3 (out)

    buf = (u32)out;
    GF_ASSERT(slot < 3);
    base = PokeathlonCourse_GetParticipantUnk04(data, index);
    ent = base + slot * 0x28;
    out->unk6 = ent[0x10];
    out->species = *(u16 *)ent;
    out->unk2 = *(u16 *)(ent + 2);
    out->unk7 = ent[0x11];
    out->unk8 = index;
    out->unkC = *(u32 *)(ent + 4);
    GF_ASSERT(out->species != 0);
    if (out->species == 0) {
        out->species = 1;
    }
    ReadWholeNarcMemberByIdPair(&buf, (NarcId)0x8d, SpeciesToOverworldModelIndexOffset(out->species));
    if (((u8 *)&buf)[1] != 0) {
        out->unk4 = 1;
    } else {
        out->unk4 = 0;
    }
}
