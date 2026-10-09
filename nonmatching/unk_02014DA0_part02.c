#include "global.h"

#include "camera.h"
#include "heap.h"
#include "list_menu_cursor.h"
#include "pm_string.h"
#include "spl.h"
#include "text.h"

#define MAX_PARTICLE_SYSTEMS 16

typedef struct ParticleSystem {
    SPLManager *manager;
    void *resource;
    SPLEmitter *lastAddedEmitter;
    void *heapStart;
    void *heapCur;
    void *heapEnd;
    u32 (*texAllocFunc)(u32, BOOL);
    u32 (*palAllocFunc)(u32, BOOL);
    Camera *camera;
    VecFx32 unk_24;
    u16 cameraFov;
    VecFx32 cameraPos;
    VecFx32 cameraUp;
    VecFx32 cameraTarget;
    u32 textureKeys[16];
    u32 paletteKeys[16];
    u8 vramAutoRelease;
    u8 unk_D9;
    u8 id;
    u8 cameraProjection;
} ParticleSystem;

typedef struct ParticleSystemGlobals {
    ParticleSystem *loadingSystem;
    void *emitterCallbackParam;
} ParticleSystemGlobals;

typedef void (*SPLEmitterCallback)(struct SPLEmitter *);

typedef struct SPLGravityField {
    VecFx16 magnitude;
} SPLGravityField;

typedef struct SPLMagnetField {
    VecFx32 target;
    fx16 force;
} SPLMagnetField;

typedef struct SPLSpinField {
    u16 angle;
    u16 rate;
} SPLSpinField;

typedef struct SPLConvergenceField {
    VecFx32 target;
    fx16 force;
} SPLConvergenceField;

struct ListMenuCursor {
    u32 color;
    String *text;
};

extern ParticleSystemGlobals _021D10A0;
extern ParticleSystem *_021D10A8[MAX_PARTICLE_SYSTEMS];

extern void spl_calc_gravity(const void *, SPLParticle *, VecFx32 *, SPLEmitter *);
extern void spl_calc_random(const void *, SPLParticle *, VecFx32 *, SPLEmitter *);
extern void spl_calc_magnet(const void *, SPLParticle *, VecFx32 *, SPLEmitter *);
extern void spl_calc_spin(const void *, SPLParticle *, VecFx32 *, SPLEmitter *);
extern void spl_calc_scfield(const void *, SPLParticle *, VecFx32 *, SPLEmitter *);
extern void spl_calc_convergence(const void *, SPLParticle *, VecFx32 *, SPLEmitter *);

extern SPLEmitter *SPL_Create(SPLManager *manager);
extern void SPL_DeleteAll(SPLManager *manager);
extern void SPL_Delete(SPLManager *manager, SPLEmitter *emitter);

extern void sub_02015414(ParticleSystem *particleSystem);

const VecFx32 _020F6078 = { 0, 0x00001000, 0 };
const u16 _020F60DC[] = { 0x011F, 0xFFFF };

int sub_02015460(void) {
    int count = 0;
    int i;

    for (i = 0; i < MAX_PARTICLE_SYSTEMS; i++) {
        if (_021D10A8[i] != NULL) {
            sub_02015414(_021D10A8[i]);
            count++;
        }
    }

    return count;
}

void sub_02015484(ParticleSystem *particleSystem) {
    particleSystem->lastAddedEmitter = SPL_Create(particleSystem->manager);
}

void sub_02015494(ParticleSystem *particleSystem, int resourceId, SPLEmitterCallback callback, void *param) {
    _021D10A0.emitterCallbackParam = param;
    particleSystem->lastAddedEmitter = SPL_CreateWithInitialize(particleSystem->manager, resourceId, callback);
    _021D10A0.emitterCallbackParam = NULL;
}

int sub_020154B0(ParticleSystem *particleSystem) {
    return particleSystem->manager->act_emtr_list.node_num;
}

void sub_020154B8(ParticleSystem *particleSystem) {
    SPL_DeleteAll(particleSystem->manager);
}

void sub_020154C4(ParticleSystem *particleSystem, SPLEmitter *emitter) {
    SPL_Delete(particleSystem->manager, emitter);
}

void *sub_020154D0(ParticleSystem *particleSystem) {
    return particleSystem->heapStart;
}

void sub_020154D4(ParticleSystem *particleSystem, VecFx32 *up) {
    *up = particleSystem->cameraUp;
}

void sub_020154E4(ParticleSystem *particleSystem, VecFx32 *up) {
    particleSystem->cameraUp = *up;
    Camera_SetLookAtCamUp(up, particleSystem->camera);
}

void *sub_02015504(void) {
    return _021D10A0.emitterCallbackParam;
}

void sub_02015510(VecFx32 *up) {
    *up = _020F6078;
}

Camera *sub_02015524(ParticleSystem *particleSystem) {
    return particleSystem->camera;
}

void sub_02015528(ParticleSystem *particleSystem, int projection) {
    particleSystem->cameraProjection = projection;
}

