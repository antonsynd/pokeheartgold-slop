#include "global.h"

#include "map_object.h"

// MWCC emits a TU's file-scope external consts sorted by size, and the retail
// layout of these tables stops being size-ascending at ov01_0220724C, so the
// tail lives in overlay_01_sprite_data2.c. Within each size the definitions are
// in the order that makes MWCC emit them in retail order.

typedef struct UnkStruct_ov01_02206EA4 {
    int unk0;
    int unk4;
    int unk8;
} UnkStruct_ov01_02206EA4;

void ov01_021F73CC(LocalMapObject *object);
void ov01_021F73F4(LocalMapObject *object);
void ov01_021F7408(LocalMapObject *object);
void ov01_021F7434(LocalMapObject *object);
void ov01_021F7478(LocalMapObject *object);
void ov01_021F74B4(LocalMapObject *object);
void ov01_021F74C8(LocalMapObject *object);
void ov01_021F7504(LocalMapObject *object);
void ov01_021F772C(LocalMapObject *object);
void ov01_021F77A4(LocalMapObject *object);
void ov01_021F77D0(LocalMapObject *object);
void ov01_021F7810(LocalMapObject *object);
void ov01_021F7894(LocalMapObject *object);
void ov01_021F7C14(LocalMapObject *object);
void ov01_021F7CE4(LocalMapObject *object);
void ov01_021F7DA8(LocalMapObject *object);
void ov01_021F7DD0(LocalMapObject *object);
void ov01_021F7DFC(LocalMapObject *object);
void ov01_021F7E28(LocalMapObject *object);
void ov01_021F7E6C(LocalMapObject *object);
void ov01_021F82F0(LocalMapObject *object);
void ov01_021F84F4(LocalMapObject *object);
void ov01_021F878C(LocalMapObject *object);
void ov01_021F88F0(LocalMapObject *object);
void ov01_021F894C(LocalMapObject *object);
void ov01_021F89B8(LocalMapObject *object);
void ov01_021F8A4C(LocalMapObject *object);
void ov01_021F8AB0(LocalMapObject *object);
void ov01_021F8B30(LocalMapObject *object);
void ov01_021F8CFC(LocalMapObject *object);
void ov01_021F8D24(LocalMapObject *object);
void ov01_021F8D28(LocalMapObject *object);
void ov01_021F8D40(LocalMapObject *object);
void ov01_021F8D58(LocalMapObject *object);
void ov01_021F9058(LocalMapObject *object);
void ov01_021F9078(LocalMapObject *object);
void ov01_021F90C8(LocalMapObject *object);
void ov01_021F90D0(LocalMapObject *object);
void ov01_021F90FC(LocalMapObject *object);
void ov01_021F9424(LocalMapObject *object);
void ov01_021F943C(LocalMapObject *object);
void ov01_021F9440(LocalMapObject *object);
void ov01_021F9444(LocalMapObject *object);
void ov01_021F9448(LocalMapObject *object);
void sub_02063E50(LocalMapObject *object);
void sub_02063E70(LocalMapObject *object);
void sub_02063FE4(LocalMapObject *object);
void sub_02063FFC(LocalMapObject *object);
void sub_0206402C(LocalMapObject *object);

const int ov01_02206CF0[4] = { 0, 0x15, 0x16, 0xFF };

const UnkLMOCallbackStruct2 ov01_02206DB4 = {
    ov01_021F73CC,
    ov01_021F77A4,
    ov01_021F73F4,
    ov01_021F7408,
    ov01_021F7434,
};

const UnkLMOCallbackStruct2 ov01_02206D78 = {
    ov01_021F7DA8,
    ov01_021F894C,
    ov01_021F7DD0,
    ov01_021F7DFC,
    ov01_021F7E28,
};

const UnkLMOCallbackStruct2 ov01_02206D64 = {
    ov01_021F7DA8,
    ov01_021F8A4C,
    ov01_021F7DD0,
    ov01_021F7DFC,
    ov01_021F7E28,
};

const UnkLMOCallbackStruct2 ov01_02206D28 = {
    ov01_021F73CC,
    ov01_021F772C,
    ov01_021F73F4,
    ov01_021F7408,
    ov01_021F7434,
};

