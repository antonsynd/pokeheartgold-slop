#include "global.h"

#include "sys_task_api.h"

typedef struct Ov96Effect {
    BOOL active;
    int unk04;
    void *obj;
    SysTask *task;
} Ov96Effect;

typedef struct Ov96_021E64F8 {
    u8 filler_000[0x284];
    void *unk284;
    u8 filler_288[0xAA8];
    u32 effectCount;
    Ov96Effect effects[3];
} Ov96_021E64F8;

void *ov96_021EA7A4(int a0, int a1, int a2, void *a3);
void ov96_021E81D8(SysTask *task, void *data);

void *ov96_021E64F8(Ov96_021E64F8 *a0, int a1, int a2, int a3, int a4) {
    Ov96Effect *effect;

    if (a0->effectCount >= 3) {
        GF_ASSERT(FALSE);
        return NULL;
    }
    effect = &a0->effects[(u8)a0->effectCount];
    effect->active = TRUE;
    effect->unk04 = a1;
    effect->obj = ov96_021EA7A4(a2, a3, a4, a0->unk284);
    effect->task = SysTask_CreateOnMainQueue(ov96_021E81D8, effect, 1);
    a0->effectCount++;
    return effect->obj;
}
