#include "global.h"

#include "heap.h"
#include "sprite_system.h"
#include "sys_task_api.h"
#include "unk_02005D10.h"

extern const u32 ov85_021EA528[4];

void ov85_021E815C(SysTask *param0, u8 *param1) {
    /* sp holds a copy of the 4-word table; param1+0xc is a signed index checked only against the upper bound */
    u32 table[4];
    u8 *entrySp = (u8 *)__builtin_frame_address(0) + 8;
    int idx;
    int state = *(int *)(param1 + 0);

    if (state == 0) {
        if (*(int *)(param1 + 0xc) < 4) {
            int cnt;

            table[0] = ov85_021EA528[0];
            table[1] = ov85_021EA528[1];
            table[2] = ov85_021EA528[2];
            table[3] = ov85_021EA528[3];
            cnt = *(int *)(param1 + 4) - 1;
            *(int *)(param1 + 4) = cnt;
            if (cnt <= 0) {
                u32 snd;
                u8 *at;

                *(int *)(param1 + 4) = 30;
                idx = *(int *)(param1 + 0xc);
                at = entrySp - 0x20 + idx * 4;
                if (idx >= 0 && idx < 4) {
                    snd = table[idx];
                } else if (at < entrySp && at >= entrySp - 0x1000) {
                    snd = 0;
                } else {
                    snd = *(u32 *)at;
                }
                PlaySE((u16)snd);
                *(int *)(param1 + 0xc) = *(int *)(param1 + 0xc) + 1;
            }
        }
        ManagedSprite_TickNFrames(*(ManagedSprite **)(param1 + 0x14), 0x1800);
        if (ManagedSprite_IsAnimated(*(ManagedSprite **)(param1 + 0x14)) == 0) {
            *(int *)param1 = *(int *)param1 + 1;
        }
    } else if (state == 1) {
        Sprite_DeleteAndFreeResources(*(ManagedSprite **)(param1 + 0x14));
        Heap_Free(param1);
        SysTask_Destroy(param0);
    }
}
