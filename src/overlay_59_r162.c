#include "global.h"

#include "camera.h"

typedef struct Ov59_0223C5C4 {
    u8 filler_00[8];
    Camera *camera;
} Ov59_0223C5C4;

extern const VecFx32 ov59_0223CB58;

void ov59_0223C5C4(Ov59_0223C5C4 *a0, enum HeapID heapID) {
    VecFx32 pos = ov59_0223CB58;
    CameraAngle angle = { 0, 0, 0, 0 };

    a0->camera = Camera_New(heapID);
    Camera_Init_FromPosDistanceAndAngle(&pos, FX32_CONST(16), &angle, 0x5C1, 1, a0->camera);
    Camera_SetPerspectiveClippingPlane(0, FX32_CONST(100), a0->camera);
    Camera_ClearFixedTarget(a0->camera);
    Camera_SetStaticPtr(a0->camera);
}
