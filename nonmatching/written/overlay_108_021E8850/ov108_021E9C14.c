#include "global.h"

extern void ov108_021E8CD4(void *a, u8 b, u32 c);

void ov108_021E9C14(u8 *param) {
    ov108_021E8CD4(param + 0x338, *(u8 *)(param + 0x42C), *(u32 *)param);
}
