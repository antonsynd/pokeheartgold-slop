#include "global.h"

#include "player_data.h"
#include "pm_string.h"
#include "pokewalker.h"
#include "save.h"

typedef struct Ov112WalkerHeader {
    int unk00;
    int unk04;
    u16 version;
    u16 version2;
    u32 trainerId;
    u8 unk10[0x28];
    u8 filler_38[0x10];
    u16 name[8];
    u8 filler_58[2];
    u8 unk5A;
    u8 unk5B_0 : 1;
    u8 unk5B_1 : 7;
    u8 filler_5C[0xC];
    u8 unk68[4];
} Ov112WalkerHeader;

typedef struct Ov112_021E7CC8 {
    u8 filler_00000[0x20];
    SaveData *saveData;
    u8 unk24[0x1000];
    Ov112WalkerHeader header;
    u8 filler_01090[0xF7A4];
    u8 unk10834[0xDC04];
    PlayerProfile *profile;
    u8 filler_1E43C[4];
    POKEWALKER *pokewalker;
} Ov112_021E7CC8;

void ov112_021E73C8(void *a0, int a1, int a2);
void ov112_021E5EB8(Ov112WalkerHeader *header, void *a1);
void ov112_021E5D68(void *a0);

void ov112_021E7CC8(Ov112_021E7CC8 *a0) {
    String *name = PlayerProfile_GetPlayerName_NewString(Save_PlayerData_GetProfile(a0->saveData), HEAP_ID_154);

    a0->header.unk00 = 1;
    a0->header.version = GAME_VERSION;
    a0->header.unk5B_0 = 0;
    a0->header.unk5A = 0;
    a0->header.trainerId = PlayerProfile_GetTrainerID(a0->profile);
    CopyStringToU16Array(name, a0->header.name, 8);
    a0->header.unk04 = 1;
    a0->header.version2 = GAME_VERSION;
    MI_CpuCopyFast(sub_02032728(a0->pokewalker), a0->header.unk10, sizeof(a0->header.unk10));
    ov112_021E73C8(a0->unk24, 0x1000, 15);
    ov112_021E5EB8(&a0->header, a0->header.unk68);
    ov112_021E5D68(a0->unk10834);
    String_Delete(name);
}
