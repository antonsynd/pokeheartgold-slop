#define UNK_02034354_OWN_DECLS

#include "unk_02034354.h"

#include <nitro/mi/memory.h>
#include <nitro/os/ownerInfo.h>

#include "global.h"

#include "error_handling.h"
#include "friend_group.h"
#include "heap.h"
#include "player_data.h"
#include "save_link_ruleset.h"
#include "save_wifi_history.h"
#include "unk_0202C034.h"
#include "unk_02035900.h"

extern void DWC_CreateExchangeToken(void *a0, void *a1);
extern void sub_020357C4(void *a0, int a1);
extern BOOL sub_0203753C(int a0, void *a1, int a2);
extern int sub_0203A084(SaveData *saveData, void *a1, int *a2);
extern u8 sub_0203A378(SaveData *saveData, int a1);
extern void sub_0202C4F0(UnkStruct_021D2230 *a0, int a1, int a2, int a3, int a4);

typedef struct PlayerRecord {
    LinkBattleRuleset ruleset;
    PlayerProfile profile;
    u8 dwcToken[0x0c];
    u8 friendName[0x10];
    u8 macAddr[6];
    u8 unk_62;
    u8 country;
    u8 region;
    u8 unk_65;
    u8 pad[2];
} PlayerRecord;

typedef struct Mgr {
    void *unk_00;
    u32 param;
    SaveData *saveData;
    PlayerRecord records[8];
    PlayerProfile *slotPtrs[8];
    u16 battleRecord[8][3];
    u8 status[8];
    u8 unk_3a4;
    u8 unk_3a5;
    u8 unk_3a6;
    u8 pad;
} Mgr;

static Mgr *sMgr;

int sub_02034520(void);
void sub_02034524(void);
void sub_0203453C(int a0, int a1, void *a2);
void sub_020345D0(int a0, int a1, void *a2);
int sub_020347CC(void);
void *sub_0203484C(int a0);
void *sub_02034884(int a0);
u8 sub_020348A8(int a0);
u8 sub_020348CC(int a0);
int sub_020348F0(void);
void sub_02034960(int a0, int a1);
void sub_02034A20(SaveData *saveData);
void sub_02034AEC(SaveData *saveData);
void sub_02034B00(void *a0);

void sub_02034354(SaveData *saveData, int a1) {
    int i;
    PlayerProfile *profile = Save_PlayerData_GetProfile(saveData);
    if (sMgr == NULL) {
        sMgr = Heap_Alloc(HEAP_ID_15, 0xea << 2);
        MI_CpuFill8(sMgr, 0, 0xea << 2);
        for (i = 0; i < 8; i++) {
            sMgr->slotPtrs[i] = &sMgr->records[i].profile;
            sub_020346E8(i);
        }
        sMgr->unk_3a4 = 0;
        sMgr->unk_3a5 = 0;
        sMgr->unk_3a6 = 0;
        sMgr->saveData = saveData;
        sMgr->param = (u32)a1;
        PlayerProfile_Copy(profile, sMgr->slotPtrs[0]);
    }
}

void sub_020343E4(void) {
    int i;
    if (sMgr != NULL) {
        for (i = 0; i < 8; i++) {
            sMgr->slotPtrs[i] = NULL;
        }
        if (sMgr != NULL) {
            Heap_Free(sMgr);
        }
        sMgr = NULL;
    }
}

BOOL sub_02034420(void) {
    if (sMgr != NULL) {
        return 1;
    }
    return 0;
}