const UnkLMOCallbackStruct2 ov01_02206DA0 = {
    ov01_021F7DA8,
    ov01_021F878C,
    ov01_021F7DD0,
    ov01_021F7DFC,
    ov01_021F7E28,
};

const UnkLMOCallbackStruct2 ov01_02206D14 = {
    ov01_021F7478,
    ov01_021F7810,
    ov01_021F74B4,
    ov01_021F74C8,
    ov01_021F7504,
};

const UnkLMOCallbackStruct2 ov01_02206DDC = {
    ov01_021F7DA8,
    ov01_021F89B8,
    ov01_021F7DD0,
    ov01_021F7DFC,
    ov01_021F7E28,
};

const UnkLMOCallbackStruct2 ov01_02206DC8 = {
    ov01_021F73CC,
    ov01_021F77D0,
    ov01_021F73F4,
    ov01_021F7408,
    ov01_021F7434,
};

const UnkLMOCallbackStruct2 ov01_02206E04 = {
    ov01_021F8CFC,
    ov01_021F8D24,
    ov01_021F8D28,
    ov01_021F8D40,
    ov01_021F8D58,
};

const UnkLMOCallbackStruct2 ov01_02206D3C = {
    ov01_021F9058,
    ov01_021F9078,
    ov01_021F90C8,
    ov01_021F90D0,
    ov01_021F90FC,
};

const UnkLMOCallbackStruct2 ov01_02206DF0 = {
    sub_02063E50,
    sub_02063E70,
    sub_02063FE4,
    sub_02063FFC,
    sub_0206402C,
};

const UnkLMOCallbackStruct2 ov01_02206D50 = {
    ov01_021F73CC,
    ov01_021F7C14,
    ov01_021F73F4,
    ov01_021F7408,
    ov01_021F7434,
};

const UnkLMOCallbackStruct2 ov01_02206E54 = {
    ov01_021F7DA8,
    ov01_021F88F0,
    ov01_021F7DD0,
    ov01_021F7DFC,
    ov01_021F7E28,
};

const u16 ov01_02206D00[10] = { 0x0891, 0x0911, 0x0012, 0x0000, 0x0002, 0x0001, 0x0801, 0x0811, 0x0821, 0x0000 };

const UnkLMOCallbackStruct2 ov01_02206E90 = {
    ov01_021F7478,
    ov01_021F7894,
    ov01_021F74B4,
    ov01_021F74C8,
    ov01_021F7504,
};

const UnkLMOCallbackStruct2 ov01_02206E7C = {
    ov01_021F7DA8,
    ov01_021F82F0,
    ov01_021F7DD0,
    ov01_021F7DFC,
    ov01_021F7E28,
};

const UnkLMOCallbackStruct2 ov01_02206E68 = {
    ov01_021F7DA8,
    ov01_021F8AB0,
    ov01_021F7DD0,
    ov01_021F7DFC,
    ov01_021F7E28,
};

const UnkLMOCallbackStruct2 ov01_02206D8C = {
    ov01_021F7DA8,
    ov01_021F8B30,
    ov01_021F7DD0,
    ov01_021F7DFC,
    ov01_021F7E28,
};

const UnkLMOCallbackStruct2 ov01_02206E40 = {
    ov01_021F7DA8,
    ov01_021F7E6C,
    ov01_021F7DD0,
    ov01_021F7DFC,
    ov01_021F7E28,
};

const UnkLMOCallbackStruct2 ov01_02206E2C = {
    ov01_021F73CC,
    ov01_021F7CE4,
    ov01_021F73F4,
    ov01_021F7408,
    ov01_021F7434,
};

const UnkLMOCallbackStruct2 ov01_02206E18 = {
    ov01_021F7DA8,
    ov01_021F84F4,
    ov01_021F7DD0,
    ov01_021F7DFC,
    ov01_021F7E28,
};

const UnkStruct_ov01_02206EA4 ov01_02206EBC[] = {
    { 0, 0xA, 1 },
    { 0, 0,   2 },
};

const UnkStruct_ov01_02206EA4 ov01_02206EA4[] = {
    { 0, 8, 1 },
    { 0, 0, 2 },
};

