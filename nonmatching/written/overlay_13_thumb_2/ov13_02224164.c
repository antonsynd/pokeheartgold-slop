#include "global.h"

typedef struct UnkStruct_ov13_02224164_Entry {
    u32 nameLen;
    u8 name[0x20];
    u32 unk_24;
    u8 bssid[6];
    u16 unk_2E;
} UnkStruct_ov13_02224164_Entry;

typedef struct UnkStruct_ov13_02224164_List {
    u32 count;
    UnkStruct_ov13_02224164_Entry entries[1];
} UnkStruct_ov13_02224164_List;

/* The asm keeps these in the stack frame, in this order, followed directly by the two
 * 0x22-byte name buffers. It terminates the buffers with buf[entry->nameLen] = 0 and nameLen is
 * unchecked, so a bad length can overwrite these slots. The struct reproduces the frame's layout
 * (offsets from the asm's sp). */
typedef struct Frame_ov13_02224164 {
    UnkStruct_ov13_02224164_List *a; /* 0x00 */
    UnkStruct_ov13_02224164_List *b; /* 0x04 */
    u32 *out;                        /* 0x08 */
    u32 idx;                         /* 0x0c */
    u32 cnt;                         /* 0x10 */
    u32 bFlag;                       /* 0x14 */
    u32 aFlag;                       /* 0x18 */
    u32 result;                      /* 0x1c */
    u32 found;                       /* 0x20 */
    u8 *bssidA;                      /* 0x24 */
    u8 name2[0x22];                  /* 0x28 */
    u8 name[0x22];                   /* 0x4a */
} Frame_ov13_02224164;

extern char ov13_02245AC4[];

/* buf[len] = 0 for the buffer at sp+bufOffset of the asm's 0x80-byte frame; entrySp is the sp on entry. */
static void StoreNul(Frame_ov13_02224164 *f, u32 bufOffset, u32 len, u8 *entrySp) {
    u32 off = bufOffset + len;

    if (off < sizeof(Frame_ov13_02224164)) {
        ((u8 *)f)[off] = 0;
    } else {
        *(u8 *)(entrySp - 0x80 + off) = 0;
    }
}

BOOL ov13_02224164(UnkStruct_ov13_02224164_List *a, UnkStruct_ov13_02224164_List *b, u32 *out) {
    Frame_ov13_02224164 f;
    u8 *entrySp = (u8 *)__builtin_frame_address(0) + 8;
    UnkStruct_ov13_02224164_Entry *ea;
    UnkStruct_ov13_02224164_Entry *eb;
    u32 j;
    u32 k;
    u32 len;

    f.a = a;
    f.found = 0;
    f.result = 0;
    f.b = b;
    ea = f.a->entries;
    eb = (UnkStruct_ov13_02224164_Entry *)((u8 *)b + 4);
    f.out = out;
    f.idx = f.found;

    if (f.a->count != 0) {
        do {
            for (k = 0; k < 0x22; k++) {
                f.name[k] = 0;
            }
            memcpy(f.name, ea->name, 0x20);
            j = 0;
            StoreNul(&f, 0x4a, ea->nameLen, entrySp);
            f.cnt = f.b->count;
            if (f.cnt != 0) {
                f.bssidA = ea->bssid;
                len = ea->nameLen;
                do {
                    if (len == 0 || len > 0x20) {
                        break;
                    }
                    if (len == 1 && (ea->name[0] == 0 || ea->name[0] == 0x20)) {
                        break;
                    }
                    if (memcmp(f.name, eb->name, strlen((char *)f.name)) == 0
                        && memcmp(f.bssidA, eb->bssid, 6) == 0
                        && ea->unk_2E != eb->unk_2E
                        && ea->unk_2E == 0) {
                        f.found = 1;
                        break;
                    }
                    j++;
                    eb++;
                } while (j < f.cnt);
            }
            if (f.found != 0) {
                break;
            }
            ea++;
            eb = (UnkStruct_ov13_02224164_Entry *)((u8 *)f.b + 4);
            f.idx = f.idx + 1;
        } while (f.idx < f.a->count);
    }
    if (f.found == 0) {
        for (k = 0; k < 0x22; k++) {
            f.name2[k] = 0;
        }
        f.aFlag = 0;
        f.bFlag = 0;
        ea = (UnkStruct_ov13_02224164_Entry *)((u8 *)f.a + 4);
        eb = (UnkStruct_ov13_02224164_Entry *)((u8 *)f.b + 4);
        j = f.aFlag;
        if (f.b->count != 0) {
            do {
                memcpy(f.name2, eb->name, 0x20);
                StoreNul(&f, 0x28, eb->nameLen, entrySp);
                if (memcmp(f.name2, ov13_02245AC4, strlen(ov13_02245AC4)) == 0 && eb->unk_2E == 0) {
                    f.bFlag = 1;
                    break;
                }
                j++;
                eb++;
            } while (j < f.b->count);
        }
        f.idx = 0;
        if (f.a->count != 0) {
            do {
                memcpy(f.name2, ea->name, 0x20);
                StoreNul(&f, 0x28, ea->nameLen, entrySp);
                len = strlen((char *)f.name2);
                if (len == strlen(ov13_02245AC4)) {
                    if (memcmp(f.name2, ov13_02245AC4, strlen(ov13_02245AC4)) == 0 && ea->unk_2E == 0) {
                        f.aFlag = 1;
                        break;
                    }
                }
                ea++;
                f.idx = f.idx + 1;
            } while (f.idx < f.a->count);
        }
        if (f.aFlag != 0 && f.bFlag == 0) {
            f.found = 1;
        }
    }
    if (f.found != 0) {
        *f.out = f.idx;
        f.result = 1;
    }
    return f.result;
}
