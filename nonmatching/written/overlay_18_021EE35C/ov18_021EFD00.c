typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

void FillWindowPixelBuffer(void *window, u32 fillValue);
void BufferIntegerAsString(void *messageFormat, u32 idx, s32 num, u32 numDigits, u32 mode, u32 charset);
u8 GetWindowWidth(const void *window);
void ov18_021EE3AC(void *app, void *a, s32 b, u32 x, u32 y, u32 c, u32 d, u32 e, u32 f);

void ov18_021EFD00(void *app, u32 value, s32 index)
{
    u32 scaled;
    u8 *windows = (u8 *)app + 0xc;
    s32 offset = index << 4;
    u32 width;

    if (value == 999) {
        scaled = 999 + 0xbd;
    } else {
        scaled = (10000 * value) / 0xfe;
        scaled = (scaled + 5) / 10;
    }
    FillWindowPixelBuffer(windows + offset, 0);
    BufferIntegerAsString(*(void **)((u8 *)app + 0x660), 0, scaled / 0xc, 3, 0, 1);
    BufferIntegerAsString(*(void **)((u8 *)app + 0x660), 1, scaled % 0xc, 2, 2, 1);
    width = GetWindowWidth(windows + offset);
    ov18_021EE3AC(app, *(void **)((u8 *)app + 0x65c), index, 0xaf, (s32)(width << 3) / 2, 0, 4, 0x20100, 2);
}
