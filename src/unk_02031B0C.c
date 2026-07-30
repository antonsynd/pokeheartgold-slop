// clang-format off
#include "global.h"
#include "heap.h"
#include "pm_string.h"
#define UNK_02031B0C_OWN_DECLS

#include "unk_02031B0C.h"
// clang-format on

#include "constants/items.h"

#include "msgdata.h"
#include "player_data.h"
#include "string_util.h"

extern u32 _u32_div_f(u32 a1, u32 a2);

typedef struct ApricornBoxSlot {
    u32 trainerID;
    u8 gender;
    u8 language;
    u8 version;
    u8 pad;
    u16 name[8];
    UnkStruct_02031CEC unkStruct;
} ApricornBoxSlot;

struct SaveApricornBox {
    u8 apricornCount[7];
    u8 kurtQuantity;
    u8 kurtBallType;
    u8 unk09;
    u16 unk0A;
    UnkStruct_02031CEC kurtBallStruct;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    ApricornBoxSlot slots[3];
};

static const u16 sBallItems[7] = {
    ITEM_LEVEL_BALL,
    ITEM_MOON_BALL,
    ITEM_LURE_BALL,
    ITEM_FRIEND_BALL,
    ITEM_LOVE_BALL,
    ITEM_FAST_BALL,
    ITEM_HEAVY_BALL,
};

static const s8 _020F68DE[36] = {
    4,
    -2,
    0,
    0,
    0,
    0,
    4,
    -2,
    0,
    0,
    0,
    0,
    4,
    -2,
    0,
    0,
    0,
    0,
    4,
    -2,
    -2,
    0,
    0,
    0,
    4,
    -2,
    -2,
    -2,
    -2,
    -2,
    2,
    2,
    2,
    2,
    2,
    0,
};

static const u8 _020F6902[40] = {
    0x00,
    0x00,
    0x74,
    0x16,
    0x0A,
    0x00,
    0x00,
    0x00,
    0x96,
    0x00,
    0x78,
    0x00,
    0x14,
    0x0E,
    0x00,
    0x00,
    0x1C,
    0x02,
    0x7D,
    0x00,
    0x00,
    0x1C,
    0x14,
    0x00,
    0xC8,
    0x00,
    0x88,
    0x00,
    0x00,
    0x00,
    0x18,
    0x0E,
    0x96,
    0x00,
    0x68,
    0x0C,
    0x00,
    0x00,
    0x00,
    0x14,
};

static void sub_02031B3C(SaveApricornBox *box);
static void sub_02031B5C(void *ptr);
static BOOL sub_02031D6C(UnkStruct_02031CEC *a0);
static void sub_02032340(SaveApricornBox *box, u8 val);
static void sub_02032354(SaveApricornBox *box);
static void sub_02032588(u16 *dst, u8 *pair, u32 slotType);
static void sub_020324F4(void *src, u8 *dst);
static void sub_020325CC(ApricornBoxSlot *slot);

u32 Save_ApricornBox_sizeof(void);
u32 sub_02031B10(void);
void Save_ApricornBox_Init(SaveApricornBox *box);
u32 ApricornBox_TakeApricorn(SaveApricornBox *apricornBox, u16 a1, u8 a2);
void sub_02031BEC(SaveApricornBox *box, u32 a1);
u32 sub_02031C00(SaveApricornBox *box);
u32 sub_02031C08(SaveApricornBox *box);
BOOL sub_02031C30(SaveApricornBox *box, u32 apricornId, u32 timestamp);
u32 sub_02031CA0(SaveApricornBox *box);
u32 sub_02031CE8(SaveApricornBox *box);
void sub_02031DA0(SaveApricornBox *box, void *out);
u32 sub_02031FE8(SaveApricornBox *box);
u32 sub_02032004(SaveApricornBox *box);
u32 sub_02032024(SaveApricornBox *box);
void sub_02032058(SaveApricornBox *box, u32 timestamp);
BOOL sub_02032158(ApricornBoxSlot *a, ApricornBoxSlot *b);
void sub_020321A0(SaveApricornBox *box, void *slotData, int count, int startIdx);
void *sub_020320E0(SaveApricornBox *box, PlayerProfile *profile, u32 ballId, enum HeapID heapId);

