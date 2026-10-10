#include "global.h"
#include "unk_02005D10.h"
#include "sprite.h"

int ov65_0221DCFC(int slot, int direction, void *displayData);
void ov65_0221DD34(int slot, Sprite *sprite, int side);

int ov65_0221DDC0(int *directionFlag, int *slotIdx, Sprite *sprite, void *displayData, int side) {
    int direction = *directionFlag - 1;
    int moved = 0;
    int target;

    if (side == 0) {
        if (*directionFlag != 0) {
            target = ov65_0221DCFC(*slotIdx, direction, displayData);
            ov65_0221DD34(target, sprite, side);
            if (*slotIdx != target) {
                PlaySE(0x5DC);
                *slotIdx = target;
                moved = 1;
            }
        }
        *directionFlag = 0;
    } else {
        ov65_0221DD34(*slotIdx, sprite, side);
    }
    return moved;
}
