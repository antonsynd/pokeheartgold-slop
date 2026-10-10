#include "global.h"

extern u8 ov18_021FA610[];

void ov18_021F3E24(void *app);
void *ov18_021F11EC(void *app, const void *tmpl);
void ov18_021F69C0(void *app, int a1);
void ov18_021F3CA8(void *app, int a1, u8 *form, u8 *gender);
void ov18_021F1534(void *app, u16 species, u8 form, int a3);
void ov18_021F40E4(void *app);
void ov18_021F40A0(void *app);
void ov18_021F4188(void *app);

void ov18_021F3D98(u8 *app) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    union { u32 w; u8 b[4]; } st;
    st.w = callerR3;
    void **sprites = (void **)(app + 0x670);
    u32 i;

    ov18_021F3E24(app);
    for (i = 1; i < 9; i++) {
        sprites[i] = ov18_021F11EC(app, ov18_021FA610 + (i - 1) * 0x34);
    }
    ov18_021F69C0(app, 1);
    ov18_021F3CA8(app, 0, &st.b[1], &st.b[0]);
    ov18_021F1534(app, *(u16 *)(app + 0x18a2), st.b[1], 1);
    ov18_021F40E4(app);
    ov18_021F40A0(app);
    ov18_021F4188(app);
}
