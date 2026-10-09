#include "global.h"

#include "battle/battle.h"
#include "battle/battle_system.h"
#include "bg_window.h"
#include "filesystem.h"
#include "heap.h"
#include "obj_pltt_transfer.h"
#include "palette.h"
#include "pokepic.h"
#include "sprite_system.h"
#include "vram_transfer_manager.h"

typedef struct UnkStruct_ov07_0221FA38_Context {
    u8 unk0[0xB0];
    UnkBattleSystemSub1D0 *unkB0[4];
    u8 unkC0[4];
    Pokepic *unkC4[4];
    u32 unkD4;
    u8 unkD8[0x14];
    u32 unkEC[4];
    u32 unkFC[4];
    u8 unk10C[4];
    void *unk110;
    u16 *unk114;
} UnkStruct_ov07_0221FA38_Context;

typedef struct UnkStruct_ov07_0221FA38 {
    u8 unk0[0xC0];
    UnkStruct_ov07_0221FA38_Context *unkC0;
    BgConfig *unkC4;
    PaletteData *unkC8;
} UnkStruct_ov07_0221FA38;

typedef struct UnkStruct_ov07_0221FB90 {
    enum HeapID unk0;
    int unk4;
    SpriteSystem *unk8;
    SpriteManager *unkC;
    PaletteData *unk10;
    int unk14[4];
    ManagedSprite *unk24[4];
    UnkBattleSystemSub1D0 *unk34[4];
    u8 unk44[4];
    Pokepic *unk48[4];
} UnkStruct_ov07_0221FB90;

struct SPLEmitter;

extern const int _02234B80[3];
extern const int ov07_02234B8C[3];
extern const int ov07_02234F48[][5];
extern void (*const ov07_022353E4[])(struct SPLEmitter *);

extern int ov07_02231924(UnkStruct_ov07_0221FA38 *a0, int a1);
extern struct SPLEmitter *ov06_0221BA40(enum HeapID heapId);
extern struct SPLEmitter *ov06_0221BA88(enum HeapID heapId);
extern void ov06_0221BAD8(struct SPLEmitter *a0);
extern void *sub_02015264(NarcId narcId, int fileId, enum HeapID heapId);
extern void sub_0201526C(struct SPLEmitter *a0, void *a1, u32 a2, BOOL a3);
extern struct SPLEmitter *sub_02015494(struct SPLEmitter *a0, int a1, void (*a2)(struct SPLEmitter *), void *a3);

BOOL ov07_0221FAE8(UnkStruct_ov07_0221FA38 *a0);
UnkStruct_ov07_0221FB90 *ov07_0221FB90(BattleSystem *a0, enum HeapID heapId, int a2);
void *ov07_0221FEDC(NARC *narc, int memberIdx, enum HeapID heapId);

int ov07_0221FA38(UnkStruct_ov07_0221FA38 *a0, int a1) {
    return a0->unkC0->unkEC[a1];
}

Pokepic *ov07_0221FA48(UnkStruct_ov07_0221FA38 *a0, int a1) {
    if (a0->unkC0->unkC4[a1] == NULL) {
        return NULL;
    }

    if (Pokepic_IsActive(a0->unkC0->unkC4[a1])) {
        return a0->unkC0->unkC4[a1];
    }

    return NULL;
}

PaletteData *ov07_0221FA78(UnkStruct_ov07_0221FA38 *a0) {
    return a0->unkC8;
}

int ov07_0221FA80(UnkStruct_ov07_0221FA38 *a0, int a1) {
    return a0->unkC0->unkB0[a1]->unk8;
}

int ov07_0221FA90(UnkStruct_ov07_0221FA38 *a0, int a1) {
    return a0->unkC0->unkB0[a1]->unk4;
}

int ov07_0221FAA0(UnkStruct_ov07_0221FA38 *a0, int a1) {
    return a0->unkC0->unkB0[a1]->unkC;
}

BOOL ov07_0221FAB0(UnkStruct_ov07_0221FA38 *a0) {
    return (a0->unkC0->unkD4 & 2) ? TRUE : FALSE;
}

BOOL ov07_0221FAC8(UnkStruct_ov07_0221FA38 *a0, int a1) {
    return (a0->unkC0->unkFC[a1] & 0x200400C0) ? TRUE : FALSE;
}

BOOL ov07_0221FAE8(UnkStruct_ov07_0221FA38 *a0) {
    return TRUE;
}

int ov07_0221FAEC(UnkStruct_ov07_0221FA38 *a0, int a1) {
    return ov07_02234B8C[a1];
}

int ov07_0221FAF8(UnkStruct_ov07_0221FA38 *a0, int a1) {
    return _02234B80[a1];
}

int ov07_0221FB04(UnkStruct_ov07_0221FA38 *a0, int a1) {
    switch (a1) {
    case 0:
        return 0;
    case 1:
        return 1;
    case 2:
        return 3;
    case 3:
        return ov07_0221FAE8(a0);
    }

    return (int)a0;
}

