#include "unk_02034B0C.h"

#include "global.h"

#include "assert.h"
#include "heap.h"
#include "mail_message.h"
#include "save_link_ruleset.h"
#include "system.h"

typedef struct CommBssDesc {
    u16 length;
    u16 rssi;
    u8 bssid[6];
    u8 pad0A[0x36 - 0x0A];
    u16 channel;
    u8 pad38[0x50 - 0x38];
    u8 userGameInfo[0x70];
} CommBssDesc;

typedef struct CommGameInfo {
    u32 unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08[8];
    u8 unk_10[0x20];
    u8 unk_30[0x20];
    u8 unk_50[4];
    u8 unk_54;
    u8 unk_55[7];
} CommGameInfo;

typedef struct CommServerClient {
    u8 unk_00[0x54];
    CommBssDesc unk_54;
    CommBssDesc unk_114[16];
    u8 unk_D14[8][6];
    u16 unk_D44[16];
    void *unk_D64;
    MailMessage unk_D68;
    u32 unk_D70;
    u8 unk_D74;
    u8 unk_D75[3];
    PlayerProfile *unk_D78;
    void *unk_D7C;
    u32 unk_D80;
    u32 unk_D84;
    CommGameInfo *unk_D88;
    u16 unk_D8C;
    u16 unk_D8E;
    u8 unk_D90;
    u8 unk_D91;
    u8 unk_D92;
    u8 unk_D93;
    u8 unk_D94;
    u8 unk_D95_0 : 1;
    u8 unk_D95_1 : 1;
    u8 unk_D95_2 : 1;
    u8 unk_D95_3 : 1;
    u8 unk_D95_4 : 1;
    u8 unk_D95_5 : 1;
    u8 unk_D95_6 : 1;
    u8 unk_D95_7 : 1;
    u8 unk_D96[2];
} CommServerClient;

static struct {
    u16 tgid;
    u16 unk_02;
    u32 status;
    CommServerClient *client;
} sCommServer;

#define sClient (sCommServer.client)

u16 WM_GetNextTgid(void);
u16 WM_GetDispersionBeaconPeriod(void);
int WVR_StartUpAsync(int vram, void (*callback)(void *, int), void *arg);
void WVR_TerminateAsync(void (*callback)(void *, int), void *arg);

u32 sub_0203993C(void);
u32 sub_02039954(void);
void sub_020399DC(u32 errorCode);
BOOL sub_0203401C(int arg0);
u16 sub_02033FC4(u16 arg0);
int sub_020347CC(void);
void sub_02036904(void);
void sub_020367A8(void);
BOOL sub_02037474(void);

BOOL sub_02032B84(int connectionType, u8 *macAddress, u16 channel);
BOOL sub_02032C1C(void (*scanCallback)(void *), const u8 *macAddress, u16 channel);
BOOL sub_02032E24(void);
void sub_02033234(u32 ggid);
void sub_02033240(void *userGameInfo, u16 size);
u16 sub_02033250(void);
int sub_02033298(void);
int sub_020332AC(void);
BOOL sub_020332C0(void);
u16 sub_02033468(void);
BOOL sub_02033528(void *heap, BOOL isNotListening);
int sub_020335B4(void);
BOOL sub_02033668(int connectionType, u16 tgid, u16 channel, u16 maxEntry, u16 beaconPeriod, BOOL entryFlag);
BOOL sub_0203373C(int connectionType, void *bssDesc);
void sub_020337D0(void (*recvFunc)(void), int port);
void sub_02033858(void);
BOOL sub_020338D0(void);
u16 sub_020338F4(void);
BOOL sub_02033920(void);
BOOL sub_0203393C(void);
BOOL sub_02033958(void);
BOOL sub_02033990(void);
void sub_020339B4(void *buffer, int size, u32 ggid, int tgid);
BOOL sub_02033A44(void);
void sub_02033A68(void);
u8 sub_02033AB8(void);

BOOL sub_02034DCC(void);
void sub_02034E2C(void);
BOOL sub_02034EF0(int a0, int a1, int a2);
BOOL sub_02034F64(int a0, int a1);
BOOL sub_0203507C(void);
BOOL sub_02035218(u16 a0);
void sub_020355C8(u16 a0);
u32 sub_0203567C(void);
BOOL sub_0203569C(void);
CommBssDesc *sub_02035754(int index);
PlayerProfile *sub_02035784(void);
void *sub_02035798(int index);
void sub_020357C4(const u8 *bssid, int index);
BOOL sub_020357FC(void);
void sub_0203581C(void);
void sub_02035838(const void *sentence);
void sub_02035854(const void *ruleset);
void *sub_02035878(void);
void sub_020358B8(const void *data);
void *sub_020358D0(int index);

