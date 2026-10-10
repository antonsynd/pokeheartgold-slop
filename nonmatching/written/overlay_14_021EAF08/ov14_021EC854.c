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
} UnkStruct_ov14_021EC854_0;

typedef struct {
    u8 pad0[0x43c];
    s32 unk43C;
} UnkStruct_ov14_021EC854_34;

typedef struct {
    UnkStruct_ov14_021EC854_0 *unk0;
    u8 pad4[0x1d];
    u8 unk21;
    u8 pad22[0x3];
    u8 unk25;
    u8 pad26[0x4];
    u8 unk2A;
    u8 unk2B;
    u8 pad2C[0x8];
    UnkStruct_ov14_021EC854_34 *unk34;
} UnkStruct_ov14_021EC854;

void ov14_021F6AC0(UnkStruct_ov14_021EC854 *a0, u32 a1, u32 a2);
s32 ov14_021F1580(UnkStruct_ov14_021EC854 *a0, u32 a1);
BOOL ov14_021E7588(UnkStruct_ov14_021EC854 *a0, u32 a1);

s32 ov14_021EC854(UnkStruct_ov14_021EC854 *a0)
{
    s32 ret;

    a0->unk34->unk43C = (s32)a0->unk25 % 6 + 0x25;
    if (a0->unk2A != 0) {
        ov14_021F6AC0(a0, 4, a0->unk2B);
        a0->unk21 = a0->unk2B;
        ret = ov14_021F1580(a0, a0->unk2B);
        a0->unk2A = 0;
        return ret;
    }
    ov14_021F6AC0(a0, 4, a0->unk2B);
    ov14_021E7588(a0, a0->unk2B);
    if (a0->unk0->unk8 == 3) {
        return 0x82;
    }
    return 0x29;
}
