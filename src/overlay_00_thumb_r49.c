#include "global.h"

#include "unk_02037C94.h"

typedef BOOL (*Ov00AcceptCallback)(int index);

typedef struct Ov00Context {
    u8 filler_0000[0xFBC];
    Ov00AcceptCallback acceptCallback;
    u8 filler_0FC0[0xB0];
    int state;
    u8 filler_1074[0x20];
    int newIndex;
    int pendingIndex;
    u8 filler_109C[4];
    int connecting;
    u8 filler_10A4[0x34];
    u32 connectedBitmap;
    u8 filler_10DC[4];
    u8 refuseAll;
} Ov00Context;

extern Ov00Context *_0221A680;

BOOL sub_02034098(void);
u32 DWC_GetAIDBitmap(void);
int DWC_CloseConnectionHardBitmap(u32 *bitmap);
void ov00_021E6388(int index);

void ov00_021E6ED8(int error, BOOL cancel, BOOL self, BOOL isServer, int index) {
    BOOL refuse = FALSE;

    _0221A680->connecting = 0;
    if (error != 0) {
        return;
    }
    if (cancel == FALSE) {
        sub_0203993C();
        if (sub_02034098() && index == -1) {
            refuse = TRUE;
        }
        if (_0221A680->acceptCallback != NULL && !_0221A680->acceptCallback(index)) {
            refuse = TRUE;
        }
        if (_0221A680->refuseAll || refuse) {
            u32 bitmap = DWC_GetAIDBitmap() & ~_0221A680->connectedBitmap;
            u32 all = DWC_GetAIDBitmap();

            if (bitmap != 0) {
                DWC_CloseConnectionHardBitmap(&bitmap);
                if ((bitmap ^ all) == 1) {
                    _0221A680->state = 6;
                }
                return;
            }
        }
        _0221A680->newIndex = index;
        _0221A680->connectedBitmap = DWC_GetAIDBitmap();
        if (_0221A680->connectedBitmap == 1) {
            _0221A680->state = 6;
            return;
        }
        ov00_021E6388(index);
    } else if (self == FALSE) {
        _0221A680->pendingIndex = -1;
    }
}
