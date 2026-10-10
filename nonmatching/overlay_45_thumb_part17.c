#include "global.h"

#include "assert.h"
#include "filesystem.h"
#include "gf_3d_loader.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "overlay_45_thumb.h"
#include "unk_02018000.h"
#include "unk_02023694.h"

typedef struct UnkOv45Slot {
    u8 unk_00[8];
    u32 currentNum;
    u8 unk_0C[4];
    u32 paramBuf[2];
    u8 unk_18[0x44 - 0x18];
    u16 unk_44;
    u16 unk_46;
    u32 unk_48;
} UnkOv45Slot;

typedef struct UnkOv45Ctx {
    u8 unk_000[0x19C];
    u32 currentTimeLo;
    u32 currentTimeHi;
    u8 unk_1A4[0x5B8 - 0x1A4];
    UnkOv45Slot slots[3];
    u16 gameKind;
    u8 unk_69E;
    u8 unk_69F;
} UnkOv45Ctx;

typedef struct UnkOv45VipRecord {
    s32 profileId;
    s32 key;
} UnkOv45VipRecord;

typedef struct UnkOv45VipList {
    UnkOv45VipRecord *records;
    u16 capacity;
    u16 count;
} UnkOv45VipList;

typedef struct UnkOv45ScheduleRecord {
    u32 time;
    u32 event;
} UnkOv45ScheduleRecord;

typedef struct UnkOv45Schedule {
    u8 unk_00[0xE];
    u16 scheduleRecordNum;
    UnkOv45ScheduleRecord scheduleRecords[];
} UnkOv45Schedule;

typedef struct UnkOv45TableEntry {
    u16 unk_00;
    u16 unk_02;
} UnkOv45TableEntry;

typedef struct UnkOv45Vec {
    fx32 x;
    fx32 y;
    fx32 z;
} UnkOv45Vec;

typedef struct UnkOv45Pos2 {
    u16 unk_00;
    u16 unk_02;
} UnkOv45Pos2;

typedef struct UnkOv45Billboard {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    const void *unk_04;
    void *unk_08;
    UnkStruct_020181B0 unk_0C;
    u8 unk_84[8];
    u32 unk_8C;
} UnkOv45Billboard;

typedef struct UnkOv45Billboards {
    GF_2DGfxRawResMan *gfx2dRes0;
    GF_2DGfxRawResMan *gfx2dRes1;
    GF_3DGfxRawResMan *gfx3dRes;
    void *billboardList;
    UnkOv45Billboard *billboards;
    u32 billboardCount;
    u8 unk_18[0x14];
    u32 lightEnableFlag;
} UnkOv45Billboards;

typedef struct UnkOv45BillboardListParams {
    u32 maxElements;
    enum HeapID heapID;
} UnkOv45BillboardListParams;

typedef struct UnkOv45BillboardTemplate {
    void *list;
    void *resources;
    UnkOv45Vec pos;
    UnkOv45Vec scale;
} UnkOv45BillboardTemplate;

extern UnkOv45Ctx *_022577C0;
extern const u16 ov45_02254C38[2];
extern const UnkOv45TableEntry ov45_02254C48[20];
extern const UnkOv45Vec ov45_02254C3C;
extern const u8 ov45_02254C98[];

u32 ov00_021E7144(void);
void ov45_02232BB0(void *recruitInfo);
void ov45_0222D740(void *resource);
u32 NNS_G3dMdlGetMdlLightEnableFlag(void *model, u32 index);
void ov45_022309E8(void *dest, NARC *narc, u32 param2, enum HeapID heapID);
const UnkOv45TableEntry *ov45_0223099C(u32 arg0);
u32 ov42_02228188(const void *arg0, int arg1);
UnkOv45Pos2 ov42_022282DC(const void *arg0);
void ov49_02258800(const void *arg0, UnkOv45Vec *arg1);

