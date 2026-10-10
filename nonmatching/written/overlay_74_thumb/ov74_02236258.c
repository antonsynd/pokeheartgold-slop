#include "global.h"

extern u16 WM_GetAllowedChannel(void);
extern u32 WM_StartScan(void (*callback)(void *), void *param);
extern void ov74_022361B8(int errCode);
extern void ov74_02236354(void *arg);

typedef struct {
    u8 filler_00[0xF00];
    u8 scanBuffer[0xC0];
    void *scanBufferPtr;
    u16 channel;
    u16 maxChannelTime;
    u8 bssid[6];
    u8 filler_FCE[0x1150 - 0xFCE];
    s32 state;
    u16 filler_1154;
    u16 filler_1156;
    u16 mode;
    u8 filler_115A[0x1170 - 0x115A];
    u8 targetBssid[6];
    u16 channelIndex;
} UnkStruct_ov74_02236258;

extern UnkStruct_ov74_02236258 *ov74_0223E2FC;

BOOL ov74_02236258(void) {
    u32 err;
    u16 allowed;

    if (ov74_0223E2FC->state != 2) {
        OS_Terminate();
    }

    allowed = WM_GetAllowedChannel();

    if (allowed == 0x8000) {
        ov74_022361B8(3);
        return FALSE;
    }

    if (allowed == 0) {
        ov74_022361B8(0x16);
        return FALSE;
    }

    if (ov74_0223E2FC->channelIndex >= 0x10) {
        int index = ov74_0223E2FC->channelIndex - 0x10;
        int i;

        for (i = 0; i < 13; i++) {
            index = (index + 1) % 13;
            if ((1 << index) & allowed) {
                break;
            }
        }

        ov74_0223E2FC->channelIndex = 0x10 + index;
        ov74_0223E2FC->channel = index + 1;
    } else {
        ov74_0223E2FC->channel = ov74_0223E2FC->channelIndex;
    }

    ov74_0223E2FC->maxChannelTime = 0xDC;
    ov74_0223E2FC->scanBufferPtr = ov74_0223E2FC->scanBuffer;

    if (ov74_0223E2FC->mode == 3) {
        int i;
        for (i = 0; i < 6; i++) {
            ov74_0223E2FC->bssid[i] = ov74_0223E2FC->targetBssid[i];
        }
    }

    err = WM_StartScan(ov74_02236354, &ov74_0223E2FC->scanBufferPtr);
    if (err != 2) {
        ov74_022361B8(err);
        return FALSE;
    }
    return TRUE;
}
