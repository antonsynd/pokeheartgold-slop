#include "global.h"

#include "field_system.h"
#include "heap.h"
#include "mail_message.h"
#include "player_data.h"
#include "sys_task_api.h"
#include "task.h"
#include "unk_02034354.h"
#include "unk_02034B0C.h"
#include "unk_02035900.h"
#include "unk_02091564.h"

struct UnkStruct_02059E1C;

typedef void (*UnkFuncPtr_02059E1C)(struct UnkStruct_02059E1C *param0);
typedef void (*UnkIntFunc)(int a0);

typedef struct UnkStruct_02059E1C {
    FieldSystem *fieldSystem;
    SaveData *saveData;
    PlayerProfile *profile;
    SysTask *unkC;
    UnkFuncPtr_02059E1C unk10;
    int unk14;
    int unk18;
    int unk1C;
    int unk20;
    int unk24;
    int unk28;
    u8 unk2C[4];
    int unk30;
    int unk34;
    u8 unk38[4];
    int unk3C;
    int unk40;
    int unk44;
    u8 unk48[0x110 - 0x48];
    void *unk110[16];
    u8 unk150[0x40];
} UnkStruct_02059E1C;

typedef struct UnkStruct_02059E1C_Sub80 {
    u8 unk0[0x1C];
    u8 unk1C;
} UnkStruct_02059E1C_Sub80;

typedef struct UnkStruct_021D41CC {
    int unk0;
    UnkStruct_02059E1C_Sub80 *unk4;
    int unk8;
} UnkStruct_021D41CC;

extern UnkStruct_021D41CC _021D41CC;
extern void *_021D41D8[16];

extern UnkStruct_02059E1C_Sub80 *sub_02035878(void);
extern void *sub_02035754(int a0);
extern void *sub_02035798(int a0);
extern void sub_02037108(int a0, void *a1, int a2);
extern void sub_0203778C(MATHRandContext32 *a0);
extern void sub_0205A904(int command);
extern void sub_0205AB88(MailMessage *mailMessage);
extern void sub_0205AA6C(struct UnkStruct_02059E1C *param0, MailMessage *mailMessage);
extern void sub_0205ABBC(struct UnkStruct_02059E1C *param0);
extern void sub_0205ABB0(struct UnkStruct_02059E1C *param0);
extern void sub_0208F814(void *a0);

struct UnkStruct_02059E1C *sub_02059DB0(FieldSystem *fieldSystem);
void sub_02059E04(FieldSystem *fieldSystem);
struct UnkStruct_02059E1C *sub_02059E1C(FieldSystem *fieldSystem);
void sub_02059E88(struct UnkStruct_02059E1C *param0);
void sub_02059EBC(struct UnkStruct_02059E1C *param0);
void sub_02059F30(struct UnkStruct_02059E1C *param0);
int sub_02059F54(void);
void sub_02059F78(struct UnkStruct_02059E1C *param0);
void sub_02059FF8(struct UnkStruct_02059E1C *param0);
void sub_0205A034(struct UnkStruct_02059E1C *param0, UnkFuncPtr_02059E1C param1, int param2);
void sub_0205A03C(SysTask *param0, void *param1);
void sub_0205A07C(struct UnkStruct_02059E1C *param0);
void sub_0205A0A0(struct UnkStruct_02059E1C *param0);
void sub_0205A0B4(struct UnkStruct_02059E1C *param0);
void sub_0205A114(struct UnkStruct_02059E1C *param0);
void sub_0205A144(struct UnkStruct_02059E1C *param0);
void sub_0205A1AC(struct UnkStruct_02059E1C *param0);
void sub_0205A1D4(struct UnkStruct_02059E1C *param0);
FieldSystem *sub_0205A1F0(struct UnkStruct_02059E1C *param0);
void *sub_0205A1F4(struct UnkStruct_02059E1C *param0, int param1);
int sub_0205A200(struct UnkStruct_02059E1C *param0, int param1);
int sub_0205A284(struct UnkStruct_02059E1C *param0, int param1, u16 param2);
int sub_0205A358(struct UnkStruct_02059E1C *param0);
u32 sub_0205A35C(struct UnkStruct_02059E1C *param0);
int sub_0205A39C(struct UnkStruct_02059E1C *param0);
void sub_0205A3B0(struct UnkStruct_02059E1C *param0, int param1, int param2);
void sub_0205A408(int param0, int param1, void *param2, void *param3);
void sub_0205A40C(int param0, int param1, void *param2, void *param3);
void sub_0205A410(int param0, int param1, void *param2, void *param3);
void sub_0205A430(int param0, int param1, void *param2, void *param3);