void *sub_020237EC(UnkOv45BillboardListParams *params);
void sub_02023874(void *arg0);
void *sub_02023D44(const void *arg0);
void sub_02023DA4(void *arg0);
void sub_02023E50(void *arg0, const UnkOv45Vec *arg1);
const UnkOv45Vec *sub_02023E68(void *arg0);
void sub_02023E2C(void *arg0, void *arg1, const void *arg2, const void *arg3, void *arg4);
void sub_02023E04(void *arg0, void *arg1, const void *arg2, const void *arg3, void *arg4, u32 arg5, u32 arg6, u32 arg7);
void sub_02023FE4(void *arg0, void (*arg1)(void *), void *arg2);
void sub_02026E18(const void *arg0, void *arg1);
void ov45_02230E64(void *arg0);

void ov45_02230A44(void *arg0);
int ov45_02230A58(void *arg0);
void ov45_02230A4C(void *arg0, u32 arg1);
void ov45_02230A5C(void *arg0, void *arg1);
UnkOv45Billboard *ov45_02230A6C(UnkOv45Billboards *arg0);
int ov45_02230AA4(UnkOv45Billboard *arg0);
void ov45_02230AB4(UnkOv45Billboard *arg0);
void ov45_02230AC0(UnkOv45Billboard *arg0);
void ov45_02230ACC(UnkOv45Billboard *arg0);
void ov45_02230CB0(UnkOv45Billboard *arg0);
void ov45_02230DF4(UnkOv45Billboard *arg0);

u16 ov45_0223021C(const UnkOv45Ctx *ctx, int idx);
const UnkOv45Slot *ov45_022302B0(const UnkOv45Ctx *ctx, int idx);
void ov45_02230378(UnkOv45Slot *slot, const u32 *src);
void ov45_02230384(const UnkOv45Slot *slot, u32 *dst);

BOOL ov45_022301E0(UnkOv45Ctx *ctx, int idx, s32 param2)
{
    GF_ASSERT(idx < 3);

    if (ov45_0223021C(ctx, idx) == 1) {
        UnkOv45Slot *slot = &ctx->slots[idx];

        if (slot->unk_48 == param2) {
            slot->unk_44 = 0;
            return 1;
        }
    }

    return 0;
}

u16 ov45_0223021C(const UnkOv45Ctx *ctx, int idx)
{
    GF_ASSERT(idx < 3);
    return ctx->slots[idx].unk_44;
}

u16 ov45_0223023C(const UnkOv45Ctx *ctx, int idx)
{
    if (ov45_0223021C(ctx, idx) == 0) {
        return 0;
    }

    const UnkOv45Slot *slot = ov45_022302B0(ctx, idx);
    u32 last[2];
    ov45_02230384(slot, last);

    s64 now = (s64)(((u64)ctx->currentTimeHi << 32) | ctx->currentTimeLo);
    s64 lastTime = (s64)(((u64)last[1] << 32) | last[0]);
    s64 v1 = now - lastTime;

    if (v1 > 30) {
        v1 = 30;
    } else if (v1 < 0) {
        v1 = 0;
    }

    return (u16)((60 - v1) * 30);
}

const UnkOv45Slot *ov45_022302B0(const UnkOv45Ctx *ctx, int idx)
{
    GF_ASSERT(idx < 3);
    GF_ASSERT(ctx->slots[idx].unk_44 == 1);
    return &ctx->slots[idx];
}

void ov45_022302E4(void *unused)
{
    if (_022577C0->unk_69E == 1) {
        u32 numConnections = ov00_021E7144();
        GF_ASSERT(numConnections <= 4);
        UnkOv45Slot *slot = &_022577C0->slots[_022577C0->gameKind];

        if (slot->currentNum != numConnections) {
            slot->currentNum = numConnections;
            ov45_02232BB0(slot);
        }
    }

    u16 v1;

    for (int i = 0; i < 3; i++) {
        if (_022577C0->slots[i].unk_44 == 1) {
            if (_022577C0->slots[i].unk_46 > 0) {
                _022577C0->slots[i].unk_46--;
            }

            v1 = ov45_0223023C(_022577C0, i);

            if (v1 < _022577C0->slots[i].unk_46) {
                _022577C0->slots[i].unk_46 = v1;
            }
        }
    }
}

void ov45_02230378(UnkOv45Slot *slot, const u32 *src)
{
    slot->paramBuf[0] = src[0];
    slot->paramBuf[1] = src[1];
}