u32 Save_ApricornBox_sizeof(void) {
    return 0x80;
}

u32 sub_02031B10(void) {
    return 0x20;
}

SaveApricornBox *Save_ApricornBox_Get(SaveData *saveData) {
    return SaveArray_Get(saveData, 0x26);
}

static void InitApricornBox(SaveApricornBox *box) {
    MI_CpuFill8(box, 0, 0x80);
    sub_02031B5C(&box->kurtBallStruct);
    sub_02031B3C(box);
}

static void sub_02031B3C(SaveApricornBox *box) {
    int i = 0;
    while (i < 3) {
        sub_020325CC(&box->slots[i]);
        i++;
    }
}

void Save_ApricornBox_Init(SaveApricornBox *box) {
    InitApricornBox(box);
}

static void sub_02031B5C(void *ptr) {
    MI_CpuFill8(ptr, 0, 8);
}

void ApricornBox_GiveApricorn(SaveApricornBox *apricornBox, u16 a1, u8 a2) {
    if (a1 >= 7) {
        GF_AssertFail();
        return;
    }
    u32 newCount = a2 + apricornBox->apricornCount[a1];
    if (newCount > 0x63) {
        newCount = 0x63;
    }
    apricornBox->apricornCount[a1] = (u8)newCount;
}

u32 ApricornBox_TakeApricorn(SaveApricornBox *apricornBox, u16 a1, u8 a2) {
    if (a1 >= 7) {
        GF_AssertFail();
        return 0;
    }
    u8 count = apricornBox->apricornCount[a1];
    if (count >= a2) {
        apricornBox->apricornCount[a1] = count - a2;
    }
    return apricornBox->apricornCount[a1];
}

int ApricornBox_CountApricorn(SaveApricornBox *apricornBox, u32 a1) {
    if ((int)a1 >= 7) {
        GF_AssertFail();
        return 0;
    }
    return apricornBox->apricornCount[a1];
}

void ApricornBox_SetKurtApricorn(SaveApricornBox *apricornBox, u32 a0, u32 a1) {
    if (apricornBox->apricornCount[a0] < a1) {
        GF_AssertFail();
        return;
    }
    apricornBox->kurtBallType = (u8)a0;
    apricornBox->kurtQuantity = (u8)a1;
    ApricornBox_TakeApricorn(apricornBox, (u16)a0, (u8)a1);
}

int ApricornBox_GetKurtQuantity(SaveApricornBox *apricornBox) {
    return apricornBox->kurtQuantity;
}

int ApricornBox_GetKurtBall(SaveApricornBox *apricornBox) {
    u8 kurtBallType = apricornBox->kurtBallType;
    if (kurtBallType < 7) {
        return sBallItems[kurtBallType];
    }
    return ITEM_POKE_BALL;
}

void sub_02031BEC(SaveApricornBox *box, u32 a1) {
    u32 unk1C = box->unk1C;
    u32 mask = unk1C & 0x3FFFFFFF;
    u32 bits = a1 << 30;
    box->unk1C = bits | mask;
}

u32 sub_02031C00(SaveApricornBox *box) {
    return box->unk1C >> 30;
}

u32 sub_02031C08(SaveApricornBox *box) {
    u16 unk0A = box->unk0A;
    u8 count = 0;
    u32 i = 0;
    while (i < 5) {
        if (unk0A & 7) {
            count++;
        }
        unk0A = (u16)((u32)(unk0A << 13) >> 16);
        i++;
    }
    return count;
}

BOOL sub_02031C30(SaveApricornBox *box, u32 apricornId, u32 timestamp) {
    u16 unk0A = box->unk0A;
    if (apricornId >= 7) {
        GF_AssertFail();
        return 0;
    }
    u32 loopCount = 0;
    while (1) {
        if (unk0A & 7) {
            unk0A = (u16)((u32)(unk0A << 13) >> 16);
            loopCount++;
            if (loopCount >= 5) {
                return 0;
            }
        } else {
            u32 shift = loopCount * 3;
            u32 encoded = ((apricornId + 1) & 7) << shift;
            box->unk0A = (u16)((u16)(box->unk0A | (u16)encoded));
            box->unk0A |= (u16)(2u << 14);
            box->unk14 = timestamp;
            if (box->unk09 == 0) {
                box->unk18 = timestamp;
            }
            box->unk1C = box->unk1C & 0xC0000000u;
            ApricornBox_TakeApricorn(box, (u16)apricornId, 1);
            return 1;
        }
    }
}