static BOOL sub_02034BF8(const u8 *a, const u8 *b, int size);
static void sub_02034C20(CommBssDesc *desc);
static void sub_02034C94(void);
static void sub_02034D60(void *arg, int result);
static void sub_02034D78(void *arg, int result);
static void sub_02034DF0(BOOL a0);
static void sub_02034E64(u32 a0);
static void sub_02034E8C(void);
static void sub_020350D4(void);
static void sub_020352D8(void);
static void sub_020353B8(void);
static void sub_0203540C(u16 a0);
static BOOL sub_020355DC(u16 a0);
static int sub_02035610(void);
static u16 sub_02035724(u16 a0);
void sub_0203588C(void);

void sub_02034B0C(PlayerProfile *playerProfile, int arg1) {
    if (sClient != NULL) {
        return;
    }

    sClient = Heap_Alloc(HEAP_ID_15, sizeof(CommServerClient));
    MI_CpuFill8(sClient, 0, sizeof(CommServerClient));

    sClient->unk_D64 = Heap_Alloc(HEAP_ID_15, sub_020335B4());
    MI_CpuFill8(sClient->unk_D64, 0, sub_020335B4());

    sClient->unk_D7C = Heap_Alloc(HEAP_ID_15, LinkBattleRuleset_sizeof());
    MI_CpuFill8(sClient->unk_D7C, 0, LinkBattleRuleset_sizeof());

    sClient->unk_D84 = (u32)Heap_Alloc(HEAP_ID_15, 0x90);
    sClient->unk_D88 = (CommGameInfo *)(32 - (sClient->unk_D84 % 32) + sClient->unk_D84);

    sClient->unk_D80 = 0x333;
    sClient->unk_D78 = playerProfile;

    MailMsg_Init(&sClient->unk_D68);
    sub_02034DF0(arg1);
    sCommServer.tgid = WM_GetNextTgid();
}

BOOL sub_02034BE4(void) {
    if (sClient) {
        return TRUE;
    }

    return FALSE;
}

static BOOL sub_02034BF8(const u8 *a, const u8 *b, int size) {
    int i;

    for (i = 0; i < size; i++) {
        if (*a != *b) {
            return FALSE;
        }

        a++;
        b++;
    }

    return TRUE;
}

static void sub_02034C20(CommBssDesc *desc) {
    CommGameInfo *info;
    u32 type = sub_0203993C();
    u32 regulation = sub_02039954();

    info = (CommGameInfo *)desc->userGameInfo;

    if (type == 14) {
        (void)0;
    } else if (sub_0203401C(info->unk_04) && sub_0203401C(type)) {
        (void)0;
    } else if (info->unk_54 && info->unk_04 == 10) {
        return;
    } else if (info->unk_04 != type) {
        return;
    }

    if (type != 14 && info->unk_05 != regulation) {
        return;
    }

    MI_CpuCopy8(desc, &sClient->unk_54, sizeof(CommBssDesc));
    sClient->unk_D95_6 = 1;
}

static void sub_02034C94(void) {
    CommBssDesc *desc = &sClient->unk_54;
    int i;

    if (!sClient->unk_D95_6) {
        return;
    }

    sClient->unk_D95_6 = 0;

    for (i = 0; i < 16; i++) {
        if (sClient->unk_D44[i] == 0) {
            continue;
        }

        if (sub_02034BF8(sClient->unk_114[i].bssid, desc->bssid, 6)) {
            sClient->unk_D44[i] = 300;
            MI_CpuCopy8(desc, &sClient->unk_114[i], sizeof(CommBssDesc));
            return;
        }
    }

    for (i = 0; i < 16; i++) {
        if (sClient->unk_D44[i] == 0) {
            break;
        }
    }

    if (i >= 16) {
        return;
    }

    sClient->unk_D44[i] = 300;
    MI_CpuCopy8(desc, &sClient->unk_114[i], sizeof(CommBssDesc));
    sClient->unk_D74 = 1;
}

static void sub_02034D60(void *arg, int result) {
    if (result != 0) {
        OS_Terminate();
    }

    sCommServer.status = 2;
}

static void sub_02034D78(void *arg, int result) {
    sCommServer.status = 0;
    Sys_ClearSleepDisableFlag(4);
}

void sub_02034D8C(void) {
    Sys_SetSleepDisableFlag(4);

    sCommServer.status = 1;

    if (WVR_StartUpAsync(8, sub_02034D60, NULL) != 1) {
        OS_Terminate();
    }
}

