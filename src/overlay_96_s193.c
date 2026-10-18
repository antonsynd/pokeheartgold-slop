#include "global.h"

#include "sys_task_api.h"

typedef struct Ov96Runner {
    void *obj;
    u8 filler_04[0x24];
    int unk28;
    u8 filler_2C[0x18];
} Ov96Runner;

typedef struct Ov96_021EAA24 {
    u8 filler_00[4];
    int count;
    int id;
    int done;
    u8 filler_10[4];
    void *unk14;
    u8 filler_18[4];
    Ov96Runner runners[4];
} Ov96_021EAA24;

BOOL ov96_021E8B88(void *a0);
void *ov96_021E8B8C(void *a0, u8 index);
void ov96_021EABA8(Ov96Runner *runner, int id);
int ov96_021E90FC(void *obj);

void ov96_021EAA24(SysTask *task, Ov96_021EAA24 *a1) {
    int i;
    int id;

    if (ov96_021E8B88(a1->unk14)) {
        id = a1->id;
        for (i = 0; i < a1->count; i++) {
            a1->runners[i].obj = ov96_021E8B8C(a1->unk14, i);
            ov96_021EABA8(&a1->runners[i], id);
            id++;
            a1->runners[i].unk28 = ov96_021E90FC(a1->runners[i].obj);
        }
        a1->done = TRUE;
        SysTask_Destroy(task);
    }
}
