#include "global.h"
#include "pokemon.h"
#include "msgdata.h"
#include "pm_version.h"

extern const u16 ov80_0223C048[];

extern int ov80_02236AF0(u8 challengeMode);
extern void ov80_02229EF4(void *out, u32 setID, int mode);
extern u16 FrontierFieldSystem_0204B510(void *battleTower);

u32 ov80_02236734(u8 *battleTower, u8 *dto, u16 setID, u32 otID, u32 givenPersonality, u8 ivs, u8 partyIndex, int giveReservedItem, u32 heapID) {
    u16 monData[8];
    u8 *monDataBytes = (u8 *)monData;
    u32 friendship;
    u32 personality;
    u32 ivBits;
    u32 iv;
    u32 value;
    int i;
    int evs;
    int count;
    int ability;
    u16 *dto16 = (u16 *)dto;

    MI_CpuFill8(dto, 0, 0x38);
    ov80_02229EF4(monData, setID, ov80_02236AF0(battleTower[0xf]));

    dto16[0] = (dto16[0] & 0xf800) | (monData[0] & 0x7ff);
    dto16[0] = (dto16[0] & 0x7ff) | (u16)(monData[7] << 11);
    if (giveReservedItem != 0) {
        dto16[1] = ov80_0223C048[partyIndex];
    } else {
        dto16[1] = monData[6];
    }

    friendship = 0xff;
    for (i = 0; i < 4; i++) {
        dto16[2 + i] = monData[1 + i];
        if (monData[1 + i] == 0xda) {
            friendship = 0;
        }
    }

    *(u32 *)(dto + 0xc) = otID;

    if (givenPersonality == 0) {
        do {
            u32 lo = FrontierFieldSystem_0204B510(battleTower);
            u32 hi = FrontierFieldSystem_0204B510(battleTower);
            personality = lo | (hi << 16);
        } while (monDataBytes[0xb] != GetNatureFromPersonality(personality) || CalcShininessByOtIdAndPersonality(otID, personality) == 1);
        *(u32 *)(dto + 0x10) = personality;
    } else {
        personality = givenPersonality;
        *(u32 *)(dto + 0x10) = personality;
    }

    iv = ivs & 0x1f;
    ivBits = *(u32 *)(dto + 0x14);
    ivBits = (ivBits & 0xc0000000) | iv | (iv << 5) | (iv << 10) | (iv << 15) | (iv << 20) | (iv << 25);
    *(u32 *)(dto + 0x14) = ivBits;

    count = 0;
    for (i = 0; i < 6; i++) {
        value = MaskOfFlagNo(i);
        if (value & monDataBytes[0xa]) {
            count++;
        }
    }
    evs = 0x1fe / count;
    if (evs > 0xff) {
        evs = 0xff;
    }
    for (i = 0; i < 6; i++) {
        value = MaskOfFlagNo(i);
        if (value & monDataBytes[0xa]) {
            dto[0x18 + i] = evs;
        }
    }

    dto[0x1e] = 0;
    dto[0x1f] = gGameLanguage;

    ability = GetMonBaseStat(dto16[0] & 0x7ff, 0x19);
    if (ability != 0) {
        if (*(u32 *)(dto + 0x10) & 1) {
            dto[0x20] = ability;
        } else {
            dto[0x20] = GetMonBaseStat(dto16[0] & 0x7ff, 0x18);
        }
    } else {
        dto[0x20] = GetMonBaseStat(dto16[0] & 0x7ff, 0x18);
    }

    dto[0x21] = friendship;
    GetSpeciesNameIntoArray(dto16[0] & 0x7ff, heapID, (u16 *)(dto + 0x22));
    return personality;
}
