#include "global.h"

#include "constants/sndseq.h"

#include "error_handling.h"
#include "unk_02005D10.h"

typedef struct {
    u8 unk0[4];
    void *unk4;
    u8 unk8;
    u8 unk9[3];
    u32 unkC;
} UnkStruct_ov49_02267F94;

typedef struct {
    u32 unk0;
    u32 unk4;
} UnkStruct_ov49_02267F94_Pair;

typedef struct {
    const u8 *unk0;
    u32 unk4;
} UnkStruct_ov49_02267F94_List;

typedef void (*UnkOv49_02267F94_Cb)(UnkStruct_ov49_02267F94 *work, u32 arg);

extern const u8 ov49_0226A81C[];
extern const u8 ov49_0226A820[];
extern const u8 ov49_0226A824[];
extern const u8 ov49_0226A828[];
extern const u8 ov49_0226A82C[];
extern const u8 ov49_0226A830[];
extern const u8 ov49_0226A834[];
extern const u8 ov49_0226A83C[][2];
extern const UnkOv49_02267F94_Cb ov49_0226A84C[];
extern const UnkStruct_ov49_02267F94_Pair ov49_0226A864[];
extern const UnkOv49_02267F94_Cb ov49_0226A87C[];
extern const u32 ov49_0226A894[][2];
extern const u8 ov49_0226A8B4[];

extern BOOL ov49_0225E85C(void *a0, u32 index, BOOL enable, int a3);
extern void ov49_0225E82C(void *a0, BOOL enable, int a2);
extern void ov49_0225E894(void *a0, int a1);
extern void ov49_0225E6E0(void *a0, int a1);
extern void ov49_0225E624(void *a0, int a1);
extern void ov49_02268DB0(UnkStruct_ov49_02267F94 *work);

void ov49_02268ADC(UnkStruct_ov49_02267F94 *work, u32 state, u32 arg);
void ov49_02268B04(UnkStruct_ov49_02267F94 *work, u32 arg);
void ov49_02268B08(UnkStruct_ov49_02267F94 *work, u32 arg);
void ov49_02268B0C(UnkStruct_ov49_02267F94 *work, u32 arg);
void ov49_02268B90(UnkStruct_ov49_02267F94 *work, u32 arg);
void ov49_02268C2C(UnkStruct_ov49_02267F94 *work, u32 arg);
void ov49_02268C74(UnkStruct_ov49_02267F94 *work, u32 state, u32 arg);
void ov49_02268CAC(UnkStruct_ov49_02267F94 *work);
void ov49_02268CBC(UnkStruct_ov49_02267F94 *work);
void ov49_02268CCC(UnkStruct_ov49_02267F94 *work);
void ov49_02268CDC(UnkStruct_ov49_02267F94 *work);
void ov49_02268CEC(UnkStruct_ov49_02267F94 *work);
void ov49_02268D0C(u32 id, UnkStruct_ov49_02267F94_List *list);

void ov49_02268ADC(UnkStruct_ov49_02267F94 *work, u32 state, u32 arg) {
    if (state >= 6) {
        GF_AssertFail();
    }
    if (state < 6) {
        ov49_0226A84C[state](work, arg);
    }
}

void ov49_02268B04(UnkStruct_ov49_02267F94 *work, u32 arg) {
}

void ov49_02268B08(UnkStruct_ov49_02267F94 *work, u32 arg) {
}

void ov49_02268B0C(UnkStruct_ov49_02267F94 *work, u32 arg) {
    u32 i;
    BOOL result;
    const u8 *index;
    BOOL enable;
    BOOL matched;
    u32 slot;

    if (arg % 14 != 0) {
        return;
    }
    index = ov49_0226A8B4;
    i = 0;
    do {
        matched = FALSE;
        slot = i & 3;
        if (slot == ov49_0226A894[work->unkC][0]) {
            enable = TRUE;
            matched = TRUE;
        } else if (slot == ov49_0226A894[work->unkC][1]) {
            enable = FALSE;
            matched = TRUE;
        }
        if (matched == TRUE) {
            if (i < 0x11) {
                result = ov49_0225E85C(work->unk4, *index, enable, 0x1000);
                if (result != TRUE) {
                    GF_AssertFail();
                }
            } else {
                result = FALSE;
            }
        } else {
            result = TRUE;
        }
        index++;
        i++;
    } while (result == TRUE);
    work->unkC = (work->unkC + 1) & 3;
}

