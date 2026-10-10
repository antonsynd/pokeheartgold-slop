#include "global.h"

typedef struct UnkStruct_ov96_021F3B38_Node {
    struct UnkStruct_ov96_021F3B38_Node *prev;
    struct UnkStruct_ov96_021F3B38_Node *next;
    u8 *obj;
} UnkStruct_ov96_021F3B38_Node;

#define KEY(p) (*(s32 *)((p) + 0x18))

// Insertion-sorts the objects by key (descending) through a linked list, writes them to out and returns how many
// share the top key.
u8 ov96_021F3B38(u32 count, u8 **objs, u8 **out) {
    UnkStruct_ov96_021F3B38_Node nodes[256];
    UnkStruct_ov96_021F3B38_Node head;
    UnkStruct_ov96_021F3B38_Node *node;
    UnkStruct_ov96_021F3B38_Node *cur;
    u8 best;
    u8 i;
    u8 j;
    s32 key;
    s32 topKey;

    best = 0;
    head.prev = &nodes[0];
    head.next = &nodes[0];
    head.obj = NULL;
    for (i = 0; i < count; i++) {
        node = &nodes[i];
        node->obj = objs[i];
        node->next = NULL;
        node->prev = NULL;
        cur = &head;
        j = 0;
        if (i != 0) {
            key = KEY(node->obj);
            do {
                cur = cur->next;
                if (KEY(cur->obj) < key) {
                    cur->prev->next = node;
                    node->prev = cur->prev;
                    node->next = cur;
                    cur->prev = node;
                    break;
                }
                j = j + 1;
            } while (j < i);
        }
        if (j == i) {
            cur->next = node;
            node->prev = cur;
        }
    }
    topKey = KEY(head.next->obj);
    cur = &head;
    for (i = 0; i < count; i++) {
        cur = cur->next;
        out[i] = cur->obj;
        if (topKey == KEY(out[i])) {
            best = best + 1;
        }
    }
    if (best == 0) {
        GF_AssertFail();
    }
    return best;
}
