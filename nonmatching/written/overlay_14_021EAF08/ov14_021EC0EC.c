typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef int s32;
typedef int BOOL;

typedef struct {
    u8 pad0[0x6];
    u8 unk6;
} UnkStruct_ov14_021EC0EC_88DC;

typedef struct {
    u8 pad0[0x88dc];
    UnkStruct_ov14_021EC0EC_88DC *unk88DC;
} UnkStruct_ov14_021EC0EC_34;

typedef struct {
    u8 pad0[0x34];
    UnkStruct_ov14_021EC0EC_34 *unk34;
} UnkStruct_ov14_021EC0EC;

void ov14_021E7278(UnkStruct_ov14_021EC0EC *a0);
BOOL ov14_021F3380(UnkStruct_ov14_021EC0EC_88DC *a0);
void ov14_021F33E8(UnkStruct_ov14_021EC0EC_88DC *a0);
void ov14_021E7264(UnkStruct_ov14_021EC0EC *a0);

s32 ov14_021EC0EC(UnkStruct_ov14_021EC0EC *a0)
{
    ov14_021E7278(a0);
    if (ov14_021F3380(a0->unk34->unk88DC) != 0) {
        return 0x1a;
    }
    if (a0->unk34->unk88DC->unk6 != 0) {
        return 0x1e;
    }
    ov14_021F33E8(a0->unk34->unk88DC);
    ov14_021E7264(a0);
    return 0x1b;
}
