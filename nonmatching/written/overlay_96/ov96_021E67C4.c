#include "global.h"

typedef struct PokeathlonCourseData PokeathlonCourseData;
extern BOOL ov96_021E5F24(PokeathlonCourseData *data);
extern void ov96_021E811C(void *a0, u8 a1, void *a2);
extern void *ov96_021E99F4(void);
extern int ov96_021E87B4(int a0, void *a1, void *a2, int a3);
extern void PokeathlonCourse_SetStateField07_IfDifferent(PokeathlonCourseData *data, u8 value, u8 value2);

BOOL ov96_021E67C4(PokeathlonCourseData *data) {
    u8 *d = (u8 *)data;
    int ret = 1;
    if (!ov96_021E5F24(data)) {
        ov96_021E811C(*(void **)(d + 0x1f8), d[0x72a], d + 0x1e8);
        ret = ov96_021E87B4(0x16, d + 0x1e8, ov96_021E99F4(), *(int *)(d + 0x288));
    }
    if (ret != 0) {
        PokeathlonCourse_SetStateField07_IfDifferent(data, 0x26, 1);
    }
    return FALSE;
}
