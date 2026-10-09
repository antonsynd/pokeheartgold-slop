#include "global.h"

typedef struct UnkStruct_Ov49_022595CC {
    u8 unk0[0xC];
    u8 unkC[0x14];
    u8 unk20[0x14];
    u8 unk34[0x2C4];
    u8 unk2F8[0x20];
    u8 unk318[0x20];
    u8 unk338[0x3C];
} UnkStruct_Ov49_022595CC;

extern void ov49_0225AB44(void *a0, void *a1);
extern void ov49_0225ABA4(void *a0, void *a1);
extern BOOL ov49_0225AC5C(void *a0);
extern void ov49_0225AC08(void *a0);
extern void ov49_0225AC24(void *a0);
extern BOOL ov49_0225AC4C(void *a0);
extern void ov49_0225AC74(void *a0);
extern void ov49_0225ACC4(void *a0, void *a1);
extern void ov49_0225AEA8(void *a0, int a1, int a2, int a3);
extern void ov49_0225AEE0(void *a0);
extern void ov49_0225AEF8(void *a0, void *a1, int a2);

void ov49_0225A04C(UnkStruct_Ov49_022595CC *a0, u32 index, u8 value) {
    GF_ASSERT(index < 0x14);
    a0->unkC[index] = value;
}

u8 ov49_0225A064(UnkStruct_Ov49_022595CC *a0, u32 index) {
    return a0->unkC[index];
}

void ov49_0225A06C(UnkStruct_Ov49_022595CC *a0, u32 index, u8 value) {
    GF_ASSERT(index < 0x14);
    a0->unk20[index] = value;
}

u8 ov49_0225A084(UnkStruct_Ov49_022595CC *a0, u32 index) {
    return a0->unk20[index];
}

void ov49_0225A08C(UnkStruct_Ov49_022595CC *a0, void *a1) {
    ov49_0225AB44(a0->unk2F8, a1);
}

void ov49_0225A09C(UnkStruct_Ov49_022595CC *a0, void *a1) {
    ov49_0225ABA4(a0->unk2F8, a1);
}

BOOL ov49_0225A0AC(UnkStruct_Ov49_022595CC *a0) {
    return ov49_0225AC5C(a0->unk2F8);
}

void ov49_0225A0BC(UnkStruct_Ov49_022595CC *a0) {
    ov49_0225AC08(a0->unk2F8);
}

void ov49_0225A0CC(UnkStruct_Ov49_022595CC *a0) {
    ov49_0225AC24(a0->unk2F8);
}

BOOL ov49_0225A0DC(UnkStruct_Ov49_022595CC *a0) {
    return ov49_0225AC4C(a0->unk2F8);
}

void ov49_0225A0EC(UnkStruct_Ov49_022595CC *a0) {
    ov49_0225AC74(a0->unk2F8);
}

void ov49_0225A0FC(UnkStruct_Ov49_022595CC *a0, void *a1) {
    ov49_0225ACC4(a0->unk318, a1);
}

void ov49_0225A10C(UnkStruct_Ov49_022595CC *a0, int a1) {
    ov49_0225AEA8(a0->unk338, a1, 0x78, 0);
}

void ov49_0225A120(UnkStruct_Ov49_022595CC *a0, int a1, int a2) {
    ov49_0225AEA8(a0->unk338, a1, 0x78, a2);
}

void ov49_0225A134(UnkStruct_Ov49_022595CC *a0) {
    ov49_0225AEE0(a0->unk338);
}

void ov49_0225A144(UnkStruct_Ov49_022595CC *a0, void *a1, int a2) {
    ov49_0225AEF8(a0->unk338, a1, a2);
}
