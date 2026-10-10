#include "global.h"
#include "gf_rtc.h"
#include "player_data.h"
#include "pokewalker.h"

typedef struct UnkStruct_ov112_021F0F90_Entry {
    u32 time;
    u8 unk4[4];
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u8 unkE[0x76 - 0xE];
    u8 unk76;
    u8 unk77;
    u16 unk78;
    u8 unk7A[0x84 - 0x7A];
    u8 type;
    u8 unk85[3];
} UnkStruct_ov112_021F0F90_Entry;

typedef struct UnkStruct_ov112_021F0F90_Src {
    SaveData *saveData;
    UnkStruct_ov112_021F0F90_Entry *entries;
} UnkStruct_ov112_021F0F90_Src;

extern void MATH_QSort(void *head, u32 num, u32 width, int (*comp)(void *, void *), void *buf);
extern int ov112_021F0F70(void *a, void *b);
extern void GF_AssertFail(void);

/*
 * The game's frame (sp after `push {r3-r7, lr}; sub sp, #0xC8`):
 *   fr[0]        zero word (also MATH_QSort's 5th argument)
 *   fr[1]        minimum time
 *   fr[2..49]    24 pairs {entry, index}
 *   fr[50..55]   saved r3, r4, r5, r6, r7, lr
 * The pair array is indexed with the unchecked u8 count at work+0x13E, so pair 24 and up alias the
 * saved registers and the caller's frame, and pairs[count - 1] with count 0 reads fr[0]. To keep that
 * behaviour, ov112_021F0F90 builds exactly that frame and the body works on it through `fr`.
 */
#define PAIR_ENTRY(k) (((UnkStruct_ov112_021F0F90_Entry **)fr)[2 + 2 * (u32)(k)])
#define PAIR_INDEX(k) (fr[3 + 2 * (u32)(k)])
/* the game's pairs[n - 1]: fr[2 * n] */
#define LAST_ENTRY(n) (((UnkStruct_ov112_021F0F90_Entry **)fr)[2 * (u32)(n)])

__attribute__((used)) void ov112_021F0F90_Body(u8 *work, u32 *fr) {
    UnkStruct_ov112_021F0F90_Entry *e;
    PlayerProfile *profile;
    int i, j;
    u32 n;
    u8 t;
    u32 v;
    u32 prevType, prevVal;
    u32 cnt;

    for (i = 0; i < 48; i++) {
        fr[2 + i] = 0;
    }
    fr[1] = 0xFFFFFFFF;
    if (work == NULL) {
        GF_AssertFail();
    }
    if (*(void **)work == NULL) {
        GF_AssertFail();
    }
    Save_Pokewalker_Get((*(UnkStruct_ov112_021F0F90_Src **)work)->saveData);
    profile = Save_PlayerData_GetProfile((*(UnkStruct_ov112_021F0F90_Src **)work)->saveData);
    *(u32 *)(work + 0xC) = PlayerProfile_GetTrainerGender(profile);
    *(const u16 **)(work + 8) = PlayerProfile_GetNamePtr(profile);

    for (i = 0; i < 24; i++) {
        e = &(*(UnkStruct_ov112_021F0F90_Src **)work)->entries[i];
        if ((u16)(e->unk8 - 7) <= 1) {
            if (e->unkA > 0x1ED || e->unkC > 0x1ED) {
                continue;
            }
        }
        t = e->type;
        if (t == 0x1D) {
            e->type = 0xE;
        } else if (t == 0x1C) {
            e->type = 0xC;
        } else if (t == 0xC) {
            e->type = 0xB;
        } else if (t == 0xE) {
            e->type = 0xD;
        }
        t = e->type;
        if (t >= 0x1C) {
            t = 0;
        } else if (t >= 1 && t <= 10) {
            work[0x143]++;
        } else if (t == 0xC) {
            *(u32 *)(work + 0x144) |= 0x200;
        } else if (t == 0xE) {
            *(u32 *)(work + 0x144) |= 0x100;
        } else if (t == 0xB) {
            if (work[0x13F] == 0) {
                work[0x141]++;
                if (work[0x141] >= 4) {
                    work[0x13F] = i;
                }
            }
        } else if (t == 0xD) {
            if (work[0x140] == 0) {
                work[0x142]++;
                if (work[0x142] >= 4) {
                    work[0x140] = i;
                }
            }
        }
        if (t != 0) {
            if (e->type == 0) {
                GF_AssertFail();
            }
            if (fr[1] > e->time) {
                fr[1] = e->time;
            }
            PAIR_ENTRY(work[0x13E]) = e;
            PAIR_INDEX(work[0x13E]) = i;
            work[0x13E]++;
        }
    }

    n = work[0x13E];
    for (j = 0; j < (int)n; j++) {
        if (PAIR_ENTRY(j)->type == 0x19) {
            if (PAIR_ENTRY(j)->time > fr[1]) {
                if (fr[1] == 0) {
                    GF_AssertFail();
                }
                PAIR_ENTRY(j)->time = fr[1] - 1;
            }
            break;
        }
    }

    fr[0] = 0;
    MATH_QSort(&fr[2], work[0x13E], 8, ov112_021F0F70, NULL);
    n = work[0x13E];
    if (n < 2) {
        LAST_ENTRY(n)->unk76 = 0;
        {
            u32 sec = (u32)GF_RTC_DateTimeToSec();
            LAST_ENTRY(work[0x13E])->time = sec;
        }
    } else {
        UnkStruct_ov112_021F0F90_Entry *prev = LAST_ENTRY(n - 1);
        LAST_ENTRY(n)->unk76 = prev->unk76;
        if (prev->type == 0x1B) {
            LAST_ENTRY(work[0x13E])->time = prev->time + 0xE10;
        } else {
            LAST_ENTRY(work[0x13E])->time = prev->time + 5;
        }
    }

    prevType = 0;
    prevVal = 0;
    n = work[0x13E];
    for (j = 0; j < (int)n;) {
        e = PAIR_ENTRY(j);
        t = e->type;
        v = e->unk78;
        if (t == 0x1B && prevType == 0x1B && (int)v < 300 && (int)prevVal < 300) {
            e->type = 0;
        }
        j++;
        n = work[0x13E];
        prevType = t;
        prevVal = v;
    }

    cnt = 0;
    if ((int)n > 0) {
        u8 *dst = work;
        for (j = 0; j < (int)work[0x13E]; j++) {
            if (PAIR_ENTRY(j)->type != 0) {
                *(UnkStruct_ov112_021F0F90_Entry **)(dst + 0xC0) = PAIR_ENTRY(j);
                dst += 4;
                cnt++;
            }
        }
    }
    work[0x13E] = cnt;
}

/* Builds the game's frame (see above) and runs the body on it. */
void ov112_021F0F90(u8 *work) __attribute__((naked));
void ov112_021F0F90(u8 *work) {
    __asm__ volatile(
        "push {r3, r4, r5, r6, r7, lr}\n\t"
        "sub sp, #0xc8\n\t"
        "mov r1, sp\n\t"
        "bl ov112_021F0F90_Body\n\t"
        "add sp, #0xc8\n\t"
        "pop {r3, r4, r5, r6, r7, pc}\n\t");
}
