#include "global.h"

typedef struct UnkStruct_ov13_02222998 {
    u32 fd;
    u32 events;
} UnkStruct_ov13_02222998;

int SOC_Poll(void *fds, u32 nfds, s64 timeout);

int ov13_02222998(u32 unused0, const UnkStruct_ov13_02222998 *fds, u32 unused2, u32 unused3, const s32 *timeout) {
    UnkStruct_ov13_02222998 local = *fds;
    u64 t = (u64)((s64)timeout[0] * 0x01FF6210) >> 6;

    t += (u64)((s64)timeout[1] * 0x01FF6210) >> 6;
    return SOC_Poll(&local, 1, (s64)t);
}
