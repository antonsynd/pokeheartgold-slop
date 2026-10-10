#include "global.h"
#include "sound_chatot.h"
#include "pokeathlon/pokeathlon.h"

typedef u32 (*ov96_021EDDA4_Fn)(PokeathlonCourseData *, u32, u32, u32);

BOOL ov96_021EDD64(u8 *param0);
void ov96_021ED5AC(PokeathlonCourseData *param0, u32 param1, u32 param2);
void ov96_021ECC38(u32 param0, u32 param1, u32 param2);
void ov96_021EC298(u8 *param0, u32 param1);
void *ov96_021EAA04(u32 param0, u32 param1);
void ov96_021EAA20(void *param0);
u16 *ov96_021E8BB0(void);

BOOL ov96_021EDDA4(PokeathlonCourseData *param0, ov96_021EDDA4_Fn fn, u16 param2) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 r3 = callerR3;
    u8 *alloc = (u8 *)PokeathlonCourse_GetHeapAllocPtr4(param0);
    u8 idx;
    u32 combined;
    u16 *cry;

    while (1) {
        if (fn(param0, alloc[0xb2], alloc[0xb3], r3) != 0) {
            break;
        }
        if (ov96_021EDD64(alloc)) {
            break;
        }
        __asm__ volatile("movs %0, r3" : "=l"(r3) : : "cc");
    }
    idx = alloc[0xb2];
    if (idx >= 4) {
        return FALSE;
    }
    combined = alloc[0xb3] + idx * 3;
    alloc[0xac + idx] = alloc[0xac + idx] + 1;
    alloc[0xb4] = alloc[0xb4] + 1;
    ov96_021ED5AC(param0, alloc[0xb2], alloc[0xb3]);
    ov96_021ECC38(*(u32 *)(alloc + 0x8c), alloc[0xb2], param2);
    ov96_021EC298(alloc, (u8)combined);
    ov96_021EAA20(ov96_021EAA04(*(u32 *)(alloc + 0x14), (u8)combined));
    cry = ov96_021E8BB0();
    sub_02006E3C(1);
    PlayCry(cry[0], (u8)cry[1]);
    ov96_021EDD64(alloc);
    return TRUE;
}
