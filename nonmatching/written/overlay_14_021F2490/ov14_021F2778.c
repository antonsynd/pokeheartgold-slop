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
} UnkStruct_ov14_021F2778_0;

typedef struct {
    u8 pad0[0x43c];
    s32 unk43C;
} UnkStruct_ov14_021F2778_34;

typedef struct {
    UnkStruct_ov14_021F2778_0 *unk0;
    u8 pad4[0x21];
    u8 unk25;
    u8 pad26[0x6];
    s32 unk2C;
    u8 pad30[0x4];
    UnkStruct_ov14_021F2778_34 *unk34;
} UnkStruct_ov14_021F2778;

void ov14_021F6654(UnkStruct_ov14_021F2778_34 *a0, u32 a1);
void ov14_021F2A18(UnkStruct_ov14_021F2778_34 *a0, u32 a1, u32 a2);
void ov14_021F3488(UnkStruct_ov14_021F2778 *a0, u32 a1, u32 a2);

s32 ov14_021F2778(UnkStruct_ov14_021F2778 *a0)
{
    ov14_021F6654(a0->unk34, 0x27);
    ov14_021F2A18(a0->unk34, 9, 0);
    if (a0->unk0->unk8 == 3) {
        ov14_021F3488(a0, 0x81, 0);
    } else {
        ov14_021F3488(a0, 1, 0);
    }
    a0->unk34->unk43C = (s32)a0->unk25 % 6;
    a0->unk2C = 9;
    return 0x43;
}
