#include "global.h"

#include "files/msgdata/msg.naix"
#include "files/msgdata/msg/msg_0727.h"

#include "font.h"
#include "msgdata.h"
#include "pm_string.h"

typedef struct Ov51_021E5F64 {
    u8 filler_0000[0x33C4];
    MsgData *msgData;
    String *unk33C8;
    String *unk33CC;
    String *unk33D0;
    String *unk33D4;
    String *unk33D8[3];
    String *unk33E4[2];
    String *unk33EC[14];
} Ov51_021E5F64;

void ov51_021E5F64(Ov51_021E5F64 *a0) {
    int i;

    FontID_Alloc(4, HEAP_ID_25);
    a0->msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, msg_0727, HEAP_ID_25);
    a0->unk33C8 = String_New(4, HEAP_ID_25);
    a0->unk33D0 = String_New(32, HEAP_ID_25);
    a0->unk33D4 = String_New(10, HEAP_ID_25);
    a0->unk33CC = String_New(5, HEAP_ID_25);
    ReadMsgDataIntoString(a0->msgData, msg_0727_00011, a0->unk33CC);
    for (i = 0; i < 3; i++) {
        a0->unk33D8[i] = NewString_ReadMsgData(a0->msgData, msg_0727_00014 + i);
    }
    for (i = 0; i < 2; i++) {
        a0->unk33E4[i] = NewString_ReadMsgData(a0->msgData, msg_0727_00017 + i);
    }
    for (i = 0; i < 14; i++) {
        a0->unk33EC[i] = NewString_ReadMsgData(a0->msgData, msg_0727_00000 + i);
    }
}
