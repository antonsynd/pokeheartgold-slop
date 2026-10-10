#include "global.h"

typedef struct UnkStruct_ov07_0221D874_Template {
    s16 x;
    s16 y;
    s16 z;
    s16 animIdx;
    u32 priority;
    u32 plttIdx;
    u32 vramType;
    u32 resources[6];
    u32 bgPriority;
    u32 vramTransfer;
} UnkStruct_ov07_0221D874_Template;

typedef struct UnkStruct_ov07_0221D874_Track {
    void *sprite;
    u8 frameCount;
    u8 interval;
    u16 pad;
    void *pic;
    void *task;
} UnkStruct_ov07_0221D874_Track;

extern int ov07_0221D3CC(void *sys, int role);
extern void *ov07_0221FA48(void *sys, int battler);
extern int Pokepic_GetAttr(void *pic, int attr);
extern void *SpriteSystem_NewSprite(void *spriteSystem, void *manager, void *tmpl);
extern void ManagedSprite_SetDrawFlag(void *sprite, int flag);
extern void *Sprite_GetImageProxy(void *sprite);
extern void *Sprite_GetPaletteProxy(void *sprite);
extern void GF_CreateNewVramTransferTask(int type, u32 dest, void *src, u32 size);
extern u32 ObjPlttTransfer_GetPaletteVramOffset(void *proxy, int type);
extern void PaletteData_LoadNarc(void *data, int narcId, int memberNo, int heapId, int bufferId, u32 size, u16 pos);
extern void ov07_0221D4B0(void *task, void *data);

#define SYS_U32(p, off) (*(u32 *)((u8 *)(p) + (off)))
#define SYS_PTR(p, off) (*(void **)((u8 *)(p) + (off)))

void ov07_0221D874(void *system) {
    u32 callerR7;
    u32 callerR5;
    __asm__ volatile("movs %0, r7" : "=l"(callerR7) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");

    s16 battlerX = (s16)callerR7;
    s16 battlerY = (s16)callerR5;
    u32 resourceIDs[6];
    UnkStruct_ov07_0221D874_Template tmpl;
    u32 *script;
    int battlerRole, trackBattler, spriteID, resID;
    u32 resBase;
    u8 *context;

    script = (u32 *)SYS_PTR(system, 0x18);
    script++;
    SYS_PTR(system, 0x18) = script;
    battlerRole = *script;
    script++;
    SYS_PTR(system, 0x18) = script;
    trackBattler = *script;
    script++;
    SYS_PTR(system, 0x18) = script;
    spriteID = *script;
    script++;
    SYS_PTR(system, 0x18) = script;
    resID = *script;
    script++;
    SYS_PTR(system, 0x18) = script;

    context = SYS_PTR(system, 0xc0);
    resBase = resID + 0x4e21;
    resourceIDs[0] = resBase + *(u16 *)(context + 0x14) * 5000;
    context = SYS_PTR(system, 0xc0);
    resourceIDs[1] = resBase + *(u16 *)(context + 0x14) * 5000;
    context = SYS_PTR(system, 0xc0);
    resourceIDs[2] = resBase + *(u16 *)(context + 0x14) * 5000;
    context = SYS_PTR(system, 0xc0);
    resourceIDs[3] = resBase + *(u16 *)(context + 0x14) * 5000;
    resourceIDs[4] = 0;
    resourceIDs[5] = 0;

    int battler = ov07_0221D3CC(system, battlerRole);
    u32 *spriteData = *(u32 **)((u8 *)SYS_PTR(system, 0xc0) + 0xb0 + battler * 4);
    int narcID = spriteData[1];
    int paletteIndex = spriteData[2];
    void *charData = (void *)spriteData[0];

    void *battlerSprite = ov07_0221FA48(system, battler);
    if (battlerSprite != NULL) {
        battlerX = (s16)Pokepic_GetAttr(battlerSprite, 0);
        int y = (s16)Pokepic_GetAttr(battlerSprite, 1);
        int shadow = Pokepic_GetAttr(battlerSprite, 0x29);
        battlerY = (s16)(y - shadow);
    }

    tmpl.x = battlerX;
    tmpl.y = battlerY;
    tmpl.z = 0;
    tmpl.animIdx = 0;
    tmpl.priority = 100;
    tmpl.plttIdx = 0;
    tmpl.vramType = 1;
    tmpl.bgPriority = 1;
    tmpl.vramTransfer = 0;
    for (int i = 0; i < 6; i++) {
        tmpl.resources[i] = resourceIDs[i];
    }

    void **sprite = SpriteSystem_NewSprite(SYS_PTR(SYS_PTR(system, 0xc0), 0xac), SYS_PTR(system, 0x138), &tmpl);
    if (battlerSprite == NULL) {
        ManagedSprite_SetDrawFlag(sprite, 0);
    } else if (Pokepic_GetAttr(battlerSprite, 6) == 1) {
        ManagedSprite_SetDrawFlag(sprite, 0);
    }

    if (ov07_0221FA48(system, battler) != NULL) {
        void *proxy = Sprite_GetImageProxy(*sprite);
        GF_CreateNewVramTransferTask(0x13, SYS_U32(proxy, 4), charData, 0xc80);
    }

    if (ov07_0221FA48(system, battler) != NULL) {
        void *proxy = Sprite_GetPaletteProxy(*sprite);
        u32 offset = ObjPlttTransfer_GetPaletteVramOffset(proxy, 1);
        PaletteData_LoadNarc(SYS_PTR(system, 0xc8), narcID, paletteIndex, SYS_U32(system, 0), 2, 0x20, (u16)((offset & 0xfff) << 4));
    }

    {
        void **sprites = (void **)((u8 *)system + 0x13c);
        if (sprites[spriteID] != NULL) {
            GF_AssertFail();
        }
        sprites[spriteID] = sprite;
        *(u32 *)((u8 *)system + 0x150 + spriteID * 4) = 1;
    }

    if (trackBattler == 1 && ov07_0221FA48(system, battler) != NULL) {
        void **tasks = (void **)((u8 *)system + 0x164);
        tasks[spriteID] = Heap_Alloc(SYS_U32(system, 0), 0x10);
        UnkStruct_ov07_0221D874_Track *track = tasks[spriteID];
        track->sprite = sprite;
        track->pic = ov07_0221FA48(system, battler);
        track = tasks[spriteID];
        track->frameCount = 0;
        track = tasks[spriteID];
        track->interval = 0;
        track = tasks[spriteID];
        track->task = SysTask_CreateOnMainQueue(ov07_0221D4B0, tasks[spriteID], 0x1001);
    }
}
