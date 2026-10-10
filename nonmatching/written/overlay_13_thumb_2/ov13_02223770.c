#include "global.h"

typedef struct UnkStruct_ov13_02223770_Msg {
    s16 type;
    s16 result;
} UnkStruct_ov13_02223770_Msg;

typedef struct UnkStruct_ov13_0224DF30 {
    u8 unk_00[0x28];
    u32 unk_28;
    s32 state;
    u8 unk_30[0x14];
    u32 unk_44;
    u32 unk_48;
    u32 unk_4C;
    u8 unk_50[0x8];
    u32 unk_58;
    u32 unk_5C;
    u32 unk_60;
} UnkStruct_ov13_0224DF30;

extern UnkStruct_ov13_0224DF30 ov13_0224DF30;
extern void (*ov13_0224DFB0)(u32 code, u32 arg);

int WCM_SearchAsync(u32 a, u32 b, u32 c);
int WCM_ConnectAsync(u32 a, u32 b, u32 c);
int WCM_CleanupAsync(void);
void WCM_Finish(void);

static void Notify(u32 code) {
    if (ov13_0224DFB0 != NULL) {
        ov13_0224DFB0(code, 0);
    }
}

static void FailTo3(void) {
    ov13_0224DF30.state = 3;
    Notify(2);
}

void ov13_02223770(UnkStruct_ov13_02223770_Msg *msg) {
    UnkStruct_ov13_0224DF30 *s = &ov13_0224DF30;

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
            if (WCM_SearchAsync(s->unk_44, s->unk_48, s->unk_60) != 3) {
                FailTo3();
            }
        } else if (s->state == 8) {
            if (WCM_ConnectAsync(s->unk_4C, s->unk_28, s->unk_58) != 3) {
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
            if (WCM_SearchAsync(s->unk_44, s->unk_48, s->unk_60) != 3) {
                FailTo3();
            }
        } else if (s->state == 2) {
            if (WCM_CleanupAsync() != 3) {
                FailTo3();
            }
        } else if (s->state == 8) {
            if (WCM_ConnectAsync(s->unk_4C, s->unk_28, s->unk_58) != 3) {
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
            if (WCM_SearchAsync(s->unk_44, s->unk_48, s->unk_60) != 3) {
                FailTo3();
            }
        } else if (s->state == 2) {
            if (WCM_CleanupAsync() != 3) {
                FailTo3();
            }
        } else if (s->state == 8) {
            if (WCM_ConnectAsync(s->unk_4C, s->unk_28, s->unk_58) != 3) {
                FailTo3();
            }
        } else if (s->state == 7) {
            s->state = 3;
        }
        break;
    case 7:
        if (s->state == 5) {
            Notify(5);
        }
        break;
    case 8:
        Notify(4);
        break;
    case 9:
        s->state = 0;
        Notify(3);
        break;
    default:
        Notify(1);
        break;
    }
}
