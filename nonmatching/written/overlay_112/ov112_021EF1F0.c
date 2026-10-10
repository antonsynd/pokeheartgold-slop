#include "global.h"
#include "pokemon.h"
#include "pokemon_storage_system.h"

BOOL ov112_021EF1F0(PCStorage *storage, u32 boxno, u32 slotno, u8 *out) {
    volatile u8 *dst = out;
    BoxPokemon *boxMon = PCStorage_GetMonByIndexPair(storage, boxno, slotno);
    if (GetBoxMonData(boxMon, 0xAC, NULL) != 0) {
        *(volatile u32 *)(dst + 0) = GetBoxMonData(boxMon, 5, NULL);
        *(volatile u32 *)(dst + 4) = GetBoxMonData(boxMon, 0, NULL);
        *(volatile u16 *)(dst + 8) = GetBoxMonData(boxMon, 0x4C, NULL);
        *(volatile u16 *)(dst + 0xA) = GetBoxMonData(boxMon, 0x70, NULL);
        *(volatile u16 *)(dst + 0xC) = GetBoxMonData(boxMon, 6, NULL);
        *(volatile u16 *)(dst + 0xE) = 0;
        GetBoxMonData(boxMon, 0x75, out + 0x18);
        *(volatile u16 *)(dst + 0x10) = BoxMonIsShiny(boxMon);
        *(volatile u16 *)(dst + 0x12) = GetBoxMonData(boxMon, 0x6F, NULL);
        *(volatile u16 *)(dst + 0x14) = GetBoxMonData(boxMon, 0xA1, NULL);
        *(volatile u16 *)(dst + 0x16) = GetBoxMonData(boxMon, 0xB, NULL);
        return TRUE;
    }
    *(volatile u32 *)(dst + 0) = 0;
    *(volatile u32 *)(dst + 4) = 0;
    *(volatile u16 *)(dst + 8) = 0;
    *(volatile u16 *)(dst + 0xA) = 0;
    *(volatile u16 *)(dst + 0xC) = 0;
    *(volatile u16 *)(dst + 0xE) = 0;
    *(volatile u16 *)(dst + 0x10) = 0;
    *(volatile u16 *)(dst + 0x12) = 0;
    return FALSE;
}
