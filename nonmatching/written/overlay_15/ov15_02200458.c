typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

void GF_AssertFail(void);
void MI_CpuFill8(void *dest, u8 data, u32 size);
void ManagedSprite_SetDrawFlag(void *managedSprite, int flag);

void ov15_02200458(void *app, int flag)
{
    u8 used[8];
    s32 i;
    // The asm keeps this 8-byte table at entry_sp - 0x20 (push of 6 registers, then sub sp, #8), and indexes it
    // with an unchecked byte; reproduce that for indexes beyond the table, relative to the entry stack pointer.
    u8 *entryBuffer = (u8 *)__builtin_frame_address(0) + 8 - 0x20;

    if (flag != 1 && flag != 0) {
        GF_AssertFail();
    }
    MI_CpuFill8(used, 0, 8);
    for (i = 0; i < 8; i++) {
        u8 *ctx = *(u8 **)((u8 *)app + 0x234);
        if (*(u8 *)(ctx + i * 0xc + 0xc) >= 8) {
            GF_AssertFail();
        }
        ctx = *(u8 **)((u8 *)app + 0x234);
        if (*(u32 *)(ctx + i * 0xc + 4) != 0) {
            u32 slot = *(u8 *)(ctx + i * 0xc + 0xc);
            if (slot < 8) {
                used[slot] = 1;
            } else if (slot >= 0x20) {
                *(volatile u8 *)(entryBuffer + slot) = 1;
            }
        }
    }
    for (i = 0; i < 8; i++) {
        if (used[i] != 0) {
            ManagedSprite_SetDrawFlag(*(void **)((u8 *)app + i * 4 + 0x274), flag);
        } else {
            ManagedSprite_SetDrawFlag(*(void **)((u8 *)app + i * 4 + 0x274), 0);
        }
    }
}
