#include "global.h"

typedef struct PokeathlonCourseData PokeathlonCourseData;
extern BOOL ov96_021E5F24(PokeathlonCourseData *data);
extern void *ov96_021E8A20(void *a0);
extern void *ov96_021E9A14(void);
extern int ov96_021E87B4(int a0, void *a1, void *a2, int a3);
extern int ov96_021E75E4(PokeathlonCourseData *data);
extern u32 PokeathlonCourse_GetUnkConstant4();
extern u8 PokeathlonCourse_GetParticipantCount(PokeathlonCourseData *data);
extern void PokeathlonCourse_SetStateField07(PokeathlonCourseData *data, u8 value);

// Written with few locals on purpose: the check's sandbox caps the number of distinct bytes it
// records, and the memcpy loop can fill it, so the C keeps its stack footprint (32 bytes) equal
// to the original's.
BOOL ov96_021E6F2C(PokeathlonCourseData *data) {
    int ret;
    u8 *tmp;
    int i;
    u32 size;

    if (*(int *)(*(u8 **)((u8 *)data + 0x1e0) + 0x10) != 0) {
        tmp = ov96_021E8A20((u8 *)data + 0x28c);
        i = ov96_021E5F24(data);
        ((u16 *)tmp)[0] = *(u16 *)((u8 *)data + i * 4 + 0x5e0);
        ((u16 *)tmp)[1] = *(u16 *)((u8 *)data + i * 4 + 0x5e2);
        tmp = ov96_021E9A14();
        ret = ov96_021E87B4(0x1d, (u8 *)data + 0x28c, tmp, *(int *)((u8 *)data + 0x288));
        if (ret != 0 && !ov96_021E5F24(data)) {
            size = PokeathlonCourse_GetUnkConstant4(data);
            for (i = PokeathlonCourse_GetParticipantCount(data); i < 4; i++) {
                tmp = ov96_021E8A20((u8 *)data + 0x2b4);
                memcpy(tmp + i * size, (u8 *)data + 0x5e0 + i * 4, size);
            }
        }
    } else if (!ov96_021E5F24(data)) {
        ret = ov96_021E75E4(data);
    } else {
        ret = 1;
    }
    if (ret != 0) {
        PokeathlonCourse_SetStateField07(data, 0x26);
    }
    return FALSE;
}
