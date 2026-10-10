#include "global.h"

/* Point2D table (x, y as u16) indexed by battler type. The original copies it
   to a 0x18-byte stack array at entry_sp - 0x20 (just below the pushed r4, r5)
   and reads [array + type*4] and [array + type*4 + 2] without a bounds check.
   For an out-of-range type those reads land on the saved r4/r5 or on other
   memory; that is reproduced here (this function's own frame stays within the
   original's 0x20 bytes so the other addresses are untouched).
   HeartGold ignores the isContest argument. */
const u16 ov07_02236864[12] = {
    0x0040, 0x0070, 0x00C0, 0x0030, 0x0028, 0x0070, 0x00D8, 0x0032,
    0x0050, 0x0078, 0x00B0, 0x002A,
};

#define FRAME_SIZE 0x1C /* this function's own sub sp at -O0 */

u16 ov07_02231A20(int battlerType, BOOL isContest, u16 *pos) {
    u32 r4v, r5v, entry, v;
    __asm__ volatile("movs %0, r4" : "=l"(r4v) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(r5v) : : "cc");
    __asm__ volatile("mov %0, sp" : "=l"(entry));
    entry += FRAME_SIZE;

    if ((u32)battlerType * 4 < 24) {
        v = ov07_02236864[(u32)battlerType * 2];
    } else if ((u32)battlerType * 4 < 28) {
        v = (u16)r4v;
    } else if ((u32)battlerType * 4 < 32) {
        v = (u16)r5v;
    } else {
        v = *(u16 *)(entry - 0x20 + (u32)battlerType * 4);
    }
    pos[0] = v;

    if ((u32)battlerType * 4 < 24) {
        v = ov07_02236864[(u32)battlerType * 2 + 1];
    } else if ((u32)battlerType * 4 < 28) {
        v = (u16)(r4v >> 16);
    } else if ((u32)battlerType * 4 < 32) {
        v = (u16)(r5v >> 16);
    } else {
        v = *(u16 *)(entry - 0x1E + (u32)battlerType * 4);
    }
    pos[1] = v;
    return v;
}