void ov49_02268B90(UnkStruct_ov49_02267F94 *work, u32 arg) {
    UnkStruct_ov49_02267F94_List list;
    u32 first;
    u32 i;

    if (arg % 6 != 0) {
        return;
    }
    first = ov49_0226A83C[work->unkC][0];
    ov49_02268D0C(ov49_0226A83C[work->unkC][1], &list);
    for (i = 0; i < list.unk4; i++) {
        if (ov49_0225E85C(work->unk4, list.unk0[i], FALSE, 0x1000) != TRUE) {
            GF_AssertFail();
        }
    }
    ov49_02268D0C(first, &list);
    for (i = 0; i < list.unk4; i++) {
        if (ov49_0225E85C(work->unk4, list.unk0[i], TRUE, 0x1000) != TRUE) {
            GF_AssertFail();
        }
    }
    work->unkC = (work->unkC + 1) % 7;
}

void ov49_02268C2C(UnkStruct_ov49_02267F94 *work, u32 arg) {
    if (work->unkC < 3 && ov49_0226A864[work->unkC].unk0 < arg) {
        ov49_0225E894(work->unk4, ov49_0226A864[work->unkC].unk4);
        ov49_0225E6E0(work->unk4, ov49_0226A864[work->unkC].unk4);
        PlaySE(SEQ_SE_PL_140_2);
        work->unkC++;
    }
}

void ov49_02268C74(UnkStruct_ov49_02267F94 *work, u32 state, u32 arg) {
    if (state >= 6) {
        GF_AssertFail();
    }
    if (state < 6) {
        work->unkC = 0;
        ov49_0226A87C[state](work, arg);
        work->unk8 = state;
    }
}

void ov49_02268CAC(UnkStruct_ov49_02267F94 *work) {
    ov49_0225E82C(work->unk4, FALSE, 0x1000);
}

void ov49_02268CBC(UnkStruct_ov49_02267F94 *work) {
    ov49_0225E82C(work->unk4, TRUE, 0x1000);
}

void ov49_02268CCC(UnkStruct_ov49_02267F94 *work) {
    ov49_0225E82C(work->unk4, FALSE, 0x1000);
}

void ov49_02268CDC(UnkStruct_ov49_02267F94 *work) {
    ov49_0225E82C(work->unk4, FALSE, 0x1000);
}

void ov49_02268CEC(UnkStruct_ov49_02267F94 *work) {
    ov49_02268DB0(work);
    ov49_0225E82C(work->unk4, FALSE, 0x1000);
    ov49_0225E624(work->unk4, 0);
}

void ov49_02268D0C(u32 id, UnkStruct_ov49_02267F94_List *list) {
    switch (id) {
    case 0:
        list->unk4 = 6;
        list->unk0 = ov49_0226A834;
        break;
    case 1:
        list->unk4 = 2;
        list->unk0 = ov49_0226A82C;
        break;
    case 2:
        list->unk4 = 2;
        list->unk0 = ov49_0226A824;
        break;
    case 3:
        list->unk4 = 1;
        list->unk0 = ov49_0226A81C;
        break;
    case 4:
        list->unk4 = 1;
        list->unk0 = ov49_0226A820;
        break;
    case 5:
        list->unk4 = 2;
        list->unk0 = ov49_0226A828;
        break;
    case 6:
        list->unk4 = 3;
        list->unk0 = ov49_0226A830;
        break;
    default:
        GF_AssertFail();
        break;
    }
}
