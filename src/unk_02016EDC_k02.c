#include "global.h"

#include "filesystem.h"
#include "pokepic.h"
#include "sys_task_api.h"
#include "unk_02016EDC.h"

#define NUM_POKEMON_ANIMS 143

typedef struct PokemonAnim {
    Pokepic *sprite;
    SysTask *task;
    void *scriptData;
    u32 *scriptPtr;
    BOOL active;
    int animNum;
    u8 filler_18[4];
    BOOL endAnim;
    BOOL completed;
    u8 filler_24[0x30];
    int startDelay;
    int originalX;
    int originalY;
    int translateX;
    int translateY;
    int offsetX;
    int offsetY;
    int scaleX;
    int scaleY;
    int rotationZ;
    u8 filler_7C[0x150];
    u8 flipSprite;
    u8 waitForTransform;
    u8 yNormalization;
    u8 fadeActive;
} PokemonAnim;

typedef struct PokemonAnimManager {
    PokemonAnim *anims;
    enum HeapID heapID;
    u8 flipSprite;
    u8 animCount;
} PokemonAnimManager;

void sub_020170C4(SysTask *task, void *data);

void sub_02016F40(void *animManager, void *sprite, struct UnkStruct_0207294C *template, u8 index) {
    PokemonAnimManager *manager = animManager;
    int animNum = template->unk_0;
    int startDelay = template->unk_2;

    GF_ASSERT(index < manager->animCount);
    GF_ASSERT(manager->anims[index].active == FALSE);
    MI_CpuClear8(&manager->anims[index], sizeof(PokemonAnim));
    manager->anims[index].active = TRUE;
    manager->anims[index].sprite = sprite;
    if (animNum >= NUM_POKEMON_ANIMS) {
        animNum = 0;
        startDelay = 0;
    }
    manager->anims[index].animNum = animNum;
    if (manager->flipSprite) {
        manager->anims[index].flipSprite = template->unk_4;
    } else {
        manager->anims[index].flipSprite = FALSE;
    }
    manager->anims[index].scriptData = AllocAtEndAndReadWholeNarcMemberByIdPair(NARC_a_0_9_0, manager->anims[index].animNum, manager->heapID);
    manager->anims[index].scriptPtr = manager->anims[index].scriptData;
    manager->anims[index].endAnim = FALSE;
    manager->anims[index].completed = FALSE;
    manager->anims[index].waitForTransform = FALSE;
    manager->anims[index].yNormalization = 28;
    manager->anims[index].fadeActive = FALSE;
    manager->anims[index].task = SysTask_CreateOnMainQueue(sub_020170C4, &manager->anims[index], 0);
    manager->anims[index].startDelay = startDelay;
    manager->anims[index].originalX = Pokepic_GetAttr(sprite, 0);
    manager->anims[index].originalY = Pokepic_GetAttr(sprite, 1);
    manager->anims[index].translateX = 0;
    manager->anims[index].translateY = 0;
    manager->anims[index].offsetX = 0;
    manager->anims[index].offsetY = 0;
    manager->anims[index].scaleX = 0;
    manager->anims[index].scaleY = 0;
    manager->anims[index].rotationZ = 0;
}
