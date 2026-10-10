typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef int s32;
typedef int BOOL;

typedef struct {
    u8 pad0[0x8];
    s32 unk8;
} UnkStruct_ov14_021F0D58_0;

typedef struct {
    u8 pad0[0x2c];
    void *unk2C;
    u8 pad30[0x2c0];
    void *unk2F0;
    u8 pad2F4[0x2c];
    void *unk320;
} UnkStruct_ov14_021F0D58_34;

typedef struct {
    UnkStruct_ov14_021F0D58_0 *unk0;
    u8 pad4[0x1b];
    u8 unk1F;
    u8 pad20[0x5];
    u8 unk25;
    u8 pad26[0xe];
    UnkStruct_ov14_021F0D58_34 *unk34;
} UnkStruct_ov14_021F0D58;

BOOL ov14_021E85E4(void *a0);
BOOL ov14_021E8648(void *a0);
void ov14_021E8634(void *a0);
void ov14_021F48B4(UnkStruct_ov14_021F0D58 *a0);
void ov14_021F57B8(UnkStruct_ov14_021F0D58 *a0);
void GridInputHandler_SetNextInput(void *a0, u8 a1);
void GridInputHandler_SetButtonInputMode(void *a0, u32 a1);
BOOL GridInputHandler_IsButtonInputMode(void *a0);
void *GridInputHandler_GetDpadBox(void *a0, u32 a1);
void DpadMenuBox_GetPosition(void *a0, u8 *a1, u8 *a2);
void ManagedSprite_SetPositionXY(void *a0, u32 a1, u32 a2);
void ov14_021F29E4(UnkStruct_ov14_021F0D58_34 *a0, u32 a1, u32 a2);
void ov14_021F2A18(UnkStruct_ov14_021F0D58_34 *a0, u32 a1, u32 a2);
s32 ov14_021F0EE8(UnkStruct_ov14_021F0D58 *a0, u32 a1);
s32 ov14_021F0234(UnkStruct_ov14_021F0D58 *a0, void *a1, u32 a2);
void ov14_021F604C(UnkStruct_ov14_021F0D58 *a0);
void ov14_021E9970(void);
void ov14_021E9920(void);

s32 ov14_021F0D58(UnkStruct_ov14_021F0D58 *a0, s32 a1)
{
    u32 r4;
    u32 old;
    s32 q;
    u32 slot;
    u8 *pos = (u8 *)&slot;

    __asm__ volatile("movs %0, r3" : "=l"(slot) : : "cc");

    if (a0->unk0->unk8 == 3) {
        r4 = 0x82;
    } else {
        r4 = 0x29;
    }
    old = a0->unk25;
    q = (s32)old / 6;
    if (a1 + q * 6 != old) {
        a0->unk25 = a1 + q * 6;
        ov14_021F48B4(a0);
        ov14_021F57B8(a0);
    }
    if (a0->unk25 == a0->unk1F) {
        if (ov14_021E85E4(a0->unk34->unk2F0) == 1) {
            GridInputHandler_SetNextInput(a0->unk34->unk2C, (s32)a0->unk25 % 6 + 0x25);
            GridInputHandler_SetButtonInputMode(a0->unk34->unk2C, 1);
            ov14_021F29E4(a0->unk34, 9, 0xe);
            return ov14_021F0EE8(a0, r4);
        }
        if (ov14_021E8648(a0->unk34->unk2F0) == 1) {
            GridInputHandler_SetNextInput(a0->unk34->unk2C, (s32)a0->unk25 % 6 + 0x25);
            GridInputHandler_SetButtonInputMode(a0->unk34->unk2C, 1);
            ov14_021F29E4(a0->unk34, 9, 0xe);
            ov14_021E8634(a0->unk34->unk2F0);
            return ov14_021F0234(a0, (void *)ov14_021E9970, r4);
        }
        ov14_021F29E4(a0->unk34, 9, 0xe);
        return r4;
    }
    GridInputHandler_SetNextInput(a0->unk34->unk2C, 0x2d);
    if (GridInputHandler_IsButtonInputMode(a0->unk34->unk2C) == 1) {
        DpadMenuBox_GetPosition(GridInputHandler_GetDpadBox(a0->unk34->unk2C, 0x2d), &pos[1], &pos[0]);
        ManagedSprite_SetPositionXY(a0->unk34->unk320, pos[1], pos[0]);
        ov14_021F29E4(a0->unk34, 9, 8);
        ov14_021F2A18(a0->unk34, 9, 1);
    }
    if (ov14_021E85E4(a0->unk34->unk2F0) == 1) {
        return r4;
    }
    ov14_021F604C(a0);
    if (ov14_021E8648(a0->unk34->unk2F0) == 1) {
        ov14_021E8634(a0->unk34->unk2F0);
    }
    return ov14_021F0234(a0, (void *)ov14_021E9920, r4);
}