void sub_02034434(void) {
    int localIdx = sub_0203769C();
    SAV_FRIEND_GRP *friendGroup = Save_FriendGroup_Get(sMgr->saveData);
    UnkStruct_021D2230 *unk = sub_0202C6F4(sMgr->saveData);
    SaveWiFiHistory *wifiHistory = Save_WiFiHistory_Get(sMgr->saveData);
    PlayerProfile *profile;
    u16 *friendNamePtr;

    if (sMgr->unk_00 == NULL) {
        profile = Save_PlayerData_GetProfile(sMgr->saveData);
    } else {
        profile = (PlayerProfile *)sMgr->unk_00;
    }
    PlayerProfile_Copy(profile, sMgr->slotPtrs[localIdx]);
    OS_GetMacAddress(sMgr->records[localIdx].macAddr);
    friendNamePtr = sub_0202C7E0(friendGroup, 1, 0);
    MI_CpuCopy8(friendNamePtr, sMgr->records[localIdx].friendName, 0x10);
    sMgr->records[localIdx].country = WifiHistory_GetPlayerCountry(wifiHistory);
    sMgr->records[localIdx].region = WiFiHistory_GetPlayerRegion(wifiHistory);
    sMgr->records[localIdx].unk_65 = 0;
    DWC_CreateExchangeToken(sub_0202C08C(unk), sMgr->records[localIdx].dwcToken);
    MI_CpuFill8(&sMgr->records[localIdx].ruleset, 0, 0x20);
    if (sMgr->param != 0) {
        LinkBattleRuleset_Copy((LinkBattleRuleset *)sMgr->param, &sMgr->records[localIdx].ruleset);
    }
    sub_02037030(3, &sMgr->records[localIdx].ruleset, 0x68);
}

int sub_02034520(void) {
    return 0x68;
}

void sub_02034524(void) {
    if (sMgr != NULL) {
        sMgr->unk_3a4 = 1;
    }
}

void sub_0203453C(int a0, int a1, void *a2) {
    u8 slotIdx;
    if (sMgr == NULL) {
        return;
    }
    if (!sub_020373B4((u16)a0)) {
        return;
    }
    slotIdx = ((u8 *)a2)[0x62];
    MI_CpuCopy8(a2, &sMgr->records[slotIdx], 0x68);
    sMgr->unk_3a6 = slotIdx;
    if (PlayerProfile_IsNameEmpty(sMgr->slotPtrs[sMgr->unk_3a6]) == 1) {
        return;
    }
    if (sMgr->status[sMgr->unk_3a6] >= 2) {
        return;
    }
    sMgr->status[sMgr->unk_3a6] = 1;
    if (sMgr->unk_3a6 == sub_0203769C()) {
        sMgr->status[sMgr->unk_3a6] = 3;
    }
}

void sub_020345D0(int a0, int a1, void *a2) {
    if (sMgr == NULL) {
        return;
    }
    MI_CpuCopy8(a2, &sMgr->records[a0].ruleset, 0x68);
    sub_020357C4(&sMgr->records[a0].macAddr, a0);
    sMgr->status[a0] = 1;
    if (a0 == sub_0203769C()) {
        sMgr->status[a0] = 3;
        return;
    }
    sMgr->unk_3a5 = 1;
}

