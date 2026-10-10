#include "global.h"
#include "unk_02035900.h"

void ov65_0221DE10(int unused, int cmd, int value) {
    u8 byteValue = value;
    sub_02037030(cmd, &byteValue, 1);
}
