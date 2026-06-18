#include "unk_0205BB1C.h"

#include "constants/sndseq.h"
#include "constants/species.h"

#include "msgdata/msg/msg_0666.h"

#include "field_system.h"
#include "heap.h"
#include "map_object.h"
#include "math_util.h"
#include "party.h"
#include "pokemon.h"
#include "task.h"

BOOL ItemIsTMOrHM(u16 itemId);

typedef struct SpinTaskEnv {
    LocalMapObject *object;
    fx32 unk4;
    fx32 unk8;
    u16 unkC;
    u16 unkE;
    u16 unk10;
} SpinTaskEnv;

typedef struct BlinkTaskEnv {
    LocalMapObject *object;
    u16 unk4;
    u16 unk6;
    u8 unk8;
    u8 unk9;
} BlinkTaskEnv;

static const u16 sRegiSpecies[] = {
    SPECIES_REGIROCK,
    SPECIES_REGICE,
    SPECIES_REGISTEEL,
};

static BOOL sub_0205BE28(TaskManager *taskman);
static BOOL sub_0205BF6C(TaskManager *taskman);

u32 CountDigits(u32 num) {
    if (num / 10 == 0) {
        return 1;
    }
    if (num / 100 == 0) {
        return 2;
    }
    if (num / 1000 == 0) {
        return 3;
    }
    if (num / 10000 == 0) {
        return 4;
    }
    if (num / 100000 == 0) {
        return 5;
    }
    if (num / 1000000 == 0) {
        return 6;
    }
    if (num / 10000000 == 0) {
        return 7;
    }
    if (num / 100000000 == 0) {
        return 8;
    }
    return 1;
}

BOOL ItemIsTMOrHM(u16 itemId) {
    if (itemId >= 0x148 && itemId <= 0x1AB) {
        return TRUE;
    }
    return FALSE;
}

u16 GetOakJohtoDexRating(u16 numCaught, u16 gender, u16 *var_p) {
    *var_p = SEQ_ME_HYOUKA1;
    if (numCaught <= 9) {
        return msg_0666_00028;
    }
    if (numCaught <= 0x13) {
        return msg_0666_00029;
    }
    if (numCaught <= 0x22) {
        return msg_0666_00030;
    }
    if (numCaught <= 0x31) {
        return msg_0666_00031;
    }
    if (numCaught <= 0x40) {
        return msg_0666_00032;
    }
    if (numCaught <= 0x4F) {
        return msg_0666_00033;
    }
    if (numCaught <= 0x5E) {
        return msg_0666_00034;
    }
    if (numCaught <= 0x6D) {
        return msg_0666_00035;
    }
    if (numCaught <= 0x7C) {
        return msg_0666_00036;
    }
    if (numCaught <= 0x8B) {
        return msg_0666_00037;
    }
    if (numCaught <= 0x9A) {
        return msg_0666_00038;
    }
    if (numCaught <= 0xA9) {
        return msg_0666_00039;
    }
    if (numCaught <= 0xB8) {
        return msg_0666_00040;
    }
    if (numCaught <= 0xC7) {
        return msg_0666_00041;
    }
    if (numCaught <= 0xD6) {
        return msg_0666_00042;
    }
    if (numCaught <= 0xE5) {
        return msg_0666_00043;
    }
    if (numCaught <= 0xF4) {
        return msg_0666_00044;
    }
    if (numCaught <= 0xFD) {
        return msg_0666_00045;
    }
    *var_p = SEQ_ME_HYOUKA6;
    if (gender != 0) {
        return msg_0666_00023;
    }
    return msg_0666_00022;
}

u16 GetOakNationalDexRating(u16 numCaught, u16 gender, u16 *var_p) {
    *var_p = SEQ_ME_HYOUKA1;
    if (numCaught <= 0x64) {
        return msg_0666_00046;
    }
    if (numCaught <= 0x96) {
        return msg_0666_00047;
    }
    if (numCaught <= 0xC8) {
        return msg_0666_00048;
    }
    if (numCaught <= 0xFA) {
        return msg_0666_00049;
    }
    if (numCaught <= 0x12C) {
        return msg_0666_00050;
    }
    if (numCaught <= 0x12C + 0x32) {
        return msg_0666_00051;
    }
    if (numCaught <= 0x12C + 0x64) {
        return msg_0666_00052;
    }
    if (numCaught <= 0x12C + 0x87) {
        return msg_0666_00053;
    }
    if (numCaught <= 0x12C + 0xA5) {
        return msg_0666_00054;
    }
    if (numCaught <= 0x12C + 0xAF) {
        return msg_0666_00055;
    }
    if (numCaught <= 0x12C + 0xB7) {
        return msg_0666_00056;
    }
    *var_p = SEQ_ME_HYOUKA6;
    if (gender != 0) {
        return msg_0666_00025;
    }
    return msg_0666_00024;
}