void ov45_02230384(const UnkOv45Slot *slot, u32 *dst)
{
    dst[0] = slot->paramBuf[0];
    dst[1] = slot->paramBuf[1];
}

void ov45_02230390(u16 unused1, void *unused2)
{
}

void ov45_02230394(u16 param0, UnkOv45Ctx *param1)
{
    if (param1->unk_69E == 1) {
        ov45_0222F154();
    } else {
        if (param0 == 0) {
            _022577C0->unk_69F = 1;
        }
    }
}

u32 ov45_022303BC(const UnkOv45Schedule *lobbySchedule, u32 lobbyTimeEvent)
{
    u32 time = 0;

    for (int i = 0; i < lobbySchedule->scheduleRecordNum; i++) {
        if (lobbySchedule->scheduleRecords[i].event == lobbyTimeEvent) {
            time = lobbySchedule->scheduleRecords[i].time;
        }
    }

    return time;
}

void ov45_022303E4(UnkOv45VipList *param0, u32 param1, enum HeapID heapID)
{
    param0->records = Heap_Alloc(heapID, sizeof(UnkOv45VipRecord) * param1);
    param0->capacity = param1;
    param0->count = 0;
}

void ov45_022303FC(UnkOv45VipList *param0)
{
    Heap_Free(param0->records);
    param0->records = NULL;
}

void ov45_0223040C(UnkOv45VipList *param0, const UnkOv45VipRecord *lobbyVipRecord, u32 param2)
{
    GF_ASSERT(param2 < param0->capacity);

    u32 v0;

    if (param2 < param0->capacity) {
        v0 = param2;
    } else {
        v0 = param0->capacity;
    }

    MIi_CpuCopy32(lobbyVipRecord, param0->records, sizeof(UnkOv45VipRecord) * v0);
    param0->count = v0;
}

BOOL ov45_02230434(const UnkOv45VipList *param0, s32 param1)
{
    for (int i = 0; i < param0->count; i++) {
        if (param0->records[i].profileId == param1) {
            return 1;
        }
    }

    return 0;
}

s32 ov45_0223045C(const UnkOv45VipList *param0, s32 param1)
{
    for (int i = 0; i < param0->count; i++) {
        if (param0->records[i].profileId == param1) {
            return param0->records[i].key;
        }
    }

    return 0;
}

void ov45_0223048C(void *param0, const void *lobbyQuestionnaire)
{
    memcpy(param0, lobbyQuestionnaire, 0x2D8);
}

