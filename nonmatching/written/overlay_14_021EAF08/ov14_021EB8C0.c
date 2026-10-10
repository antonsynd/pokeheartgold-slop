typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;
typedef int BOOL;

typedef struct {
    u8 pad0[0x8];
    s32 unk8;
} UnkStruct_ov14_021EB8C0_0;

typedef struct {
    u8 pad0[0x2f0];
    void *unk2F0;
    u8 pad2F4[0x148];
    s32 unk43C;
    u8 pad440[0xb];
    u8 unk44B;
} UnkStruct_ov14_021EB8C0_34;

typedef struct {
    UnkStruct_ov14_021EB8C0_0 *unk0;
    u8 pad4[0x1d];
    u8 unk21;
    u8 pad22[0x2];
    u8 unk24;
    u8 unk25;
    u8 unk26;
    u8 unk27;
    u8 unk28;
    u8 unk29;
    u8 pad2A[0xa];
    UnkStruct_ov14_021EB8C0_34 *unk34;
} UnkStruct_ov14_021EB8C0;

extern u8 ov14_021F7D2C[];
extern u8 ov14_021F7D1C[];
extern u8 ov14_021F7D3C[];

BOOL ov14_021E7588(UnkStruct_ov14_021EB8C0 *a0, u32 a1);
void ov14_021F5EE4(UnkStruct_ov14_021EB8C0 *a0, void *a1, u32 a2);
void ov14_021F43F4(UnkStruct_ov14_021EB8C0_34 *a0, u32 a1);
void ov14_021F3488(UnkStruct_ov14_021EB8C0 *a0, u32 a1, u32 a2);
void ov14_021E8664(UnkStruct_ov14_021EB8C0 *a0);
void ov14_021E87F4(UnkStruct_ov14_021EB8C0 *a0);
void ov14_021E83C4(void *a0);
void ov14_021F685C(UnkStruct_ov14_021EB8C0 *a0, u32 a1, u32 a2, u32 a3);
void ov14_021F0BF4(UnkStruct_ov14_021EB8C0 *a0);
void ov14_021F0B70(UnkStruct_ov14_021EB8C0 *a0);
void ov14_021F6AC0(UnkStruct_ov14_021EB8C0 *a0, u32 a1, u32 a2);
void ov14_021F3F6C(UnkStruct_ov14_021EB8C0 *a0);
void ov14_021E8874(UnkStruct_ov14_021EB8C0_34 *a0);
void ov14_021F0BB4(UnkStruct_ov14_021EB8C0 *a0);
void ov14_021E8610(void *a0);
void ov14_021F4720(UnkStruct_ov14_021EB8C0 *a0);
void ov14_021F4848(UnkStruct_ov14_021EB8C0 *a0);
void ov14_021F48B4(UnkStruct_ov14_021EB8C0 *a0);
void ov14_021F57B8(UnkStruct_ov14_021EB8C0 *a0);
void ov14_021E86E0(void *a0);
BOOL ov14_021E9554(UnkStruct_ov14_021EB8C0 *a0);
void ov14_021EA1F0(UnkStruct_ov14_021EB8C0 *a0);
void ov14_021F01D8(UnkStruct_ov14_021EB8C0 *a0, u32 a1);

void ov14_021EB8C0(UnkStruct_ov14_021EB8C0 *a0)
{
    u32 r4;

    ov14_021E7588(a0, a0->unk21);
    if (a0->unk26 == 0) {
        s32 mode = a0->unk0->unk8;
        if (mode == 1) {
            ov14_021F5EE4(a0, ov14_021F7D2C, 4);
        } else if (mode == 0) {
            ov14_021F43F4(a0->unk34, 0);
            ov14_021F3488(a0, 1, 1);
            ov14_021F5EE4(a0, ov14_021F7D1C, 4);
        } else {
            if (a0->unk21 >= 0x1e) {
                ov14_021F3488(a0, 1, 1);
                if (a0->unk24 != 0) {
                    ov14_021E8664(a0);
                }
            } else {
                if (a0->unk24 != 0) {
                    ov14_021E8664(a0);
                }
            }
            ov14_021F5EE4(a0, ov14_021F7D3C, 5);
            ov14_021E87F4(a0);
        }
        ov14_021E83C4(a0->unk34->unk2F0);
        if (a0->unk21 < 0x1e) {
            if (a0->unk0->unk8 == 1) {
                ov14_021F685C(a0, a0->unk21, 1, 0x27);
                r4 = 0x51;
            } else {
                r4 = 0xc;
            }
        } else if (a0->unk0->unk8 == 0) {
            ov14_021F0BF4(a0);
            ov14_021F685C(a0, a0->unk21, 1, 0x27);
            r4 = 0x5b;
        } else {
            ov14_021F0B70(a0);
            ov14_021F43F4(a0->unk34, 0);
            ov14_021F6AC0(a0, 5, 9);
            r4 = 0x24;
        }
        ov14_021F3F6C(a0);
        if (a0->unk0->unk8 != 3) {
            ov14_021E8874(a0->unk34);
        }
    } else {
        ov14_021F0BB4(a0);
        ov14_021E8610(a0->unk34->unk2F0);
        ov14_021F4720(a0);
        ov14_021F4848(a0);
        ov14_021F48B4(a0);
        ov14_021F57B8(a0);
        ov14_021E86E0(a0->unk34->unk2F0);
        while (ov14_021E9554(a0)) {
        }
        if (a0->unk27 == 0) {
            ov14_021F6AC0(a0, 4, a0->unk21);
        } else {
            ov14_021F6AC0(a0, 4, a0->unk28);
            a0->unk34->unk44B = 1;
            ov14_021EA1F0(a0);
        }
        a0->unk34->unk43C = (s32)a0->unk25 % 6 + 0x25;
        if (a0->unk0->unk8 == 3) {
            ov14_021F3488(a0, 0x81, 1);
            ov14_021F3488(a0, 0x82, 1);
            r4 = 0x82;
        } else if (a0->unk27 == 0) {
            r4 = 0x29;
        } else {
            r4 = 0x73;
        }
        if (a0->unk0->unk8 != 3 && a0->unk27 != 0) {
            ov14_021E8874(a0->unk34);
        }
        if (a0->unk29 == 1) {
            ov14_021F43F4(a0->unk34, 0);
        }
        a0->unk26 = 0;
        a0->unk28 = 0;
        a0->unk27 = 0;
    }
    ov14_021F01D8(a0, r4);
}
