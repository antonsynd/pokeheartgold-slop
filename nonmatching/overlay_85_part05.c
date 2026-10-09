#include "global.h"

#include <string.h>

#include "heap.h"
#include "math_util.h"
#include "sprite_system.h"
#include "sys_task_api.h"
#include "unk_02005D10.h"

typedef struct UnkStruct_Ov85_Entry {
    int unk00;
    u8 unk04[0x28];
    VecFx32 unk2C;
    u8 unk38[0x18];
    VecFx32 unk50;
    u8 unk5C[0x54];
} UnkStruct_Ov85_Entry;

typedef struct UnkStruct_Ov85_Task31 {
    int unk00;
    int unk04;
    int unk08;
    int unk0C;
    int unk10;
    int unk14;
    int unk18;
    UnkStruct_Ov85_Entry *unk1C;
} UnkStruct_Ov85_Task31;

typedef struct UnkStruct_Ov85_Task14 {
    int unk00;
    int unk04;
    int unk08;
    fx32 unk0C;
    UnkStruct_Ov85_Entry *unk10;
} UnkStruct_Ov85_Task14;

typedef struct UnkStruct_Ov85_Task18 {
    int unk00;
    int unk04;
    fx32 unk08;
    fx32 unk0C;
    fx32 unk10;
    UnkStruct_Ov85_Entry *unk14;
} UnkStruct_Ov85_Task18;

typedef struct UnkStruct_Ov85_C30 {
    int unk00;
    int unk04;
    int unk08;
    int unk0C;
    fx32 unk10;
} UnkStruct_Ov85_C30;

typedef struct UnkStruct_Ov85_C44 {
    u16 unk00;
    u16 unk02;
    int unk04;
} UnkStruct_Ov85_C44;

typedef struct UnkStruct_Ov85_D4 {
    u8 unk00[0x24];
    VecFx32 unk24;
    VecFx32 unk30;
} UnkStruct_Ov85_D4;

typedef struct UnkStruct_Ov85_Main {
    u8 unk00[0x2C];
    int unk2C;
    int unk30;
    u8 unk34[0xD4 - 0x34];
    UnkStruct_Ov85_D4 unkD4;
    u8 unk110[0xAB4 - 0x110];
    UnkStruct_Ov85_Task31 unkAB4[5];
    UnkStruct_Ov85_Task14 unkB54[5];
    UnkStruct_Ov85_Task18 unkBB8[5];
    UnkStruct_Ov85_C30 unkC30;
    UnkStruct_Ov85_C44 unkC44;
    u8 unkC4C[0xDB0 - 0xC4C];
    SysTask *unkDB0;
    SysTask *unkDB4;
    SysTask *unkDB8;
    SysTask *unkDBC;
    SysTask *unkDC0;
} UnkStruct_Ov85_Main;

typedef struct UnkStruct_Ov85_Task815C {
    int unk00;
    int unk04;
    int unk08;
    int unk0C;
    UnkStruct_Ov85_Main *unk10;
    ManagedSprite *unk14;
} UnkStruct_Ov85_Task815C;

const int ov85_021EA528[4] = { 0x5DD, 0x5DD, 0x5DD, 0x642 };

void ov85_021E8530(fx32 *a0, fx32 a1);
ManagedSprite *ov85_021E7044(UnkStruct_Ov85_Main *a0, ManagedSpriteTemplate *a1);
void ov85_021E6DF0(UnkStruct_Ov85_Main *a0);
void ov85_021E6DFC(UnkStruct_Ov85_Main *a0);
void ov85_021E6E08(UnkStruct_Ov85_Main *a0);