UnkOv45Billboards *ov45_02230498(u32 param0, u32 param1, enum HeapID heapID, enum HeapID heapID2)
{
    UnkOv45Billboards *v0 = Heap_Alloc(heapID, sizeof(UnkOv45Billboards));
    memset(v0, 0, sizeof(UnkOv45Billboards));

    v0->billboards = Heap_Alloc(heapID, sizeof(UnkOv45Billboard) * param0);
    v0->billboardCount = param0;

    for (u32 i = 0; i < v0->billboardCount; i++) {
        ov45_02230AB4(&v0->billboards[i]);
    }

    v0->gfx2dRes0 = GF2dGfxRawResMan_Create(1, heapID);
    v0->gfx2dRes1 = GF2dGfxRawResMan_Create(2, heapID);
    v0->gfx3dRes = GF3dGfxRawResMan_Create(20, heapID);

    BillboardLists_Create(1, heapID);

    {
        UnkOv45BillboardListParams params;
        params.maxElements = param0;
        params.heapID = heapID;
        v0->billboardList = sub_020237EC(&params);
    }

    {
        NARC *v3;
        NARC *v4;
        void *v5;
        int v6;

        v3 = NARC_New(0x51, heapID);
        v4 = NARC_New(0xD1, heapID);

        {
            void *mdlSet;
            void *model = NULL;
            u32 entry;
            u32 *entryPtr = NULL;

            v5 = GfGfxLoader_LoadFromOpenNarc(v4, 127, 0, heapID2, 0);
            GF2dGfxRawResMan_AllocObj(v0->gfx2dRes0, v5, 127);
            ov45_0222D740(v5);

            mdlSet = NNS_G3dGetMdlSet(v5);

            if (mdlSet != NULL) {
                if (((u8 *)mdlSet)[9] > 0) {
                    entryPtr = (u32 *)((u8 *)mdlSet + 8 + *(u16 *)((u8 *)mdlSet + 0xE) + 4);
                }

                if (entryPtr != NULL) {
                    entry = *entryPtr;
                    model = (u8 *)mdlSet + entry;
                }
            }

            v0->lightEnableFlag = NNS_G3dMdlGetMdlLightEnableFlag(model, 0);
        }

        for (v6 = 0; v6 < 2; v6++) {
            v5 = GfGfxLoader_LoadFromOpenNarc(v3, ov45_02254C38[v6], 0, heapID2, 0);
            GF2dGfxRawResMan_AllocObj(v0->gfx2dRes1, v5, ov45_02254C38[v6]);
        }

        {
            void *v9;
            int skipIndex;
            BOOL v11;

            if (param1 == 0) {
                skipIndex = 1;
            } else {
                skipIndex = 0;
            }

            for (int i = 0; i < 20; i++) {
                if (skipIndex == i) {
                    continue;
                }

                if ((ov45_02254C48[i].unk_02 & 0x8000) == 0) {
                    v11 = 1;
                } else {
                    v11 = 0;
                }

                v5 = GfGfxLoader_LoadFromOpenNarc(v3, ov45_02254C48[i].unk_02 & 0x7FFF, 0, heapID2, 0);
                v9 = GF3dGfxRawResMan_AllocObj(v0->gfx3dRes, v5, ov45_02254C48[i].unk_02 & 0x7FFF, v11, heapID2);

                if (v11 == 1) {
                    GF3dGfxRawResObj_AllocVramAndGetKeys(v9);
                    GF3dGfxRawResObj_LoadTex(v9);
                    GF3dGfxRawResObj_FreeVramAndSecondaryHeader(v9);
                }
            }
        }

        ov45_022309E8(v0->unk_18, v4, 128, heapID2);

        NARC_Delete(v3);
        NARC_Delete(v4);
    }

    return v0;
}

void ov45_02230638(UnkOv45Billboards *param0)
{
    ov45_02230A44(param0->unk_18);
    GF3dGfxRawResMan_FreeAllObjs(param0->gfx3dRes);
    GF2dGfxRawResMan_FreeAllObjs(param0->gfx2dRes0);
    GF2dGfxRawResMan_FreeAllObjs(param0->gfx2dRes1);
    sub_02023874(param0->billboardList);
    BillboardLists_Delete();
    GF3dGfxRawResMan_Destroy(param0->gfx3dRes);
    GF2dGfxRawResObj_Destroy(param0->gfx2dRes0);
    GF2dGfxRawResObj_Destroy(param0->gfx2dRes1);
    Heap_Free(param0->billboards);
    Heap_Free(param0);
}

void ov45_02230680(UnkOv45Billboards *param0)
{
    for (u32 i = 0; i < param0->billboardCount; i++) {
        ov45_02230ACC(&param0->billboards[i]);
        ov45_02230CB0(&param0->billboards[i]);
        ov45_02230DF4(&param0->billboards[i]);
    }
}

void ov45_022306B4(UnkOv45Billboards *param0)
{
    BillboardLists_Draw();

    if (ov45_02230A58(param0->unk_18) != 0) {
        for (u32 i = 0; i < param0->billboardCount; i++) {
            if (ov45_02230AA4(&param0->billboards[i]) == 1) {
                ov45_02230AC0(&param0->billboards[i]);
            }
        }
    }
}

void ov45_022306F4(UnkOv45Billboards *param0)
{
    sub_02023910(param0->billboardList);
}

void ov45_02230700(UnkOv45Billboards *param0, u32 param1)
{
    ov45_02230A4C(param0->unk_18, param1);
}

