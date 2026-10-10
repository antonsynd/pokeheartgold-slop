typedef unsigned char u8;
typedef unsigned char byte;
typedef unsigned short u16;
typedef unsigned short ushort;
typedef unsigned int u32;
typedef unsigned int uint;

void GF_AssertFail(void);
void *ov96_021E8A20(void *);
void *PokeathlonCourse_GetDataCopyArea(void *);
void ov96_021FB5C8(void *, u32, u32);
int ov96_021FB56C(void *, void *);
int ov96_021FB514(void *, void *);

typedef struct UnkStruct_ov96_021FB400_Node {
    struct UnkStruct_ov96_021FB400_Node *prev; // +0
    struct UnkStruct_ov96_021FB400_Node *next; // +4
    u16 keyA;                                  // +8
    u16 idx;                                   // +0xa
    u16 keyC;                                  // +0xc
    u16 keyD;                                  // +0xe
    u32 flag;                                  // +0x10
} UnkStruct_ov96_021FB400_Node;

/* The asm keeps its 13 nodes at sp+0x18 of a 0x11c-byte frame under {r4-r7, lr}, so they end 0x14 below the entry sp,
   and the node pointers it stores (also through a NULL `next`, to address 4) are those stack addresses. Under the
   check's clang -O0 Thumb build (push {r7, lr}; the spilled parameter at the top of the frame, then this first
   local) the two pad words put the nodes at the same addresses, so those stored values agree. */
typedef struct {
    UnkStruct_ov96_021FB400_Node nodes[13];
    u32 pad[2];
} UnkStruct_ov96_021FB400_Frame;

void ov96_021FB400(void *param_1)
{
    UnkStruct_ov96_021FB400_Frame frame;
    u8 *copyArea;
    u8 *tbl2;
    u8 *pt;
    short *ps;
    UnkStruct_ov96_021FB400_Node *head;
    UnkStruct_ov96_021FB400_Node *n;
    UnkStruct_ov96_021FB400_Node *cur;
    int o;
    int i;
    int g;
    int j;
    int res;
    int k;
    u32 c7;
    u32 c4;
    u32 idxv;
    u8 *area;

    head = &frame.nodes[0];
    copyArea = (u8 *)PokeathlonCourse_GetDataCopyArea(param_1);
    tbl2 = (u8 *)ov96_021E8A20(copyArea + 0x28);
    head->prev = 0;
    head->keyA = 0;
    head->idx = 0;
    head->keyC = 0;
    head->keyD = 0;
    head->flag = 0;
    head->next = &frame.nodes[1];

    area = copyArea + 0x50;
    for (o = 0; o < 4; o++) {
        pt = (u8 *)ov96_021E8A20(area);
        ps = (short *)pt;
        for (i = 0; i < 3; i++) {
            g = 3 * o + i;
            n = &frame.nodes[g + 1];
            n->keyA = (u16)ps[0];
            n->keyC = (u16)ps[5];
            n->idx = (u16)g;
            n->keyD = (u16)ps[8];
            n->flag = 0;
            n->next = 0;
            cur = head;
            j = 0;
            if (g > 0) {
                do {
                    cur = cur->next;
                    if (n->keyD == 0) {
                        res = ov96_021FB56C(n, cur);
                    } else {
                        res = ov96_021FB514(n, cur);
                    }
                    if (res != 0) {
                        break;
                    }
                    j++;
                } while (j < g);
            }
            if (j == g) {
                cur->next = n;
                n->prev = cur;
            }
            ps = ps + 1;
        }
        area = area + 0x28;
    }

    for (k = 0; k < 6; k++) {
        tbl2[0x1c + k] = 0;
    }
    c7 = 0;
    c4 = 1;
    cur = head;
    for (k = 0; k < 12; k++) {
        cur = cur->next;
        if (cur == 0) {
            GF_AssertFail();
        }
        if (cur->flag == 0) {
            c7 = (byte)(c7 + c4);
            c4 = 1;
        } else {
            c4 = (byte)(c4 + 1);
        }
        idxv = (byte)cur->idx;
        ov96_021FB5C8(tbl2, idxv, c7);
    }
}
