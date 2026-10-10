#include "global.h"
#include "obj_char_transfer.h"
#include "obj_pltt_transfer.h"

const ObjCharTransferTemplate ov112_021FF0EC = { 0x28, 0x10000, 0x4000, (enum HeapID)0x9A };

void ov112_021EF19C(void) {
    ObjCharTransferTemplate tmpl = ov112_021FF0EC;
    ObjCharTransfer_Init(&tmpl);
    ObjPlttTransfer_Init(0x14, (enum HeapID)0x9A);
    ObjCharTransfer_ClearBuffers();
    ObjPlttTransfer_Reset();
}