u32 sub_02031CA0(SaveApricornBox *box) {
    if (!sub_02031C08(box)) {
        return 0;
    }
    u32 timer = box->unk1C & 0x3FFFFFFFu;
    if (timer < 0x32) {
        return 1;
    }
    if (timer < 0x50) {
        return 2;
    }
    return 3;
}

void sub_02031CCC(SaveApricornBox *box, int a1) {
    u32 val = 0xa * (u32)a1;
    if (box->unk09 == 0) {
        return;
    }
    u32 newVal = box->kurtBallStruct.unk2 + val;
    if (newVal > 0xff) {
        box->kurtBallStruct.unk2 = 0xff;
    } else {
        box->kurtBallStruct.unk2 = (u8)newVal;
    }
}

u32 sub_02031CE8(SaveApricornBox *box) {
    return box->unk09;
}

BOOL sub_02031CEC(SaveApricornBox *apricornBox, u16 a1, UnkStruct_02031CEC *a2) {
    UnkStruct_02031CEC *dst = a2;
    if (a1 >= 9) {
        a1 = 0;
    }
    if (a1 <= 4) {
        const u8 *entry = &_020F6902[a1 * 8];
        dst->unk0 = *(const u16 *)entry;
        dst->unk2 = entry[2];
        dst->unk3 = entry[3];
        dst->unk4 = *(const u32 *)&entry[4];
        return 1;
    }
    if (a1 <= 7) {
        u32 slotIdx = a1 - 5;
        UnkStruct_02031CEC *slotUnk = &apricornBox->slots[slotIdx].unkStruct;
        if (!sub_02031D80(slotUnk)) {
            sub_02031B5C(dst);
            return 0;
        }
        dst->unk0 = slotUnk->unk0;
        dst->unk2 = slotUnk->unk2;
        dst->unk3 = slotUnk->unk3;
        dst->unk4 = slotUnk->unk4;
        return 1;
    }
    if (apricornBox->unk09 == 0) {
        sub_02031B5C(dst);
        return 0;
    }
    dst->unk0 = apricornBox->kurtBallStruct.unk0;
    dst->unk2 = apricornBox->kurtBallStruct.unk2;
    dst->unk3 = apricornBox->kurtBallStruct.unk3;
    dst->unk4 = apricornBox->kurtBallStruct.unk4;
    return 1;
}

static BOOL sub_02031D6C(UnkStruct_02031CEC *a0) {
    if (sub_02031D80(a0)) {
        return 1;
    }
    return 0;
}

int sub_02031D80(UnkStruct_02031CEC *a0) {
    u32 sum = 0;
    int i = 0;
    while (i < 5) {
        sum = (u16)(sum + ((u8 *)a0)[i + 3]);
        i++;
    }
    if (sum > 0x64) {
        sum = 0x64;
    }
    return (u8)sum;
}

