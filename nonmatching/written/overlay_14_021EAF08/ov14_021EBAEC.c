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
} UnkStruct_ov14_021EBAEC_0;

typedef struct {
    u8 pad0[0x43c];
    s32 unk43C;
} UnkStruct_ov14_021EBAEC_34;

typedef struct {
    UnkStruct_ov14_021EBAEC_0 *unk0;
    u8 pad4[0x21];
    u8 unk25;
    u8 pad26[0xe];
    UnkStruct_ov14_021EBAEC_34 *unk34;
} UnkStruct_ov14_021EBAEC;

void ov14_021F6AC0(UnkStruct_ov14_021EBAEC *a0, u32 a1, u32 a2);
void ov14_021E8740(UnkStruct_ov14_021EBAEC *a0);
void ov14_021F6844(UnkStruct_ov14_021EBAEC *a0, u32 a1, u32 a2);
void ov14_021F3488(UnkStruct_ov14_021EBAEC *a0, u32 a1, u32 a2);
void ov14_021F01D8(UnkStruct_ov14_021EBAEC *a0, u32 a1);

void ov14_021EBAEC(UnkStruct_ov14_021EBAEC *a0)
{
    ov14_021F6AC0(a0, 9, 10);
    a0->unk34->unk43C = (s32)a0->unk25 % 6;
    ov14_021E8740(a0);
    ov14_021F6844(a0, 0, 0x27);
    if (a0->unk0->unk8 == 3) {
        ov14_021F3488(a0, 0x81, 1);
    }
    ov14_021F01D8(a0, 0x3d);
}
