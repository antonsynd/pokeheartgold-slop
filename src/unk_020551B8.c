#include "unk_020551B8.h"

#include "global.h"

#include "heap.h"
#include "overlay_01.h"
#include "sound_02004A44.h"
#include "task.h"

typedef struct EncounterEffectWork {
    int state;
    int result;
    int effect;
    int bgm;
} EncounterEffectWork;

static BOOL sub_020551B8(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    EncounterEffectWork *env = TaskManager_GetEnvironment(taskManager);

    switch (env->state) {
    case 0:
        ov01_021EFB64(env->effect);
        ov01_021EFC94(env->effect, fieldSystem, &env->result);
        Sound_SetSceneAndPlayBGM(5, (u16)env->bgm, 1);
        env->state++;
        break;
    case 1:
        if (env->result == 1) {
            ov01_021EFC04(env->effect);
            Heap_Free(env);
            return TRUE;
        }
        break;
    }
    return FALSE;
}

void sub_02055218(TaskManager *man, int effect, int bgm) {
    EncounterEffectWork *env = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(EncounterEffectWork));
    env->state = 0;
    env->result = 0;
    env->effect = effect;
    env->bgm = bgm;
    TaskManager_Call(man, sub_020551B8, env);
}