BOOL sub_02034DB8(void) {
    if (sCommServer.status == 2) {
        return TRUE;
    }

    return FALSE;
}

BOOL sub_02034DCC(void) {
    if (sCommServer.status != 0) {
        return TRUE;
    }

    return FALSE;
}

void sub_02034DE0(void) {
    WVR_TerminateAsync(sub_02034D78, NULL);
}

static void sub_02034DF0(BOOL a0) {
    u32 addr;

    sClient->unk_D70 = 0;
    addr = (u32)sClient->unk_D64;
    addr = 32 - (addr % 32) + addr;
    sub_02033528((void *)addr, a0);
    sub_02033234(sClient->unk_D80);
}

void sub_02034E2C(void) {
    int i;

    for (i = 0; i < 16; i++) {
        sClient->unk_D44[i] = 0;
    }

    MI_CpuFill8(sClient->unk_114, 0, sizeof(CommBssDesc) * 16);
}

static void sub_02034E64(u32 a0) {
    sClient->unk_D95_3 = a0;
}

static void sub_02034E8C(void) {
    sClient->unk_D74 = 0;
    sClient->unk_D95_0 = 0;
    sClient->unk_D95_2 = 0;
    sClient->unk_D92 = 0;
    sClient->unk_D95_4 = 0;
    sClient->unk_D94 = 0;
    sClient->unk_D93 = 0;
}

