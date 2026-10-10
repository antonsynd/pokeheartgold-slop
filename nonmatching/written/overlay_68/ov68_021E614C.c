#include "global.h"
#include "pokemon.h"
#include "move.h"

typedef struct UnkStruct_ov68_021E614C_Data {
    /* 0x00 */ Pokemon *mon;
    /* 0x04 */ u8 filler_04[0x16];
    /* 0x1A */ u8 keepOldMove;
    /* 0x1B */ u8 moveSlot;
} UnkStruct_ov68_021E614C_Data;

typedef struct UnkStruct_ov68_021E614C {
    UnkStruct_ov68_021E614C_Data *data;
} UnkStruct_ov68_021E614C;

u16 ov68_021E6BEC(UnkStruct_ov68_021E614C *controller);

int ov68_021E614C(UnkStruct_ov68_021E614C *controller) {
    u32 value;

    value = ov68_021E6BEC(controller);
    SetMonData(controller->data->mon, controller->data->moveSlot + MON_DATA_MOVE1, &value);
    value = 0;
    SetMonData(controller->data->mon, controller->data->moveSlot + MON_DATA_MOVE1_PP_UPS, &value);
    value = GetMoveMaxPP(ov68_021E6BEC(controller), 0);
    SetMonData(controller->data->mon, controller->data->moveSlot + MON_DATA_MOVE1_PP, &value);
    controller->data->keepOldMove = 0;
    return 8;
}
