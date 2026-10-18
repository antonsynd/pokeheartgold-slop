#include "global.h"

#include "mail_message.h"
#include "pm_string.h"

typedef struct UnkStruct_0205B338 {
    String *string;
    int unk04;
    int unk08;
    int unk0C;
    int unk10;
    MailMessage mailMessage;
} UnkStruct_0205B338;

void sub_0205B338(UnkStruct_0205B338 *a0) {
    a0->string = String_New(8, (enum HeapID)0x57);
    a0->unk04 = 0;
    a0->unk08 = 0;
    MailMsg_Init_WithBank(&a0->mailMessage, 0);
    a0->unk10 = 0;
    a0->unk0C = 0;
}
