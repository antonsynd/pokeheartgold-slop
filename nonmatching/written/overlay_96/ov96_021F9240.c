#include "global.h"
#include "screen_fade.h"
#include "pokeathlon/pokeathlon.h"

int ov96_021E637C(PokeathlonCourseData *data);
u8 ov96_021E667C(PokeathlonCourseData *data);
void ov96_021E8318(PokeathlonCourseData *data, u16 value);
void ov96_021FBDBC(u8 *alloc);
int ov96_021FA6D0(PokeathlonCourseData *data, u8 *alloc);
void ov96_021FB630(PokeathlonCourseData *data);
int ov96_021FB60C(u8 *alloc);
void ov96_021FB808(u8 *alloc, u32 value);
void ov96_021FAF1C(PokeathlonCourseData *data);

BOOL ov96_021F9240(PokeathlonCourseData *data, u8 *state) {
    u8 *alloc;
    u8 *p;
    u32 sum;
    u8 i;
    u8 flag;
    int res;

    alloc = PokeathlonCourse_GetHeapAllocPtr4(data);
    switch (*state) {
    case 0:
        if (ov96_021E637C(data) != 0) {
            alloc[0x3c7] = 1;
            (*state)++;
        }
        break;
    case 1:
        ov96_021FBDBC(alloc);
        res = ov96_021FA6D0(data, alloc);
        ov96_021FB630(data);
        if (res != 0) {
            sum = 0;
            i = 0;
            do {
                sum += *(u16 *)(alloc + i * 0x6c + 0xe2);
                i++;
            } while (i < 3);
            ov96_021E8318(data, (u16)sum);
            ov96_021FB808(alloc, sum);
            (*state)++;
        }
        break;
    case 2:
        flag = ov96_021E667C(data);
        if (ov96_021FB60C(alloc) != 0 && flag != 0) {
            (*state)++;
        }
        ov96_021FBDBC(alloc);
        ov96_021FA6D0(data, alloc);
        ov96_021FB630(data);
        break;
    case 3:
        ov96_021FBDBC(alloc);
        ov96_021FB630(data);
        p = ov96_021E8A20(PokeathlonCourse_GetDataCopyArea(data));
        p[9] = 1;
        p = ov96_021E8A20(PokeathlonCourse_GetDataCopyArea(data) + 0xf0);
        if (*(u32 *)p != 0) {
            (*state)++;
            *(u32 *)(alloc + 0x234) = 0;
        }
        break;
    case 4:
        *(u32 *)(alloc + 0x234) = *(u32 *)(alloc + 0x234) + 1;
        if (*(u32 *)(alloc + 0x234) > 0x5a) {
            BeginNormalPaletteFade(0, 0, 0, 0, 6, 1, *(u32 *)alloc);
            PokeathlonCourse_SetStateField07(data, 2);
        }
        break;
    }
    ov96_021FAF1C(data);
    return FALSE;
}
