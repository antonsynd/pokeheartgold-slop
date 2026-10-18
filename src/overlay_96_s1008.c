#include "global.h"

#include "sprite_system.h"
#include "sys_task_api.h"

typedef struct Ov96Group {
    u8 filler_00[4];
    void *unk04[4];
    u8 filler_14[8];
    ManagedSprite *sprites[6];
    SysTask *task;
    u32 unk38_0 : 23;
    u32 current : 2;
    u32 unk38_25 : 7;
} Ov96Group;

typedef struct Ov96_0220B8F0 {
    u8 filler_00[0x14];
    Ov96Group groups[3];
} Ov96_0220B8F0;

void ov96_021EAC5C(void *a0, int a1);

void ov96_0220B8F0(Ov96_0220B8F0 *a0) {
    int i, j;

    for (i = 0; i < 3; i++) {
        Ov96Group *group = &a0->groups[i];

        ov96_021EAC5C(group->unk04[group->current], 12);
        if (group->task != NULL) {
            SysTask_Destroy(group->task);
            group->task = NULL;
        }
        for (j = 0; j < 6; j++) {
            ManagedSprite_SetAnimateFlag(group->sprites[j], FALSE);
        }
    }
}
