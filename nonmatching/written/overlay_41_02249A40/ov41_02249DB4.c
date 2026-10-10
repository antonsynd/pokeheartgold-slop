typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

typedef struct UnkStruct_ov41_02249DB4_src {
    u8 filler_00[0x14];
    s32 unk_14;         // 0x14
    s32 unk_18;         // 0x18
    u8 filler_1C[8];
    s32 unk_24;         // 0x24
    s32 unk_28;         // 0x28
    s32 unk_2C;         // 0x2C
} UnkStruct_ov41_02249DB4_src;

typedef struct UnkStruct_ov41_02249DB4_bg {
    void *bgConfig;     // 0x00
    u8 filler_04[0x18];
    s32 bgId;           // 0x1C
} UnkStruct_ov41_02249DB4_bg;

void ov41_02249F0C(void *task, void *env);
void *CreateSysTaskAndEnvironment(void (*function)(void *, void *), u32 environmentSize, u32 priority, s32 heapId);
void *SysTask_GetData(void *task);
s32 Bg_GetXpos(const void *bgConfig, s32 bgId);
s32 Bg_GetYpos(const void *bgConfig, s32 bgId);
void ov41_02249E60(UnkStruct_ov41_02249DB4_src *a, s32 *b, s32 *c);

void ov41_02249DB4(UnkStruct_ov41_02249DB4_bg *param0, UnkStruct_ov41_02249DB4_src *param1, s32 param2, s32 param3, s32 param4, void *param5)
{
    void *task;
    u32 *data;
    const u32 *src;
    s32 i;

    task = CreateSysTaskAndEnvironment(ov41_02249F0C, 0x4C, 0, 13);
    data = (u32 *)SysTask_GetData(task);
    data[0] = (u32)param0;
    src = (const u32 *)((u32)param1 & ~3u);
    for (i = 0; i < 6; i++) {
        u32 a = src[0];
        u32 b = src[1];
        src += 2;
        data[1 + i * 2] = a;
        data[2 + i * 2] = b;
    }
    data[0xD] = (u32)param5;
    data[0xE] = (u32)param4;
    data[0xF] = (u32)(param2 / param4);
    data[0x10] = (u32)(param3 / param4);
    data[0x11] = (u32)Bg_GetXpos(param0->bgConfig, param0->bgId);
    data[0x12] = (u32)Bg_GetYpos(param0->bgConfig, param0->bgId);
    param1->unk_28 = 0x80;
    param1->unk_24 = 5;
    param1->unk_14 = param1->unk_14 - param2;
    param1->unk_18 = param1->unk_18 - param3;
    param1->unk_2C = 14;
    ov41_02249E60(param1, 0, 0);
}
