#include "global.h"
#include "system.h"
#include "pokeathlon/pokeathlon.h"

void ov96_021E8228(PokeathlonCourseData *data, u32 index, u32 sub, u32 kind, u32 value);
u32 ov96_021F5F68(u8 *alloc, u16 x, u16 y);
void ov96_021F5F34(u8 x, u8 y, s32 *ref, s32 *out);
void ov96_021F6088(u8 *alloc, int index, s32 *vec);
void ov96_021F7740(PokeathlonCourseData *data, u32 arg);

void ov96_021F5BA0(PokeathlonCourseData *param0) {
    u8 *copyArea = PokeathlonCourse_GetDataCopyArea(param0);
    u8 *alloc = PokeathlonCourse_GetHeapAllocPtr4(param0);
    u32 mode;
    u32 zone;
    s32 vec[3];
    u8 *entry;
    u8 *dst;
    u32 *dstWords;
    u32 *srcWords;
    u8 *src;
    u8 *dstTop;
    u8 values[4];
    u32 word0;
    u32 word1;
    int i;

    if (System_GetTouchNew()) {
        mode = ov96_021E5F24(param0);
        ov96_021E8228(param0, (u8)mode, 3, 0, 1);
        zone = ov96_021F5F68(alloc, gSystem.touchX, gSystem.touchY);
        if (zone < 3) {
            alloc[0x140] = zone;
            *(u32 *)(alloc + 0x16c) = gSystem.touchX << 12;
            *(u32 *)(alloc + 0x170) = (gSystem.touchY << 12) + 0xC0000;
            *(u32 *)(alloc + 0x174) = 0;
        }
    } else if (System_GetTouchHeld()) {
        if (alloc[0x140] < 3) {
            if (alloc[0x141] < 7) {
                alloc[0x141] = alloc[0x141] + 1;
            } else {
                vec[0] = 0;
                vec[1] = 0;
                vec[2] = 0;
                ov96_021F5F34(gSystem.touchX, gSystem.touchY, (s32 *)(alloc + 0x16c), vec);
                ov96_021F6088(alloc, alloc[0x140], vec);
                alloc[0x140] = 3;
                alloc[0x141] = 0;
            }
        }
    } else {
        if (alloc[0x140] < 3 && alloc[0x141] < 7) {
            vec[0] = 0;
            vec[1] = 0;
            vec[2] = 0;
            ov96_021F5F34(gSystem.touchX, gSystem.touchY, (s32 *)(alloc + 0x16c), vec);
            ov96_021F6088(alloc, alloc[0x140], vec);
        }
        alloc[0x140] = 3;
        alloc[0x141] = 0;
    }
    if (ov96_021E5F24(param0) == 0) {
        dst = ov96_021E8A20(copyArea + 0x28);
        dstTop = ov96_021E8A20(copyArea + 0x50);
        src = ov96_021E8A20(copyArea);
        srcWords = (u32 *)src;
        dstWords = (u32 *)dstTop;
        for (i = 0; i < 4; i++) {
            word0 = srcWords[0];
            word1 = srcWords[1];
            dstWords[0] = word0;
            dstWords[1] = word1;
            dstWords += 2;
            srcWords += 2;
        }
        dstWords[0] = srcWords[0];
        ov96_021F7740(param0, *(u32 *)(alloc + 0x138));
        copyArea += 0x50;
        for (i = 0; i < 4; i++) {
            entry = ov96_021E8A20(copyArea);
            values[i] = *(u32 *)entry;
            copyArea += 0x28;
        }
        for (i = 0; i < 4; i++) {
            dst[i] = values[i];
        }
    }
}
