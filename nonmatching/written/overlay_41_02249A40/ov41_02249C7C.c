typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

typedef struct UnkStruct_ov41_02249C7C_out {
    s32 unk_00;         // 0x00
    s32 unk_04;         // 0x04
    s32 unk_08;         // 0x08
    s32 unk_0C;         // 0x0C
    s32 unk_10;         // 0x10
    s32 unk_14;         // 0x14
    s32 unk_18;         // 0x18
    s32 unk_1C;         // 0x1C
    s32 unk_20;         // 0x20
    s32 unk_24;         // 0x24
    s32 unk_28;         // 0x28
} UnkStruct_ov41_02249C7C_out;

typedef struct UnkStruct_ov41_02249C7C_in {
    s32 unk_00;         // 0x00
    s32 unk_04;         // 0x04
    s32 unk_08;         // 0x08
    s32 unk_0C;         // 0x0C
    s32 unk_10;         // 0x10
    s32 unk_14;         // 0x14
    s32 unk_18;         // 0x18
    s32 unk_1C;         // 0x1C
    s32 unk_20;         // 0x20
    s32 unk_24;         // 0x24
    s32 unk_28;         // 0x28
} UnkStruct_ov41_02249C7C_in;

void ov41_02249E60(UnkStruct_ov41_02249C7C_in *a, s32 *b, s32 *c);

void ov41_02249C7C(UnkStruct_ov41_02249C7C_out *param0, UnkStruct_ov41_02249C7C_in *param1)
{
    param0->unk_00 = param1->unk_00;
    param0->unk_0C = param1->unk_14 / 8;
    param0->unk_10 = param1->unk_18 / 8;
    param0->unk_1C = param1->unk_1C;
    param0->unk_20 = param1->unk_24;
    param0->unk_24 = param1->unk_20;
    param0->unk_28 = param1->unk_28;
    param0->unk_04 = param1->unk_04;
    param0->unk_08 = param1->unk_10;

    ov41_02249E60(param1, &param0->unk_14, &param0->unk_18);
}