void ov85_021E7C70(UnkStruct_Ov85_Main *param0, UnkStruct_Ov85_Task31 *param1);
void ov85_021E7CE0(SysTask *param0, void *param1);
void ov85_021E7D08(UnkStruct_Ov85_Main *param0);
void ov85_021E7D40(UnkStruct_Ov85_Main *param0);
void ov85_021E7D50(UnkStruct_Ov85_Main *param0, UnkStruct_Ov85_Entry *param1);
void ov85_021E7D78(UnkStruct_Ov85_Main *param0);
BOOL ov85_021E7DA8(UnkStruct_Ov85_Main *param0);
void ov85_021E7DC8(UnkStruct_Ov85_Task14 *param0);
void ov85_021E7E18(SysTask *param0, void *param1);
void ov85_021E7E3C(UnkStruct_Ov85_Main *param0);
void ov85_021E7E78(UnkStruct_Ov85_Main *param0);
void ov85_021E7E88(UnkStruct_Ov85_Main *param0, UnkStruct_Ov85_Entry *param1);
void ov85_021E7ED0(UnkStruct_Ov85_Task18 *param0);
void ov85_021E7F50(SysTask *param0, void *param1);
void ov85_021E7F74(UnkStruct_Ov85_Main *param0);
void ov85_021E7FB0(UnkStruct_Ov85_Main *param0);
void ov85_021E7FC0(UnkStruct_Ov85_Main *param0, UnkStruct_Ov85_Entry *param1);
void ov85_021E8008(UnkStruct_Ov85_Main *param0, UnkStruct_Ov85_C30 *param1);
void ov85_021E80D0(SysTask *param0, void *param1);
void ov85_021E80E0(UnkStruct_Ov85_Main *param0);
void ov85_021E8118(UnkStruct_Ov85_Main *param0);
void ov85_021E8128(UnkStruct_Ov85_Main *param0);
BOOL ov85_021E8144(UnkStruct_Ov85_Main *param0);
BOOL ov85_021E8150(UnkStruct_Ov85_Main *param0);
void ov85_021E815C(SysTask *param0, void *param1);
SysTask *ov85_021E81E0(UnkStruct_Ov85_Main *param0);
void ov85_021E825C(UnkStruct_Ov85_Main *param0, UnkStruct_Ov85_C44 *param1);
void ov85_021E82E4(SysTask *param0, void *param1);
void ov85_021E82F8(UnkStruct_Ov85_Main *param0);
void ov85_021E833C(UnkStruct_Ov85_Main *param0);

void ov85_021E7C70(UnkStruct_Ov85_Main *param0, UnkStruct_Ov85_Task31 *param1)
{
    UnkStruct_Ov85_Entry *v0 = param1->unk1C;

    switch (param1->unk04) {
    case 0:
        ov85_021E7E88(param0, v0);
        param1->unk10 = 0x4000;
        param1->unk14 = 0xFFFFFBBC;
        param1->unk04++;
    case 1:
        v0->unk50.y += param1->unk10;
        param1->unk10 += param1->unk14;
        param1->unk08++;

        if (param1->unk08 < 15) {
            break;
        }

        param1->unk08 = 0;
        param1->unk10 = 0;

        if (param1->unk0C == 0) {
            param1->unk0C = 1;
            break;
        }

        v0->unk50.y = 0;
        ov85_021E7FC0(param0, v0);
        memset(param1, 0, sizeof(UnkStruct_Ov85_Task31));
    }
}

void ov85_021E7CE0(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_Ov85_Main *v1 = param1;
    UnkStruct_Ov85_Task31 *v3 = v1->unkAB4;

    for (v0 = 0; v0 < 5; v0++, v3++) {
        if (v3->unk00) {
            ov85_021E7C70(v1, v3);
        }
    }
}

void ov85_021E7D08(UnkStruct_Ov85_Main *param0)
{
    memset(param0->unkAB4, 0, 0xA0);

    param0->unkDB0 = SysTask_CreateOnMainQueue(ov85_021E7CE0, param0, 0x100);
    GF_ASSERT(param0->unkDB0);
}

void ov85_021E7D40(UnkStruct_Ov85_Main *param0)
{
    SysTask_Destroy(param0->unkDB0);
}