void ov07_0221FB30(UnkStruct_ov07_0221FA38 *a0, int a1) {
    BG_LoadCharTilesData(a0->unkC4, a1, a0->unkC0->unk110, 0x10000, 0);
}

void ov07_0221FB58(UnkStruct_ov07_0221FA38 *a0) {
    PaletteData_LoadPalette(a0->unkC8, a0->unkC0->unk114, PLTTBUF_MAIN_BG, 0, 0x200);
}

BOOL ov07_0221FB78(UnkStruct_ov07_0221FA38 *a0, int a1) {
    return FALSE;
}

int ov07_0221FB7C(int a0, int a1) {
    return ov07_02234F48[a0][a1];
}

UnkStruct_ov07_0221FB90 *ov07_0221FB90(BattleSystem *a0, enum HeapID heapId, int a2) {
    int i;
    int priorities[] = { 0, 0, 20, 10, 10, 20 };
    UnkStruct_ov07_0221FB90 *data = Heap_Alloc(heapId, sizeof(UnkStruct_ov07_0221FB90));

    data->unk0 = heapId;
    data->unk4 = a2;
    data->unk8 = BattleSystem_GetSpriteSystem(a0);
    data->unkC = BattleSystem_GetSpriteManager(a0);
    data->unk10 = BattleSystem_GetPaletteData(a0);

    for (i = 0; i < 4; i++) {
        data->unk24[i] = NULL;
        data->unk34[i] = ov12_0223BB88(a0, i);
    }

    ov12_0223C1C4(a0, &data->unk44[0]);
    ov12_0223C1F4(a0, (void **)&data->unk48[0]);

    {
        int resIds[6];
        NARC *narc;

        narc = NARC_New(NARC_a_0_0_8, heapId);

        for (i = 0; i < 4; i++) {
            if ((i != data->unk4) && (data->unk4 != 0xFF)) {
                continue;
            }

            if (data->unk48[i] == NULL) {
                continue;
            }

            resIds[0] = 55555 + i + ((data->unk4) * 5000);
            resIds[1] = 55555 + i + ((data->unk4) * 5000);
            resIds[2] = 55555 + i + ((data->unk4) * 5000);
            resIds[3] = 55555 + i + ((data->unk4) * 5000);
            resIds[4] = 0;
            resIds[5] = 0;

            SpriteSystem_LoadCharResObjFromOpenNarc(data->unk8, data->unkC, narc, 76, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, resIds[0]);
            SpriteSystem_LoadPaletteBufferFromOpenNarc(data->unk10, PLTTBUF_MAIN_OBJ, data->unk8, data->unkC, narc, 75, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, resIds[1]);
            SpriteSystem_LoadCellResObjFromOpenNarc(data->unk8, data->unkC, narc, 77, FALSE, resIds[2]);
            SpriteSystem_LoadAnimResObjFromOpenNarc(data->unk8, data->unkC, narc, 78, FALSE, resIds[3]);
        }

        NARC_Delete(narc);
    }

    {
        int battler;
        int narcId;
        int palette;
        void *tiles;
        int resIds[6];
        ManagedSprite *sprite;

        for (battler = 0; battler < 4; battler++) {
            if ((battler != data->unk4) && (data->unk4 != 0xFF)) {
                continue;
            }

            data->unk14[battler] = 55555 + battler + ((data->unk4) * 5000);

            resIds[0] = 55555 + battler + ((data->unk4) * 5000);
            resIds[1] = 55555 + battler + ((data->unk4) * 5000);
            resIds[2] = 55555 + battler + ((data->unk4) * 5000);
            resIds[3] = 55555 + battler + ((data->unk4) * 5000);
            resIds[4] = 0;
            resIds[5] = 0;

            narcId = data->unk34[battler]->unk4;
            palette = data->unk34[battler]->unk8;
            tiles = data->unk34[battler]->unk0;

            {
                int j;
                ManagedSpriteTemplate template;
                Pokepic *pokepic;
                s16 x, y;

                pokepic = data->unk48[battler];

                if (pokepic != NULL) {
                    x = Pokepic_GetAttr(pokepic, 0);
                    y = Pokepic_GetAttr(pokepic, 1);
                    y -= Pokepic_GetAttr(pokepic, 0x29);
                } else {
                    continue;
                }

                template.x = x;
                template.y = y;
                template.z = 0;
                template.animation = 0;
                template.drawPriority = priorities[data->unk44[battler]];
                template.pal = 0;
                template.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
                template.bgPriority = 1;
                template.vramTransfer = FALSE;

                for (j = 0; j < 6; j++) {
                    template.resIdList[j] = resIds[j];
                }

                sprite = SpriteSystem_NewSprite(data->unk8, data->unkC, &template);
                ManagedSprite_TickFrame(sprite);
                data->unk24[battler] = sprite;

                if (pokepic == NULL) {
                    ManagedSprite_SetDrawFlag(sprite, 0);
                } else if (Pokepic_IsActive(pokepic) == 0) {
                    ManagedSprite_SetDrawFlag(sprite, 0);
                } else {
                    int hidden = Pokepic_GetAttr(pokepic, 6);

                    if (hidden == 1) {
                        ManagedSprite_SetDrawFlag(sprite, 0);
                    }
                }

                if (pokepic != NULL) {
                    NNSG2dImageProxy *imageProxy;

                    imageProxy = Sprite_GetImageProxy(sprite->sprite);
                    GF_CreateNewVramTransferTask(NNS_GFD_DST_2D_OBJ_CHAR_MAIN, imageProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN], tiles, 10 * 10 * ((8 / 2) * 8));
                }

                if (pokepic != NULL) {
                    NNSG2dImagePaletteProxy *paletteProxy;
                    int offset;

                    paletteProxy = Sprite_GetPaletteProxy(sprite->sprite);
                    offset = ObjPlttTransfer_GetPaletteVramOffset(paletteProxy, NNS_G2D_VRAM_TYPE_2DMAIN);

                    PaletteData_LoadNarc(data->unk10, narcId, palette, data->unk0, PLTTBUF_MAIN_OBJ, 0x20, (u16)(offset << 4));
                }
            }
        }
    }

    return data;
}

