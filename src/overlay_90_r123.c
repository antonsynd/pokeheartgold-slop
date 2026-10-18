#include "global.h"

typedef struct Ov90Player {
    u8 filler_00[0x10];
    void *unk10;
    u8 filler_14[0x24];
} Ov90Player;

typedef struct Ov90Lineup {
    u8 filler_0[8];
    u8 count;
    u8 unk9;
    u8 filler_A[2];
} Ov90Lineup;

typedef struct Ov90_0225B7FC {
    u8 filler_000[2];
    u16 heapID;
    u8 filler_004;
    u8 unk005;
    u8 filler_006;
    u8 unk007;
    u8 filler_008[4];
    Ov90Lineup lineup;
    u8 filler_018[4];
    u32 unk01C[4];
    u8 filler_02C[8];
    u8 unk034[4];
    u8 unk038[4];
    u32 unk03C[4];
    u8 unk04C[0xC];
    u8 unk058[0x48];
    u8 unk0A0[0x144];
    void *unk1E4;
    u8 filler_1E8[0x70];
    void *unk258;
    Ov90Player players[4];
    u8 unk33C[4];
} Ov90_0225B7FC;

extern const s16 ov90_0225C1F0[];

void ov90_02259BCC(Ov90Player *player, u8 count, u8 a2, void *a3, void *a4, u32 index, u8 a6, void *a7, void *a8, u16 heapID);
u32 ov90_0225888C(Ov90Lineup *lineup, u32 index);
BOOL ov90_022588A4(Ov90Lineup *lineup, u32 a1);
void ov90_02259D50(Ov90Player *player, void *a1, u32 a2, int a3, int a4, BOOL a5);
void ov90_02259DAC(Ov90Player *player, void *a1, u8 a2, u8 a3, u8 a4, int a5);
void ov90_02259E38(Ov90Player *player, void *a1, u32 a2, s16 a3, int a4, u32 a5);
void ov90_02259E8C(Ov90Player *player, void *a1);
void ov90_02259E18(Ov90Player *player, u32 a1);
void ov90_02259EE0(Ov90Player *player, s16 a1, int a2);
BOOL ov90_02259F7C(Ov90Player *player);
void ov90_0225A134(void *a0, Ov90Player *player);

void ov90_0225B7FC(Ov90_0225B7FC *a0, u32 index, u32 place) {
    BOOL v0;
    u32 v1;
    u32 v2;

    ov90_02259BCC(&a0->players[index], a0->lineup.count, a0->unk007, a0->unk258, a0->unk04C, index, a0->lineup.unk9, a0->unk0A0, a0->unk1E4, a0->heapID);
    v2 = ov90_0225888C(&a0->lineup, index);
    v0 = ov90_022588A4(&a0->lineup, v2);
    ov90_02259D50(&a0->players[index], a0->unk058, a0->unk03C[index], 8, 0, v0);
    ov90_02259DAC(&a0->players[index], a0->unk058, a0->unk005, a0->unk034[index], a0->unk038[index], 8);
    if (a0->unk007 == 0) {
        v1 = 5;
    } else {
        v1 = 6;
    }
    ov90_02259E38(&a0->players[index], a0->unk058, a0->unk01C[index], 176 + (-ov90_0225C1F0[4 - (place + 1)]), 0, v1);
    ov90_02259E8C(&a0->players[index], a0->unk04C);
    ov90_02259E18(&a0->players[index], place);
    ov90_02259EE0(&a0->players[index], ov90_0225C1F0[place], 0);
}

BOOL ov90_0225B8F0(Ov90_0225B7FC *a0) {
    int i;
    BOOL done;
    BOOL ret = TRUE;

    for (i = 0; i < a0->lineup.count; i++) {
        if (a0->players[i].unk10 != NULL) {
            done = ov90_02259F7C(&a0->players[i]);
            ov90_0225A134(a0->unk33C, (Ov90Player *)a0->players + i);
            if (done == FALSE) {
                ret = FALSE;
            }
        } else {
            ret = FALSE;
        }
    }
    return ret;
}
