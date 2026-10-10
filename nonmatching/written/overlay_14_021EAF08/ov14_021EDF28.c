typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef int s32;
typedef int BOOL;

typedef struct {
    u8 pad0[0xe4];
    u32 unkE4;
} UnkStruct_ov14_021EDF28_C;

typedef struct {
    u8 pad0[0xc];
    UnkStruct_ov14_021EDF28_C *unkC;
    u8 pad10[0x1c];
    void *unk2C;
} UnkStruct_ov14_021EDF28_34;

typedef struct {
    u8 pad0[0x21];
    u8 unk21;
    u8 pad22[0x12];
    UnkStruct_ov14_021EDF28_34 *unk34;
} UnkStruct_ov14_021EDF28;

void PlaySE(u32 a0);
void ov14_021E637C(UnkStruct_ov14_021EDF28 *a0);
void ov14_021F08F0(UnkStruct_ov14_021EDF28 *a0);
void ov14_021F6678(UnkStruct_ov14_021EDF28_34 *a0, u32 a1);
void ov14_021F685C(UnkStruct_ov14_021EDF28 *a0, u32 a1, u32 a2, u32 a3);
void GridInputHandler_SetNextInput(void *a0, u8 a1);
void GridInputHandler_SetButtonInputMode(void *a0, u32 a1);

s32 ov14_021EDF28(UnkStruct_ov14_021EDF28 *a0)
{
    u32 val = a0->unk34->unkC->unkE4;

    PlaySE(0x5ea);
    ov14_021E637C(a0);
    ov14_021F08F0(a0);
    ov14_021F6678(a0->unk34, 0x28);
    if (a0->unk21 == 0xff) {
        ov14_021F685C(a0, 0, 0, 0x27);
    } else {
        ov14_021F685C(a0, a0->unk21, 1, 0x27);
        val = 0x22;
    }
    GridInputHandler_SetNextInput(a0->unk34->unk2C, val);
    GridInputHandler_SetButtonInputMode(a0->unk34->unk2C, 1);
    return 0x51;
}
