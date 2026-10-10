typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

void FillWindowPixelBuffer(void *window, u32 fillValue);
void BufferIntegerAsString(void *messageFormat, u32 idx, s32 num, u32 numDigits, u32 mode, u32 charset);
u8 GetWindowWidth(const void *window);
void ov18_021EE3AC(void *app, void *a, s32 b, u32 x, u32 y, u32 c, u32 d, u32 e, u32 f);

void ov18_021EFDB4(void *app, u32 value, s32 index)
{
    u32 scaled;
    u8 *windows = (u8 *)app + 0xc;
    s32 offset = index << 4;
    u32 width;

    if (value == 9999) {
        scaled = 0x18696;
    } else {
        scaled = (0x35d2e * value + 0xc350) / 100000;
    }
    FillWindowPixelBuffer(windows + offset, 0);
    BufferIntegerAsString(*(void **)((u8 *)app + 0x660), 0, scaled / 10, 4, 0, 1);
    BufferIntegerAsString(*(void **)((u8 *)app + 0x660), 1, scaled % 10, 1, 2, 1);
    width = GetWindowWidth(windows + offset);
    ov18_021EE3AC(app, *(void **)((u8 *)app + 0x65c), index, 0x26, (s32)(width << 3) / 2, 0, 4, 0x20100, 2);
}
