#include "global.h"

extern void *Camera_New(u32 heapId);
extern void Camera_Init_FromTargetDistanceAndAngle(void *target, int distance, void *angle, u16 perspective, u32 a, u32 b, void *camera);
extern void Camera_SetLookAtCamUp(void *up, void *camera);
extern void Camera_SetStaticPtr(void *camera);

void ov85_021E7424(u8 *p) {
    u8 *v0 = p + 0xd0c;
    int up[3];
    u32 w;

    *(void **)(v0 + 0x1c) = Camera_New(0x66);

    *(int *)(v0 + 8) = 0;
    *(int *)(v0 + 0xc) = 0;
    *(int *)(v0 + 0x10) = 0;
    *(u16 *)(v0 + 0x14) = 0xe93f;
    *(u16 *)(v0 + 0x16) = 0;
    *(u16 *)(v0 + 0x18) = 0;
    *(int *)(v0 + 0) = 0x143000;
    *(int *)(v0 + 4) = 0x444;

    w = *(u32 *)(v0 + 4);
    Camera_Init_FromTargetDistanceAndAngle(v0 + 8, *(int *)(p + 0xd0c), v0 + 0x14, (u16)w, 0, 1, *(void **)(v0 + 0x1c));

    up[0] = 0;
    up[1] = 0x1000;
    up[2] = 0;
    Camera_SetLookAtCamUp(up, *(void **)(v0 + 0x1c));
    Camera_SetStaticPtr(*(void **)(v0 + 0x1c));
}
