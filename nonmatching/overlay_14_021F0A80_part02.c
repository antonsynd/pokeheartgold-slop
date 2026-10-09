#include "global.h"

#include "item.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_storage_system.h"
#include "sprite_system.h"
#include "unk_02005D10.h"
#include "unk_0201956C.h"
#include "unk_02019BA4.h"

typedef struct UnkStruct_ov14_boxsys {
    u8 unk0[0x2C];
    GridInputHandler *unk2C;
    u8 unk30[0x2C0];
    UnkStruct_0201956C *unk2F0;
    u8 unk2F4[8];
    ManagedSprite *sprites[0x45];
    u8 unk410[0x44B - 0x410];
    u8 unk44B;
    u8 unk44C;
    u8 unk44D[0x4094 - 0x44D];
    u8 unk4094[0x88CC - 0x4094];
    int unk88CC;
} UnkStruct_ov14_boxsys;

typedef struct UnkStruct_ov14_boxapp {
    u8 unk0[4];
    PCStorage *storage;
    Party *party;
    u8 unkC[0x1F - 0xC];
    u8 unk1F;
    u8 unk20;
    u8 unk21;
    u8 unk22;
    u8 unk23[2];
    u8 unk25;
    u8 unk26[4];
    u8 unk2A;
    u8 unk2B[5];
    int unk30;
    UnkStruct_ov14_boxsys *sys;
} UnkStruct_ov14_boxapp;

extern const u8 ov14_021EA254[];
extern const u8 ov14_021EA378[];

void ov14_021E765C(UnkStruct_ov14_boxapp *app);
void ov14_021E8634(UnkStruct_0201956C *a0);
void ov14_021E884C(UnkStruct_ov14_boxsys *sys);
void ov14_021E8824(UnkStruct_ov14_boxsys *sys);
int ov14_021E7588(UnkStruct_ov14_boxapp *app, int a1);
int ov14_021E6480(UnkStruct_ov14_boxapp *app, int a1);
void ov14_021F1004(UnkStruct_ov14_boxapp *app);
void ov14_021F08BC(UnkStruct_ov14_boxapp *app);
int ov14_021F0234(UnkStruct_ov14_boxapp *app, const void *a1, int a2);
int ov14_021F2270(UnkStruct_ov14_boxapp *app, int a1, int a2);
void ov14_021F29E4(UnkStruct_ov14_boxsys *sys, int a1, int a2);
void ov14_021F3190(UnkStruct_ov14_boxsys *sys, int a1, int a2);
void ov14_021F40DC(UnkStruct_ov14_boxapp *app);
void ov14_021F48B4(UnkStruct_ov14_boxapp *app);
void ov14_021F57B8(UnkStruct_ov14_boxapp *app);

int ov14_021F1504(UnkStruct_ov14_boxapp *app) {
    ov14_021F1004(app);
    GridInputHandler_SetNextInput(app->sys->unk2C, (u8)(app->unk25 % 6));
    GridInputHandler_SetButtonInputMode(app->sys->unk2C, TRUE);
    return 0x61;
}

int ov14_021F1534(UnkStruct_ov14_boxapp *app) {
    return ov14_021F2270(app, 10, 0x62);
}

int ov14_021F1540(UnkStruct_ov14_boxapp *app) {
    ov14_021F29E4(app->sys, 9, 8);
    if (PCStorage_CountMonsAndEggsInBox(app->storage, app->unk25) == 30) {
        PlaySE(0x5F3);
    } else {
        PlaySE(0x5DD);
    }
    return ov14_021F2270(app, 0xC, 0x66);
}

int ov14_021F1580(UnkStruct_ov14_boxapp *app, u8 a1) {
    app->unk21 = a1;
    app->sys->unk44B = 1;
    ov14_021F3190(app->sys, app->unk21, 0);
    ov14_021F40DC(app);
    if (app->unk2A == 0) {
        ov14_021E8824(app->sys);
    }
    return ov14_021F0234(app, ov14_021EA254, 0x73);
}

int ov14_021F15C8(UnkStruct_ov14_boxapp *app, u32 a1) {
    UnkStruct_ov14_boxsys *sys;
    s16 pos[2];
    int count;
    int next;
    u32 slot;
    Pokemon *mon;

    sys = app->sys;
    sys->unk88CC = a1 == 0xFF ? TRUE : FALSE;
    ManagedSprite_GetPositionXY(sys->sprites[9], &pos[1], &pos[0]);
    sys = app->sys;
    ManagedSprite_SetPositionXY(sys->sprites[sys->unk4094[app->unk21]], pos[1], pos[0] + 4);
    if (a1 < 0x24) {
        if (a1 >= 0x1E) {
            count = Party_GetCount(app->party);
            if (app->unk21 < 0x1E) {
                if (a1 - 0x1E > (u32)count) {
                    ov14_021E765C(app);
                    ov14_021E8634(app->sys->unk2F0);
                } else {
                    ov14_021E884C(app->sys);
                }
            } else {
                if (a1 - 0x1E >= (u32)count) {
                    ov14_021E765C(app);
                    ov14_021E8634(app->sys->unk2F0);
                } else {
                    ov14_021E884C(app->sys);
                }
            }
        } else {
            ov14_021E884C(app->sys);
        }
    } else if (a1 != 0xFF) {
        app->unk25 = a1 + 6 * (app->unk25 / 6) - 0x25;
        ov14_021F48B4(app);
        ov14_021F57B8(app);
        slot = app->unk21;
        if (slot >= 0x1E) {
            slot -= 0x1E;
            mon = Party_GetMonByIndex(app->party, slot);
            if (ItemIdIsMail((u16)GetMonData(mon, MON_DATA_HELD_ITEM, NULL)) == TRUE) {
                ov14_021E884C(app->sys);
            } else if (GetMonData(mon, MON_DATA_BALL_CAPSULE_ID, NULL) != 0) {
                ov14_021E884C(app->sys);
            } else if (ov14_021E6480(app, slot) == 0) {
                ov14_021E884C(app->sys);
            } else if (app->unk25 == app->unk1F) {
                ov14_021E765C(app);
                ov14_021E8634(app->sys->unk2F0);
            } else if (PCStorage_CountEmptySpotsInBox(app->storage, app->unk25) == 0) {
                ov14_021E884C(app->sys);
            } else {
                ov14_021E765C(app);
                ov14_021E8634(app->sys->unk2F0);
            }
        } else if (app->unk25 == app->unk1F) {
            ov14_021E765C(app);
            ov14_021E8634(app->sys->unk2F0);
        } else if (PCStorage_CountEmptySpotsInBox(app->storage, app->unk25) == 0) {
            ov14_021E884C(app->sys);
        } else {
            ov14_021E765C(app);
            ov14_021E8634(app->sys->unk2F0);
        }
    } else {
        next = GridInputHandler_GetNextInput(app->sys->unk2C);
        if ((u32)next < 0x24) {
            if (ov14_021E7588(app, next) == 0) {
                ov14_021E8634(app->sys->unk2F0);
            }
        } else {
            ov14_021E765C(app);
            ov14_021E8634(app->sys->unk2F0);
        }
    }
    app->sys->unk44C = a1;
    app->sys->unk44B = 0;
    ov14_021F08BC(app);
    app->unk22 = 2;
    return ov14_021F0234(app, ov14_021EA378, 0x2B);
}
