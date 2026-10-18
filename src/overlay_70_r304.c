#include "global.h"

#include "player_data.h"
#include "pokemon.h"
#include "save_wifi_history.h"
#include "string_util.h"

typedef struct Ov70PlayerData {
    u8 filler_00[0x18];
    SaveWiFiHistory *wifiHistory;
    PlayerProfile *profile;
} Ov70PlayerData;

typedef struct Ov70_0223F6E4 {
    Ov70PlayerData *playerData;
    u8 filler_004[0x11C];
    u16 boxId;
    u8 filler_122[2];
    void *mon;
} Ov70_0223F6E4;

typedef struct Ov70Listing {
    u8 pokemon[0xF6];
    u8 gender;
    u8 filler_0F7[0x15];
    u16 name[8];
    u16 trainerId;
    u8 country;
    u8 region;
    u8 avatar;
    u8 filler_121;
    u8 version;
    u8 language;
} Ov70Listing;

BOOL ov70_0223E490(u16 boxId);

void ov70_0223F6E4(Ov70Listing *listing, Ov70_0223F6E4 *a1) {
    if (ov70_0223E490(a1->boxId)) {
        Mon_UpdateShayminForm(a1->mon, 0);
        MI_CpuCopyFast(a1->mon, listing, SizeOfStructPokemon());
    } else {
        BoxMon_UpdateShayminForm(a1->mon, 0);
        CopyBoxPokemonToPokemon(a1->mon, (Pokemon *)listing);
    }
    CopyU16StringArrayN(listing->name, PlayerProfile_GetNamePtr(a1->playerData->profile), 8);
    listing->trainerId = PlayerProfile_GetTrainerID_VisibleHalf(a1->playerData->profile);
    listing->country = WifiHistory_GetPlayerCountry(a1->playerData->wifiHistory);
    listing->region = WiFiHistory_GetPlayerRegion(a1->playerData->wifiHistory);
    listing->avatar = PlayerProfile_GetAvatar(a1->playerData->profile);
    listing->gender = PlayerProfile_GetTrainerGender(a1->playerData->profile);
    listing->version = GAME_VERSION;
    listing->language = LANGUAGE_ENGLISH;
}
