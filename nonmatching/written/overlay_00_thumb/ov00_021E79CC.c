#include "global.h"

extern void ov00_021E6A4C(void);
extern int VCT_Request(void *session, int request);

typedef struct {
    s32 timeToProcess;
    u8 *manager;
} UnkStruct_ov00_021E79CC;

extern UnkStruct_ov00_021E79CC _0221A684;

#define SESSION(m) (*(void **)((m) + 0x1A54))
#define STATE(m)   (*(u32 *)((m) + 0x19EC))

void ov00_021E79CC(void) {
    u8 *m = _0221A684.manager;

    if (SESSION(m) == NULL || STATE(m) == 0) {
        ov00_021E6A4C();
        return;
    }

    if (STATE(m) == 1) {
        if (VCT_Request(SESSION(m), 2) != 0) {
            ov00_021E6A4C();
            return;
        }
    }

    if (VCT_Request(SESSION(_0221A684.manager), 1) != 0) {
        ov00_021E6A4C();
    }
}