BOOL sub_02034EF0(int a0, int a1, int a2) {
    sub_02034E8C();
    sub_02034E64(a1);
    sub_02033A68();

    if (!sClient->unk_D93) {
        sub_020337D0(sub_02036904, 0xe);
        sClient->unk_D93 = 1;
    }

    sClient->unk_D95_5 = a2;

    if (sub_02033298() == 1) {
        if (sub_020332C0()) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL sub_02034F64(int a0, int a1) {
    sub_02034E8C();

    if (a1) {
        sub_02034E2C();
    }

    if (!sClient->unk_D93) {
        sub_020337D0(sub_020367A8, 0xe);
        sClient->unk_D93 = 1;
    }

    if (sub_02033298() == 1) {
        const u8 bssid[6] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };

        if (sub_02032C1C((void (*)(void *))sub_02034C20, bssid, 0)) {
            return TRUE;
        }
    }

    return FALSE;
}

int sub_02034FE8(void) {
    if (!sClient) {
        return 1;
    }

    switch (sClient->unk_D94) {
    case 0:
        if (sub_02033990()) {
            sub_02032E24();
            sClient->unk_D94 = 1;
            break;
        }
        if (!sub_0203393C()) {
            sub_02033858();
            sClient->unk_D94 = 2;
        }
        break;
    case 1:
        if (!sub_0203393C()) {
            sub_02033858();
            sClient->unk_D94 = 2;
        }
        break;
    case 2:
        if (sub_02033920()) {
            return 1;
        }

        if (sub_02033958()) {
            sClient->unk_D94 = 1;
        }
        break;
    }

    return 0;
}

BOOL sub_0203507C(void) {
    if (sClient) {
        if (sClient->unk_D92 == 0) {
            sClient->unk_D92 = 1;
            sub_02033858();
            return TRUE;
        }
    }

    return FALSE;
}

void sub_020350A8(int a0) {
    if (!sClient) {
        return;
    }

    if (a0) {
        sClient->unk_D92 = 2;
    } else {
        sClient->unk_D92 = 0;
        sub_02034DF0(TRUE);
    }
}

static void sub_020350D4(void) {
    Heap_Free(sClient->unk_D7C);
    Heap_Free(sClient->unk_D64);
    Heap_Free((void *)sClient->unk_D84);
    Heap_Free(sClient);

    sClient = NULL;
}

int sub_0203511C(void) {
    int count;
    int i;

    if (!sub_02037474()) {
        return 0;
    }

    count = 0;

    for (i = 0; i < 16; i++) {
        if (sClient->unk_D44[i] != 0) {
            count++;
        }
    }

    return count;
}

u32 sub_02035150(u32 index) {
    int i, count = 0;

    for (i = 0; i < 16; i++) {
        if (sClient->unk_D44[i] != 0) {
            if (count == index) {
                return i;
            }

            count++;
        }
    }

    GF_AssertFail();
    return 0;
}

u8 sub_02035184(void) {
    return sClient->unk_D74;
}

void sub_02035198(void) {
    sClient->unk_D74 = 0;
}

int sub_020351AC(int index) {
    if (sClient->unk_D44[index] != 0) {
        CommGameInfo *info = (CommGameInfo *)sClient->unk_114[index].userGameInfo;

        if (info->unk_06 == 0) {
            return 1;
        }

        return info->unk_06;
    }

    return 0;
}

void sub_020351DC(u16 cursorPos, PlayerProfile *profile) {
    int i, count = 0;

    for (i = 0; i < 16; i++) {
        if (sClient->unk_D44[i] != 0) {
            if (cursorPos == count) {
                PlayerProfile_Copy(sub_02035798(i), profile);
                return;
            }

            count++;
        }
    }
}

BOOL sub_02035218(u16 a0) {
    if (sub_02033298() == 2) {
        sub_02032E24();
        return FALSE;
    }

    if (sub_02033298() == 1) {
        u32 type = sub_0203993C();

        sClient->unk_D90 = sClient->unk_114[a0].channel;

        if (sub_0203401C(type)) {
            sub_02032B84(1, sClient->unk_114[a0].bssid, 0);
        } else {
            sub_0203373C(1, &sClient->unk_114[a0]);
        }

        return TRUE;
    }

    return FALSE;
}

void sub_0203528C(void) {
    int i;

    sub_02034C94();

    for (i = 0; i < 16; i++) {
        if (sClient->unk_D44[i] == 0) {
            continue;
        }

        if (sClient->unk_D44[i] > 0) {
            sClient->unk_D44[i]--;

            if (sClient->unk_D44[i] == 0) {
                sClient->unk_D74 = 1;
            }
        }
    }
}

static void sub_020352D8(void) {
    u32 type = sub_0203993C();
    PlayerProfile *profile = sub_02035784();

    if (type != 15) {
        CommGameInfo *info = sClient->unk_D88;

        GF_ASSERT(0x20 >= (int)LinkBattleRuleset_sizeof());
        GF_ASSERT(PlayerProfile_sizeof() == 0x20);

        MI_CpuCopy8(profile, info->unk_10, PlayerProfile_sizeof());
        MI_CpuCopy8(sClient->unk_D7C, info->unk_30, LinkBattleRuleset_sizeof());

        info->unk_00 = PlayerProfile_GetTrainerID(profile);
        info->unk_04 = sub_0203993C();
        info->unk_05 = sub_02039954();

        MI_CpuCopy8(&sClient->unk_D68, info->unk_08, 8);

        info->unk_54 = sub_02033AB8();
    } else {
        CommGameInfo *info = sClient->unk_D88;

        info->unk_00 = PlayerProfile_GetTrainerID(profile);
        info->unk_04 = sub_0203993C();
        info->unk_05 = sub_02039954();

        MI_CpuCopy8(sClient->unk_00, info->unk_08, 0x54);
    }

    DC_FlushRange(sClient->unk_D88, 0x5C);
    sub_02033240(sClient->unk_D88, 0x5C);
}

static void sub_020353B8(void) {
    CommGameInfo *info = sClient->unk_D88;

    if (info->unk_06 != sub_02035610()) {
        info->unk_06 = sub_02035610();
        DC_FlushRange(sClient->unk_D88, 0x5C);
        sub_02033240(sClient->unk_D88, 0x5C);
        sub_020339B4(sClient->unk_D88, 0x5C, sClient->unk_D80, sCommServer.tgid);
    }
}

static void sub_0203540C(u16 a0) {
    int state = sub_02033298();
    int v1 = sub_020347CC();

    sub_020353B8();

    if (sub_020338F4() == 0 && !sub_0203567C()) {
        if (sClient->unk_D95_2) {
            sClient->unk_D95_0 = 1;
        }
    }

    if (sClient->unk_D8E == 0xFFFF) {
        sClient->unk_D8E = a0;
    }

    if (sClient->unk_D95_1) {
        if (sClient->unk_D8E > a0) {
            sClient->unk_D95_0 = 1;
        }

        if (v1) {
            sClient->unk_D95_0 = 1;
        }
    }

    if (sub_020332AC() == 25) {
        sub_020399DC(0);
    }

    switch (state) {
    case 0:
        if (sClient->unk_D92 == 1) {
            sub_020350D4();
            return;
        }

        if (sClient->unk_D92 == 2) {
            sClient->unk_D92 = 3;
            return;
        }
        break;
    case 1:
        if (sClient->unk_D92 == 1) {
            if (sub_020338D0()) {
                return;
            }
        }

        if (sClient->unk_D92 == 2) {
            if (sub_020338D0()) {
                return;
            }
        }
        break;
    case 8:
    case 9:
        if (sClient) {
            sClient->unk_D95_0 = 1;
        }
        break;
    case 7: {
        u16 channel;

        channel = sub_02033468();

        if (sClient->unk_D91 == 0) {
            sClient->unk_D8C = channel;
            sClient->unk_D91 = 5;
        } else {
            sClient->unk_D91--;
        }

        channel = sClient->unk_D8C;

        if (sClient->unk_D95_3) {
            sCommServer.tgid = WM_GetNextTgid();
        }

        sub_020352D8();
        sub_02033668(0, sCommServer.tgid, channel, sub_02033FC4(sub_0203993C()), sub_02035724(sub_0203993C()), sClient->unk_D95_5);
        sClient->unk_D90 = channel;
    } break;
    default:
        break;
    }
}

void sub_020355C8(u16 a0) {
    if (sClient) {
        sub_0203540C(a0);
    }
}

static BOOL sub_020355DC(u16 a0) {
    if (!sClient) {
        return FALSE;
    }

    if (sub_02033298() != 4) {
        return FALSE;
    }

    {
        u16 bitmap = sub_02033250();

        if (bitmap & (1 << a0)) {
            return TRUE;
        }
    }
    return FALSE;
}

static int sub_02035610(void) {
    int count = 0;
    int i;

    for (i = 0; i < 8; i++) {
        if (sub_020355DC(i)) {
            count++;
        }
    }

    return count;
}

BOOL sub_02035630(void) {
    if (sClient && sClient->unk_D92 == 3) {
        return TRUE;
    }

    return FALSE;
}

BOOL sub_02035650(void) {
    if (sClient) {
        return TRUE;
    }

    return FALSE;
}

int sub_02035664(void) {
    if (sClient) {
        return sub_02033920();
    }

    return 1;
}

u32 sub_0203567C(void) {
    if (sClient) {
        return sub_02033250() & 0xFFFE;
    }

    return 0;
}

BOOL sub_0203569C(void) {
    if (sClient && sClient->unk_D95_0) {
        return TRUE;
    }

    return FALSE;
}

void sub_020356C0(u32 a0) {
    if (sClient) {
        sClient->unk_D95_2 = a0;
    }
}

void sub_020356EC(int a0) {
    if (sClient) {
        sClient->unk_D95_1 = a0;
        sClient->unk_D8E = 0xFFFF;
    }
}

static u16 sub_02035724(u16 a0) {
    u16 period = WM_GetDispersionBeaconPeriod();

    GF_ASSERT(a0 < 41);

    if (a0 == 10) {
        return period / 4;
    }

    if (a0 == 9 || a0 == 13) {
        return period / 4;
    }

    return period;
}

CommBssDesc *sub_02035754(int index) {
    if (sClient && sClient->unk_D44[index] != 0) {
        return &sClient->unk_114[index];
    }

    return NULL;
}

PlayerProfile *sub_02035784(void) {
    return sClient->unk_D78;
}

void *sub_02035798(int index) {
    if (sClient->unk_D44[index] == 0) {
        return NULL;
    }

    CommGameInfo *info = (CommGameInfo *)sClient->unk_114[index].userGameInfo;
    void *profile = &info->unk_10[0];

    return profile;
}

void sub_020357C4(const u8 *bssid, int index) {
    if (sClient) {
        GF_ASSERT(index < 8);
        MI_CpuCopy8(bssid, sClient->unk_D14[index], 6);
    }
}

BOOL sub_020357FC(void) {
    if (sClient) {
        return sClient->unk_D95_4;
    }

    return FALSE;
}

void sub_0203581C(void) {
    if (sClient) {
        sClient->unk_D95_4 = 1;
    }
}

void sub_02035838(const void *sentence) {
    MI_CpuCopy8(sentence, &sClient->unk_D68, 8);
}

void sub_02035854(const void *ruleset) {
    MI_CpuCopy8(ruleset, sClient->unk_D7C, LinkBattleRuleset_sizeof());
}

void *sub_02035878(void) {
    return sClient->unk_D7C;
}

void sub_0203588C(void) {
    sub_020352D8();
    sub_020339B4(sClient->unk_D88, 0x5C, sClient->unk_D80, sCommServer.tgid);
}

int sub_020358B0(void) {
    return sub_02033A44();
}

void sub_020358B8(const void *data) {
    MI_CpuCopy8(data, sClient, 0x54);
    sub_0203588C();
}

void *sub_020358D0(int index) {
    if (sClient && sClient->unk_D44[index] != 0) {
        CommGameInfo *info = (CommGameInfo *)sClient->unk_114[index].userGameInfo;
        return info->unk_08;
    }

    return NULL;
}
