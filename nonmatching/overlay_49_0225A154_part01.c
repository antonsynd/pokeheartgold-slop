#include "global.h"

#include "heap.h"
#include "message_format.h"
#include "player_data.h"
#include "unk_02005D10.h"

typedef struct UnkStruct_Ov49_0225A154_2DC {
    MessageFormat *unk0;
    u8 unk4[0x58];
} UnkStruct_Ov49_0225A154_2DC;

typedef struct UnkStruct_Ov49_0225A154 {
    u8 unk0[0x34];
    void *unk34;
    u8 unk38[4];
    u8 unk3C[0x148];
    u8 unk184[0x158];
    UnkStruct_Ov49_0225A154_2DC unk2DC;
    u8 unk338[0x6C];
    u8 unk3A4[0x20];
    u8 unk3C4[0x20];
} UnkStruct_Ov49_0225A154;

extern void *ov49_0225AF04(void *a0);
extern BOOL ov49_0225AF08(void *a0, int a1);
extern void ov49_0225AF30(void *a0, void *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8);
extern int ov49_0225AFD8(void *a0);
extern void ov49_0225B014(void *a0, int a1, int a2);
extern void ov49_0225B06C(void *a0, int a1);
extern void ov49_0225B0E0(void *a0, void *a1, int a2, int a3, int a4, int a5, int a6);
extern void ov49_0225B124(void *a0);
extern void ov49_0225B148(void *a0, int a1, int a2, int a3);
extern void ov49_0225B178(void *a0, int a1, int a2, int a3, int a4);
extern void *ov49_0225B388(void *a0, int a1, int a2);
extern void ov49_0225B3A8(void *a0, int a1, int a2, int a3, int a4);
extern void ov49_0225B3C8(void *a0, PlayerProfile *a1, int a2);
extern void ov49_0225B3D8(void *a0, int a1, int a2);
extern void ov49_0225B3E8(void *a0, int a1, int a2);
extern void ov49_0225B3F8(void *a0, int a1, int a2);
extern void ov49_0225B89C(void *a0, int a1, int a2);
extern void ov49_0225B8A8(void *a0, void *a1, int a2, int a3);
extern u8 ov49_0225B8F8(void *a0);
extern BOOL ov49_0225B8FC(void *a0);
extern int ov49_0225B928(void *a0);
extern BOOL ov49_0225B934(void *a0);
extern int ov45_0222A53C(void *a0);
extern void *ov45_0222A578(void *a0, int a1);
extern void *ov45_0222A5C0(void *a0);
extern void ov45_0222A844(void *a0, PlayerProfile *a1, int a2);
extern u8 ov45_0222D7C0(int a0);

void *ov49_0225A154(UnkStruct_Ov49_0225A154 *a0) {
    return ov49_0225AF04(a0->unk338);
}

BOOL ov49_0225A164(UnkStruct_Ov49_0225A154 *a0, int a1) {
    return ov49_0225AF08(a0->unk338, a1);
}

void ov49_0225A174(UnkStruct_Ov49_0225A154 *a0, void *a1, int a2, int a3) {
    ov49_0225AF30(a0->unk338, a1, a0->unk3C, a2, a3, 0x77, 0x10, 3, 0xF);
}

void ov49_0225A1A4(UnkStruct_Ov49_0225A154 *a0, void *a1, int a2, int a3, u8 a4, u8 a5, u8 a6) {
    ov49_0225AF30(a0->unk338, a1, a0->unk3C, a2, a3, 0x77, a4, a5, a6);
}

int ov49_0225A1D4(UnkStruct_Ov49_0225A154 *a0) {
    return ov49_0225AFD8(a0->unk338);
}

void ov49_0225A1E4(UnkStruct_Ov49_0225A154 *a0, int a1, int a2) {
    ov49_0225B014(a0->unk338, a1, a2);
}

void ov49_0225A1F4(UnkStruct_Ov49_0225A154 *a0, int a1) {
    ov49_0225B06C(a0->unk338, a1);
}

void ov49_0225A204(UnkStruct_Ov49_0225A154 *a0, int a1, int a2, int a3, u8 a4) {
    ov49_0225B0E0(a0->unk3C4, a0->unk3C, 0x77, a1, a2, a3, a4);
}

void ov49_0225A22C(UnkStruct_Ov49_0225A154 *a0) {
    ov49_0225B124(a0->unk3C4);
}

void ov49_0225A23C(UnkStruct_Ov49_0225A154 *a0, int a1, int a2, int a3) {
    ov49_0225B148(a0->unk3C4, a1, a2, a3);
}

