#define UNK_020379A0_OWN_DECLS

#include "unk_020379A0.h"

#include "unk_02035900.h"

BOOL sub_02037184(int a0, void *a1);
BOOL sub_020376E0(int a0, void *a1);

// Exported by this file but kept out of the frozen unk_020379A0.h (IPA discipline).
void sub_020379F8(void);
BOOL sub_02037A10(void);
void sub_02037A24(int a0, int a1, u8 *a2);
void sub_02037A98(int a0, int a1, u8 *a2);
void sub_02037AAC(int a0, int a1, u8 *a2);
void sub_02037ADC(void);
u8 sub_02037B5C(s32 a0);
void sub_02037B6C(int a0, int a1, u8 *a2);
u32 sub_02037B88(void);
void sub_02037B8C(u8 a0, u8 a1);
s32 sub_02037BA0(u32 a0, u8 a1);
void sub_02037BC8(void);
void sub_02037C68(u32 a0, int a1, u8 *a2);

typedef struct UnkStruct_021D414C {
    u8 unk00[8][2];
    u8 unk10[8];
    u8 unk18[8][0x48];
    u8 unk258[8];
    u8 unk260;
    u8 unk261;
    u8 unk262;
    u8 unk263;
} UnkStruct_021D414C;

static UnkStruct_021D414C *sUnk_021D414C;

void sub_020379A0(enum HeapID heapID) {
    int i;
    if (sUnk_021D414C == NULL) {
        sUnk_021D414C = Heap_Alloc(heapID, sizeof(UnkStruct_021D414C));
        MI_CpuFill8(sUnk_021D414C, 0, sizeof(UnkStruct_021D414C));
    }
    for (i = 0; i < 8; i++) {
        sUnk_021D414C->unk10[i] = 0xFF;
    }
    sUnk_021D414C->unk261 = 0xFF;
    sUnk_021D414C->unk262 = 0xFF;
    sUnk_021D414C->unk263 = 0;
    sUnk_021D414C->unk260 = 0;
}

void sub_020379F8(void) {
    Heap_Free(sUnk_021D414C);
    sUnk_021D414C = NULL;
}

BOOL sub_02037A10(void) {
    if (sUnk_021D414C != NULL) {
        return TRUE;
    }
    return FALSE;
}

void sub_02037A24(int a0, int a1, u8 *a2) {
    u8 local[3];
    int i;
    local[0] = a2[0];
    if (sub_0203769C() != 0) {
        return;
    }
    local[1] = a0;
    local[2] = local[0];
    sub_02037184(0x12, &local[1]);
    sUnk_021D414C->unk10[a0] = local[0];
    for (i = 0; i < 8; i++) {
        if (sub_020373B4((u16)i) != 0) {
            if (local[0] != sUnk_021D414C->unk10[i]) {
                return;
            }
        }
    }
    if (sub_02037184(0x11, local) != 0) {
        return;
    }
    sUnk_021D414C->unk260 = 1;
}

void sub_02037A98(int a0, int a1, u8 *a2) {
    sUnk_021D414C->unk10[a2[0]] = a2[1];
}

void sub_02037AAC(int a0, int a1, u8 *a2) {
    sUnk_021D414C->unk261 = a2[0];
}

void sub_02037AC0(u8 a0) {
    sUnk_021D414C->unk262 = a0;
    sUnk_021D414C->unk263 = 1;
}

void sub_02037ADC(void) {
    if (sUnk_021D414C == NULL) {
        return;
    }
    if (sUnk_021D414C->unk263 != 0) {
        if (sub_020376E0(0x10, &sUnk_021D414C->unk262) != 0) {
            sUnk_021D414C->unk263 = 0;
        }
    }
    if (sUnk_021D414C->unk260 != 0) {
        if (sub_02037184(0x11, sUnk_021D414C->unk10) != 0) {
            sUnk_021D414C->unk260 = 0;
        }
    }
}

BOOL sub_02037B38(u8 a0) {
    if (sUnk_021D414C == NULL) {
        return TRUE;
    }
    if (sUnk_021D414C->unk261 == a0) {
        return TRUE;
    }
    return FALSE;
}

u8 sub_02037B5C(s32 a0) {
    return sUnk_021D414C->unk10[a0];
}

void sub_02037B6C(int a0, int a1, u8 *a2) {
    sUnk_021D414C->unk00[a0][0] = a2[0];
    sUnk_021D414C->unk00[a0][1] = a2[1];
}

u32 sub_02037B88(void) {
    return 2;
}

void sub_02037B8C(u8 a0, u8 a1) {
    u8 local[2];
    local[0] = a0;
    local[1] = a1;
    sub_020376E0(0x13, local);
}

s32 sub_02037BA0(u32 a0, u8 a1) {
    if (sUnk_021D414C == NULL) {
        return -1;
    }
    if (a1 == sUnk_021D414C->unk00[a0][0]) {
        return sUnk_021D414C->unk00[a0][1];
    }
    return -1;
}

void sub_02037BC8(void) {
    int i;
    for (i = 0; i < 8; i++) {
        MI_CpuFill8(sUnk_021D414C->unk00[i], 0, 2);
    }
}

void sub_02037BEC(void) {
    int i;
    for (i = 0; i < 8; i++) {
        sUnk_021D414C->unk258[i] = 0;
    }
}

u32 sub_02037C0C(u32 a0, u16 *a1) {
    if (sUnk_021D414C != NULL) {
        MI_CpuCopy8(a1, sUnk_021D414C->unk18[a0], 0x46);
        sub_020376E0(0x14, sUnk_021D414C->unk18[a0]);
        return 1;
    }
    return 0;
}

u16 *sub_02037C44(s32 a0) {
    if (sUnk_021D414C->unk258[a0] != 0) {
        return (u16 *)sUnk_021D414C->unk18[a0];
    }
    return NULL;
}

void sub_02037C68(u32 a0, int a1, u8 *a2) {
    sUnk_021D414C->unk258[a0] = 1;
    MI_CpuCopy8(a2, sUnk_021D414C->unk18[a0], 0x46);
}
