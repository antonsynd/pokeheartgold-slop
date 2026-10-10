#include "global.h"
#include "player_data.h"
#include "pokeathlon/pokeathlon.h"

extern u8 _0221A7D8[];

void ov96_021E7C04(u32 param0, u8 *param1, u8 *param2);
void ov96_021E7CC8(PokeathlonCourseData *data, u8 *rec, u8 *param2);

#define RD16(base, off) (*(u16 *)((u8 *)(base) + (off)))
#define RD32(base, off) (*(u32 *)((u8 *)(base) + (off)))
#define RD8(base, off)  (*(u8 *)((u8 *)(base) + (off)))

void ov96_021E7A2C(PokeathlonCourseData *param0, u8 *param1) {
    u8 entries[0xa0];
    u8 scratch[0x20];
    u8 rotation = ov96_021E5F24(param0);
    u8 i;
    u8 j;
    u8 k;
    u8 m;

    for (i = 0; i < 4; i++) {
        u8 slot = RD32(param0, 0x3d8 + i * 4);
        u8 *rec = param1 + slot * 0xa4;
        u8 code;

        if (RD32(rec, 0x28) < 9999999) {
            RD32(rec, 0x28) = RD32(rec, 0x28) + 1;
        }
        code = _0221A7D8[slot];

        for (j = 0; j < 5; j++) {
            u8 *e = entries + j * 0x20;
            RD16(e, 0) = RD16(rec, j * 8);
            for (k = 0; k < 3; k++) {
                RD16(e, 2 + k * 2) = RD16(rec, j * 8 + 2 + k * 2);
            }
            RD32(e, 8) = RD32(rec, j * 0x18 + 0x2c);
            for (k = 0; k < 8; k++) {
                RD16(e, 0xc + k * 2) = RD16(rec, j * 0x18 + 0x30 + k * 2);
            }
            RD8(e, 0x1c) = RD8(rec, j * 0x18 + 0x40);
        }

        for (j = 0; j < 4; j++) {
            u8 p = (rotation + j) % 4;
            PlayerProfile *profile;
            const u16 *name;

            RD16(scratch, 0) = RD16(param0, i * 2 + p * 8 + 0x8d4);
            for (k = 0; k < 3; k++) {
                RD16(scratch, 2 + k * 2) = (u16)((RD16(param0, 0x3f0 + p * 0x7c + k * 0x28 + 2) << 10) + RD16(param0, 0x3f0 + p * 0x7c + k * 0x28));
            }
            profile = PokeathlonCourse_GetPlayerProfileFromData(param0, p);
            RD32(scratch, 8) = PlayerProfile_GetTrainerID(profile);
            name = PlayerProfile_GetNamePtr(profile);
            for (m = 0; m < 8; m++) {
                RD16(scratch, 0xc + m * 2) = name[m];
            }
            RD8(scratch, 0x1c) = PlayerProfile_GetLanguage(profile);
            ov96_021E7C04(code, scratch, entries);
        }
        ov96_021E7CC8(param0, rec, entries);
    }
}