const UnkStruct_ov01_02206EA4 ov01_02206ED4[] = {
    { 0,    0x17, 0 },
    { 0x18, 0x4E, 1 },
    { 0,    0,    2 },
};

const UnkStruct_ov01_02206EA4 ov01_02206EF8[] = {
    { 0,    0xF,  0 },
    { 0x10, 0x1C, 0 },
    { 0,    0,    2 },
};

const UnkStruct_ov01_02206EA4 ov01_02206F1C[] = {
    { 0,    0x14, 1 },
    { 0x15, 0x29, 1 },
    { 0,    0,    2 },
};

const UnkStruct_ov01_02206EA4 ov01_02206F40[] = {
    { 0,    0,    0 },
    { 1,    0xF,  0 },
    { 0x10, 0x19, 1 },
    { 0,    0,    2 },
};

const UnkStruct_ov01_02206EA4 ov01_02206FE8[] = {
    { 0,    0x17, 1 },
    { 0x18, 0x2F, 1 },
    { 0x30, 0x47, 1 },
    { 0x48, 0x5F, 1 },
    { 0,    0,    2 },
};

const UnkStruct_ov01_02206EA4 ov01_02207060[] = {
    { 0,    0xB,  1 },
    { 0xC,  0x17, 1 },
    { 0x18, 0x23, 1 },
    { 0x24, 0x30, 1 },
    { 0,    0,    2 },
};

const UnkStruct_ov01_02206EA4 ov01_0220709C[] = {
    { 0,   2,   0 },
    { 3,   5,   0 },
    { 6,   9,   0 },
    { 0xA, 0xB, 0 },
    { 0,   0,   2 },
};

const UnkStruct_ov01_02206EA4 ov01_02206F70[] = {
    { 0,    0x13, 0 },
    { 0x14, 0x27, 0 },
    { 0x28, 0x3B, 0 },
    { 0x3C, 0x4F, 0 },
    { 0,    0,    2 },
};

const UnkStruct_ov01_02206EA4 ov01_02206FAC[] = {
    { 0,    0xF,  1 },
    { 0x10, 0x1F, 1 },
    { 0x20, 0x2F, 1 },
    { 0x30, 0x40, 1 },
    { 0,    0,    2 },
};

const UnkStruct_ov01_02206EA4 ov01_02207024[] = {
    { 0,    0x17, 0 },
    { 0x18, 0x2F, 0 },
    { 0,    0x17, 0 },
    { 0x18, 0x2F, 0 },
    { 0,    0,    2 },
};

const UnkStruct_ov01_02206EA4 ov01_022070D8[] = {
    { 0,    0xF,  0 },
    { 0x10, 0x1F, 0 },
    { 0x20, 0x2F, 0 },
    { 0x30, 0x3F, 0 },
    { 0,    0,    2 },
};

const UnkStruct_ov01_02206EA4 ov01_02207114[] = {
    { 0,    0xF,  0 },
    { 0x10, 0x1F, 0 },
    { 0x20, 0x2F, 0 },
    { 0x30, 0x3F, 0 },
    { 0x40, 0x44, 1 },
    { 0,    0,    2 },
};

const UnkStruct_ov01_02206EA4 ov01_0220715C[] = {
    { 0,    0xF,  0 },
    { 0x10, 0x1F, 0 },
    { 0x20, 0x2F, 0 },
    { 0x30, 0x3F, 0 },
    { 0x40, 0x4F, 0 },
    { 0x50, 0x5F, 0 },
    { 0x60, 0x6F, 0 },
    { 0x70, 0x7F, 0 },
    { 0,    0,    2 },
};

const UnkStruct_ov01_02206EA4 ov01_022071C8[] = {
    { 0,    0xF,  0 },
    { 0x10, 0x1F, 0 },
    { 0x20, 0x2F, 0 },
    { 0x30, 0x3F, 0 },
    { 0x40, 0x47, 0 },
    { 0x48, 0x4F, 0 },
    { 0x50, 0x53, 1 },
    { 0x54, 0x57, 1 },
    { 0x58, 0x5B, 1 },
    { 0x5C, 0x5F, 1 },
    { 0,    0,    2 },
};
