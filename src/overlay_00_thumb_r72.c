#include <vct.h>

#include "global.h"

typedef struct Ov00VoiceChat {
    u8 filler_0000[0x1A54];
    VCTSession *session;
} Ov00VoiceChat;

typedef struct Ov00_0221A684 {
    u8 filler_0[4];
    Ov00VoiceChat *voiceChat;
} Ov00_0221A684;

extern Ov00_0221A684 _0221A684;

BOOL ov00_021E74A8(u8 aid) {
    VCTSession *session = _0221A684.voiceChat->session;
    int result;

    if (session == NULL) {
        session = VCT_CreateSession(aid);
        if (session == NULL) {
            return FALSE;
        }
        result = VCT_Request(session, VCT_REQUEST_INVITE);
    } else {
        result = VCT_Request(session, VCT_REQUEST_INVITE);
    }
    if (result != VCT_ERROR_NONE) {
        VCT_DeleteSession(session);
        _0221A684.voiceChat->session = NULL;
        return FALSE;
    }
    _0221A684.voiceChat->session = session;
    return TRUE;
}
