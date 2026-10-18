#include "global.h"

typedef struct Ov81_0223EBE4 {
    u8 filler_000[0x12];
    u8 count;
    u8 unk13_0 : 2;
    u8 skipSetup : 1;
    u8 unk13_3 : 5;
    u8 filler_014[0x34C];
    void *objs[4];
} Ov81_0223EBE4;

void *ov81_022412C4(Ov81_0223EBE4 *a0, int index);
void ov81_02242EB8(void *obj, int a1);
void ov81_02242F48(void *obj);
void ov81_02242FB0(void *obj, int a1);
void ov81_02242F94(void *obj, int a1);

void ov81_0223EBE4(Ov81_0223EBE4 *a0) {
    int i;

    for (i = 0; i < a0->count; i++) {
        a0->objs[i] = ov81_022412C4(a0, i);
        ov81_02242EB8(a0->objs[i], 1);
        if (!a0->skipSetup) {
            ov81_02242F48(a0->objs[i]);
            ov81_02242FB0(a0->objs[i], 0);
            ov81_02242F94(a0->objs[i], 0);
        }
    }
}
