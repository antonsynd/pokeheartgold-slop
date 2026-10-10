#include "global.h"

void GF_AssertFail(void);

struct UnkNode_ov96_02208FF0 {
    u32 prev;
    u32 next;
    u32 value;
};

u8 ov96_02208FF0(u32 *param_1, u32 *param_2)
{
    struct UnkNode_ov96_02208FF0 node[49] = {{0}};
    struct UnkNode_ov96_02208FF0 *cur;
    struct UnkNode_ov96_02208FF0 *N;
    u8 count = 0;
    u8 i;
    u32 k;
    s32 key1;

    node[0].prev = (u32)&node[1];
    node[0].next = (u32)&node[1];

    for (i = 0; i < 48; i++) {
        u8 steps = 0;

        N = &node[i + 1];
        N->value = param_1[i];
        N->next = 0;
        N->prev = 0;
        cur = &node[0];
        if (i != 0) {
            s32 key = *(s16 *)((u8 *)N->value + 0x10);
            int inserted = 0;

            do {
                cur = (struct UnkNode_ov96_02208FF0 *)cur->next;
                if (*(s16 *)((u8 *)cur->value + 0x10) < key) {
                    struct UnkNode_ov96_02208FF0 *pv = (struct UnkNode_ov96_02208FF0 *)cur->prev;
                    pv->next = (u32)N;
                    N->prev = cur->prev;
                    N->next = (u32)cur;
                    cur->prev = (u32)N;
                    inserted = 1;
                    break;
                }
                steps++;
            } while (steps < i);
            if (!inserted && steps == i) {
                cur->next = (u32)N;
                N->prev = (u32)cur;
            }
        } else {
            node[0].next = (u32)N;
            N->prev = (u32)&node[0];
        }
    }

    key1 = *(s16 *)((u8 *)((struct UnkNode_ov96_02208FF0 *)node[0].next)->value + 0x10);
    cur = &node[0];
    for (k = 0; k < 48; k++) {
        cur = (struct UnkNode_ov96_02208FF0 *)cur->next;
        param_2[k] = cur->value;
        if (*(s16 *)((u8 *)param_2[k] + 0x10) == key1) {
            count++;
        }
    }
    if (count == 0) {
        GF_AssertFail();
    }
    return count;
}
