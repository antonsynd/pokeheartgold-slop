#include "global.h"

typedef struct UnkStruct_ov07_0221CDA4_Ctx {
    u8 filler_00[0x18];
    u32 currentParticleSystem;
    void *particleSystems[16];
    void *emitters[1];
} UnkStruct_ov07_0221CDA4_Ctx;

typedef struct UnkStruct_ov07_0221CDA4 {
    u8 filler_00[0x18];
    u32 *scriptPtr;
    u8 filler_1C[0x6c - 0x1c];
    u8 cameraProjections[0x10];
    u8 particleSystemCameraFlip[0x10];
    u8 filler_8C[0xc0 - 0x8c];
    UnkStruct_ov07_0221CDA4_Ctx *context;
} UnkStruct_ov07_0221CDA4;

extern int ov07_0221CCF4(UnkStruct_ov07_0221CDA4 *system);
extern void sub_020154D4(void *particleSystem, VecFx32 *vec);
extern void sub_020154E4(void *particleSystem, VecFx32 *vec);
extern void sub_02015528(void *particleSystem, u8 projection);
extern void *ov07_0221FF18(void *particleSystem, u32 resId, u32 callbackId, UnkStruct_ov07_0221CDA4 *system);

void ov07_0221CDA4(UnkStruct_ov07_0221CDA4 *system) {
    u32 resourceTable[6];
    u32 psIndex;
    u32 callbackID;
    int i;
    int resIdx;

    system->scriptPtr++;
    psIndex = *system->scriptPtr;
    system->scriptPtr++;

    for (i = 0; i < 6; i++) {
        resourceTable[i] = *system->scriptPtr;
        system->scriptPtr++;
    }

    callbackID = *system->scriptPtr;
    system->scriptPtr++;

    system->context->currentParticleSystem = psIndex;

    if (system->particleSystemCameraFlip[psIndex] != 0) {
        VecFx32 up;

        sub_020154D4(system->context->particleSystems[psIndex], &up);
        up.y *= -1;
        sub_020154E4(system->context->particleSystems[psIndex], &up);
    }

    resIdx = ov07_0221CCF4(system);

    sub_02015528(system->context->particleSystems[psIndex], system->cameraProjections[psIndex]);
    system->context->emitters[0] = ov07_0221FF18(system->context->particleSystems[psIndex], resourceTable[resIdx], callbackID, system);
}