void ov49_0225A24C(UnkStruct_Ov49_0225A154 *a0, int a1, int a2, int a3, u16 a4) {
    ov49_0225B178(a0->unk3C4, a1, a2, a3, a4);
}

void ov49_0225A264(UnkStruct_Ov49_0225A154 *a0) {
    ov49_0225AF30(a0->unk338, a0->unk3A4, a0->unk3C, 0, 0, 0x77, 0x19, 0xD, 6);
}

void ov49_0225A294(UnkStruct_Ov49_0225A154 *a0) {
    ov49_0225AF30(a0->unk338, a0->unk3A4, a0->unk3C, 0, 1, 0x77, 0x19, 0xD, 6);
}

int ov49_0225A2C4(UnkStruct_Ov49_0225A154 *a0) {
    int result = ov49_0225AFD8(a0->unk338);
    if (result == 0) {
        return 0;
    }
    if (result == 1) {
        return 1;
    }
    if (result == -2) {
        PlaySE(SEQ_SE_DP_SELECT);
        return 1;
    }
    return 2;
}

void ov49_0225A2F8(UnkStruct_Ov49_0225A154 *a0) {
    ov49_0225B014(a0->unk338, 0, 0);
}

void *ov49_0225A30C(UnkStruct_Ov49_0225A154 *a0, int a1, int a2) {
    return ov49_0225B388(&a0->unk2DC, a1, a2);
}

void ov49_0225A31C(UnkStruct_Ov49_0225A154 *a0, int a1, int a2, int a3, int a4) {
    ov49_0225B3A8(&a0->unk2DC, a1, a2, a3, a4);
}

void ov49_0225A334(UnkStruct_Ov49_0225A154 *a0, int a1, int a2) {
    PlayerProfile *profile = PlayerProfile_New(HEAP_ID_119);
    void *entry;
    if (a1 == ov45_0222A53C(a0->unk34)) {
        entry = ov45_0222A5C0(a0->unk34);
    } else {
        entry = ov45_0222A578(a0->unk34, a1);
    }
    ov45_0222A844(entry, profile, 0x77);
    ov49_0225B3C8(&a0->unk2DC, profile, a2);
    Heap_Free(profile);
}

void ov49_0225A37C(UnkStruct_Ov49_0225A154 *a0, int a1, int a2) {
    ov49_0225B3D8(&a0->unk2DC, a1, a2);
}

void ov49_0225A38C(UnkStruct_Ov49_0225A154 *a0, int a1, int a2) {
    ov49_0225B3E8(&a0->unk2DC, a1, a2);
}

void ov49_0225A39C(UnkStruct_Ov49_0225A154 *a0, int a1, int a2) {
    ov49_0225B3F8(&a0->unk2DC, a1, a2);
}

void ov49_0225A3AC(UnkStruct_Ov49_0225A154 *a0, u32 a1, u32 a2) {
    BufferJPGreeting(a0->unk2DC.unk0, a1, a2);
}

void ov49_0225A3BC(UnkStruct_Ov49_0225A154 *a0, u32 a1, u32 a2) {
    BufferENGreeting(a0->unk2DC.unk0, a1, a2);
}

void ov49_0225A3CC(UnkStruct_Ov49_0225A154 *a0, u32 a1, u32 a2) {
    BufferFRGreeting(a0->unk2DC.unk0, a1, a2);
}

void ov49_0225A3DC(UnkStruct_Ov49_0225A154 *a0, u32 a1, u32 a2) {
    BufferITGreeting(a0->unk2DC.unk0, a1, a2);
}

void ov49_0225A3EC(UnkStruct_Ov49_0225A154 *a0, u32 a1, u32 a2) {
    BufferDEGreeting(a0->unk2DC.unk0, a1, a2);
}

void ov49_0225A3FC(UnkStruct_Ov49_0225A154 *a0, u32 a1, u32 a2) {
    BufferSPGreeting(a0->unk2DC.unk0, a1, a2);
}

void ov49_0225A40C(UnkStruct_Ov49_0225A154 *a0, u32 a1, int a2) {
    BufferTypeName(a0->unk2DC.unk0, a1, ov45_0222D7C0(a2));
}

void ov49_0225A428(UnkStruct_Ov49_0225A154 *a0, int a1, int a2) {
    if (a1 != ov49_0225B8F8(a0->unk184) || ov49_0225B8FC(a0->unk184) != 1 || ov49_0225B934(a0->unk184) != 0 || a2 != ov49_0225B928(a0->unk184)) {
        ov49_0225B89C(a0->unk184, a1, a2);
    }
}

void ov49_0225A478(UnkStruct_Ov49_0225A154 *a0, int a1) {
    ov49_0225B8A8(a0->unk184, a0->unk3C, a1, 0x77);
}
