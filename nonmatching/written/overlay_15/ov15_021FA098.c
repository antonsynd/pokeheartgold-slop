typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef short s16;

int ov15_021FA098(void *app)
{
    s32 col = *(u8 *)((u8 *)app + 0x672);
    u8 *ctx = *(u8 **)((u8 *)app + 0x234);
    s32 row = col / 6;

    if (*(s16 *)(ctx + *(u8 *)(ctx + 0x64) * 0xc + 0xa) == row * 6) {
        return col % 6;
    }
    return -1;
}
