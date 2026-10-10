#include "global.h"

void GF_AssertFail(void);

struct UnkNode_ov96_0220472C {
    u32 prev;
    u32 next;
    u32 value;
};

u8 ov96_0220472C(s32 param_1, u32 *param_2, u32 *param_3)
{
    struct UnkNode_ov96_0220472C node[13] = {{0}};
    struct UnkNode_ov96_0220472C *cur;
    struct UnkNode_ov96_0220472C *N;
    u8 n = 0;
    u8 i;
    u32 k;
    u8 count = 0;
    u32 key1;

    node[0].prev = (u32)&node[1];
    node[0].next = (u32)&node[1];

    for (i = 0; i < 12; i++) {
        if ((s32)(i / 3) != param_1) {
            u8 steps = 0;

            N = &node[n + 1];
            N->value = param_2[i];
            N->next = 0;
            N->prev = 0;
            cur = &node[0];
            if (n != 0) {
                u32 key = *(u16 *)((u8 *)N->value + 6);
                int inserted = 0;

                do {
                    cur = (struct UnkNode_ov96_0220472C *)cur->next;
                    if (*(u16 *)((u8 *)cur->value + 6) < key) {
                        struct UnkNode_ov96_0220472C *pv = (struct UnkNode_ov96_0220472C *)cur->prev;
                        pv->next = (u32)N;
                        N->prev = cur->prev;
                        N->next = (u32)cur;
                        cur->prev = (u32)N;
                        inserted = 1;
                        break;
                    }
                    steps++;
                } while (steps < n);
                if (!inserted && steps == n) {
                    cur->next = (u32)N;
                    N->prev = (u32)cur;
                }
            } else {
                node[0].next = (u32)N;
                N->prev = (u32)&node[0];
            }
            n++;
        }
    }

    key1 = *(u16 *)((u8 *)((struct UnkNode_ov96_0220472C *)node[0].next)->value + 6);
    cur = &node[0];
    for (k = 0; k < 9; k++) {
        cur = (struct UnkNode_ov96_0220472C *)cur->next;
        param_3[k] = cur->value;
        if (*(u16 *)((u8 *)param_3[k] + 6) == key1) {
            count++;
        }
    }
    if (count == 0) {
        GF_AssertFail();
    }
    return count;
}
