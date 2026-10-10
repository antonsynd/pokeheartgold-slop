typedef unsigned short u16;
typedef unsigned int u32;
typedef signed int s32;

void ManagedSprite_SetAnim(void *sprite, s32 anim);

extern const s32 ov92_02263BCC[8];

void ov92_0225DF58(char *self, s32 param1, s32 param2)
{
    /* the original keeps a stack copy of the table directly below the registers it pushed
       (r3-r7, lr) and indexes it unchecked; model the pushed registers for indices 4..6.
       Keep this frame small so reads just below the entry sp see untouched memory. */
    u32 saved[6];
    const s32 *tbl;
    u32 v1;

    __asm__ volatile("movs %0, r3" : "=l"(saved[0]) : : "cc");
    __asm__ volatile("movs %0, r4" : "=l"(saved[1]) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(saved[2]) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(saved[3]) : : "cc");
    saved[4] = *(u32 *)__builtin_frame_address(0);
    __asm__ volatile("mov %0, lr" : "=l"(saved[5]));

    v1 = *(u16 *)(self + 0xf4 + param1 * 2);

    if ((u32)param2 < 4) {
        tbl = ov92_02263BCC;
    } else if ((u32)param2 < 7) {
        tbl = (const s32 *)saved - 8;
    } else {
        tbl = (const s32 *)((char *)__builtin_frame_address(0) + 8 - 0x38);
    }

    ManagedSprite_SetAnim(*(void **)(self + 0x1c + v1 * 4), tbl[param2 * 2]);
    ManagedSprite_SetAnim(*(void **)(self + 0x28 + v1 * 4), tbl[param2 * 2 + 1]);
}
