typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;
typedef signed int s32;

extern const s16 ov92_02263A94[96];

/* the original does not mask these u16 returns */
u32 ManagedSprite_GetAnimationFrame(void *sprite);
u32 ManagedSprite_GetActiveAnim(void *sprite);
void ManagedSprite_SetPositionXY(void *sprite, s16 x, s16 y);
void ManagedSprite_SetAnimNoRestart(void *sprite, s32 anim);
void ManagedSprite_SetDrawFlag(void *sprite, s32 flag);
void ManagedSprite_TickTwoFrames(void *sprite);
void ov92_0225CB2C(void *self, s32 x, s32 y);
void ov92_02260A38(void *self, s16 x, s16 y);
void ov92_022630E8(void *p);
void ov92_02260428(void *p, s32 a, s32 b, s32 c, s32 d, float e, s32 f);

/* The original copies the ROM table to its stack and indexes it unchecked. boff is the byte offset
   from the start of that copy; past its end are the registers the original pushed (r4-r7, lr),
   then the caller's frame. */
static s16 ReadTable(char *entrySp, const u32 *saved, u32 boff)
{
    char *a;

    if (boff < 0xC0) {
        return *(const s16 *)((const char *)ov92_02263A94 + boff);
    }
    a = entrySp - 0xD4 + boff;
    if (a >= entrySp - 0x14 && a < entrySp) {
        u32 w = saved[(a - (entrySp - 0x14)) >> 2];
        return (s16)(((u32)a & 2) ? (w >> 16) : w);
    }
    return *(s16 *)a;
}

s32 ov92_0225CC6C(char *self)
{
    u32 saved[5];
    char *entrySp;
    u32 v0;
    s32 v2;
    s32 v3;
    u32 boff;

    __asm__ volatile("movs %0, r4" : "=l"(saved[0]) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(saved[1]) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(saved[2]) : : "cc");
    saved[3] = *(u32 *)__builtin_frame_address(0);
    __asm__ volatile("mov %0, lr" : "=l"(saved[4]));
    entrySp = (char *)__builtin_frame_address(0) + 8;

    v0 = ManagedSprite_GetAnimationFrame(*(void **)(self + 0xF0));
    boff = (v0 + *(s32 *)(self + 0xC) * 12) << 2;
    v2 = ReadTable(entrySp, saved, boff);
    v3 = ReadTable(entrySp, saved, boff + 2);

    if (v2 == 0 && v3 == 0) {
        ov92_0225CB2C(self, 0, 0);
    } else {
        ov92_0225CB2C(self, v2 + 0x80, v3 + 0x80);
        if (v2 != 0) {
            ov92_02260A38(self, v2 + 0x58, v3 + 0x80);
        } else {
            ov92_02260A38(self, v2 + 0x80, v3 + 0x80);
        }
    }

    if (v0 == 0) {
        if (*(s32 *)(self + 8) != (s32)v0) {
            *(s32 *)(self + 0xC) = *(s32 *)(self + 0xC) + 1;
        }
    }
    *(u32 *)(self + 8) = v0;

    if (*(s32 *)(self + 0xC) == 2) {
        if (ManagedSprite_GetActiveAnim(*(void **)(self + 0xF0)) != 2) {
            ManagedSprite_SetPositionXY(*(void **)(self + 0xF0), 0x80, 100);
            ManagedSprite_SetAnimNoRestart(*(void **)(self + 0xF0), 2);
            ov92_022630E8(self + 0x2A4);
            ov92_022630E8(self + 0x2B4);
            ov92_02260428(self + 0x114, 0, 0, 5, 5, 0.8f, 0);
            ov92_02260428(self + 0x114, 0, 0, -5, -5, 0.8f, 0);
        }
    }

    if (*(s32 *)(self + 0xC) == 3 && v0 == 11) {
        *(s32 *)(self + 8) = 0;
        *(s32 *)(self + 0xC) = 0;
        ManagedSprite_SetDrawFlag(*(void **)(self + 0xF0), 0);
        ov92_022630E8(self + 0x2A4);
        ov92_022630E8(self + 0x2B4);
        ov92_02260428(self + 0x114, 0, 0, 5, 5, 0.8f, 0);
        ov92_02260428(self + 0x114, 0, 0, -5, -5, 0.8f, 0);
        return 1;
    }

    ManagedSprite_TickTwoFrames(*(void **)(self + 0xF0));
    return 0;
}
