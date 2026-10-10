typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef int s32;
typedef int BOOL;

typedef struct {
    u8 pad0[0x2f0];
    void *unk2F0;
    u8 pad2F4[0x148];
    s32 unk43C;
} UnkStruct_ov14_021F1128_34;

typedef struct {
    u8 pad0[0x1f];
    u8 unk1F;
    u8 pad20[0xc];
    s32 unk2C;
    u8 pad30[0x4];
    UnkStruct_ov14_021F1128_34 *unk34;
} UnkStruct_ov14_021F1128;

void ov14_021F2A18(UnkStruct_ov14_021F1128_34 *a0, u32 a1, u32 a2);
BOOL ov14_021E8544(void *a0);
void ov14_021ED5B0(UnkStruct_ov14_021F1128 *a0);
void ov14_021F1100(UnkStruct_ov14_021F1128 *a0, u32 a1);

void ov14_021F1128(UnkStruct_ov14_021F1128 *a0)
{
    ov14_021F2A18(a0->unk34, 9, 0);
    a0->unk34->unk43C = (s32)a0->unk1F % 6;
    a0->unk2C = a0->unk34->unk43C;
    if (ov14_021E8544(a0->unk34->unk2F0) == 0) {
        ov14_021ED5B0(a0);
        return;
    }
    ov14_021F1100(a0, 0x35);
}
