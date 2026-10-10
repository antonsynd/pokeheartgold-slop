#include "global.h"
#include "message_format.h"
#include "overlay_98.h"

typedef struct UnkStruct_ov96_021EF610 {
    void *unk_00;
    u8 filler_04[0x1C];
    u8 unk_20;
    u8 filler_21;
    u8 unk_22;
    u8 filler_23;
    u32 unk_24;
    u32 unk_28;
    u8 filler_2C[4];
    Ov98TextSys *textSys;
    void *unk_34;
} UnkStruct_ov96_021EF610;

u16 ov96_021EF5F4(UnkStruct_ov96_021EF610 *param0, u8 idx);
void ov96_021EE6A0(void *param0);

void ov96_021EF610(UnkStruct_ov96_021EF610 *param0) {
    u8 idx = param0->unk_20;
    u8 value = param0->unk_22 + 1;
    int record;
    MessageFormat *messageFormat;

    if (param0->unk_28 == 0) {
        ov98_0221EEEC(param0->textSys, 5, 5);
    }
    ov98_0221EBD8(param0->textSys, 0, 0xc5, 0);
    ov98_0221EBD8(param0->textSys, 2, 0xd0, 0);
    ov98_0221EC08(param0->textSys, 1, idx + 0xc6, 0, 0);
    ov98_0221EC08(param0->textSys, 3, idx * 3 + 0xd1, 0, 0);
    ov98_0221ECD0(param0->textSys, 5, 0xef, value, 1, 0);
    if (param0->unk_24 == 0) {
        ov98_0221EBEC(param0->textSys, 4, 0xf0, 0, 0, 4);
    }
    ov96_021EE6A0(param0->unk_34);
    if (param0->unk_28 != 0) {
        record = ov96_021EF5F4(param0, param0->unk_20);
        if (record == 0xFFFF) {
            record = 0;
        }
        if (param0->unk_20 == 0) {
            messageFormat = ov98_0221EEFC(param0->textSys);
            BufferIntegerAsString(messageFormat, 0, record / 30, 3, 0, 1);
            BufferIntegerAsString(messageFormat, 1, (record % 30) * 10 / 30, 1, 0, 1);
        } else if (param0->unk_20 == 6) {
            ov98_0221EDA4(param0->textSys, (u32)record >> 10, 2, 0);
            ov98_0221EDA4(param0->textSys, (record % 1024) * 10 / 1024, 1, 1);
        } else {
            ov98_0221EDA4(param0->textSys, record, 3, 0);
        }
        ov98_0221EBD8(param0->textSys, 6, 0xb0, 0);
        ov98_0221ED3C(param0->textSys, 7, idx + 0xb1);
    }
}