void ov85_021E7D50(UnkStruct_Ov85_Main *param0, UnkStruct_Ov85_Entry *param1)
{
    int v0;
    UnkStruct_Ov85_Task31 *v2 = param0->unkAB4;

    for (v0 = 0; v0 < 5; v0++, v2++) {
        if (v2->unk00 == 0) {
            v2->unk00 = 1;
            v2->unk1C = param1;
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov85_021E7D78(UnkStruct_Ov85_Main *param0)
{
    int v1 = 0;
    int v2 = param0->unk30;
    UnkStruct_Ov85_Entry *v3 = (UnkStruct_Ov85_Entry *)((u8 *)param0 + 0x2D0);

    do {
        if (v3->unk00) {
            ov85_021E7D50(param0, v3);
        }

        v1++;
        v3++;
    } while (v1 < v2);
}

BOOL ov85_021E7DA8(UnkStruct_Ov85_Main *param0)
{
    int v0;
    UnkStruct_Ov85_Task31 *v2 = param0->unkAB4;

    for (v0 = 0; v0 < 5; v0++, v2++) {
        if (v2->unk00) {
            return 1;
        }
    }

    return 0;
}

void ov85_021E7DC8(UnkStruct_Ov85_Task14 *param0)
{
    UnkStruct_Ov85_Entry *v1 = param0->unk10;

    switch (param0->unk04) {
    case 0:
        param0->unk0C = 0x18000;
        v1->unk2C.y = 0;
        param0->unk04++;
    case 1:
        ov85_021E8530(&v1->unk2C.y, param0->unk0C);

        if (v1->unk2C.y < 0x4000) {
            param0->unk0C = (u32)(param0->unk0C) >> 1;

            if (param0->unk0C < 0x4000) {
                v1->unk2C.y = 0;
                {
                    u8 *p = (u8 *)param0;
                    int i;
                    for (i = 0; i < 0x14; i++) {
                        p[i] = 0;
                    }
                }
            }
        }
    }
}

void ov85_021E7E18(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_Ov85_Main *v1 = param1;
    UnkStruct_Ov85_Task14 *v3 = v1->unkB54;

    for (v0 = 0; v0 < 5; v0++, v3++) {
        if (v3->unk00) {
            ov85_021E7DC8(v3);
        }
    }
}

void ov85_021E7E3C(UnkStruct_Ov85_Main *param0)
{
    memset(param0->unkB54, 0, 0x64);

    param0->unkDB4 = SysTask_CreateOnMainQueue(ov85_021E7E18, param0, 0x101);
    GF_ASSERT(param0->unkDB4);
}

void ov85_021E7E78(UnkStruct_Ov85_Main *param0)
{
    SysTask_Destroy(param0->unkDB4);
}

void ov85_021E7E88(UnkStruct_Ov85_Main *param0, UnkStruct_Ov85_Entry *param1)
{
    int v0;
    UnkStruct_Ov85_Task14 *v2 = param0->unkB54;

    for (v0 = 0; v0 < 5; v0++, v2++) {
        if (v2->unk00 == 1 && v2->unk10 == param1) {
            v2->unk04 = 0;
            return;
        }
    }

    for (v0 = 0, v2 = param0->unkB54; v0 < 5; v0++, v2++) {
        if (v2->unk00 == 0) {
            v2->unk00 = 1;
            v2->unk10 = param1;
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov85_021E7ED0(UnkStruct_Ov85_Task18 *param0)
{
    int v0;
    UnkStruct_Ov85_Entry *v1 = param0->unk14;

    switch (param0->unk04) {
    case 0:
        v1->unk2C.z = 0;
        param0->unk10 = 0;
        param0->unk08 = 0x1E000;
        param0->unk0C = 0x14000;
        param0->unk04++;
    case 1:
        v0 = GF_SinDegNoWrap((u16)(param0->unk10 / 0x1000)) * (param0->unk08 / 0x1000);
        v1->unk2C.z = 0;
        ov85_021E8530(&v1->unk2C.z, v0);

        v0 = param0->unk10;
        ov85_021E8530(&param0->unk10, param0->unk0C);

        if (param0->unk10 < v0) {
            param0->unk08 = (u32)(param0->unk08) >> 1;

            if (param0->unk08 == 0) {
                v1->unk2C.z = 0;
                {
                    u8 *p = (u8 *)param0;
                    int i;
                    for (i = 0; i < 0x18; i++) {
                        p[i] = 0;
                    }
                }
            }
        }
    }
}

void ov85_021E7F50(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_Ov85_Main *v1 = param1;
    UnkStruct_Ov85_Task18 *v3 = v1->unkBB8;

    for (v0 = 0; v0 < 5; v0++, v3++) {
        if (v3->unk00) {
            ov85_021E7ED0(v3);
        }
    }
}

void ov85_021E7F74(UnkStruct_Ov85_Main *param0)
{
    memset(param0->unkBB8, 0, 0x78);

    param0->unkDB8 = SysTask_CreateOnMainQueue(ov85_021E7F50, param0, 0x102);
    GF_ASSERT(param0->unkDB8);
}

void ov85_021E7FB0(UnkStruct_Ov85_Main *param0)
{
    SysTask_Destroy(param0->unkDB8);
}

void ov85_021E7FC0(UnkStruct_Ov85_Main *param0, UnkStruct_Ov85_Entry *param1)
{
    int v0;
    UnkStruct_Ov85_Task18 *v2 = param0->unkBB8;

    for (v0 = 0; v0 < 5; v0++, v2++) {
        if (v2->unk00 == 1 && v2->unk14 == param1) {
            v2->unk04 = 0;
            return;
        }
    }

    for (v0 = 0, v2 = param0->unkBB8; v0 < 5; v0++, v2++) {
        if (v2->unk00 == 0) {
            v2->unk00 = 1;
            v2->unk14 = param1;
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov85_021E8008(UnkStruct_Ov85_Main *param0, UnkStruct_Ov85_C30 *param1)
{
    UnkStruct_Ov85_D4 *v0 = &param0->unkD4;

    switch (param1->unk00) {
    case 0:
        break;
    case 1:
        param1->unk10 = 0x4000;
        param1->unk0C = 0;
        param1->unk00++;
    case 2:
        v0->unk30.y -= 0x1000;

        if (v0->unk30.y <= -0x8000) {
            param1->unk00++;
        }
        break;
    case 3:
        v0->unk30.y += 0x2000;

        if (v0->unk30.y >= 0) {
            v0->unk30.y = 0;
            ov85_021E7D78(param0);
            param1->unk04 = 1;
            param1->unk00++;
            PlaySE(0x656);
        }
        break;
    case 4:
        v0->unk24.y = param1->unk10;
        param1->unk10 = -param1->unk10;
        param1->unk0C++;

        if ((param1->unk0C & 0x3) == 0) {
            if (param1->unk10 <= 0x1000) {
                v0->unk24.y = 0;
                param1->unk00++;
            } else {
                param1->unk10 >>= 1;
            }
        }
        break;
    case 5:
        if (ov85_021E7DA8(param0) == 0) {
            param1->unk08 = 0;
            param1->unk04 = 0;
            param1->unk00 = 0;
            PlaySE(0x630);
        }
        break;
    }
}

void ov85_021E80D0(SysTask *param0, void *param1)
{
    UnkStruct_Ov85_Main *v0 = param1;

    ov85_021E8008(v0, &v0->unkC30);
}

void ov85_021E80E0(UnkStruct_Ov85_Main *param0)
{
    {
        u8 *p = (u8 *)&param0->unkC30;
        int i;
        for (i = 0; i < 0x14; i++) {
            p[i] = 0;
        }
    }

    param0->unkDBC = SysTask_CreateOnMainQueue(ov85_021E80D0, param0, 0xFF);
    GF_ASSERT(param0->unkDBC);
}

void ov85_021E8118(UnkStruct_Ov85_Main *param0)
{
    SysTask_Destroy(param0->unkDBC);
}

void ov85_021E8128(UnkStruct_Ov85_Main *param0)
{
    UnkStruct_Ov85_C30 *v0 = &param0->unkC30;

    GF_ASSERT(v0->unk04 == 0);
    v0->unk08 = 1;
    v0->unk00 = 1;
}

BOOL ov85_021E8144(UnkStruct_Ov85_Main *param0)
{
    return param0->unkC30.unk04;
}

BOOL ov85_021E8150(UnkStruct_Ov85_Main *param0)
{
    return param0->unkC30.unk08;
}

void ov85_021E815C(SysTask *param0, void *param1)
{
    UnkStruct_Ov85_Task815C *v0 = param1;

    switch (v0->unk00) {
    case 0:
        if (v0->unk0C < 4) {
            v0->unk04--;

            if (v0->unk04 <= 0) {
                v0->unk04 = 30;
                PlaySE((u16)ov85_021EA528[v0->unk0C]);
                v0->unk0C++;
            }
        }

        ManagedSprite_TickNFrames(v0->unk14, 0x1800);

        if (ManagedSprite_IsAnimated(v0->unk14) == 0) {
            v0->unk00++;
        }

        break;
    case 1:
        Sprite_DeleteAndFreeResources(v0->unk14);
        Heap_Free(v0);
        SysTask_Destroy(param0);
    }
}

SysTask *ov85_021E81E0(UnkStruct_Ov85_Main *param0)
{
    ManagedSpriteTemplate v0;
    UnkStruct_Ov85_Task815C *v1 = Heap_AllocAtEnd(HEAP_ID_102, 0x18);
    SysTask *v2;

    {
        u8 *p = (u8 *)v1;
        int i;
        for (i = 0; i < 0x18; i++) {
            p[i] = 0;
        }
    }

    v0.x = 128;
    v0.y = 100;
    v0.z = 0;
    v0.animation = 0;
    v0.drawPriority = 0;
    v0.pal = 0;
    v0.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.resIdList[0] = 4;
    v0.resIdList[1] = 5;
    v0.resIdList[2] = 6;
    v0.resIdList[3] = 7;
    v0.resIdList[4] = -1;
    v0.resIdList[5] = -1;
    v0.bgPriority = 0;
    v0.vramTransfer = 0;

    v1->unk14 = ov85_021E7044(param0, &v0);
    ManagedSprite_TickFrame(v1->unk14);

    v1->unk10 = param0;
    v2 = SysTask_CreateOnMainQueue(ov85_021E815C, v1, 0);
    GF_ASSERT(v2 != NULL);

    return v2;
}

void ov85_021E825C(UnkStruct_Ov85_Main *param0, UnkStruct_Ov85_C44 *param1)
{
    switch (param1->unk00) {
    case 0:
        break;
    case 1:
        ov85_021E6DF0(param0);
        PlaySE(0x5E4);
        param1->unk04 = 0;
        param1->unk00++;
    case 2:
        param1->unk04++;

        if (param1->unk04 >= 2) {
            param1->unk04 = 0;
            param1->unk00++;
            ov85_021E6E08(param0);
        }
        break;
    case 3:
        param1->unk04++;

        if (param1->unk04 >= 4) {
            ov85_021E6DF0(param0);
            param1->unk04 = 0;
            param1->unk00++;
        }
        break;
    case 4:
        param1->unk04++;

        if (param1->unk04 >= 2) {
            ov85_021E6DFC(param0);
            param1->unk02 = 0;
            param1->unk00 = 0;
        }
        break;
    }
}

void ov85_021E82E4(SysTask *param0, void *param1)
{
    UnkStruct_Ov85_Main *v0 = param1;

    ov85_021E825C(v0, &v0->unkC44);
}

void ov85_021E82F8(UnkStruct_Ov85_Main *param0)
{
    {
        u8 *p = (u8 *)&param0->unkC44;
        int i;
        for (i = 0; i < 8; i++) {
            p[i] = 0;
        }
    }

    param0->unkDC0 = SysTask_CreateOnMainQueue(ov85_021E82E4, param0, 0x103);
    GF_ASSERT(param0->unkDC0);
}

void ov85_021E833C(UnkStruct_Ov85_Main *param0)
{
    SysTask_Destroy(param0->unkDC0);
}