UnkStruct_ov07_0221FB90 *ov07_0221FDFC(BattleSystem *a0, enum HeapID heapId) {
    return ov07_0221FB90(a0, heapId, 0xFF);
}

void ov07_0221FE08(UnkStruct_ov07_0221FB90 *a0) {
    int i;

    for (i = 0; i < 4; i++) {
        if (a0->unk24[i] == NULL) {
            continue;
        }

        SpriteManager_UnloadCharObjById(a0->unkC, a0->unk14[i]);
        SpriteManager_UnloadPlttObjById(a0->unkC, a0->unk14[i]);
        Sprite_DeleteAndFreeResources(a0->unk24[i]);
    }

    Heap_Free(a0);
}

void ov07_0221FE3C(UnkStruct_ov07_0221FB90 *a0, int a1) {
    int i;

    for (i = 0; i < 4; i++) {
        if (a0->unk24[i] == NULL) {
            continue;
        }

        SpriteManager_UnloadCharObjById(a0->unkC, a0->unk14[i]);
        SpriteManager_UnloadPlttObjById(a0->unkC, a0->unk14[i]);
        Sprite_DeleteAndFreeResources(a0->unk24[i]);
    }

    Heap_Free(a0);
}

int ov07_0221FE70(UnkStruct_ov07_0221FB90 *a0) {
    GF_ASSERT(a0 != NULL);
    return a0->unk44[a0->unk4];
}

void ov07_0221FE84(struct SPLEmitter *a0) {
    return;
}

struct SPLEmitter *ov07_0221FE88(enum HeapID heapId, int memberIdx, BOOL loadNow) {
    struct SPLEmitter *ps = ov06_0221BA40(heapId);
    void *resource = sub_02015264(NARC_a_0_2_9, memberIdx, heapId);
    sub_0201526C(ps, resource, 0xA, loadNow);

    return ps;
}

struct SPLEmitter *ov07_0221FEB0(enum HeapID heapId, NarcId narcId, int memberIdx, BOOL loadNow) {
    struct SPLEmitter *ps = ov06_0221BA40(heapId);
    void *resource = sub_02015264(narcId, memberIdx, heapId);
    sub_0201526C(ps, resource, 0xA, loadNow);

    return ps;
}

void *ov07_0221FEDC(NARC *narc, int memberIdx, enum HeapID heapId) {
    return NARC_AllocAndReadWholeMember(narc, memberIdx, heapId);
}

struct SPLEmitter *ov07_0221FEE4(NARC *narc, enum HeapID heapId, int memberIdx, BOOL loadNow) {
    struct SPLEmitter *ps = ov06_0221BA88(heapId);

    if (ps == NULL) {
        return NULL;
    }

    void *resource = ov07_0221FEDC(narc, memberIdx, heapId);
    sub_0201526C(ps, resource, 0xA, loadNow);

    return ps;
}

struct SPLEmitter *ov07_0221FF18(struct SPLEmitter *ps, int resNo, int callbackId, void *arg) {
    return sub_02015494(ps, resNo, ov07_022353E4[callbackId], arg);
}

void ov07_0221FF2C(struct SPLEmitter *ps) {
    ov06_0221BAD8(ps);
}

s8 ov07_0221FF34(UnkStruct_ov07_0221FA38 *a0, int a1, int a2) {
    s8 sign = +1;
    int startType = ov07_02231924(a0, a1);
    int endType = ov07_02231924(a0, a2);

    switch (startType) {
    case 0:
    default:
        break;
    case 1:
        sign = -1;
        break;
    case 2:
        break;
    case 3:
        sign = -1;
        break;
    case 4:
        break;
    case 5:
        sign = -1;
        break;
    }

    return sign;
}

void ov07_0221FF74(struct SPLEmitter *a0) {
    return;
}