void sub_02031DA0(SaveApricornBox *box, void *out) {
    MI_CpuFill8(out, 0, 0xe);

    u8 pairs[10];
    MI_CpuFill8(pairs, 0, 0xa);

    u8 validCount = 0;
    u8 i;
    for (i = 0; i < 5; i++) {
        u8 cnt = box->apricornCount[i];
        pairs[i * 2] = i;
        pairs[i * 2 + 1] = cnt;
        if (cnt != 0) {
            validCount = (u8)(validCount + 1);
        }
    }

    if (validCount != 0) {
        u8 tmp[2];
        u8 j;
        for (i = 0; i < 5; i++) {
            u8 *pi = &pairs[i * 2];
            for (j = (u8)(i + 1); j < 5; j++) {
                u8 *pj = &pairs[j * 2];
                if (pi[1] > pj[1]) {
                    continue;
                }
                if (pi[1] == pj[1] && pi[0] < pj[0]) {
                    continue;
                }
                tmp[0] = pi[0];
                tmp[1] = pi[1];
                pi[0] = pj[0];
                pi[1] = pj[1];
                pj[0] = tmp[0];
                pj[1] = tmp[1];
            }
        }

        u8 worstCount = pairs[9];
        u8 *outp = (u8 *)out;
        for (i = 0; i < 5; i++) {
            outp[i + 6] = pairs[i * 2];
            if (worstCount == pairs[i * 2 + 1]) {
                outp[0xb]++;
            }
        }
    }

    ((u8 *)out)[0xc] = validCount;

    if (validCount > 5) {
        return;
    }

    switch (validCount) {
    case 0: {
        u16 *outp16 = (u16 *)out;
        outp16[0] = (outp16[0] & ~0xf) | 6;
        return;
    }
    case 1: {
        sub_02032588((u16 *)out + 0, &pairs[2], 0);
        ((u16 *)out)[1] = (((u16 *)out)[1] & ~0xf) | 6;
        break;
    }
    case 2: {
        sub_02032588((u16 *)out + 0, &pairs[2], 0);
        sub_02032588((u16 *)out + 1, &pairs[4], 1);
        ((u16 *)out)[2] = (((u16 *)out)[2] & ~0xf) | 6;
        break;
    }
    case 3: {
        sub_02032588((u16 *)out + 0, &pairs[2], 0);
        sub_02032588((u16 *)out + 1, &pairs[4], 1);
        sub_02032588((u16 *)out + 2, &pairs[6], 2);
        break;
    }
    case 4:
    case 5: {
        u8 diff = pairs[3] - pairs[9];
        if (diff <= 0xc) {
            u16 *outp16 = (u16 *)out;
            outp16[0] = (outp16[0] & ~0xf) | 5;
            outp16[0] = (u16)((outp16[0] & 0x00FFu) | (u16)((u16)pairs[3] << 8));
            outp16[1] = (outp16[1] & ~0xf) | 6;
            outp16[1] = (u16)((outp16[1] & 0x00FFu) | (u16)((u16)pairs[5] << 8));
            outp16[2] = (outp16[2] & ~0xf) | 6;
            outp16[2] = (u16)((outp16[2] & 0x00FFu) | (u16)((u16)pairs[7] << 8));
            ((u8 *)out)[0xc] = 1;
            u8 topCount = pairs[3];
            if (topCount > 0x14) {
                outp16[0] = (outp16[0] & ~0xf0) | 0x30;
            } else if (topCount > 7) {
                outp16[0] = (outp16[0] & ~0xf0) | 0x20;
            } else {
                outp16[0] = (outp16[0] & ~0xf0) | 0x10;
            }
        } else {
            sub_02032588((u16 *)out + 0, &pairs[2], 0);
            sub_02032588((u16 *)out + 1, &pairs[4], 1);
            if (validCount == 4) {
                sub_02032588((u16 *)out + 2, &pairs[6], 2);
            } else {
                u16 *outp16 = (u16 *)out;
                outp16[2] = (outp16[2] & ~0xf) | 5;
                outp16[2] = (outp16[2] & ~0xf0) | 0x10;
                outp16[2] = (u16)((outp16[2] & 0x00FFu) | (u16)((u16)pairs[7] << 8));
            }
        }
        break;
    }
    default:
        break;
    }

    ((u8 *)out)[0xc] = validCount;
}

u32 sub_02031FE8(SaveApricornBox *box) {
    u16 result[7];
    sub_02031DA0(box, result);
    u32 type = result[0] & 0xf;
    if (type >= 5) {
        type = 5;
    }
    return type;
}

u32 sub_02032004(SaveApricornBox *box) {
    u16 result[7];
    sub_02031DA0(box, result);
    u8 count = ((u8 *)result)[0xc];
    if (count == 0) {
        return 0;
    }
    return ((u8 *)result)[6] + 1;
}

