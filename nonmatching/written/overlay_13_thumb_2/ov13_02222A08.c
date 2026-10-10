#include "global.h"

int SOC_Bind(int s, void *addr);

int ov13_02222A08(int s, u8 *addr, u8 len) {
    addr[0] = len;
    return SOC_Bind(s, addr);
}
