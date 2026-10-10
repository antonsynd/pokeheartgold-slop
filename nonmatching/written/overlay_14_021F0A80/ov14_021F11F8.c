typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef int s32;
typedef int BOOL;

typedef struct {
    u8 pad0[0x2c];
    void *unk2C;
} UnkStruct_ov14_021F11F8_34;

typedef struct {
    u8 pad0[0x25];
    u8 unk25;
    u8 pad26[0xe];
    UnkStruct_ov14_021F11F8_34 *unk34;
} UnkStruct_ov14_021F11F8;

void ov14_021F1004(UnkStruct_ov14_021F11F8 *a0, s32 a1);
void GridInputHandler_SetNextInput(void *a0, u8 a1);
void GridInputHandler_SetButtonInputMode(void *a0, u32 a1);

s32 ov14_021F11F8(UnkStruct_ov14_021F11F8 *a0, s32 a1)
{
    ov14_021F1004(a0, a1);
    GridInputHandler_SetNextInput(a0->unk34->unk2C, (s32)a0->unk25 % 6);
    GridInputHandler_SetButtonInputMode(a0->unk34->unk2C, 1);
    return 0x3d;
}
