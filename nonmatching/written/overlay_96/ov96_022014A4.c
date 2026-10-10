typedef unsigned char byte;
typedef unsigned short ushort;
typedef unsigned int uint;

typedef struct UnkStruct_ov96_022014A4_Node {
    struct UnkStruct_ov96_022014A4_Node *prev; /* +0 */
    struct UnkStruct_ov96_022014A4_Node *next; /* +4 */
    int *ptr;                                  /* +8 */
} UnkStruct_ov96_022014A4_Node;

void GF_AssertFail(void);

uint ov96_022014A4(int *arr, uint *out)
{
    UnkStruct_ov96_022014A4_Node nodes[17];
    UnkStruct_ov96_022014A4_Node *head;
    UnkStruct_ov96_022014A4_Node *n;
    UnkStruct_ov96_022014A4_Node *cur;
    UnkStruct_ov96_022014A4_Node *last;
    uint i;
    uint j;
    uint k;
    uint count;
    int key;
    int firstKey;

    head = &nodes[0];
    head->prev = &nodes[1];
    head->next = &nodes[1];
    head->ptr = 0;
    count = 0;

    for (i = 0; i < 16; i++) {
        n = &nodes[i + 1];
        n->ptr = (int *)arr[i];
        n->next = 0;
        n->prev = 0;
        j = 0;
        cur = head;
        if (i > 0) {
            key = *(short *)((byte *)n->ptr + 0x10);
            do {
                cur = cur->next;
                if (!(*(short *)((byte *)cur->ptr + 0x10) < key)) {
                    j = j + 1 & 0xff;
                } else {
                    n->prev = cur->prev;
                    cur->prev->next = n;
                    n->next = cur;
                    cur->prev = n;
                    break;
                }
            } while (j < i);
        }
        last = cur;
        if (j == i) {
            last->next = n;
            n->prev = last;
        }
    }

    cur = head->next;
    firstKey = *(short *)((byte *)cur->ptr + 0x10);
    cur = head;
    for (k = 0; k < 16; k++) {
        cur = cur->next;
        out[k] = (uint)cur->ptr;
        key = *(short *)((byte *)out[k] + 0x10);
        if (firstKey == key) {
            count = (count + 1) & 0xff;
        }
    }
    if (count == 0) {
        GF_AssertFail();
    }
    return count;
}
