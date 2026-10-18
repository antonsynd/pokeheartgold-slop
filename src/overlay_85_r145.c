#include "global.h"

#include "heap.h"
#include "sprite_system.h"
#include "sys_task_api.h"

typedef struct Ov85Task {
    u8 filler_00[0x10];
    void *owner;
    ManagedSprite *sprite;
} Ov85Task;

ManagedSprite *ov85_021E7044(void *owner, const ManagedSpriteTemplate *template);
void ov85_021E815C(SysTask *task, void *data);

SysTask *ov85_021E81E0(void *owner) {
    ManagedSpriteTemplate template;
    SysTask *sysTask;
    Ov85Task *task = Heap_AllocAtEnd(HEAP_ID_102, sizeof(Ov85Task));

    memset(task, 0, sizeof(Ov85Task));
    template.x = 128;
    template.y = 100;
    template.z = 0;
    template.animation = 0;
    template.drawPriority = 0;
    template.pal = 0;
    template.bgPriority = 0;
    template.vramTransfer = FALSE;
    template.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.resIdList[GF_GFX_RES_TYPE_CHAR] = 4;
    template.resIdList[GF_GFX_RES_TYPE_PLTT] = 5;
    template.resIdList[GF_GFX_RES_TYPE_CELL] = 6;
    template.resIdList[GF_GFX_RES_TYPE_ANIM] = 7;
    template.resIdList[GF_GFX_RES_TYPE_MCEL] = -1;
    template.resIdList[GF_GFX_RES_TYPE_MANM] = -1;
    task->sprite = ov85_021E7044(owner, &template);
    ManagedSprite_TickFrame(task->sprite);
    task->owner = owner;
    sysTask = SysTask_CreateOnMainQueue(ov85_021E815C, task, 0);
    GF_ASSERT(sysTask != NULL);
    return sysTask;
}
