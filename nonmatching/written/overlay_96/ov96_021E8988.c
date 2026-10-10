#include "global.h"
#include "assert.h"

typedef u32 (*ov96_021E8988_Fn)(u32, u32, u32, u32);

typedef struct UnkStruct_ov96_021E8988_Entry {
    int used;
    int id;
    u8 data[0x28];
    int len;
    void *ptr;
} UnkStruct_ov96_021E8988_Entry;

void ov96_021E8988(u8 *param0, int id, void *src, int len) {
    UnkStruct_ov96_021E8988_Entry *entry = NULL;
    u32 r2 = (u32)param0;
    u32 r3 = len;
    int i;
    u32 table;
    int off;
    u32 result;
    ov96_021E8988_Fn fn;
    ov96_021E8988_Fn fn2;

    for (i = 0; i < 8; i++) {
        UnkStruct_ov96_021E8988_Entry *e = (UnkStruct_ov96_021E8988_Entry *)(param0 + i * 0x38);
        r2 = (u32)e;
        if (e->used == 0) {
            entry = e;
            break;
        }
    }
    if (entry == NULL) {
        GF_AssertFail();
        __asm__ volatile("str r2, [%0]\n\tstr r3, [%1]" : : "l"(&r2), "l"(&r3) : "r2", "r3", "memory");
    }
    off = (id - 0x16) * 0xc;
    table = *(u32 *)(param0 + 0x1c0);
    fn = *(ov96_021E8988_Fn *)(table + off + 4);
    result = fn((u32)fn, id - 0x16, r2, r3);
    if (result != 0xFFFF && result != (u32)len) {
        GF_AssertFail();
    }
    table = *(u32 *)(param0 + 0x1c0);
    fn2 = *(ov96_021E8988_Fn *)(table + off + 8);
    if (fn2 != NULL) {
        void *buf = (void *)fn2(0, *(u32 *)(param0 + 0x1c8), len, (u32)fn2);
        if (len > 0) {
            memcpy(buf, src, len);
        }
        entry->ptr = buf;
    } else {
        entry->ptr = src;
    }
    entry->id = id - 0x16;
    entry->len = len;
    entry->used = 1;
}