u32 sub_02032024(SaveApricornBox *box) {
    u8 unk09 = box->unk09;
    if (unk09 == 0) {
        return 0;
    }
    unk09--;
    box->unk09 = unk09;
    if (unk09 == 0) {
        sub_02031B5C(&box->kurtBallStruct);
        box->unk18 = 0;
        box->unk14 = 0;
        box->unk1C = box->unk1C & 0xC0000000u;
    }
    return box->unk09;
}

void sub_02032058(SaveApricornBox *box, u32 timestamp) {
    u32 unk0A_bit15 = (u32)((u32)(box->unk0A << 16) >> 31);
    if (!unk0A_bit15) {
        if (box->unk09 == 0) {
            return;
        }
    }
    u32 elapsed = timestamp - box->unk18;
    if (elapsed >= 0x64) {
        u32 ticks = _u32_div_f(elapsed, 0x64);
        sub_02032340(box, (u8)ticks);
        u32 rem = _u32_div_f(elapsed, 0x64);
        box->unk18 = timestamp - rem;
    }
    if (!((u32)((u32)(box->unk0A << 16) >> 31))) {
        return;
    }
    u32 unk1C_bits = box->unk1C;
    u32 topBits = unk1C_bits & 0xC0000000u;
    u32 timerElapsed = timestamp - box->unk14;
    u32 newTimer = (timerElapsed & 0x3FFFFFFFu) | topBits;
    box->unk1C = newTimer;
    if ((newTimer & 0x3FFFFFFFu) >= 0x64) {
        if (box->unk09 != 0) {
            sub_02031BEC(box, 3);
        } else {
            sub_02031BEC(box, 2);
        }
        sub_02032354(box);
    }
}

void *sub_020320E0(SaveApricornBox *box, PlayerProfile *profile, u32 ballId, enum HeapID heapId) {
    ApricornBoxSlot *slot = (ApricornBoxSlot *)Heap_AllocAtEnd(heapId, 0x20);
    MI_CpuFill8(slot, 0, 0x20);
    slot->trainerID = PlayerProfile_GetTrainerID(profile);
    slot->gender = PlayerProfile_GetTrainerGender(profile);
    slot->language = PlayerProfile_GetLanguage(profile);
    slot->version = PlayerProfile_GetVersion(profile);
    StringFillEOS(slot->name, 8);
    CopyU16StringArrayN(slot->name, PlayerProfile_GetNamePtr(profile), 7);
    sub_02031CEC(box, 8, &slot->unkStruct);
    if (ballId > 0x0000FFFF) {
        slot->unkStruct.unk0 = 0xFFFF;
    } else {
        slot->unkStruct.unk0 = (u16)ballId;
    }
    return slot;
}

BOOL sub_02032158(ApricornBoxSlot *a, ApricornBoxSlot *b) {
    if (a->trainerID != b->trainerID) {
        return 0;
    }
    if (a->gender != b->gender) {
        return 0;
    }
    if (a->version != b->version) {
        return 0;
    }
    if (a->language != b->language) {
        return 0;
    }
    if (StringNotEqual(a->name, b->name)) {
        return 0;
    }
    return 1;
}

