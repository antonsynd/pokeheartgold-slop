#include "global.h"
#include "assert.h"

typedef struct UnkStruct_ov96_021E93B4_Item {
    int id;
    u8 filler_04[5];
    u8 rank;
    u8 filler_0A[2];
    int key;
    u8 filler_10[8];
} UnkStruct_ov96_021E93B4_Item;

// A list node. The original keeps the nodes in its stack frame (0xc bytes each, the head first, at sp + 8) and links
// them by address; the addresses end up in memory when a link is NULL or wild, so the links here are the original's
// stack addresses, derived from this function's entry stack pointer, and NODE() maps them onto the local array.
typedef struct UnkStruct_ov96_021E93B4_Node {
    u32 prev;
    u32 next;
    UnkStruct_ov96_021E93B4_Item *item;
} UnkStruct_ov96_021E93B4_Node;

#define NODE(v) ((UnkStruct_ov96_021E93B4_Node *)((u32)((v) - vbase) < sizeof(nodes) ? (u8 *)nodes + ((v) - vbase) : (u8 *)(v)))
#define VNODE(k) (vbase + (k) * 0xc)

void ov96_021E93B4(u8 *param0, int mode) {
    UnkStruct_ov96_021E93B4_Node nodes[14];
    u32 vbase = (u32)__builtin_frame_address(0) + 8 - 0xb0;
    int sortMode;
    int count;
    int i;
    int j;
    UnkStruct_ov96_021E93B4_Item *ip;

    NODE(VNODE(0))->prev = VNODE(1);
    NODE(VNODE(0))->next = VNODE(1);
    NODE(VNODE(0))->item = NULL;
    if (mode == 0) {
        sortMode = 1;
    } else if (mode == 1) {
        sortMode = 1;
    } else if (mode == 2) {
        sortMode = 2;
    } else {
        GF_AssertFail();
    }
    *(int *)(param0 + 0xc) = sortMode;
    count = *(int *)param0;
    ip = (UnkStruct_ov96_021E93B4_Item *)(param0 + 0x24);
    for (i = 0; i < count; i++) {
        u32 node = VNODE(i + 1);
        u32 cur = VNODE(0);

        NODE(node)->item = ip;
        NODE(node)->next = 0;
        NODE(node)->prev = 0;
        j = 0;
        if (i > 0) {
            do {
                UnkStruct_ov96_021E93B4_Item *newItem;
                UnkStruct_ov96_021E93B4_Item *curItem;

                cur = NODE(cur)->next;
                newItem = NODE(node)->item;
                curItem = NODE(cur)->item;
                if (sortMode == 1) {
                    if (curItem->key < newItem->key) {
                        NODE(NODE(cur)->prev)->next = node;
                        NODE(node)->prev = NODE(cur)->prev;
                        NODE(node)->next = cur;
                        NODE(cur)->prev = node;
                        break;
                    }
                } else {
                    if (curItem->key > newItem->key) {
                        NODE(NODE(cur)->prev)->next = node;
                        NODE(node)->prev = NODE(cur)->prev;
                        NODE(node)->next = cur;
                        NODE(cur)->prev = node;
                        break;
                    }
                }
                if (curItem->key == newItem->key) {
                    if (curItem->id > newItem->id) {
                        NODE(NODE(cur)->prev)->next = node;
                        NODE(node)->prev = NODE(cur)->prev;
                        NODE(node)->next = cur;
                        NODE(cur)->prev = node;
                    }
                }
                j++;
            } while (j < i);
        }
        if (j == i) {
            NODE(cur)->next = node;
            NODE(node)->prev = cur;
        }
        ip = (UnkStruct_ov96_021E93B4_Item *)((u8 *)ip + 0x18);
        count = *(int *)param0;
    }
    {
        int lastKey = -1;
        int tie = 0;
        int rank = -1;
        int k = 0;
        u32 n = VNODE(0);
        u32 *outPtr = (u32 *)(param0 + 0x144);

        if (count > 0) {
            do {
                int key;
                n = NODE(n)->next;
                *outPtr = (u32)NODE(n)->item;
                key = NODE(n)->item->key;
                if (lastKey == key) {
                    tie = 1;
                } else {
                    lastKey = key;
                    if (tie == 0) {
                        rank++;
                    } else {
                        rank = k;
                        tie = 0;
                    }
                }
                k++;
                ((UnkStruct_ov96_021E93B4_Item *)*outPtr)->rank = rank;
                outPtr++;
            } while (k < *(int *)param0);
        }
    }
}
