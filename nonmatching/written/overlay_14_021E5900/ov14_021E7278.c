#include "global.h"

void *ov14_021E60C0(void *self, int index);
int ov14_021E71C8(u16 value);
u32 GetBoxMonData(void *boxMon, int attr, void *ptr);

BOOL ov14_021E7278(u8 *self) {
    u8 *state = *(u8 **)(*(u8 **)(self + 0x34) + 0x88dc);
    int pos = *(u16 *)(state + 4);
    int count;
    int j;
    void *mon;
    int idx;

    if (pos == 0x222) {
        return FALSE;
    }
    count = 0;
    do {
        if ((u32)pos < 0x21c) {
            int box = pos / 0x1e;
            int slot = pos % 0x1e;

            if (box == self[0x1f] && slot == self[0x21]) {
                mon = NULL;
            } else {
                mon = ov14_021E60C0(self, box);
            }
        } else {
            if (pos - 0x21c == self[0x21] - 0x1e) {
                mon = NULL;
            } else {
                mon = ov14_021E60C0(self, 0xff);
            }
        }
        if (mon != NULL && GetBoxMonData(mon, 0xac, NULL) != 0) {
            for (j = 0; (u32)j < 4; j++) {
                idx = ov14_021E71C8((u16)GetBoxMonData(mon, j + 0x36, NULL));
                if (idx != -1) {
                    state[6] = (u8)((0xff ^ (1u << idx)) & state[6]);
                }
            }
        }
        *(u16 *)(state + 4) = *(u16 *)(state + 4) + 1;
        pos = *(u16 *)(state + 4);
        if (pos == 0x222) {
            return FALSE;
        }
        count++;
    } while ((u32)count < 0xf);
    return TRUE;
}