void sub_020321A0(SaveApricornBox *box, void *slotData, int count, int startIdx) {
    u32 outerCount = 0;
    u32 validSlotCount = 0;
    UnkStruct_02031CEC *unkPtr = &box->slots[0].unkStruct;
    while (outerCount < 3) {
        if (!sub_02031D6C(unkPtr)) {
            break;
        }
        outerCount++;
        validSlotCount++;
        unkPtr = (UnkStruct_02031CEC *)((u8 *)unkPtr + 0x20);
    }

    int loopI = 0;
    ApricornBoxSlot *inSlot = (ApricornBoxSlot *)slotData;
    while (loopI < count) {
        if (loopI != startIdx) {
            if (sub_02031D6C(&inSlot->unkStruct)) {
                u32 foundMatch = 0;
                u32 matchPos = 0;
                ApricornBoxSlot *searchSlot = &box->slots[0];
                u32 j = 0;
                while (j < 3) {
                    if (sub_02032158(inSlot, searchSlot)) {
                        matchPos = (u8)j;
                        foundMatch = 1;
                        break;
                    }
                    j++;
                    searchSlot++;
                }

                u32 ip;
                if (validSlotCount >= 3) {
                    ip = 2;
                    foundMatch = 1;
                } else if (foundMatch) {
                    ip = (u8)(validSlotCount - 1);
                } else {
                    ip = (u8)validSlotCount;
                    validSlotCount++;
                }

                if (foundMatch && matchPos < ip && matchPos < (u8)(validSlotCount - 1)) {
                    u8 *shiftPtr = (u8 *)box + matchPos * 0x20;
                    u32 shiftPos = matchPos;
                    u32 shiftEnd = (u8)(validSlotCount - 1);
                    while (shiftPos < shiftEnd) {
                        ApricornBoxSlot *dst2 = (ApricornBoxSlot *)(shiftPtr + 0x20);
                        ApricornBoxSlot *src2 = (ApricornBoxSlot *)(shiftPtr + 0x40);
                        *dst2 = *src2;
                        shiftPtr += 0x20;
                        shiftPos++;
                    }
                }

                ApricornBoxSlot *ipSlot = (ApricornBoxSlot *)((u8 *)box + 0x20 + ip * 0x20);
                *ipSlot = *inSlot;
            }
        }
        inSlot++;
        loopI++;
    }
}

String *sub_020322AC(SaveApricornBox *apricornBox, u16 a1, u32 a2) {
    String *str = String_New(9, (enum HeapID)a2);
    if (a1 < 5) {
        MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, 0x15, (enum HeapID)a2);
        ReadMsgDataIntoString(msgData, a1 + 0xe, str);
        DestroyMsgData(msgData);
    } else if (a1 < 8) {
        u32 slotOff = (u32)(u8)(a1 - 5) << 5;
        UnkStruct_02031CEC *unkStruct = (UnkStruct_02031CEC *)((u8 *)apricornBox + 0x38 + slotOff);
        if (sub_02031D6C(unkStruct)) {
            CopyU16ArrayToString(str, (const u16 *)((u8 *)apricornBox + 0x28 + slotOff));
        }
    }
    return str;
}

String *sub_02032308(SaveApricornBox *apricornBox, u16 a1, u32 a2) {
    UnkStruct_02031CEC unkStruct;
    sub_02031CEC(apricornBox, a1, &unkStruct);
    MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, 0x15, (enum HeapID)a2);
    u32 msgId = sub_02032004(apricornBox) + 0x13;
    String *str = NewString_ReadMsgData(msgData, (s32)msgId);
    DestroyMsgData(msgData);
    return str;
}

static void sub_02032340(SaveApricornBox *box, u8 val) {
    u32 newVal = box->kurtBallStruct.unk2 + val;
    if (newVal > 0xff) {
        box->kurtBallStruct.unk2 = 0xff;
    } else {
        box->kurtBallStruct.unk2 = (u8)newVal;
    }
}