struct UnkStruct_02059E1C *sub_02059DB0(FieldSystem *fieldSystem)
{
    struct UnkStruct_02059E1C *v0 = NULL;

    GF_ASSERT(fieldSystem != NULL);

    if (fieldSystem->unk80 != NULL) {
        return NULL;
    }

    Heap_CreateAtEnd(HEAP_ID_3, HEAP_ID_31, 0xA80);

    v0 = sub_02059E1C(fieldSystem);

    if (v0 == NULL) {
        v0 = fieldSystem->unk80;
    }

    sub_02091574(fieldSystem);
    sub_02038C1C(2);
    sub_0205A034(v0, sub_02059E88, 0x28);

    return v0;
}

void sub_02059E04(FieldSystem *fieldSystem)
{
    if (fieldSystem->unk80 != NULL) {
        sub_0205A034(fieldSystem->unk80, sub_0205A07C, 5);
    }
}

struct UnkStruct_02059E1C *sub_02059E1C(FieldSystem *fieldSystem)
{
    struct UnkStruct_02059E1C *ret;
    SaveData *saveData;

    if (fieldSystem->unk80 != NULL) {
        return NULL;
    }

    saveData = FieldSystem_GetSaveData(fieldSystem);
    sub_02037F18(saveData);

    ret = Heap_Alloc(HEAP_ID_31, 0x190);
    MI_CpuFill8(ret, 0, 0x190);

    ret->unk10 = NULL;
    ret->unk14 = 0x28;
    ret->unkC = SysTask_CreateOnMainQueue(sub_0205A03C, ret, 10);
    ret->fieldSystem = fieldSystem;
    ret->saveData = saveData;
    ret->profile = Save_PlayerData_GetProfile(saveData);

    sub_0205ABBC(ret);
    sub_0203778C((MATHRandContext32 *)ret->unk150);

    return ret;
}

void sub_02059E88(struct UnkStruct_02059E1C *param0)
{
    MailMessage v0;

    if (sub_02035650()) {
        MailMsg_Init_Default(&v0);
        sub_0205AB88(&v0);
        sub_0205AA6C(param0, &v0);
        sub_0205A034(param0, sub_02059EBC, 0x28);
    }
}

void sub_02059EBC(struct UnkStruct_02059E1C *param0)
{
    if (sub_02037FCC()) {
        _021D41CC.unk0 = 0;
        sub_0205A034(param0, sub_02059F78, 0);
        return;
    }

    if (param0->unk20 != 0) {
        param0->unk28 = 2;

        if (param0->unk20 == 1) {
            if (param0->unk30 == 5) {
                ((UnkIntFunc)sub_0203894C)(param0->unk18);
            } else if (param0->unk30 == 6) {
                ((UnkIntFunc)sub_0203898C)(param0->unk18);
            } else {
                ((UnkIntFunc)sub_02037F64)(param0->unk18);
            }
        } else if (param0->unk20 == 2) {
            sub_0208F814(NULL);
            ((UnkIntFunc)sub_02038918)(param0->unk18);
        }

        sub_0205A034(param0, sub_0205A0B4, 12);
        return;
    }
}

void sub_02059F30(struct UnkStruct_02059E1C *param0)
{
    if (sub_02038070() == 1) {
        sub_02091574(param0->fieldSystem);
        sub_0205A034(param0, sub_02059EBC, 2);
    }
}

int sub_02059F54(void)
{
    int v0;
    int v1 = 0;

    for (v0 = 1; v0 < 5; v0++) {
        if (sub_02034818(v0) != NULL) {
            v1++;
        }
    }

    return v1 >= 1;
}

void sub_02059F78(struct UnkStruct_02059E1C *param0)
{
    UnkStruct_02059E1C_Sub80 *v0;

    if (param0->unk14 > 0) {
        param0->unk14--;
        return;
    }

    _021D41CC.unk0++;
    v0 = sub_02035878();

    if (sub_020376F8() && (sub_02059F54() == 1) && (v0->unk1C != 4)) {
        sub_02034434();
        sub_020398D4(1, 1);
        sub_0205A904(11);
        sub_0205A034(param0, sub_02059FF8, 0);
    }

    if (sub_02037FCC() == 0) {
        sub_02037FF0();
        sub_0205ABBC(param0);
        sub_0205A904(0);
        sub_0205A034(param0, sub_02059F30, 2);
    }
}