u16 Save_GetPartyLead(SaveData *saveData) {
    u16 i;
    u16 count = Party_GetCount(SaveArray_Party_Get(saveData));
    for (i = 0; i < count; i++) {
        if (GetMonData(Party_GetMonByIndex(SaveArray_Party_Get(saveData), i), MON_DATA_IS_EGG, NULL) == 0) {
            return i;
        }
    }
    return 0;
}

u16 Save_GetPartyLeadAlive(SaveData *saveData) {
    u16 count = Party_GetCount(SaveArray_Party_Get(saveData));
    u16 i;
    for (i = 0; i < count; i++) {
        Pokemon *mon = Party_GetMonByIndex(SaveArray_Party_Get(saveData), i);
        if (GetMonData(mon, MON_DATA_IS_EGG, NULL) == 0 && GetMonData(mon, MON_DATA_HP, NULL) != 0) {
            return i;
        }
    }
    return 0;
}

BOOL Save_PlayerHasAllRegisInParty(SaveData *saveData) {
    Party *party;
    u16 species[6];
    int count;
    int found = 0;
    int i;
    int j;
    party = SaveArray_Party_Get(saveData);
    count = Party_GetCount(party);
    for (i = 0; i < count; i++) {
        species[i] = GetMonData(Party_GetMonByIndex(party, i), MON_DATA_SPECIES, NULL);
    }
    for (i = 0; i < 3; i++) {
        for (j = 0; j < count; j++) {
            if (species[j] == sRegiSpecies[i]) {
                found++;
                break;
            }
        }
    }
    if (found == 3) {
        return TRUE;
    }
    return FALSE;
}

static BOOL sub_0205BE28(TaskManager *taskman) {
    VecFx32 vec;
    SpinTaskEnv *env;
    TaskManager_GetFieldSystem(taskman);
    env = TaskManager_GetEnvironment(taskman);
    vec.x = 0x8000;
    vec.z = 0x8000;
    vec.x = FX_Mul(GF_SinDegNoWrap(env->unkE), env->unk4);
    vec.z = FX_Mul(GF_SinDegNoWrap(env->unkE), env->unk8);
    vec.y = 0;
    sub_0205F9A0(env->object, &vec);
    env->unkE += env->unk10;
    if (env->unkE >= 0x5A * 4) {
        env->unkE = 0;
        env->unkC--;
    }
    if (env->unkC == 0) {
        vec.z = 0;
        vec.y = 0;
        vec.x = 0;
        sub_0205F9A0(env->object, &vec);
        Heap_Free(env);
        return TRUE;
    }
    return FALSE;
}

void sub_0205BED8(TaskManager *taskManager, LocalMapObject *object, u16 a2, u16 a3, u16 a4, u16 a5) {
    FieldSystem *fieldSystem;
    SpinTaskEnv *env;
    fieldSystem = TaskManager_GetFieldSystem(taskManager);
    f32 tmp;
    env = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(SpinTaskEnv));
    MI_CpuFill8(env, 0, sizeof(SpinTaskEnv));
    if (a4 != 0) {
        tmp = 0.5f + (f32)(a4 << FX32_SHIFT);
    } else {
        tmp = (f32)(a4 << FX32_SHIFT) - 0.5f;
    }
    env->unk4 = (fx32)tmp;
    if (a5 != 0) {
        tmp = 0.5f + (f32)(a5 << FX32_SHIFT);
    } else {
        tmp = (f32)(a5 << FX32_SHIFT) - 0.5f;
    }
    env->unk8 = (fx32)tmp;
    env->unkC = a2;
    env->unk10 = a3;
    env->object = object;
    TaskManager_Call(fieldSystem->taskman, sub_0205BE28, env);
}

static BOOL sub_0205BF6C(TaskManager *taskman) {
    BlinkTaskEnv *env;
    u8 frame;
    TaskManager_GetFieldSystem(taskman);
    env = TaskManager_GetEnvironment(taskman);
    MapObject_SetVisible(env->object, env->unk9);
    frame = env->unk8;
    env->unk8 = frame + 1;
    if (frame >= env->unk6) {
        env->unk9 = 1 ^ env->unk9;
        env->unk8 = 0;
        if (env->unk4-- == 0) {
            Heap_Free(env);
            return TRUE;
        }
    }
    return FALSE;
}

void sub_0205BFB4(TaskManager *taskManager, LocalMapObject *object, u16 a2, u16 a3) {
    FieldSystem *fieldSystem;
    BlinkTaskEnv *env;
    fieldSystem = TaskManager_GetFieldSystem(taskManager);
    env = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(BlinkTaskEnv));
    MI_CpuFill8(env, 0, sizeof(BlinkTaskEnv));
    env->unk4 = a2;
    env->unk6 = a3;
    env->object = object;
    env->unk9 = 0;
    TaskManager_Call(fieldSystem->taskman, sub_0205BF6C, env);
}