static void sub_02032354(SaveApricornBox *box) {
    u16 unk0A = box->unk0A;
    u8 apricornCounts[5];
    sub_020324F4(box, apricornCounts);

    u32 outerLoop;
    for (outerLoop = 0; outerLoop < 5; outerLoop++) {
        u32 crossFlag = 0;
        u32 bits = (u8)(unk0A & 7);
        if (bits == 0) {
            break;
        }
        u32 ballKind = bits - 1;

        u8 sortIdx[5] = { 0, 1, 2, 3, 4 };

        u32 si;
        for (si = 0; si < 3; si++) {
            u32 sj;
            for (sj = si + 1; sj < 5; sj++) {
                s8 scoreI = ((s8 *)box + 0x35)[sortIdx[si]];
                s8 scoreJ = ((s8 *)box + 0x35)[sortIdx[sj]];
                if (scoreJ > scoreI) {
                    continue;
                }
                if (scoreJ == scoreI && sortIdx[sj] < sortIdx[si]) {
                    continue;
                }
                u8 tmp2 = sortIdx[si];
                sortIdx[si] = sortIdx[sj];
                sortIdx[sj] = tmp2;
            }
        }

        const s8 *modRow = &_020F68DE[ballKind * 5];
        u8 idx0 = sortIdx[0];
        u8 idx1 = sortIdx[1];
        u8 *pScore0 = &apricornCounts[idx0];
        u8 *pScore1 = &apricornCounts[idx1];

        u32 k;
        u32 totalDelta = 0;
        u8 bestScore = 0;
        u8 bestIdx = 0;
        for (k = 0; k < 5; k++) {
            s8 mod = modRow[k];
            s8 curScore = (s8)apricornCounts[k];
            s32 newScore = curScore + mod;
            if (mod > 0) {
                if (*pScore0 != 0 && idx0 != (u8)k && *pScore1 != 0 && idx1 != (u8)k) {
                    crossFlag = 1;
                }
            }
            if (newScore > 0x3f) {
                newScore = 0x3f;
            }
            if (newScore < 0) {
                newScore = 0;
            }

            if (ballKind == 6) {
                if ((u8)newScore > bestScore) {
                    bestScore = (u8)newScore;
                    bestIdx = (u8)k;
                }
            } else {
                if ((s32)newScore > (s32)curScore) {
                    if ((u8)newScore > bestScore) {
                        bestScore = (u8)newScore;
                        bestIdx = (u8)k;
                    }
                }
            }

            apricornCounts[k] = (u8)newScore;
            totalDelta = (u8)(totalDelta + (u8)newScore);
            modRow++;
        }

        unk0A = (u16)((u32)(unk0A << 13) >> 16);

        if (crossFlag) {
            u8 unkE = box->kurtBallStruct.unk2;
            if (unkE < 0xa) {
                box->kurtBallStruct.unk2 = 0;
            } else {
                box->kurtBallStruct.unk2 = unkE - 0xa;
            }
        }

        if (ballKind != 5 && totalDelta > 0x64) {
            u8 excess = (u8)(totalDelta - 0x64);
            s8 sub_val = (s8)apricornCounts[bestIdx];
            apricornCounts[bestIdx] = (u8)(sub_val - excess);
        }
    }

    u32 m;
    for (m = 0; m < 5; m++) {
        ((u8 *)box)[m + 0xf] = apricornCounts[m];
    }
    box->unk09 = 3;
    box->unk0A = 0;
}

static void sub_020324F4(void *src, u8 *dst) {
    int i = 0;
    while (i < 5) {
        dst[i] = ((u8 *)src)[i + 3];
        i++;
    }
}

static u32 sub_02032504(u32 slotType, u32 count) {
    if (count == 0) {
        return 0;
    }
    switch (slotType) {
    case 0:
        if (count > 0x3e) {
            return 6;
        }
        if (count > 0x32) {
            return 5;
        }
        if (count > 0x28) {
            return 4;
        }
        if (count > 0x1e) {
            return 3;
        }
        if (count > 0x14) {
            return 2;
        }
        if (count != 0) {
            return 1;
        }
        return 0;
    case 1:
        if (count > 0x28) {
            return 4;
        }
        if (count > 0x1e) {
            return 3;
        }
        if (count > 0x14) {
            return 2;
        }
        if (count != 0) {
            return 1;
        }
        return 0;
    case 2:
        if (count > 0x14) {
            return 3;
        }
        if (count > 0xa) {
            return 2;
        }
        if (count != 0) {
            return 1;
        }
        return 0;
    default:
        return 0;
    }
}

static void sub_02032588(u16 *dst, u8 *pair, u32 slotType) {
    u16 val = *dst;
    val = (u16)((val & ~0xf) | (pair[0] & 0xf));
    *dst = val;
    val = *dst;
    val = (u16)((val & 0x00FFu) | (u16)((u16)pair[1] << 8));
    *dst = val;
    u32 quality = sub_02032504((u8)slotType, pair[1]);
    val = *dst;
    val = (u16)((val & ~0xf0) | (u16)((quality << 4) & 0xff));
    *dst = val;
}

static void sub_020325CC(ApricornBoxSlot *slot) {
    MI_CpuFill8(slot, 0, 0x20);
    sub_02031B5C(&slot->unkStruct);
    StringFillEOS(slot->name, 8);
}
