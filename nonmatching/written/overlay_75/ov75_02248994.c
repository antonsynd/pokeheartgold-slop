#include "global.h"
#include "save.h"
#include "sav_system_info.h"
#include "unk_0202C034.h"
#include "unk_02037C94.h"

extern u64 DWC_CreateFriendKey(DWCUserData *userData);
extern void ov70_022378C0(s32 profileId, u32 keyLow, u32 keyHigh);

typedef struct {
    u8 filler_00[4];
    SaveData *saveData;
    u8 filler_08[0x118 - 0x08];
    int unk_118;
} UnkStruct_ov75_02248994_Parent;

typedef struct {
    UnkStruct_ov75_02248994_Parent *parent;
    u8 filler_04[4];
    int unk_08;
} UnkStruct_ov75_02248994;

int ov75_02248994(UnkStruct_ov75_02248994 *work) {
    WiFiList *wifiList = sub_0202C6F4(work->parent->saveData);
    SysInfo *sysInfo = Save_SysInfo_Get(work->parent->saveData);
    DWCUserData *userData = sub_0202C08C(wifiList);
    s32 profileId;
    u64 friendKey;

    if (Save_SysInfo_GetDwcProfileId(sysInfo) == 0) {
        Save_SysInfo_SetDwcProfileId(sysInfo, sub_0203A040(wifiList));
    }

    profileId = Save_SysInfo_GetDwcProfileId(sysInfo);
    friendKey = DWC_CreateFriendKey(userData);
    ov70_022378C0(profileId, (u32)friendKey, (u32)(friendKey >> 32));

    work->parent->unk_118 = 1;
    work->unk_08 = 0x11;
    return 0;
}
