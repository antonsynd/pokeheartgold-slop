#include "global.h"
#include "heap.h"
#include "unk_02097268.h"

typedef struct UnkStruct_ov108_021EAD08 {
    u8 count;
    u8 pad[3];
    const u8 *list;
} UnkStruct_ov108_021EAD08;

extern const UnkStruct_ov108_021EAD08 ov108_021EAD08[];
extern const u8 ov108_021EAD28[];
extern u8 ov108_021EA700(int width, int height);

u8 *ov108_021EA63C(u32 param0, int param1, int gender, u8 *outCount, enum HeapID heapID) {
    u8 count = 0;
    u32 mask = 0;
    const u8 *row = &ov108_021EAD28[(param0 % 10) * 4];
    int i;

    for (i = 0; i < param1; i++) {
        const UnkStruct_ov108_021EAD08 *entry = &ov108_021EAD08[row[i]];
        int n = entry->count;
        if (n > 0) {
            const u8 *p = entry->list;
            int j = 0;
            do {
                u8 s = *p;
                mask |= (s < 32) ? (1u << s) : 0u;
                count = (u8)(count + 1);
                p++;
                j++;
            } while (j < n);
        }
    }

    u8 *buf = Heap_Alloc(heapID, count * 5);
    MI_CpuFill8(buf, 0, count * 5);

    u8 k = 0;
    for (i = 0; i < 24; i++) {
        if (mask & 1) {
            u8 *e = buf + k * 5;
            e[0] = (u8)i;
            GetSafariObjectConfig((SafariObjectConfig *)(e + 2), i, gender);
            u8 b = e[3];
            e[1] = ov108_021EA700((b >> 1) & 7, (b >> 4) & 7);
            k = (u8)(k + 1);
        }
        mask >>= 1;
    }
    *outCount = k;
    return buf;
}
