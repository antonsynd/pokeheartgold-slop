#include "global.h"

extern u64 _s32_div_f(s32 a, s32 b);
extern void *Save_SafariZone_Get(void *saveData);
extern u32 sub_0202F620(void *safariZone);
extern u8 *SafariZone_GetAreaSet(void *safariZone, u32 idx);
extern void *Save_PlayerData_GetProfile(void *saveData);
extern u32 PlayerProfile_GetTrainerGender(void *profile);
extern u32 SafariZone_GetLinkLeaderGender(void *safariZone);
extern void MapPropManager_LoadFromNARC(void *a0, u32 a1, void *a2, void *a3);
extern void MapPropManager_LoadFromSafariZone(void *a0, void *a1, void *a2, void *a3, void *a4, u32 a5);

void ov01_021F4B1C(u8 *a, u8 *b, u8 *c, s32 d) {
    s32 width = *(s32 *)(a + 0xC4);
    u16 x = (u16)(_s32_div_f(d, width) >> 32);
    u16 y = (u16)_s32_div_f(d, width);
    void *safari;
    u32 idx;
    u8 *areaSet;
    u32 gender;
    if (x < 1 || x > 3 || y < 1 || y > 2) {
        MapPropManager_LoadFromNARC(*(void **)(a + 0x100), *(u32 *)(c + 0xC), *(void **)(b + 0x868), *(void **)(a + 0xF4));
        return;
    }
    safari = Save_SafariZone_Get(*(void **)(a + 0x104));
    idx = sub_0202F620(safari);
    areaSet = SafariZone_GetAreaSet(safari, idx);
    if (idx == 0) {
        gender = (u8)PlayerProfile_GetTrainerGender(Save_PlayerData_GetProfile(*(void **)(a + 0x104)));
    } else {
        gender = SafariZone_GetLinkLeaderGender(safari);
    }
    MapPropManager_LoadFromSafariZone(*(void **)(a + 0x100), *(void **)(b + 0x868), *(void **)(a + 0xF4),
        areaSet + ((u16)(x - 1) + (u16)(y - 1) * 3) * 0x7A, b, gender);
}
