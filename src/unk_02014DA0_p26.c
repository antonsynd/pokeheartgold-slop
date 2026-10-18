#include "global.h"

#include "camera.h"

typedef struct SPLManager SPLManager;

typedef struct ParticleSystem {
    SPLManager *manager;
    u8 filler_04[0x1C];
    Camera *camera;
    u8 filler_24[0xB7];
    u8 cameraProjection;
} ParticleSystem;

extern void SPLManager_Draw(SPLManager *mgr, const MtxFx43 *cameraMtx);
extern void NNS_G3dGlbFlushP(void);
extern NNSG3dGlb NNS_G3dGlb;

void sub_020153D8(ParticleSystem *particleSystem) {
    if (particleSystem->camera != NULL) {
        Camera_ApplyPerspectiveType(particleSystem->cameraProjection, particleSystem->camera);
        Camera_SetStaticPtr(particleSystem->camera);
        Camera_PushLookAtToNNSGlb();
    }
    NNS_G3dGlbFlushP();
    SPLManager_Draw(particleSystem->manager, &NNS_G3dGlb.cameraMtx);
    if (particleSystem->camera != NULL) {
        Camera_UnsetStaticPtr();
    }
    NNS_G3dGlbFlushP();
}
