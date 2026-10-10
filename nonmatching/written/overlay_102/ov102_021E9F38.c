#include "global.h"

extern int ov102_021E8FC8(void *a0);
extern int ov102_021E8FC0(void *a0);
extern void ov102_021EB524(void *a0, int a1);
extern void ov102_021EAF5C(void *a0, int a1);
extern void ov102_021EAFF0(void *a0, int a1);
extern void ov102_021EB530(void *a0, u8 a1);
extern void ov102_021E94A4(void *a0);

void ov102_021E9F38(void *task, void **data) {
    u8 *app = data[0];
    u8 r = ov102_021E8FC8(*(void **)(app + 0x18));
    if (r == 0) {
        app[0x1f4] = 0;
        ov102_021EB524(*(void **)(app + 0x1e4), 0);
        ov102_021EAF5C(*(void **)(app + 0x1e0), 1);
        ov102_021EAFF0(*(void **)(app + 0x1e0), ov102_021E8FC0(*(void **)(app + 0x18)));
    } else {
        app[0x1f4] = 1;
        ov102_021EAF5C(*(void **)(app + 0x1e0), 0);
        ov102_021EB524(*(void **)(app + 0x1e4), 1);
        ov102_021EB530(*(void **)(app + 0x1e4), r);
    }
    ov102_021E94A4(data);
}