UnkOv45Billboard *ov45_0223070C(UnkOv45Billboards *param0, const void *param1)
{
    UnkOv45Billboard *v0 = ov45_02230A6C(param0);
    v0->unk_04 = param1;

    {
        UnkOv45Vec v13 = { 0, 0, 0 };
        UnkOv45Vec v14 = ov45_02254C3C;
        UnkOv45Pos2 v17;
        UnkOv45BillboardTemplate v3;
        u8 v2[0x28];
        u8 v9[0x10];
        const UnkOv45TableEntry *v1;
        u32 v6;
        void *v7;
        void *v8;
        void *v5;

        v6 = ov42_02228188(param1, 7);
        v1 = ov45_0223099C(v6);

        {
            void *v4 = GF2dGfxRawResMan_GetObjById(param0->gfx2dRes0, 127);
            v7 = GF2dGfxRawResObj_GetData(v4);
        }

        {
            v5 = GF3dGfxRawResMan_GetObjById(param0->gfx3dRes, v1->unk_02 & 0x7FFF);
            v8 = GF3dGfxRawResObj_GetTex(v5);
        }

        {
            u32 v15;
            void *v4;
            const void *v16;

            if ((v1->unk_02 & 0x8000) != 0) {
                v15 = 0x119;
            } else {
                v15 = 0x118;
            }

            v4 = GF2dGfxRawResMan_GetObjById(param0->gfx2dRes1, v15);
            v16 = GF2dGfxRawResObj_GetData(v4);

            sub_02026E18(v16, v9);
        }

        if ((v1->unk_02 & 0x8000) != 0) {
            sub_02023E2C(v2, v7, v8, ov45_02254C98, v9);
        } else {
            u32 texKey = GF3dGfxRawResObj_GetTexKey(v5);
            u32 tex4x4Key = GF3dGfxRawResObj_GetTex4x4Key(v5);
            u32 plttKey = GF3dGfxRawResObj_GetPlttKey(v5);

            sub_02023E04(v2, v7, v8, ov45_02254C98, v9, texKey, tex4x4Key, plttKey);
        }

        v17 = ov42_022282DC(param1);
        ov49_02258800(&v17, &v13);
        v13.z += 0x10000;

        v3.list = param0->billboardList;
        v3.resources = v2;
        v3.pos = v13;
        v3.scale = v14;
        v0->unk_08 = sub_02023D44(&v3);

        sub_02023FE4(v0->unk_08, ov45_02230E64, v0);
        ov45_02230A5C(param0->unk_18, &v0->unk_0C);
        sub_020182A8(&v0->unk_0C, v13.x, 0x2000, v13.z - 0x8000);
    }

    v0->unk_00 = (v0->unk_00 & ~0x0F) | 1;
    v0->unk_00 = (v0->unk_00 & ~0xC0) | 0x40;
    v0->unk_00 = v0->unk_00 & ~0x30;
    v0->unk_8C = param0->lightEnableFlag;

    return v0;
}

void ov45_02230884(UnkOv45Billboard *param0)
{
    sub_02023DA4(param0->unk_08);
    memset(param0, 0, sizeof(UnkOv45Billboard));
}

void ov45_0223089C(UnkOv45Billboard *param0, BOOL param1)
{
    param0->unk_00 = (param0->unk_00 & ~0x0F) | (param1 & 0x0F);
}

void ov45_022308B0(UnkOv45Billboard *param0, u32 param1)
{
    param0->unk_8C = param1;
}

BOOL ov45_022308B8(const UnkOv45Billboard *param0)
{
    return (param0->unk_00 >> 4) & 3;
}

void ov45_022308E4(UnkOv45Billboard *param0, const UnkOv45Vec *param1)
{
    sub_02023E50(param0->unk_08, param1);
    sub_020182A8(&param0->unk_0C, param1->x, 0x2000, param1->z - 0x8000);
}

void ov45_022308C0(UnkOv45Billboard *param0, const void *param1)
{
    UnkOv45Vec v0;

    ov49_02258800(param1, &v0);
    v0.z += 0x10000;
    ov45_022308E4(param0, &v0);
}

void ov45_02230908(const UnkOv45Billboard *param0, UnkOv45Vec *param1)
{
    const UnkOv45Vec *v0 = sub_02023E68(param0->unk_08);
    *param1 = *v0;
}