// NOTE: the asm returns int (0/1) but the frozen header declares this void;
// the sole caller (overlay_44) ignores the return, so it ships as `asm void`.
#ifdef NONMATCHING
int sub_02034638(void) {
    int i;
    if (sMgr == NULL) {
        return 0;
    }
    if (!sMgr->unk_3a5) {
        return 0;
    }
    if (sub_0203769C()) {
        return 0;
    }
    if (sub_02037824(5) != 0) {
        return 0;
    }
    for (i = 0; i < 8; i++) {
        if (sMgr->status[i] != 0) {
            sMgr->records[i].unk_62 = (u8)i;
            MI_CpuCopy8(sMgr->slotPtrs[i], &sMgr->records[i].profile, PlayerProfile_sizeof());
            sub_0203753C(4, &sMgr->records[i].ruleset, 0x68);
        }
    }
    sub_0203753C(5, NULL, 0);
    sMgr->unk_3a5 = 0;
    return 1;
}
#else
// clang-format off
asm void sub_02034638(void) {
    push {r3, r4, r5, r6, r7, lr}
    ldr r0, =sMgr
    ldr r1, [r0, #0]
    ldr r0, =0x000003A5
    ldrb r0, [r1, r0]
    cmp r0, #0
    bne _0203464A
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0203464A:
    bl sub_0203769C
    cmp r0, #0
    beq _02034656
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_02034656:
    mov r0, #5
    bl sub_02037824
    cmp r0, #0
    bne _020346C8
    mov r4, #0
    add r5, r4, #0
    add r7, r4, #0
_02034666:
    ldr r0, =sMgr
    ldr r2, [r0, #0]
    mov r0, #0xe7
    add r1, r2, r4
    lsl r0, r0, #2
    ldrb r0, [r1, r0]
    cmp r0, #0
    beq _020346A6
    add r0, r2, r5
    add r0, #0x6e
    strb r4, [r0, #0]
    ldr r0, =sMgr
    ldr r6, [r0, #0]
    bl PlayerProfile_sizeof
    add r2, r0, #0
    mov r0, #0xd3
    add r1, r6, r7
    lsl r0, r0, #2
    ldr r0, [r1, r0]
    add r6, #0x2c
    add r1, r6, r5
    bl MI_CpuCopy8
    ldr r1, =sMgr
    mov r0, #4
    ldr r1, [r1, #0]
    mov r2, #0x68
    add r1, #0xc
    add r1, r1, r5
    bl sub_0203753C
_020346A6:
    add r4, r4, #1
    add r5, #0x68
    add r7, r7, #4
    cmp r4, #8
    blt _02034666
    mov r1, #0
    mov r0, #5
    add r2, r1, #0
    bl sub_0203753C
    ldr r0, =sMgr
    mov r2, #0
    ldr r1, [r0, #0]
    ldr r0, =0x000003A5
    strb r2, [r1, r0]
    mov r0, #1
    pop {r3, r4, r5, r6, r7, pc}
_020346C8:
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

int sub_020346D4(void) {
    return sMgr->unk_3a5;
}

void sub_020346E8(int a0) {
    PlayerProfile_Init(sMgr->slotPtrs[a0]);
    sMgr->status[a0] = 0;
}

int sub_02034714(int a0) {
    if (sMgr->status[a0] == 1) {
        return 1;
    }
    return 0;
}

int sub_02034730(int a0) {
    u8 st = sMgr->status[a0];
    int r2 = 1;
    if (st != 2 && st != 1) {
        r2 = 0;
    }
    return r2;
}

int sub_02034750(int a0) {
    if (sMgr->status[a0] == 2) {
        return 1;
    }
    return 0;
}

void sub_0203476C(int a0) {
    sMgr->status[a0] = 2;
}

int sub_02034780(void) {
    int i;
    Mgr *mgr = sMgr;
    for (i = 0; i < 8; i++) {
        if (mgr->status[i] == 1) {
            return i;
        }
    }
    return 0xff;
}

int sub_020347A0(void) {
    int count = 0;
    int i = 0;
    Mgr *mgr = sMgr;
    u8 *pStatus = &mgr->status[0];
    while (i < 8) {
        u8 st = pStatus[0];
        if (st == 2 || st == 3) {
            count++;
        }
        i++;
        pStatus++;
    }
    return count;
}

int sub_020347CC(void) {
    int i;
    int ret = 0;
    if (sMgr == NULL) {
        return 0;
    }
    if (!sub_02037454()) {
        return 0;
    }
    for (i = 0; i < 8; i++) {
        if (!sub_020373B4((u16)i)) {
            if (sMgr->status[i] != 0) {
                sub_020346E8(i);
                ret = 1;
            }
        }
    }
    return ret;
}

PlayerProfile *sub_02034818(u32 a0) {
    Mgr *mgr;
    u8 st;
    if (sMgr == NULL) {
        return NULL;
    }
    mgr = sMgr;
    st = mgr->status[a0];
    switch (st) {
    case 1:
    case 2:
    case 3:
        return mgr->slotPtrs[a0];
    }
    return NULL;
}

void *sub_0203484C(int a0) {
    if (sMgr->status[a0] != 0) {
        return &sMgr->records[a0].dwcToken;
    }
    return NULL;
}

u8 sub_02034870(int a0) {
    return sub_0203A378(sMgr->saveData, a0);
}

void *sub_02034884(int a0) {
    if (sMgr->status[a0] != 0) {
        return &sMgr->records[a0].friendName;
    }
    return NULL;
}

u8 sub_020348A8(int a0) {
    if (sMgr->status[a0] != 0) {
        return sMgr->records[a0].country;
    }
    return 0;
}

u8 sub_020348CC(int a0) {
    if (sMgr->status[a0] != 0) {
        return sMgr->records[a0].region;
    }
    return 0;
}

int sub_020348F0(void) {
    int i;
    int j;
    for (i = 0; i < 7; i++) {
        if (!sub_020373B4((u16)i)) {
            continue;
        }
        if (sMgr->status[i] == 0) {
            continue;
        }
        if (!sub_020373B4((u16)(i + 1))) {
            continue;
        }
        if (sMgr->status[i + 1] == 0) {
            continue;
        }
        for (j = 0; j < 0x20; j++) {
            u8 *p0 = (u8 *)&sMgr->records[i];
            u8 *p1 = (u8 *)&sMgr->records[i + 1];
            if (p0[j] != p1[j]) {
                return 0;
            }
        }
    }
    return 1;
}

void sub_02034960(int a0, int a1) {
    int i;
    int sp0;
    Mgr *mgr;

    if (sMgr == NULL) {
        return;
    }
    if (a0 != 2) {
        sp0 = sub_020378AC(sub_0203769C()) & 1;
    }
    i = 0;
    if (sub_02037454() <= 0) {
        return;
    }
    do {
        if (sub_020373B4((u16)i)) {
            mgr = sMgr;
            if (mgr->status[i] != 0) {
                if (a0 == 0) {
                    if ((sub_020378AC(i) & 1) != sp0) {
                        sMgr->battleRecord[i][0] += (u16)a1;
                    }
                } else if (a0 == 1) {
                    if ((sub_020378AC(i) & 1) != sp0) {
                        sMgr->battleRecord[i][1] += (u16)a1;
                    }
                } else {
                    mgr->battleRecord[i][2] += (u16)a1;
                }
            }
        }
        i++;
    } while (i < sub_02037454());
}

void sub_02034A20(SaveData *saveData) {
    int i;
    int count;
    int idx;
    int res;
    void *dwcData;
    UnkStruct_021D2230 *unk = sub_0202C6F4(saveData);
    i = 0;
    count = sub_02037454();
    if (count > 0) {
        do {
            dwcData = sub_0203484C(i);
            if (dwcData != NULL) {
                res = sub_0203A084(saveData, dwcData, &idx);
                if (res == 0 || res == 1) {
                    if (idx < 0) {
                        GF_AssertFail();
                    }
                    sub_0202C4F0(unk,
                        idx,
                        (int)sMgr->battleRecord[i][0],
                        (int)sMgr->battleRecord[i][1],
                        (int)sMgr->battleRecord[i][2]);
                }
            }
            i++;
            count = sub_02037454();
        } while (i < count);
    }
    for (i = 0; i < 8; i++) {
        sMgr->battleRecord[i][0] = 0;
        sMgr->battleRecord[i][1] = 0;
        sMgr->battleRecord[i][2] = 0;
    }
}

void sub_02034AC0(SaveData *saveData, int a1) {
    if (a1 == 1) {
        sub_02034960(0, 1);
    } else if (a1 == -1) {
        sub_02034960(1, 1);
    }
    sub_02034A20(saveData);
}

void sub_02034AEC(SaveData *saveData) {
    sub_02034960(2, 0);
    sub_02034A20(saveData);
}

void sub_02034B00(void *a0) {
    sMgr->unk_00 = a0;
}