void sub_02059FF8(struct UnkStruct_02059E1C *param0)
{
    if (sub_02039918() && (sub_020376F8() == 0)) {
        return;
    }

    if (sub_020376F8() == 0) {
        sub_02037FF0();
        sub_0205ABBC(param0);
        sub_0205A904(0);
        sub_0205A034(param0, sub_02059F30, 2);
    }
}

void sub_0205A034(struct UnkStruct_02059E1C *param0, UnkFuncPtr_02059E1C param1, int param2)
{
    param0->unk10 = param1;
    param0->unk14 = param2;
}

void sub_0205A03C(SysTask *param0, void *param1)
{
    struct UnkStruct_02059E1C *v0 = (struct UnkStruct_02059E1C *)param1;

    if (v0 == NULL) {
        SysTask_Destroy(param0);
    } else {
        int v1;

        for (v1 = 0; v1 < 16; v1++) {
            v0->unk110[v1] = sub_02035754(v1);
            _021D41D8[v1] = v0->unk110[v1];
        }

        if (v0->unk10 != NULL) {
            v0->unk10(v0);
        }
    }
}

void sub_0205A07C(struct UnkStruct_02059E1C *param0)
{
    if (param0->unk14 != 0) {
        param0->unk14--;
        return;
    }

    sub_02038094();
    sub_0205A034(param0, sub_0205A0A0, 0);
}

void sub_0205A0A0(struct UnkStruct_02059E1C *param0)
{
    if (sub_02037474()) {
        return;
    }

    sub_0205A1D4(param0);
}

void sub_0205A0B4(struct UnkStruct_02059E1C *param0)
{
    if (sub_02037F94() == 1) {
        sub_02034434();
        sub_0205A034(param0, sub_0205A144, 3);
        return;
    } else if (sub_020376F8()) {
        param0->unk20 = 0;
        param0->unk1C = 3;

        sub_0205A034(param0, sub_02059F78, 0);
    }

    if (sub_02037F94() == 0) {
        return;
    }

    sub_0205A034(param0, sub_0205A114, 2);

    param0->unk24 = 0;
    param0->unk1C = 2;
    param0->unk20 = 0;
    param0->unk44 = 0;
}

void sub_0205A114(struct UnkStruct_02059E1C *param0)
{
    if (!FieldSystem_TaskIsRunning(param0->fieldSystem)) {
        sub_02037FF0();
        sub_0205ABBC(param0);
        sub_0205A904(0);
        sub_0205A034(param0, sub_02059F30, 2);
    }
}

void sub_0205A144(struct UnkStruct_02059E1C *param0)
{
    if (sub_02037F94() == 1) {
        if (sub_02034818(sub_0203769C()) != NULL) {
            param0->unk20 = 0;
            param0->unk1C = 1;
            param0->unk44 = 0;

            sub_020398D4(1, 1);
            sub_0205A034(param0, sub_0205A1AC, 3);
        }
    } else if (sub_02037F94() == 0) {
        sub_02037FF0();
        sub_0205ABBC(param0);
        sub_0205A034(param0, sub_02059F30, 2);

        param0->unk24 = 0;
        param0->unk1C = 2;
        param0->unk20 = 0;
        param0->unk44 = 0;
    }
}

void sub_0205A1AC(struct UnkStruct_02059E1C *param0)
{
    if (sub_02037F94() == 0) {
        sub_02037FF0();
        sub_0205ABBC(param0);
        sub_0205A034(param0, sub_02059F30, 2);
    }
}

void sub_0205A1D4(struct UnkStruct_02059E1C *param0)
{
    if (param0 == NULL) {
        return;
    }

    SysTask_Destroy(param0->unkC);
    Heap_Free(param0);
    Heap_Destroy(HEAP_ID_31);
}

FieldSystem *sub_0205A1F0(struct UnkStruct_02059E1C *param0)
{
    return param0->fieldSystem;
}

void *sub_0205A1F4(struct UnkStruct_02059E1C *param0, int param1)
{
    return param0->unk110[param1];
}

