#include "global.h"

typedef struct UnkStruct_ov68_021E6204 UnkStruct_ov68_021E6204;

u16 ov68_021E6BEC(UnkStruct_ov68_021E6204 *controller);
void ov68_021E68D4(UnkStruct_ov68_021E6204 *controller, int move);
int ov68_021E70BC(UnkStruct_ov68_021E6204 *controller);

int ov68_021E6204(UnkStruct_ov68_021E6204 *controller) {
    u16 move = ov68_021E6BEC(controller);

    if (move != 0xFFFF) {
        ov68_021E68D4(controller, move);
    } else {
        ov68_021E68D4(controller, -2);
    }
    return ov68_021E70BC(controller);
}
