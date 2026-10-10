#include "global.h"
#include "assert.h"
#include "filesystem.h"
#include "msgdata.h"
#include "player_data.h"
#include "pokemon.h"
#include "string_util.h"
#include "pokeathlon/pokeathlon.h"

void ov96_021E860C(u32 count, int mode, int flag, u8 *out);
u32 ov96_021E679C(u16 species, int form);

#define RD8(base, off)  (*(u8 *)((u8 *)(base) + (off)))
#define RD16(base, off) (*(u16 *)((u8 *)(base) + (off)))
#define RD32(base, off) (*(u32 *)((u8 *)(base) + (off)))

// The original reads the order bytes through a pointer that moves on once per participant and is not bounds checked,
// so a large count reads past its stack buffer: unwritten frame words, the saved registers, the caller's frame.
// The helper therefore uses the original's frame at its own addresses (entry stack pointer minus 0x58, the buffers at
// +0x24 onwards); ov96_021E8484 reserves stack below its saved registers and forces clang to save r4-r6 (with r7 and
// lr) so that they sit where the original's saved registers are.
static void ov96_021E8484_Work(PokeathlonCourseData *param0, int param1, u32 sp0) {
    u8 *frame = (u8 *)(sp0 - 0x58);
    u16 *species = (u16 *)(frame + 0x24);
    u8 *order = frame + 0x2c;
    u8 *stats = frame + 0x2f;
    MsgData *msgData;
    NARC *narcStats;
    NARC *narcSpecies;
    int start;
    u8 *orderPtr;
    u8 *args;
    int k;

    // The wrapper's own spill slots are in this part of the frame; the original's unwritten words read as zero.
    for (k = 0x24; k < 0x44; k += 4) {
        *(u32 *)(frame + k) = 0;
    }
    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, (NarcId)0x1b, 0x136, PokeathlonCourse_GetHeapID(param0));
    start = 4 - param1;
    args = (u8 *)param0->args;
    ov96_021E860C(param1, RD8(args, 0xc), RD8(args, 0xf), order);
    narcStats = NARC_New((NarcId)0xa9, PokeathlonCourse_GetHeapID(param0));
    narcSpecies = NARC_New((NarcId)0x104, PokeathlonCourse_GetHeapID(param0));
    if (start < 4) {
        orderPtr = order;
        do {
            u8 *p = (u8 *)PokeathlonCourse_GetParticipantData(param0, start);
            int j;
            u8 *mon;
            u8 *nameDst;
            u16 *speciesPtr;

            RD32(p, 0) = *orderPtr;
            if (*orderPtr == 0) {
                GF_AssertFail();
            }
            NARC_ReadWholeMember(narcSpecies, RD32(p, 0) - 1, species);
            {
                String *name = NewString_ReadMsgData(msgData, frame[0x2a]);
                PlayerProfile *profile = PokeathlonCourse_GetPlayerProfileFromData(param0, start);
                Save_Profile_PlayerName_Set(profile, (u16 *)String_cstr(name));
                String_Delete(name);
            }
            mon = p;
            nameDst = p + 0x16;
            speciesPtr = species;
            for (j = 0; j < 3; j++) {
                u8 gender;
                String *speciesName;

                RD16(mon, 4) = *speciesPtr;
                RD16(mon, 6) = 0;
                RD8(mon, 0x14) = 0;
                RD32(mon, 8) = 0;
                switch ((u8)GetMonBaseStat(RD16(mon, 4), 0x12)) {
                case 0:
                    gender = 0;
                    break;
                case 0xfe:
                    gender = 1;
                    break;
                case 0xff:
                    gender = 2;
                    break;
                default:
                    gender = 0;
                    break;
                }
                RD8(mon, 0x15) = gender;
                NARC_ReadWholeMember(narcStats, ov96_021E679C(RD16(mon, 4), 0), stats);
                RD8(mon, 0xc) = stats[0];
                RD8(mon, 0xd) = stats[1];
                RD8(mon, 0xe) = stats[2];
                RD8(mon, 0xf) = stats[3];
                RD8(mon, 0x10) = stats[4];
                speciesName = GetSpeciesName(*speciesPtr, PokeathlonCourse_GetHeapID(param0));
                CopyU16StringArrayN((u16 *)nameDst, String_cstr(speciesName), 0xb);
                String_Delete(speciesName);
                speciesPtr++;
                mon += 0x28;
                nameDst += 0x28;
            }
            start++;
            orderPtr++;
        } while (start < 4);
    }
    NARC_Delete(narcSpecies);
    NARC_Delete(narcStats);
    DestroyMsgData(msgData);
}

void ov96_021E8484(PokeathlonCourseData *param0, int param1) {
    u8 reserve[0x400];

    // Make clang save r4-r6 (with r7 and lr) so they sit where the original's saved registers do.
    __asm__ volatile("" : : : "r4", "r5", "r6");
    ov96_021E8484_Work(param0, param1, (u32)__builtin_frame_address(0) + 8);
}
