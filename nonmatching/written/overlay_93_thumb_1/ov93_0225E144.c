typedef unsigned int u32;
typedef signed int s32;

typedef struct UnkStruct_ov93_0225E144_Entry {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
} UnkStruct_ov93_0225E144_Entry;

s32 ov93_0225E1E0(void *self, s32 param1, const UnkStruct_ov93_0225E144_Entry *param2);
void GF_AssertFail(void);

void ov93_0225E144(char *self, s32 param1, const UnkStruct_ov93_0225E144_Entry *param2)
{
    UnkStruct_ov93_0225E144_Entry *v0;
    s32 *counter;
    s32 v1;

    if (ov93_0225E1E0(self, param1, param2) == 1) {
        return;
    }

    counter = (s32 *)(self + 0x2F04);
    v1 = counter[param1] % 60;
    v0 = (UnkStruct_ov93_0225E144_Entry *)(self + 0x1C1C + param1 * 0x4B0) + v1;
    counter[param1] = counter[param1] + 1;

    if (v0->unk_00 != 0) {
        GF_AssertFail();
    }

    *v0 = *param2;
}
