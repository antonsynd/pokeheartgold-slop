#include "global.h"
#include "pokeathlon/pokeathlon.h"

extern u32 ov96_021EEA80(u32 a0);

BOOL ov96_021EE440(PokeathlonCourseData *course) {
    u8 *alloc = PokeathlonCourse_GetHeapAllocPtr4(course);
    u8 *copyArea = PokeathlonCourse_GetDataCopyArea(course);
    u8 *entryA = ov96_021E8A20(copyArea + 0x28);
    u8 *entryB = ov96_021E8A20(copyArea + 0xf0);
    u8 isSolo = ov96_021E5F24(course);
    u8 level = alloc[0xb7];
    int anyBad = 0;
    int allReady;
    int i;
    u8 *dst;
    u8 *src;
    u8 *entry;
    u32 *flags;

    if (isSolo == 0) {
        allReady = 1;
        entryA[0xc] = level;
        dst = ov96_021E8A20(copyArea + 0x50);
        src = ov96_021E8A20(copyArea);
        for (i = 0; i < 0x24; i++) {
            dst[i] = src[i];
        }
        for (i = 0; i < PokeathlonCourse_GetParticipantCount(course); i++) {
            entry = ov96_021E8A20(copyArea + 0x50 + i * 0x28);
            if (entry[0] < level || entry[1] == 1) {
                anyBad = 1;
            }
            if (entry[2] == 0) {
                allReady = 0;
            }
        }
        flags = (u32 *)(entryA + 8);
        if (allReady != 0) {
            *flags = *flags | 0x20000000;
        }
        *flags = (*flags & 0xEFFFFFFF) | (((u32)anyBad << 31) >> 3);
    }
    entry = ov96_021E8A20(copyArea);
    entry[0] = level;
    entry[1] = ov96_021EEA80(*(u32 *)(alloc + 0xc));
    entry[2] = *(u32 *)(alloc + 0xb8);
    if ((((*(u32 *)(entryB + 8)) << 3) >> 31) != 0 && level >= entryB[0xc]) {
        return TRUE;
    }
    return FALSE;
}
