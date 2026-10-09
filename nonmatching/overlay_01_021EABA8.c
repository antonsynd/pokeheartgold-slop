#include "global.h"

#include "camera.h"
#include "error_handling.h"
#include "field_system.h"
#include "heap.h"

#include "field/overlay_01_021EABA8.h"

typedef struct FieldCameraTypeParam {
    fx32 distance;
    CameraAngle angle;
    u16 perspectiveType;
    u16 perspectiveAngle;
    fx32 nearClip;
    fx32 farClip;
    VecFx32 lookAtOffset;
} FieldCameraTypeParam;

typedef struct FieldCameraShift {
    u16 angle;
    u16 unk2;
    VecFx32 offset;
    u32 frames;
} FieldCameraShift;

typedef struct FieldCameraState {
    Camera *camera;
    u8 duration;
    u8 frame;
    u8 unk6;
    u8 type;
    u16 unk8;
    u16 unkA;
    VecFx32 offset;
    u8 unk18[0x10];
    int active;
    u16 unk2C;
    u16 unk2E;
    int cameraType;
} FieldCameraState;

extern const FieldCameraShift ov01_02206464[];
extern const FieldCameraTypeParam ov01_02206478[];
extern u32 ov01_02209B60;

static FieldCameraState *ov01_021EAC4C(enum HeapID heapId);
static void ov01_021EAC64(FieldCameraState *state);
static void ov01_021EAC6C(FieldSystem *fieldSystem, int cameraType);
void ov01_021EACBC(FieldCameraState *state, int type);
static void ov01_021EAE50(Camera *camera, const u16 *from, const u16 *to, int numerator, u8 denominator);
static void ov01_021EAEA4(Camera *camera, const VecFx32 *delta, int numerator, int denominator);
static int ov01_021EAEE0(int value, int numerator, int denominator);

void FieldCamera_Create(const VecFx32 *_target, FieldSystem *fieldSystem, const u32 cameraType, const BOOL withHistory) {
    const FieldCameraTypeParam *param = &ov01_02206478[cameraType];
    if (cameraType >= 0x11) {
        GF_AssertFail();
    }
    fieldSystem->camera = Camera_New(HEAP_ID_FIELD1);
    Camera_Init_FromTargetDistanceAndAngle((VecFx32 *)_target, param->distance, &param->angle, param->perspectiveAngle, (u8)param->perspectiveType, TRUE, fieldSystem->camera);
    Camera_SetStaticPtr(fieldSystem->camera);
    Camera_SetPerspectiveClippingPlane(param->nearClip, param->farClip, fieldSystem->camera);
    Camera_OffsetLookAtPosAndTarget(&param->lookAtOffset, fieldSystem->camera);
    if (withHistory) {
        Camera_History_New(7, 6, CAMERA_UPDATE_ENABLE_Y, HEAP_ID_FIELD1, fieldSystem->camera);
    }
    fieldSystem->unk28 = ov01_021EAC4C(HEAP_ID_FIELD1);
    ov01_021EAC6C(fieldSystem, cameraType);
}

void FieldCamera_Delete(FieldSystem *fieldSystem) {
    ov01_021EAC64(fieldSystem->unk28);
    Camera_UnsetStaticPtr();
    Camera_History_Delete(fieldSystem->camera);
    Camera_Delete(fieldSystem->camera);
}

static FieldCameraState *ov01_021EAC4C(enum HeapID heapId) {
    FieldCameraState *state = Heap_Alloc(heapId, sizeof(FieldCameraState));
    MI_CpuFill8(state, 0, sizeof(FieldCameraState));
    return state;
}

static void ov01_021EAC64(FieldCameraState *state) {
    Heap_Free(state);
}

static void ov01_021EAC6C(FieldSystem *fieldSystem, int cameraType) {
    FieldCameraState *state = fieldSystem->unk28;
    u8 type;
    state->camera = fieldSystem->camera;
    state->cameraType = cameraType;
    type = ov01_02209B60;
    if (type != 0) {
        CameraAngle angle = { 0, 0, 0, 0 };
        const FieldCameraShift *shift = &ov01_02206464[type - 1];
        angle.x = shift->angle;
        state->type = type;
        Camera_SetAnglePos(&angle, state->camera);
        Camera_OffsetLookAtPosAndTarget(&shift->offset, state->camera);
    }
}

void ov01_021EACBC(FieldCameraState *state, int type) {
    const FieldCameraTypeParam *param;
    const FieldCameraShift *shift;
    if (type == 0) {
        return;
    }
    if (state->active != 0) {
        if (state->type == type) {
            state->unk2E = (state->unk2E + 1) % 2;
            return;
        }
        GF_AssertFail();
        return;
    }
    state->type = type;
    state->active = 1;
    param = &ov01_02206478[state->cameraType];
    shift = &ov01_02206464[type - 1];
    if (ov01_02209B60 == 0) {
        state->unk2C = param->angle.x;
        state->unk8 = shift->angle;
        state->unkA = shift->unk2;
        state->offset = shift->offset;
        ov01_02209B60 = state->type;
    } else {
        state->unk2C = shift->angle;
        state->unk8 = param->angle.x;
        state->unkA = 0;
        state->offset = shift->offset;
        state->offset.x = -state->offset.x;
        state->offset.y = -state->offset.y;
        state->offset.z = -state->offset.z;
        ov01_02209B60 = 0;
    }
    state->duration = shift->frames;
    state->frame = 0;
}

void ov01_021EAD8C(void *unk28) {
    FieldCameraState *state = unk28;
    VecFx32 offset;
    if (state->active == 0) {
        return;
    }
    if (state->unk2E == 0) {
        state->frame++;
        ov01_021EAE50(state->camera, &state->unk2C, &state->unk8, state->frame, state->duration);
        ov01_021EAEA4(state->camera, &state->offset, state->frame, state->duration);
        if (state->frame >= state->duration) {
            state->active = 0;
        }
    } else {
        offset = state->offset;
        offset.x = -offset.x;
        offset.y = -offset.y;
        offset.z = -offset.z;
        ov01_021EAE50(state->camera, &state->unk8, &state->unk2C, (u8)(state->duration - state->frame), state->duration);
        ov01_021EAEA4(state->camera, &offset, state->frame, state->duration);
        state->frame--;
        if (state->frame == 0) {
            if (ov01_02209B60 != 0) {
                ov01_02209B60 = 0;
            } else {
                ov01_02209B60 = state->type;
            }
            state->unk2E = 0;
            state->active = 0;
        }
    }
}

static void ov01_021EAE50(Camera *camera, const u16 *from, const u16 *to, int numerator, u8 denominator) {
    CameraAngle angle = { 0, 0, 0, 0 };
    u16 start = *from;
    int delta;
    if (*to >= start) {
        delta = (u16)(*to - start);
        delta = delta * numerator / denominator;
    } else {
        delta = (u16)(start - *to);
        delta = -(delta * numerator / denominator);
    }
    angle.x = start + delta;
    Camera_SetAnglePos(&angle, camera);
}

static void ov01_021EAEA4(Camera *camera, const VecFx32 *delta, int numerator, int denominator) {
    VecFx32 offset = { 0, 0, 0 };
    offset.x = ov01_021EAEE0(delta->x, numerator, denominator);
    offset.z = ov01_021EAEE0(delta->z, numerator, denominator);
    Camera_OffsetLookAtPosAndTarget(&offset, camera);
}

static int ov01_021EAEE0(int value, int numerator, int denominator) {
    int current = value * numerator / denominator;
    int previous = (numerator - 1) * value / denominator;
    return current - previous;
}
