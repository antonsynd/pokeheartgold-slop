#include "global.h"

const u8 ov07_0223777C[8] = { 0, 8, 14, 20, 20, 16, 16, 0 };

#define FRAME_SIZE 40 /* this function's own push {r7, lr} + sub sp, #32 at -O0 */

u32 SealOnCapsuleGetID(void *seal);
int sub_0209109C(u8 id);
int ov07_02234510(void *seal);

u8 ov07_02234530(void *seal) {
    u8 tbl[8];
    int i;
    int idx;

    for (i = 0; i < 7; i++) {
        tbl[i] = ov07_0223777C[i];
    }

    if (sub_0209109C((u8)SealOnCapsuleGetID(seal)) == 0) {
        idx = ov07_02234510(seal);
        if (idx >= 0x38) {
            idx = 3;
        } else {
            idx = (idx + 1) / 20;
            if (idx >= 3) {
                idx = 3;
            }
        }
        if (idx < 0) {
            /* the original indexes its 8-byte stack copy of the table
               (entry_sp - 16) without a lower bound check; reproduce that read */
            u32 frameSp;
            __asm__ volatile("mov %0, sp" : "=r"(frameSp));
            return *(const u8 *)(frameSp + FRAME_SIZE - 16 + idx);
        }
        return tbl[idx];
    }
    return tbl[1];
}
