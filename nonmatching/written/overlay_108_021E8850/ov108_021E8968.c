#include "global.h"

typedef struct UnkStruct_ov108_021E8968_Args {
    void *saveData;
    void *menuInputStateMgr;
    u8 unk8[0x14];
    u16 unk1C;
    u8 unk1E;
    u8 unk1F;
    u8 *unk20;
} UnkStruct_ov108_021E8968_Args;

#define DATA_U8(off) (*(u8 *)((u8 *)data + (off)))
#define DATA_U32(off) (*(u32 *)((u8 *)data + (off)))

extern void *Save_SafariZone_Get(void *saveData);
extern void SafariZone_CopyAreaSet(void *safari, u32 idx, void *dest);
extern void *Save_PlayerData_GetOptionsAddr(void *saveData);
extern u32 Options_GetTextSpeed(void *options);
extern u32 Options_GetFrame(void *options);
extern u32 MenuInputStateMgr_GetState(void *mgr);
extern void *Save_PlayerData_GetProfile(void *saveData);
extern u8 SafariZone_GetObjectUnlockLevel(void *safari);
extern u32 PlayerProfile_GetTrainerID(void *profile);
extern u32 PlayerProfile_GetTrainerGender(void *profile);
extern u32 ov108_021EA63C(u32 trainerId, u8 unlockLevel, u8 gender, u8 *countOut, u32 heapId);
extern void *Save_SysInfo_RTC_Get(void *saveData);
extern u32 GF_RTC_GetTimeOfDayByHour(u32 hour);

void ov108_021E8968(void *data, UnkStruct_ov108_021E8968_Args *args) {
    void *safari;
    void *options;
    void *profile;
    u8 level;
    u32 trainerId;
    u8 *rtc;
    UnkStruct_ov108_021E8968_Args *a;

    safari = Save_SafariZone_Get(args->saveData);
    DATA_U32(0x20) = (u32)safari;
    SafariZone_CopyAreaSet(safari, 0, (u8 *)data + 0x24);
    options = Save_PlayerData_GetOptionsAddr(args->saveData);
    DATA_U8(0x18) = Options_GetTextSpeed(options);
    DATA_U8(0x19) = Options_GetFrame(options);
    DATA_U32(0x10) = MenuInputStateMgr_GetState(args->menuInputStateMgr);
    DATA_U32(0x1C) = (u32)args;
    DATA_U8(0x431) = (int)*args->unk20 % 6;
    a = (UnkStruct_ov108_021E8968_Args *)DATA_U32(0x1C);
    DATA_U8(0x430) = (int)*a->unk20 / 6;
    profile = Save_PlayerData_GetProfile(args->saveData);
    level = SafariZone_GetObjectUnlockLevel((void *)DATA_U32(0x20));
    trainerId = PlayerProfile_GetTrainerID(profile);
    DATA_U32(0x334) = ov108_021EA63C(trainerId, level, (u8)PlayerProfile_GetTrainerGender(profile), (u8 *)data + 0x42D, DATA_U32(0));
    DATA_U8(0x1A) = *((u8 *)args + 0x19);
    if (*((u8 *)args + 0x19) > 5) {
        DATA_U8(0x1A) = 0;
    }
    DATA_U8(0x435) = 0x1E - DATA_U8(DATA_U8(0x1A) * 0x7A + 0x25);
    DATA_U8(0x42E) = (int)DATA_U8(0x42D) / 6;
    if ((int)DATA_U8(0x42D) % 6 > 0) {
        DATA_U8(0x42E)++;
    }
    if (DATA_U8(0x430) >= DATA_U8(0x42E)) {
        DATA_U8(0x430) = 0;
    }
    ((UnkStruct_ov108_021E8968_Args *)DATA_U32(0x1C))->unk1C = 0xFF;
    rtc = Save_SysInfo_RTC_Get(args->saveData);
    DATA_U8(0x42C) = GF_RTC_GetTimeOfDayByHour(*(u32 *)(rtc + 0x14));
    if (DATA_U8(0x42C) == 4) {
        DATA_U8(0x42C) = 3;
    }
}
