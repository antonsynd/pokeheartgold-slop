#include "global.h"
#include "sav_system_info.h"

u64 DWC_CreateFriendKey(void *userData);
void ov72_022378C0(s32 profileId, u32 keyLo, u32 keyHi);

typedef struct UnkStruct_ov73_021E8E7C_Env {
    u8 filler_00[8];
    SysInfo *sysInfo;
    u8 filler_0C[0x14 - 0xC];
    void *userData;
    u8 filler_18[0x1c - 0x18];
    s32 unk_1C;
} UnkStruct_ov73_021E8E7C_Env;

typedef struct UnkStruct_ov73_021E8E7C {
    UnkStruct_ov73_021E8E7C_Env *env;
    u8 filler_04[0x1c - 4];
    s32 state;
} UnkStruct_ov73_021E8E7C;

int ov73_021E8E7C(UnkStruct_ov73_021E8E7C *work) {
    s32 id;
    u64 key;

    if (Save_SysInfo_GetDwcProfileId(work->env->sysInfo) == 0) {
        Save_SysInfo_SetDwcProfileId(work->env->sysInfo, work->env->unk_1C);
    }
    id = Save_SysInfo_GetDwcProfileId(work->env->sysInfo);
    key = DWC_CreateFriendKey(work->env->userData);
    ov72_022378C0(id, (u32)key, (u32)(key >> 32));
    work->state = 7;
    return 3;
}
