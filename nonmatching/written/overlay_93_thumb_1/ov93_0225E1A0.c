typedef unsigned int u32;
typedef signed int s32;

typedef struct UnkStruct_ov93_0225E1A0_Entry {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
} UnkStruct_ov93_0225E1A0_Entry;

UnkStruct_ov93_0225E1A0_Entry *ov93_0225E1A0(char *self, s32 param1)
{
    s32 *counter = (s32 *)(self + 0x2F14);
    s32 v1 = counter[param1] % 60;
    UnkStruct_ov93_0225E1A0_Entry *v0 = (UnkStruct_ov93_0225E1A0_Entry *)(self + 0x1C1C + param1 * 0x4B0) + v1;

    if (v0->unk_00 != 0) {
        counter[param1] = counter[param1] + 1;
        return v0;
    }
    return 0;
}
