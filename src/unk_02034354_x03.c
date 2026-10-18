#include "global.h"

#include "friend_group.h"
#include "player_data.h"
#include "save.h"
#include "save_link_ruleset.h"
#include "save_wifi_history.h"
#include "unk_0202C034.h"
#include "unk_02035900.h"

typedef struct CommPlayerInfo {
    u8 regulationBuffer[0x40];
    DWCFriendData friendData;
    u16 unk4C[8];
    u8 macAddress[6];
    u8 unk62;
    u8 country;
    u8 region;
    u8 hasGiftPenalty;
    u8 filler_66[2];
} CommPlayerInfo;

typedef struct CommInfo {
    PlayerProfile *personalProfile;
    LinkBattleRuleset *regulation;
    SaveData *saveData;
    CommPlayerInfo playerInfo[8];
    PlayerProfile *profiles[8];
} CommInfo;

extern CommInfo *_021D4130;

void sub_02034434(void) {
    u16 netId = sub_0203769C();
    PlayerProfile *profile;
    const u16 *name;
    SAV_FRIEND_GRP *friendGroup = Save_FriendGroup_Get(_021D4130->saveData);
    WiFiList *wifiList = sub_0202C6F4(_021D4130->saveData);
    SaveWiFiHistory *wifiHistory = Save_WiFiHistory_Get(_021D4130->saveData);

    if (_021D4130->personalProfile) {
        profile = _021D4130->personalProfile;
    } else {
        profile = Save_PlayerData_GetProfile(_021D4130->saveData);
    }
    PlayerProfile_Copy(profile, _021D4130->profiles[netId]);
    OS_GetMacAddress(&_021D4130->playerInfo[netId].macAddress[0]);
    name = sub_0202C7E0(friendGroup, 1, 0);
    MI_CpuCopy8(name, _021D4130->playerInfo[netId].unk4C, sizeof(_021D4130->playerInfo[netId].unk4C));
    _021D4130->playerInfo[netId].country = WifiHistory_GetPlayerCountry(wifiHistory);
    _021D4130->playerInfo[netId].region = WiFiHistory_GetPlayerRegion(wifiHistory);
    _021D4130->playerInfo[netId].hasGiftPenalty = 0;
    DWC_CreateExchangeToken(sub_0202C08C(wifiList), &_021D4130->playerInfo[netId].friendData);
    MI_CpuClear8(_021D4130->playerInfo[netId].regulationBuffer, 32);
    if (_021D4130->regulation) {
        LinkBattleRuleset_Copy(_021D4130->regulation, (LinkBattleRuleset *)_021D4130->playerInfo[netId].regulationBuffer);
    }
    sub_02037030(3, &_021D4130->playerInfo[netId], sizeof(CommPlayerInfo));
}