int sub_0205A200(struct UnkStruct_02059E1C *param0, int param1)
{
    UnkStruct_02059E1C_Sub80 *v2;
    void *v0;

    param1--;
    v0 = sub_02035798(param1);

    sub_0205ABB0(param0);

    if (v0 == NULL) {
        return 5;
    }

    if (param0->unk110[param1] == NULL) {
        return 5;
    }

    v2 = (UnkStruct_02059E1C_Sub80 *)((u8 *)param0->unk110[param1] + 0x80);
    _021D41CC.unk4 = v2;

    switch (v2->unk1C) {
    case 0:
        return 1;
    case 1:
        return 2;
    case 2:
        return 3;
    case 3:
    case 13:
        return 4;
    default:
        return 5;
    }
}

int sub_0205A284(struct UnkStruct_02059E1C *param0, int param1, u16 param2)
{
    UnkStruct_02059E1C_Sub80 *v2;

    param1--;

    if (param0->unk110[param1] == NULL) {
        return 5;
    }

    v2 = (UnkStruct_02059E1C_Sub80 *)((u8 *)param0->unk110[param1] + 0x80);
    _021D41CC.unk4 = v2;

    switch (v2->unk1C) {
    case 2:
        if (param2 != 3) {
            return 5;
        }

        param0->unk30 = 5;
        param0->unk18 = param1;
        param0->unk20 = 1;
        param0->unk24 = 0;
        param0->unk1C = 0;
        return 1;
    case 0:
        if (param2 != 1) {
            return 5;
        }

        param0->unk18 = param1;
        param0->unk20 = 1;
        param0->unk24 = 0;
        param0->unk1C = 0;
        return 1;
    case 1:
        if (param2 != 2) {
            return 5;
        }

        param0->unk18 = param1;
        param0->unk20 = 2;
        param0->unk24 = 0;
        param0->unk1C = 0;
        return 1;
    case 13:
    case 3:
        if (param2 != 4) {
            return 5;
        }

        param0->unk30 = 6;
        param0->unk18 = param1;
        param0->unk20 = 1;
        param0->unk1C = 0;
        return 1;
    default:
        return 5;
    }
}

int sub_0205A358(struct UnkStruct_02059E1C *param0)
{
    return param0->unk1C;
}

u32 sub_0205A35C(struct UnkStruct_02059E1C *param0)
{
    if (param0->unk44) {
        return 7;
    }

    if (sub_02037454() < 2) {
        return 7;
    }

    if (sub_0203769C() == 0) {
        if (sub_02037FCC() == 1) {
            return param0->unk40;
        }
    } else {
        if (sub_02037F94() == 1) {
            return param0->unk40;
        }
    }

    return 7;
}

int sub_0205A39C(struct UnkStruct_02059E1C *param0)
{
    if (sub_02037FCC() == 1) {
        return param0->unk30;
    }

    return 7;
}

void sub_0205A3B0(struct UnkStruct_02059E1C *param0, int param1, int param2)
{
    u8 v0 = (u8)param2;

    switch (param1) {
    case 0:
        if (param0->unk44 == 0) {
            param0->unk34 = v0;
            sub_02037030(99, &v0, 1);
        }
        break;
    case 1:
        if (param2 == 0) {
            u8 v1 = param0->unk30;

            sub_02037108(103, &v1, 1);
            param0->unk3C = param2;
        } else {
            u8 v2 = 7;

            sub_02037108(103, &v2, 1);
            param0->unk3C = param2;
        }
        break;
    }
}

void sub_0205A408(int param0, int param1, void *param2, void *param3)
{
    return;
}

void sub_0205A40C(int param0, int param1, void *param2, void *param3)
{
    return;
}

void sub_0205A410(int param0, int param1, void *param2, void *param3)
{
    FieldSystem *fieldSystem = (FieldSystem *)param3;

    sub_0205A034(fieldSystem->unk80, sub_02059EBC, 2);
    sub_0205ABBC(fieldSystem->unk80);
}

void sub_0205A430(int param0, int param1, void *param2, void *param3)
{
    FieldSystem *fieldSystem = (FieldSystem *)param3;
    u8 *v1 = (u8 *)param2;

    if (fieldSystem->unk80->unk44 == 0) {
        fieldSystem->unk80->unk30 = *v1;
        _021D41CC.unk8 = *v1;
    }
}
