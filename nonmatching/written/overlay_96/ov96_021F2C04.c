#include "global.h"
#include "sys_task_api.h"
#include "unk_02005D10.h"

void ov96_021F31F0(void *a0, u8 a1);
void ov96_021F3298(void *a0, u8 a1);

void ov96_021F2C04(SysTask *task, u8 *param1) {
    u16 frame;
    u16 blend;

    switch (param1[1]) {
    case 0:
        *(u16 *)(param1 + 0x18) = *(u16 *)(param1 + 0x18) + 1;
        frame = *(u16 *)(param1 + 0x18);
        if (frame > 5) {
            param1[1] = param1[1] + 1;
            return;
        }
        blend = (12 * (u8)frame) / 5;
        G2x_SetBlendAlpha_(0x04000050, 0, 1, 12 - blend, blend + 4);
        break;
    case 1:
        ov96_021F31F0(*(void **)(param1 + 0x20), *(u16 *)(param1 + 0x1e));
        ov96_021F3298(*(void **)(param1 + 0x20), *(u16 *)(param1 + 0x1c));
        *(u16 *)(param1 + 0x18) = 0;
        param1[1] = param1[1] + 1;
        PlaySE(0x89F);
        break;
    case 2:
        *(u16 *)(param1 + 0x18) = *(u16 *)(param1 + 0x18) + 1;
        frame = *(u16 *)(param1 + 0x18);
        if (frame > 5) {
            *(u32 *)(param1 + 0xc) = 0;
            *(u16 *)(param1 + 0x18) = 0;
            param1[1] = 0;
            SysTask_Destroy(task);
            return;
        }
        blend = (12 * (u8)frame) / 5;
        G2x_SetBlendAlpha_(0x04000050, 0, 1, blend, 0x10 - blend);
        break;
    }
}
