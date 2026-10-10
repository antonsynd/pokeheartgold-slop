typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef short s16;

extern u8 ov15_022008B0[];

void ov15_021F9D8C(void *a, void *b, u16 c, int d);
void ov15_021F9D9C(void *a, void *b, u16 c, int d);

void ov15_021F9F08(void *app)
{
    u8 *ctx = *(u8 **)((u8 *)app + 0x234);
    u8 *pocket = ctx + 4 + *(u8 *)(ctx + 0x64) * 0xc;
    u32 i = 0;
    s32 limit;
    s32 maxScroll;

    if (*(u8 *)(pocket + 8) == 3) {
        if (ov15_022008B0[*(u8 *)(pocket + 8)] > 0) {
            do {
                u8 *items = *(u8 **)pocket;
                u16 item = *(u16 *)(items + i * 4);
                u16 second;
                if (item == 0) {
                    break;
                }
                second = *(u16 *)(items + i * 4 + 2);
                if (second == 0) {
                    break;
                }
                ov15_021F9D9C(*(void **)((u8 *)app + 0x2fc), *(void **)((u8 *)app + i * 4 + 0x350), item, 6);
                items = *(u8 **)pocket;
                *(u16 *)((u8 *)app + i * 2 + 0x6a4) = *(u16 *)(items + i * 4);
                i++;
            } while (i < ov15_022008B0[*(u8 *)(pocket + 8)]);
        }
        *(u8 *)(pocket + 9) = i;
    } else {
        if (ov15_022008B0[*(u8 *)(pocket + 8)] > 0) {
            do {
                u8 *items = *(u8 **)pocket;
                u16 item = *(u16 *)(items + i * 4);
                u16 second;
                if (item == 0) {
                    break;
                }
                second = *(u16 *)(items + i * 4 + 2);
                if (second == 0) {
                    break;
                }
                ov15_021F9D8C(*(void **)((u8 *)app + 0x2f8), *(void **)((u8 *)app + i * 4 + 0x350), item, 6);
                items = *(u8 **)pocket;
                *(u16 *)((u8 *)app + i * 2 + 0x6a4) = *(u16 *)(items + i * 4);
                i++;
            } while (i < ov15_022008B0[*(u8 *)(pocket + 8)]);
        }
        *(u8 *)(pocket + 9) = i;
    }

    if (*(u8 *)(pocket + 9) == 0) {
        limit = 0;
    } else {
        s32 n = *(u8 *)(pocket + 9) - 1;
        limit = (n / 6) * 6;
    }
    maxScroll = *(s16 *)(pocket + 6);
    if (maxScroll > limit) {
        *(s16 *)(pocket + 6) = limit;
    }
}
