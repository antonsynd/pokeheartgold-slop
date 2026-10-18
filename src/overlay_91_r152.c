#include "global.h"

#include "camera.h"

typedef struct Ov91_0225FD2C {
    u8 filler_000[0x190];
    Camera *camera;
    VecFx32 target;
} Ov91_0225FD2C;

extern const u16 ov91_02261D5C[][4];

void ov91_0225FD2C(Ov91_0225FD2C *a0, int row, int col, enum HeapID heapID) {
    CameraAngle angle;
    VecFx32 up;

    a0->camera = Camera_New(heapID);
    a0->target.x = 0;
    a0->target.y = 0;
    a0->target.z = 0;
    angle.x = 0xF112;
    angle.y = ov91_02261D5C[row][col];
    angle.z = 0;
    Camera_Init_FromTargetDistanceAndAngle(&a0->target, 0x1D9000, &angle, 0xFA4, 0, TRUE, a0->camera);
    up.x = 0;
    up.y = FX32_ONE;
    up.z = 0;
    Camera_SetLookAtCamUp(&up, a0->camera);
    Camera_SetStaticPtr(a0->camera);
    Camera_SetPerspectiveClippingPlane(FX32_CONST(200), FX32_CONST(1000), a0->camera);
}
