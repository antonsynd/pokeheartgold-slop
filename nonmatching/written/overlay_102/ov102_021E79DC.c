#include "global.h"

extern void MailMsg_SetMsgBankAndNum(void *mailMessage, int msg_bank, int msg_no);

typedef struct {
    s16 unk0;
    s8 unk2;
    s8 unk3;
} UnkStruct_ov102_021E79DC;

void ov102_021E79DC(UnkStruct_ov102_021E79DC *a, void *msg, int val) {
    a->unk2 = val % a->unk3;
    a->unk0 = val / a->unk3;
    MailMsg_SetMsgBankAndNum(msg, a->unk0, a->unk2);
}
