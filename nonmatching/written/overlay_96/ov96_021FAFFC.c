typedef unsigned char undefined;
typedef unsigned char undefined1;
typedef unsigned short undefined2;
typedef unsigned int undefined3;
typedef unsigned int undefined4;
typedef unsigned long long undefined8;
typedef unsigned char byte;
typedef signed char sbyte;
typedef unsigned short ushort;
typedef unsigned short word;
typedef unsigned int uint;
typedef unsigned int dword;
typedef unsigned int ulong;
typedef unsigned long long ulonglong;
typedef unsigned long long qword;
typedef long long longlong;
typedef unsigned char bool;
typedef int code();
typedef void *pointer;
typedef unsigned short wchar16;
#define true 1
#define false 0
#define CONCAT11(a, b) ((unsigned short)(((unsigned)(a) << 8) | (unsigned char)(b)))
#define CONCAT12(a, b) (((unsigned)(unsigned char)(a) << 16) | (unsigned short)(b))
#define CONCAT13(a, b) (((unsigned)(unsigned char)(a) << 24) | ((unsigned)(b) & 0xffffff))
#define CONCAT21(a, b) (((unsigned)(unsigned short)(a) << 8) | (unsigned char)(b))
#define CONCAT22(a, b) (((unsigned)(unsigned short)(a) << 16) | (unsigned short)(b))
#define CONCAT31(a, b) (((unsigned)(a) << 8) | (unsigned char)(b))
#define CONCAT44(a, b) (((unsigned long long)(unsigned)(a) << 32) | (unsigned)(b))
#define SUB41(x, n) ((unsigned char)((unsigned)(x) >> ((n) * 8)))
#define SUB42(x, n) ((unsigned short)((unsigned)(x) >> ((n) * 8)))
#define SUB81(x, n) ((unsigned char)((unsigned long long)(x) >> ((n) * 8)))
#define SUB84(x, n) ((unsigned)((unsigned long long)(x) >> ((n) * 8)))
#define ZEXT14(x) ((unsigned)(unsigned char)(x))
#define ZEXT24(x) ((unsigned)(unsigned short)(x))
#define ZEXT48(x) ((unsigned long long)(unsigned)(x))
#define SEXT14(x) ((int)(signed char)(x))
#define SEXT24(x) ((int)(short)(x))
#define SEXT48(x) ((long long)(int)(x))
#define CARRY4(a, b) ((unsigned)(a) + (unsigned)(b) < (unsigned)(a))
#define SCARRY4(a, b) ((((int)(a) + (int)(b)) < (int)(a)) != ((int)(b) < 0))
#define SBORROW4(a, b) ((((int)(a) - (int)(b)) > (int)(a)) != ((int)(b) < 0))
#define POPCOUNT(x) __builtin_popcount(x)
#define LZCOUNT(x) ((x) ? __builtin_clz(x) : 32)
undefined4 ov96_021FC2B4();
undefined4 ov96_021FC2E0();
undefined4 ov96_021FC28C();
undefined4 ov96_021FC248();

typedef struct UnkStruct_ov96_021FAFFC_Node {
    struct UnkStruct_ov96_021FAFFC_Node *prev; // +0
    struct UnkStruct_ov96_021FAFFC_Node *next; // +4
    ushort key1;                               // +8
    ushort key2;                               // +0xa
} UnkStruct_ov96_021FAFFC_Node;

void ov96_021FAFFC(int param_1, int param_2)
{
    UnkStruct_ov96_021FAFFC_Node nodes[13];
    UnkStruct_ov96_021FAFFC_Node *head = &nodes[0];
    UnkStruct_ov96_021FAFFC_Node *n;
    UnkStruct_ov96_021FAFFC_Node *cur;
    int i;
    int j;
    int k;
    int pos;
    uint key1;
    ushort key2;
    uint packed;
    uint kk;

    head->prev = 0;
    head->next = &nodes[1];
    head->key1 = 0;
    head->key2 = 0;

    for (i = 0; i < 12; i++) {
        n = &nodes[i + 1];
        packed = *(byte *)(param_2 + 0x1c + (i >> 1));
        n->key1 = (ushort)((packed >> (4 * (i & 1))) & 0xf);
        n->key2 = (ushort)i;
        n->next = 0;
        cur = head;
        j = 0;
        if (i > 0) {
            key1 = n->key1;
            key2 = n->key2;
            do {
                cur = cur->next;
                if (cur->key1 > key1) {
                    n->prev = cur->prev;
                    cur->prev->next = n;
                    n->next = cur;
                    cur->prev = n;
                    break;
                }
                if (cur->key1 == key1 && cur->key2 > key2) {
                    n->prev = cur->prev;
                    cur->prev->next = n;
                    n->next = cur;
                    cur->prev = n;
                    break;
                }
                j++;
            } while (j < i);
        }
        if (j == i) {
            cur->next = n;
            n->prev = cur;
        }
    }

    ov96_021FC2B4(*(int *)(param_1 + 0x228), 1);
    cur = head;
    pos = 0x10;
    for (k = 0; k < 12; k++) {
        cur = cur->next;
        kk = (byte)cur->key1;
        if (kk > 8) {
            kk = 8;
        }
        ov96_021FC248(*(int *)(param_1 + 0x228), cur->key2, pos);
        ov96_021FC28C(*(int *)(param_1 + 0x228), cur->key2, kk);
        ov96_021FC2E0(*(int *)(param_1 + 0x228), cur->key2, 1);
        pos += 0x20;
    }
}
