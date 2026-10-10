#include "global.h"
#include "assert.h"

typedef u32 (*ov96_021E8914_Fn)(u32, u32, u32, u32);

typedef struct UnkStruct_ov96_021E8914_Entry {
    int used;
    int id;
    u8 data[0x28];
    int len;
    void *ptr;
} UnkStruct_ov96_021E8914_Entry;

void ov96_021E8914(u8 *param0, int id, void *src, int len) {
    UnkStruct_ov96_021E8914_Entry *entry = NULL;
    u32 r3 = len;
    int i;
    u32 table;
    ov96_021E8914_Fn fn;

    for (i = 0; i < 8; i++) {
        UnkStruct_ov96_021E8914_Entry *e = (UnkStruct_ov96_021E8914_Entry *)(param0 + i * 0x38);
        if (e->used == 0) {
            entry = e;
            break;
        }
    }
    if (entry == NULL) {
        GF_AssertFail();
        __asm__ volatile("movs %0, r3" : "=l"(r3) : : "cc");
    }
    table = *(u32 *)(param0 + 0x1c0);
    fn = *(ov96_021E8914_Fn *)(table + (id - 0x16) * 0xc + 4);
    if (fn != NULL) {
        if (fn((u32)fn, id - 0x16, table, r3) != (u32)len) {
            GF_AssertFail();
        }
    }
    if (len > 0x26) {
        GF_AssertFail();
    }
    entry->id = id - 0x16;
    if (len > 0) {
        memcpy(entry->data, src, len);
    }
    entry->len = len;
    entry->used = 1;
}
