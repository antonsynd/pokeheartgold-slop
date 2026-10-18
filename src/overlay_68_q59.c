#include "global.h"

#include "camera.h"

typedef struct Ov68_021E71C4 {
    Camera *camera;
} Ov68_021E71C4;

extern const VecFx32 ov68_021E7BEC;

void ov68_021E71C4(Ov68_021E71C4 *a0, enum HeapID heapID) {
    VecFx32 pos = ov68_021E7BEC;
    CameraAngle angle = { 0, 0, 0, 0 };

    a0->camera = Camera_New(heapID);
    Camera_Init_FromPosDistanceAndAngle(&pos, FX32_CONST(16), &angle, 0x5C1, 1, a0->camera);
    Camera_SetPerspectiveClippingPlane(0, FX32_CONST(100), a0->camera);
    Camera_ClearFixedTarget(a0->camera);
    Camera_SetStaticPtr(a0->camera);
}
