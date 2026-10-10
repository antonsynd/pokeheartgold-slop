typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef int s32;
typedef int BOOL;

typedef struct {
    u8 pad0[0x43c];
    s32 unk43C;
} UnkStruct_ov14_021EE380_34;

typedef struct {
    u8 pad0[0x25];
    u8 unk25;
    u8 pad26[0xe];
    UnkStruct_ov14_021EE380_34 *unk34;
} UnkStruct_ov14_021EE380;

void ov14_021F6AC0(UnkStruct_ov14_021EE380 *a0, u32 a1, u32 a2);
void ov14_021F29E4(UnkStruct_ov14_021EE380_34 *a0, u32 a1, u32 a2);
void ov14_021F6654(UnkStruct_ov14_021EE380_34 *a0, u32 a1);
void ov14_021F685C(UnkStruct_ov14_021EE380 *a0, u32 a1, u32 a2, u32 a3);

s32 ov14_021EE380(UnkStruct_ov14_021EE380 *a0)
{
    a0->unk34->unk43C = (s32)a0->unk25 % 6;
    ov14_021F6AC0(a0, 1, a0->unk34->unk43C);
    ov14_021F29E4(a0->unk34, 9, 0xe);
    ov14_021F6654(a0->unk34, 0x25);
    ov14_021F685C(a0, 0, 3, 0x27);
    return 0x61;
}
