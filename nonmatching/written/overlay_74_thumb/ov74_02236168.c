#include "global.h"

typedef void (*UnkFn_ov74_0223E2FC)(const char *fmt, const char *str, void *self, u32 offset);

typedef struct UnkStruct_ov74_0223E2FC {
    u8 *work;
    UnkFn_ov74_0223E2FC print;
} UnkStruct_ov74_0223E2FC;

extern UnkStruct_ov74_0223E2FC ov74_0223E2FC;
extern const char *const ov74_0223CFE4[];
extern const char ov74_0223D00C[];
extern const char ov74_0223D014[];

void ov74_02236168(int state) {
    int idx;
    if (ov74_0223E2FC.print != NULL) {
        idx = *(int *)(ov74_0223E2FC.work + 0x1150);
        ov74_0223E2FC.print(ov74_0223D00C, ov74_0223CFE4[idx], (void *)ov74_0223E2FC.print, (u32)idx << 2);
    }
    *(int *)(ov74_0223E2FC.work + 0x1150) = state;
    if (ov74_0223E2FC.print != NULL) {
        idx = *(int *)(ov74_0223E2FC.work + 0x1150);
        ov74_0223E2FC.print(ov74_0223D014, ov74_0223CFE4[idx], (void *)ov74_0223E2FC.print, (u32)idx << 2);
    }
}
