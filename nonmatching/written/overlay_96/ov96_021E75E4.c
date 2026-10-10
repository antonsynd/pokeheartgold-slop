#include "global.h"
#include "assert.h"

typedef struct PokeathlonCourseData PokeathlonCourseData;
extern BOOL ov96_021E5F24(PokeathlonCourseData *data);
extern void *ov96_021E8A20(void *a0);
extern void *ov96_021E9A14(void);
extern int ov96_021E87B4(int a0, void *a1, void *a2, int a3);
extern u32 PokeathlonCourse_GetUnkConstant4();
extern u8 *PokeathlonCourse_GetDataCopyArea(PokeathlonCourseData *data);
extern void *PokeathlonCourse_GetSystem(PokeathlonCourseData *data);

// Few locals on purpose: the check's sandbox caps the number of distinct bytes it records and
// the memcpy loop can fill it, so the C keeps its stack footprint equal to the original's
// (32 bytes, all written before the first memcpy).
int ov96_021E75E4(PokeathlonCourseData *data) {
    u8 *area;
    int i;
    u32 size;
    u8 *tmp;
    u8 *src;

    area = PokeathlonCourse_GetDataCopyArea(data);
    if (ov96_021E5F24(data)) {
        GF_AssertFail();
        size = 0;
    } else {
        src = (u8 *)data + 0x5e0;
        for (i = 0; i < 4; i++) {
            size = PokeathlonCourse_GetUnkConstant4(data);
            tmp = ov96_021E8A20(area + 0x28);
            memcpy(tmp + i * size, src, size);
            src += 4;
        }
        tmp = ov96_021E9A14();
        src = PokeathlonCourse_GetSystem(data);
        size = ov96_021E87B4(0x1e, area + 0x28, tmp, (int)src);
    }
    return size;
}
