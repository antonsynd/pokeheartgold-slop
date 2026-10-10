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
} UnkStruct_ov14_021EC150_0;

typedef struct {
    u8 pad0[0x2c];
    void *unk2C;
    u8 pad30[0x2c0];
    void *unk2F0;
} UnkStruct_ov14_021EC150_34;

typedef struct {
    UnkStruct_ov14_021EC150_0 *unk0;
    u8 pad4[0x1b];
    u8 unk1F;
    u8 pad20;
    u8 unk21;
    u8 unk22;
    u8 pad23[0xd];
    s32 unk30;
    UnkStruct_ov14_021EC150_34 *unk34;
} UnkStruct_ov14_021EC150;

void ov14_021E6100(UnkStruct_ov14_021EC150 *a0, u32 a1, u32 a2);
void ov14_021F6654(UnkStruct_ov14_021EC150_34 *a0, u32 a1);
void ov14_021E765C(UnkStruct_ov14_021EC150 *a0);
void ov14_021F4958(UnkStruct_ov14_021EC150 *a0, u32 a1);
void ov14_021F4A20(UnkStruct_ov14_021EC150 *a0, u32 a1);
void ov14_021F685C(UnkStruct_ov14_021EC150 *a0, u32 a1, u32 a2, u32 a3);
void ov14_021E8248(void *a0);
void ov14_021E82A8(void *a0);
void ov14_021E8328(void *a0);
void GridInputHandler_SetNextInput(void *a0, u32 a1);
void GridInputHandler_SetButtonInputMode(void *a0, u32 a1);
void ov14_021F43F4(UnkStruct_ov14_021EC150_34 *a0, u32 a1);
void ov14_021F3488(UnkStruct_ov14_021EC150 *a0, u32 a1, u32 a2);
void ov14_021F08BC(UnkStruct_ov14_021EC150 *a0);
void ov14_021F0234(UnkStruct_ov14_021EC150 *a0, void *a1, s32 a2);
void ov14_021E9450(void);
void ov14_021E9194(void);

void ov14_021EC150(UnkStruct_ov14_021EC150 *a0)
{
    void *fn;

    ov14_021E6100(a0, a0->unk1F, a0->unk21);
    ov14_021F6654(a0->unk34, 0x25);
    ov14_021E765C(a0);
    if (a0->unk21 < 0x1e) {
        ov14_021F4958(a0, a0->unk1F);
        ov14_021F4A20(a0, a0->unk1F);
        if (a0->unk0->unk8 == 1) {
            ov14_021F685C(a0, 0, 0, 0x27);
            a0->unk30 = 0x51;
        } else {
            a0->unk30 = 0xc;
            ov14_021E8248(a0->unk34->unk2F0);
            ov14_021E82A8(a0->unk34->unk2F0);
        }
        ov14_021E8328(a0->unk34->unk2F0);
        GridInputHandler_SetNextInput(a0->unk34->unk2C, a0->unk21);
        GridInputHandler_SetButtonInputMode(a0->unk34->unk2C, 1);
        ov14_021F43F4(a0->unk34, 1);
        ov14_021F3488(a0, 1, 0);
        a0->unk21 = 0xff;
        fn = (void *)ov14_021E9450;
    } else {
        ov14_021F08BC(a0);
        a0->unk22 = 1;
        a0->unk30 = 0x21;
        ov14_021E8328(a0->unk34->unk2F0);
        ov14_021F3488(a0, 2, 0);
        fn = (void *)ov14_021E9194;
    }
    ov14_021F0234(a0, fn, a0->unk30);
}
