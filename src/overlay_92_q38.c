#include "global.h"

#include "camera.h"

typedef struct Ov92_0225DD88 {
    u8 filler_00[0x64];
    Camera *camera;
} Ov92_0225DD88;

extern const VecFx32 ov92_02263B5C;

void ov92_0225DD88(Ov92_0225DD88 *a0) {
    VecFx32 target = { 0, 0, 0 };
    VecFx32 pos = ov92_02263B5C;

    Camera_Init_FromTargetAndPos(&target, &pos, 0xB60, 0, FALSE, a0->camera);
    Camera_SetPerspectiveClippingPlane(FX32_CONST(-1000), FX32_CONST(1000), a0->camera);
    Camera_SetStaticPtr(a0->camera);
}
