#include "global.h"

extern int VCT_AddConferenceClient(u8 clientId);

typedef struct {
    s32 timeToProcess;
    u8 *manager;
} UnkStruct_ov00_021E7AF4;

extern UnkStruct_ov00_021E7AF4 _0221A684;

BOOL ov00_021E7AF4(u32 clientMask, u32 selfId) {
    int i;

    if (_0221A684.manager == NULL || *(u32 *)(_0221A684.manager + 0x19E8) != 3) {
        return FALSE;
    }

    for (i = 0; i < 4; i++) {
        if ((u32)i != selfId && ((1 << i) & clientMask)) {
            if (((u32 *)(_0221A684.manager + 0x19D8))[i] != 1) {
                if (VCT_AddConferenceClient((u8)i) != 0) {
                    return FALSE;
                }
                ((u32 *)(_0221A684.manager + 0x19D8))[i] = 1;
            }
        }
    }

    return TRUE;
}
