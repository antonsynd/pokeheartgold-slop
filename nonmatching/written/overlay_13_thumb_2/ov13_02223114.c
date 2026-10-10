#include "global.h"

typedef struct UnkStruct_ov13_02223114_Msg {
    s16 type;
    s16 result;
} UnkStruct_ov13_02223114_Msg;

typedef struct UnkStruct_ov13_0224DEE0 {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
    s32 state;
    void (*callback)(u32 code, u32 arg);
    u32 unk_20;
    u32 unk_24;
} UnkStruct_ov13_0224DEE0;

extern UnkStruct_ov13_0224DEE0 ov13_0224DEE0;

int WCM_SearchAsync(u32 a, u32 b, u32 c);
int WCM_ConnectAsync(u32 a, u32 b, u32 c);
int WCM_CleanupAsync(void);
void WCM_Finish(void);

static void Notify(u32 code) {
    if (ov13_0224DEE0.callback != NULL) {
        ov13_0224DEE0.callback(code, 0);
    }
}

static void FailTo3(void) {
    ov13_0224DEE0.state = 3;
    Notify(2);
}

void ov13_02223114(UnkStruct_ov13_02223114_Msg *msg) {
    UnkStruct_ov13_0224DEE0 *s = &ov13_0224DEE0;

    if (msg == NULL) {
        return;
    }
    switch ((u32)msg->type) {
    case 1:
        if (msg->result != 0) {
            s->state = 1;
            Notify(2);
        } else if (s->state == 4) {
            s->state = 3;
            Notify(6);
        } else if (s->state == 6) {
            if (WCM_SearchAsync(s->unk_10, s->unk_14, s->unk_04) != 3) {
                FailTo3();
            }
        } else if (s->state == 8) {
            if (WCM_ConnectAsync(s->unk_20, s->unk_24, s->unk_0C) != 3) {
                FailTo3();
            }
        }
        break;
    case 2:
        if (msg->result != 0) {
            s->state = 3;
            Notify(2);
        } else if (s->state == 2) {
            WCM_Finish();
            s->state = 0;
            Notify(0x14);
        }
        break;
    case 3:
        if (msg->result != 0) {
            s->state = 3;
            Notify(9);
        } else if (s->state == 6) {
            s->state = 5;
            Notify(8);
        }
        break;
    case 4:
        if (msg->result != 0) {
            s->state = 3;
            Notify(0xb);
        } else if (s->state == 4) {
            s->state = 3;
            Notify(0xa);
        } else if (s->state == 6) {
            if (WCM_SearchAsync(s->unk_10, s->unk_14, s->unk_04) != 3) {
                FailTo3();
            }
        } else if (s->state == 2) {
            if (WCM_CleanupAsync() != 3) {
                FailTo3();
            }
        } else if (s->state == 8) {
            if (WCM_ConnectAsync(s->unk_20, s->unk_24, s->unk_0C) != 3) {
                FailTo3();
            }
        }
        break;
    case 5:
        if (msg->result != 0) {
            s->state = 3;
            Notify(0xd);
        } else if (s->state == 8) {
            s->state = 7;
            Notify(0xc);
        }
        break;
    case 6:
        if (msg->result != 0) {
            s->state = 3;
            Notify(0xf);
        } else if (s->state == 4) {
            s->state = 3;
            Notify(0xe);
        } else if (s->state == 6) {
            if (WCM_SearchAsync(s->unk_10, s->unk_14, s->unk_04) != 3) {
                FailTo3();
            }
        } else if (s->state == 2) {
            if (WCM_CleanupAsync() != 3) {
                FailTo3();
            }
        } else if (s->state == 8) {
            if (WCM_ConnectAsync(s->unk_20, s->unk_24, s->unk_0C) != 3) {
                FailTo3();
            }
        } else {
            s->state = 3;
        }
        break;
    case 7:
        if (s->state == 5) {
            Notify(5);
        }
        break;
    default:
        Notify(1);
        break;
    }
}