u8 sub_02015530(ParticleSystem *particleSystem) {
    return particleSystem->cameraProjection;
}

void sub_02015538(SPLEmitter *emitter, VecFx16 *axis) {
    axis->x = emitter->axis.x;
    axis->y = emitter->axis.y;
    axis->z = emitter->axis.z;
}

void *sub_02015550(SPLEmitter *emitter, int fieldType) {
    int i;
    SPLResource *resource = emitter->p_res;
    int count = resource->fld_num;
    SPLField *field;

    if (count == 0) {
        return NULL;
    }

    field = resource->fld_ary;
    for (i = 0; i < count; i++, field++) {
        if (field == NULL) {
            continue;
        }

        switch (fieldType) {
        case 0:
            if (field->p_exec == spl_calc_gravity) {
                return (void *)field->p_obj;
            }
            continue;
        case 1:
            if (field->p_exec == spl_calc_random) {
                return (void *)field->p_obj;
            }
            continue;
        case 2:
            if (field->p_exec == spl_calc_magnet) {
                return (void *)field->p_obj;
            }
            continue;
        case 3:
            if (field->p_exec == spl_calc_spin) {
                return (void *)field->p_obj;
            }
            continue;
        case 4:
            if (field->p_exec == spl_calc_scfield) {
                return (void *)field->p_obj;
            }
            break;
        case 5:
            if (field->p_exec == spl_calc_convergence) {
                return (void *)field->p_obj;
            }
            continue;
        default:
            return NULL;
        }
    }

    return NULL;
}

void sub_0201560C(SPLEmitter *emitter, VecFx16 *magnitude) {
    SPLGravityField *field = sub_02015550(emitter, 0);

    if (field == NULL) {
        return;
    }

    field->magnitude = *magnitude;
}

void sub_02015628(SPLEmitter *emitter, VecFx32 *target) {
    SPLMagnetField *field = sub_02015550(emitter, 2);

    if (field == NULL) {
        return;
    }

    field->target = *target;
}

void sub_02015640(SPLEmitter *emitter, VecFx32 *target) {
    SPLMagnetField *field = sub_02015550(emitter, 2);

    if (field == NULL) {
        *target = (VecFx32){ 0, 0, 0 };
        return;
    }

    *target = field->target;
}

void sub_02015674(SPLEmitter *emitter, fx16 *force) {
    SPLMagnetField *field = sub_02015550(emitter, 2);

    if (field == NULL) {
        return;
    }

    field->force = *force;
}

void sub_0201568C(SPLEmitter *emitter, fx16 *force) {
    SPLMagnetField *field = sub_02015550(emitter, 2);

    if (field == NULL) {
        *force = 0;
        return;
    }

    *force = field->force;
}

void sub_020156A8(SPLEmitter *emitter, u16 *angle) {
    SPLSpinField *field = sub_02015550(emitter, 3);

    if (field == NULL) {
        return;
    }

    field->angle = *angle;
}

void sub_020156BC(SPLEmitter *emitter, u16 *angle) {
    SPLSpinField *field = sub_02015550(emitter, 3);

    if (field == NULL) {
        *angle = 0;
        return;
    }

    *angle = field->angle;
}

void sub_020156D8(SPLEmitter *emitter, u16 *rate) {
    SPLSpinField *field = sub_02015550(emitter, 3);

    if (field == NULL) {
        return;
    }

    field->rate = *rate;
}

void sub_020156EC(SPLEmitter *emitter, u16 *rate) {
    SPLSpinField *field = sub_02015550(emitter, 3);

    if (field == NULL) {
        *rate = 0;
        return;
    }

    *rate = field->rate;
}

void sub_02015708(SPLEmitter *emitter, VecFx32 *target) {
    SPLConvergenceField *field = sub_02015550(emitter, 5);

    if (field == NULL) {
        return;
    }

    field->target = *target;
}

void sub_02015720(SPLEmitter *emitter, VecFx32 *target) {
    SPLConvergenceField *field = sub_02015550(emitter, 5);

    if (field == NULL) {
        *target = (VecFx32){ 0, 0, 0 };
        return;
    }

    *target = field->target;
}

void sub_02015754(SPLEmitter *emitter, fx16 *force) {
    SPLConvergenceField *field = sub_02015550(emitter, 5);

    if (field == NULL) {
        return;
    }

    field->force = *force;
}

void sub_0201576C(SPLEmitter *emitter, fx16 *force) {
    SPLConvergenceField *field = sub_02015550(emitter, 5);

    if (field == NULL) {
        *force = 0;
        return;
    }

    *force = field->force;
}

struct ListMenuCursor *ListMenuCursorNew(enum HeapID heapID) {
    struct ListMenuCursor *cursor = Heap_Alloc(heapID, sizeof(struct ListMenuCursor));

    if (cursor != NULL) {
        cursor->color = MAKE_TEXT_COLOR(1, 2, 15);
        cursor->text = String_New(4, heapID);
        CopyU16ArrayToString(cursor->text, _020F60DC);
    }

    return cursor;
}
