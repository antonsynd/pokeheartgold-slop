typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

typedef struct UnkStruct_ov40_0223BA70_860 {
    u8 filler_00[0x0C];
    s32 unk_0C;         // 0x0C
    u8 filler_10[4];
    u8 window0[0x80];   // 0x14
    u8 window1[0x80];   // 0x94
    u8 filler_114[0x1F18];
    s32 unk_202C;       // 0x202C
    s32 unk_2030;       // 0x2030
} UnkStruct_ov40_0223BA70_860;

typedef struct UnkStruct_ov40_0223BA70 {
    u8 filler_00[0x24];
    void *bgConfig;     // 0x24
    u8 filler_28[0x20];
    void *msgData;      // 0x48
    u8 filler_4C[0x814];
    UnkStruct_ov40_0223BA70_860 *work; // 0x860
} UnkStruct_ov40_0223BA70;

const s32 ov40_022454A4[3] = { 0x61, 0x62, 0x7B };

void InitWindow(void *window);
void AddWindowParameterized(void *bgConfig, void *window, u8 bgId, u8 x, u8 y, u8 width, u8 height, u8 paletteNum, u16 baseTile);
void FillWindowPixelBuffer(void *window, u8 fillValue);
void *NewString_ReadMsgData(void *msgData, s32 strno);
u8 AddTextPrinterParameterizedWithColor(void *window, s32 fontId, void *string, u32 x, u32 y, u32 textSpeed, u32 color, void *callback);
void ScheduleWindowCopyToVram(void *window);
void String_Delete(void *string);
u32 FontID_String_GetWidthMultiline(u32 fontId, void *string, u32 letterSpacing);

// The asm copies the 3-entry table to its own stack frame and indexes it with the
// unchecked value at w->unk_0C. An index outside 0..2 reads the stack arguments of the
// earlier AddWindowParameterized call (below the table), or the registers the prologue
// pushed (r3-r7, lr) and then the caller's stack (above it). The original frame is
// entry sp - 0x38 .. entry sp, with the table at entry sp - 0x24.
void ov40_0223BA70(UnkStruct_ov40_0223BA70 *p)
{
    u32 regs[4];
    u32 *frameRecord;
    u32 entrySp;
    u32 curSp;
    UnkStruct_ov40_0223BA70_860 *w;
    void *win;
    void *str;
    u32 width;
    u32 value;

    __asm__ volatile("str r3, [%0]\n\tstr r4, [%0, #4]\n\tstr r5, [%0, #8]\n\tstr r6, [%0, #12]" : : "l"(regs) : "r3", "r4", "r5", "r6", "memory");
    frameRecord = (u32 *)__builtin_frame_address(0);
    entrySp = (u32)frameRecord + 8;
    __asm__ volatile("mov %0, sp" : "=r"(curSp));

    w = p->work;
    win = w->window0;

    InitWindow(win);
    AddWindowParameterized(p->bgConfig, win, 2, 3, 3, 0x14, 4, 0xE, 0x20);
    FillWindowPixelBuffer(win, 0);

    {
        u32 addr = entrySp - 0x24 + (u32)w->unk_0C * 4;
        if (addr >= entrySp) {
            value = *(u32 *)addr;
        } else if (addr >= entrySp - 0x18) {
            u32 slot = (addr - (entrySp - 0x18)) / 4;
            if (slot < 4) {
                value = regs[slot];
            } else if (slot == 4) {
                value = frameRecord[0];
            } else {
                value = frameRecord[1];
            }
        } else if (addr >= entrySp - 0x24) {
            value = ov40_022454A4[(addr - (entrySp - 0x24)) / 4];
        } else if (addr >= entrySp - 0x38) {
            static const u32 args[5] = { 3, 0x14, 4, 0xE, 0x20 };
            value = args[(addr - (entrySp - 0x38)) / 4];
        } else if (addr >= curSp) {
            value = 0;
        } else {
            value = *(u32 *)addr;
        }
    }
    str = NewString_ReadMsgData(p->msgData, (s32)value);

    AddTextPrinterParameterizedWithColor(win, 0, str, 0, 0, 0xFF, 0xF0D00, 0);
    ScheduleWindowCopyToVram(win);
    String_Delete(str);

    win = w->window1;
    InitWindow(win);
    AddWindowParameterized(p->bgConfig, win, 6, 11, 6, 10, 4, 0xE, 0x100);
    FillWindowPixelBuffer(win, 0);

    str = NewString_ReadMsgData(p->msgData, 0x5F);
    width = FontID_String_GetWidthMultiline(0, str, 0);
    AddTextPrinterParameterizedWithColor(win, 0, str, (0x50 - width) >> 1, 0, 0xFF, 0xF0D00, 0);
    ScheduleWindowCopyToVram(win);
    String_Delete(str);

    w->unk_202C = 1;
    w->unk_2030 = 1;
}
