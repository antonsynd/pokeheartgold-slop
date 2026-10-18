#include "global.h"

#include "unk_02037C94.h"

typedef struct Ov00Context {
    u8 filler_0000[0x1044];
    u8 aidStates[0x2C];
    int state;
    int matchType;
    int unk1078;
    u8 filler_107C[8];
    int unk1084;
    u8 filler_1088[8];
    int unk1090;
    int targetAid;
    int pendingIndex;
    int unk109C;
    u8 filler_10A0[0x34];
    u16 isServer;
} Ov00Context;

extern Ov00Context *_0221A680;

BOOL sub_02034084(void);
void ov00_021E5E34(void);
void ov00_021E69A8(int a0);
int ov00_021E6690(void);
int ov00_021E6850(void);

int ov00_021E5E54(BOOL failed) {
    switch (_0221A680->state) {
    case 5:
        if (failed) {
            _0221A680->state = 6;
        }
        if (_0221A680->matchType == 2 && _0221A680->targetAid >= 0 && _0221A680->aidStates[_0221A680->targetAid] != 6) {
            _0221A680->state = 10;
        }
        break;
    case 6:
    case 10:
        if (_0221A680->matchType == 0) {
            DWC_CancelMatching();
        } else {
            DWC_CloseAllConnectionsHard();
            ov00_021E5E34();
        }
        break;
    case 7:
        sub_0203993C();
        if (!sub_02034084()) {
            ov00_021E69A8(_0221A680->unk1084);
        }
        if (_0221A680->unk109C) {
            _0221A680->isServer = TRUE;
        } else {
            _0221A680->isServer = FALSE;
        }
        _0221A680->state = 8;
        return 20;
    case 9:
        _0221A680->state = 4;
        _0221A680->unk1078 = 0;
        _0221A680->pendingIndex = -1;
        return 21;
    case 11:
        _0221A680->state = 4;
        _0221A680->unk1078 = 0;
        _0221A680->pendingIndex = -1;
        return 22;
    case 12:
        return ov00_021E6690();
    case 16:
        if (_0221A680->unk1090 == 0) {
            DWC_CloseAllConnectionsHard();
            _0221A680->state = 17;
        }
        break;
    }
    return ov00_021E6850();
}
