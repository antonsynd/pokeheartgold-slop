#include "global.h"

#include "sys_task_api.h"

typedef struct Ov90_0225BD84 {
    u8 filler_000[0xA];
    s16 unkA;
    u8 filler_00C[0xC0];
    u8 rows[0xC0];
    SysTask *task;
} Ov90_0225BD84;

void ov90_0225BDE4(SysTask *task, void *data);

void ov90_0225BD84(Ov90_0225BD84 *a0) {
    int i;

    memset(a0->rows, 0, sizeof(a0->rows));
    for (i = 0; i < 23 - a0->unkA; i++) {
        a0->rows[0x49 + i] = 1;
        a0->rows[0x79 - i] = 1;
    }
    if (a0->task == NULL) {
        a0->task = SysTask_CreateOnVWaitQueue(ov90_0225BDE4, a0, 0);
    }
}
