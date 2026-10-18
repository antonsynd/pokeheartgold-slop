#include "global.h"

#include "party.h"
#include "player_data.h"
#include "pm_string.h"
#include "pokedex.h"
#include "pokemon.h"
#include "sav_system_info.h"
#include "save.h"
#include "save_wifi_history.h"

typedef struct Ov45LobbyQuestion {
    u32 questionNumber;
    u32 selectedAnswer;
} Ov45LobbyQuestion;

typedef struct Ov45LobbyProfile {
    s32 userId;
    u32 trainerId;
    u16 trainerName[8];
    u8 filler_18[8];
    u16 partySpecies[PARTY_SIZE];
    u8 partyForms[PARTY_SIZE];
    u8 partyIsEgg[PARTY_SIZE];
    u8 trainerGender;
    u8 language;
    u16 avatar;
    u16 country;
    u8 region;
    u8 natDexObtained;
    u8 gameCleared;
    u8 unk41;
    u8 gameVersion;
    u8 unk43;
    s64 startTimestamp;
    u8 unk4C[12];
    s32 unk58[12];
    u16 unk88[2];
    Ov45LobbyQuestion question;
} Ov45LobbyProfile;

typedef struct Ov45_0222B8A0 {
    u16 name[8];
    u8 filler_10[0x10];
    Ov45LobbyProfile profile;
} Ov45_0222B8A0;

u16 ov45_0222CCE4(u16 avatar);
void ov45_0222BAC4(Ov45_0222B8A0 *a0, SaveData *saveData);

void ov45_0222B8A0(Ov45_0222B8A0 *a0, SaveData *saveData, enum HeapID heapID) {
    PlayerProfile *profile;
    Party *party;
    SaveWiFiHistory *wifiHistory;
    Pokedex *pokedex;
    SysInfo_RTC *rtc;

    profile = Save_PlayerData_GetProfile(saveData);
    party = SaveArray_Party_Get(saveData);
    pokedex = Save_Pokedex_Get(saveData);
    wifiHistory = Save_WiFiHistory_Get(saveData);
    rtc = Save_SysInfo_RTC_Get(saveData);

    String *name = PlayerProfile_GetPlayerName_NewString(profile, heapID);
    CopyStringToU16Array(name, a0->profile.trainerName, 8);
    CopyStringToU16Array(name, a0->name, 8);
    String_Delete(name);

    a0->profile.userId = -1;
    a0->profile.trainerId = PlayerProfile_GetTrainerID(profile);

    int partyCount = Party_GetCount(party);
    for (int i = 0; i < PARTY_SIZE; i++) {
        if (i < partyCount) {
            Pokemon *mon = Party_GetMonByIndex(party, i);
            a0->profile.partySpecies[i] = GetMonData(mon, MON_DATA_SPECIES, NULL);
            a0->profile.partyForms[i] = GetMonData(mon, MON_DATA_FORM, NULL);
            a0->profile.partyIsEgg[i] = GetMonData(mon, MON_DATA_IS_EGG, NULL);
        } else {
            a0->profile.partySpecies[i] = SPECIES_BAD_EGG;
        }
    }

    a0->profile.trainerGender = PlayerProfile_GetTrainerGender(profile);
    a0->profile.language = PlayerProfile_GetLanguage(profile);
    a0->profile.avatar = PlayerProfile_GetAvatar(profile);
    a0->profile.avatar = ov45_0222CCE4(a0->profile.avatar);
    a0->profile.country = WifiHistory_GetPlayerCountry(wifiHistory);
    a0->profile.region = WiFiHistory_GetPlayerRegion(wifiHistory);
    a0->profile.natDexObtained = Pokedex_GetNatDexFlag(pokedex);
    a0->profile.gameCleared = PlayerProfile_GetGameClearFlag(profile);
    a0->profile.unk41 = 0xFF;
    a0->profile.unk43 = 0;
    a0->profile.gameVersion = GAME_VERSION;
    a0->profile.startTimestamp = rtc->seconds_since_nitro_epoch;

    for (int i = 0; i < 12; i++) {
        a0->profile.unk4C[i] = 24;
        a0->profile.unk58[i] = -1;
    }
    for (int i = 0; i < 2; i++) {
        a0->profile.unk88[i] = 0;
    }

    a0->profile.question.questionNumber = 0xFFFFFFFF;
    a0->profile.question.selectedAnswer = 3;

    ov45_0222BAC4(a0, saveData);
}
