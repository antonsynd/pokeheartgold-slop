typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

void ov18_021E613C(void *app, int a);
void FillWindowPixelBuffer(void *window, u32 fillValue);
void ov18_021F9648(void *window, void *src, u32 id, u32 x, u32 y, u32 w, u32 flags, u32 mode);
u8 ov18_021E7698(u32 index);
void ov18_021EF388(void *app, int a, int b);
void ov18_021EFC3C(void *app, int a);
void ScheduleWindowCopyToVram(void *window);

void ov18_021EF764(void *app)
{
    u32 i;
    u16 value;
    u32 id;
    u32 rem;
    u32 quot;

    ov18_021E613C(app, 0);
    FillWindowPixelBuffer((u8 *)app + 0x41c, 0);
    FillWindowPixelBuffer((u8 *)app + 0x43c, 0);
    ov18_021F9648((u8 *)app + 0x41c, *(void **)((u8 *)app + 0x65c), 0x1b, 0x18, 0, 0, 0x20100, 2);
    i = 0;
    do {
        value = ov18_021E7698(i);
        if (i == 0x1a) {
            id = 0x71;
        } else {
            id = i + 0x45;
        }
        rem = (s32)value % 7;
        quot = (s32)value / 7;
        ov18_021F9648((u8 *)app + 0x43c, *(void **)((u8 *)app + 0x65c), id, rem * 32 + 0x18, quot * 32, 4, 0x20100, 2);
        i = (u16)(i + 1);
    } while (i < 0x1b);
    ov18_021EF388(app, 0x11, 0x27);
    ov18_021EF388(app, 0x13, 0x28);
    ov18_021EFC3C(app, 0x42);
    ScheduleWindowCopyToVram((u8 *)app + 0x41c);
    ScheduleWindowCopyToVram((u8 *)app + 0x43c);
    ScheduleWindowCopyToVram((u8 *)app + 0x42c);
}
