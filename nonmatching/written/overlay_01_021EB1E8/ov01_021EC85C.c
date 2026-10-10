#include "global.h"

typedef struct UnkStruct_ov01_021EC85C_Node UnkStruct_ov01_021EC85C_Node;

struct UnkStruct_ov01_021EC85C_Node {
    u8 filler_00[8];
    void *unk_08;
    u8 filler_0C[0x34 - 0x0c];
    UnkStruct_ov01_021EC85C_Node *next;
};

typedef struct UnkStruct_ov01_021EC85C {
    u8 filler_00[0x0c];
    UnkStruct_ov01_021EC85C_Node head;
} UnkStruct_ov01_021EC85C;

/* The first callback is called with r0 = system, r1 = r2 = count, r3 = param3. */
typedef void (*UnkFunc_ov01_021EC85C_1)(UnkStruct_ov01_021EC85C *system, int count, int count2, int param3);
/* The per-node callback gets r1 as the previous call (or loop counter) left it. */
typedef void (*UnkFunc_ov01_021EC85C_2)(UnkStruct_ov01_021EC85C_Node *node, u32 r1);

void ov01_021EC85C(UnkStruct_ov01_021EC85C *param0, UnkFunc_ov01_021EC85C_1 param1, int param2, int param3, int param4, UnkFunc_ov01_021EC85C_2 param5) {
    int i, j;
    int repeats;
    u32 r1;
    UnkStruct_ov01_021EC85C_Node *node;
    UnkStruct_ov01_021EC85C_Node *next;

    param1(param0, param2, param2, param3);
    __asm__ volatile("movs %0, r1" : "=l"(r1) : : "cc");

    repeats = 0;
    node = param0->head.next;
    next = node->next;

    for (i = 0; i < param2; i++) {
        if (node == &param0->head) {
            break;
        }

        for (j = 0; j < repeats; j++) {
            param5(node, r1);
            __asm__ volatile("movs %0, r1" : "=l"(r1) : : "cc");

            if (node->unk_08 == NULL) {
                break;
            }
        }

        node = next;
        next = node->next;

        if (i >= param3) {
            if ((i % param3) == 0) {
                repeats += param4;
            }
        }

        r1 = i + 1;
    }
}
