typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

typedef struct UnkStruct_ov40_0223DBD4_860 {
    u8 filler_000[0x614];
    u8 windows[0x180];  // 0x614 (0x10 bytes per window)
    s32 unk_794;        // 0x794
} UnkStruct_ov40_0223DBD4_860;

typedef struct UnkStruct_ov40_0223DBD4 {
    u8 filler_00[0x24];
    void *bgConfig;     // 0x24
    u8 filler_28[0x20];
    void *msgData;      // 0x48
    u8 filler_4C[0x814];
    UnkStruct_ov40_0223DBD4_860 *work; // 0x860
} UnkStruct_ov40_0223DBD4;

const s32 ov40_022456F0[6] = { 48, 49, 50, 125, 125, 125 };
const s32 ov40_022458E8[24] = {
    4, 3, 15, 2,
    4, 9, 15, 2,
    4, 13, 15, 2,
    5, 5, 20, 4,
    5, 11, 15, 2,
    5, 15, 25, 2,
};

void InitWindow(void *window);
void AddWindowParameterized(void *bgConfig, void *window, u8 bgId, u8 x, u8 y, u8 width, u8 height, u8 paletteNum, u16 baseTile);
void FillWindowPixelBuffer(void *window, u8 fillValue);
void *NewString_ReadMsgData(void *msgData, s32 strno);
u8 AddTextPrinterParameterizedWithColor(void *window, s32 fontId, void *string, u32 x, u32 y, u32 textSpeed, u32 color, void *callback);
void ScheduleWindowCopyToVram(void *window);
void String_Delete(void *string);

// Entry sp E. The asm's frame is E - 0xB0 .. E: the six string ids at E - 0x8C, the 24-word
// row table at E - 0x74 and then the pushed r4-r7/lr, with the caller's stack above. The row
// and id pointers run past their tables when the unchecked count at +0x794 is large, so
// reads go through this view of the original frame.
static inline __attribute__((always_inline)) u32 ReadOriginalFrame(u32 addr, u32 entrySp, const u32 *pushed)
{
    if (addr >= entrySp - 0x8C && addr < entrySp - 0x74) {
        return ov40_022456F0[(addr - (entrySp - 0x8C)) / 4];
    }
    if (addr >= entrySp - 0x74 && addr < entrySp - 0x14) {
        return ov40_022458E8[(addr - (entrySp - 0x74)) / 4];
    }
    if (addr >= entrySp - 0x14 && addr < entrySp) {
        return pushed[(addr - (entrySp - 0x14)) / 4];
    }
    return *(u32 *)addr;
}

void ov40_0223DBD4(UnkStruct_ov40_0223DBD4 *p, s32 param1)
{
    u32 callerR5;
    u32 pushed[5];
    u32 *frameRecord;
    u32 entrySp;
    u32 rows;
    u32 ids;
    UnkStruct_ov40_0223DBD4_860 *w;
    s32 baseTile;
    s32 i;
    u8 *win;

    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");
    __asm__ volatile("str r4, [%0]\n\tstr r5, [%0, #4]\n\tstr r6, [%0, #8]" : : "l"(pushed) : "r4", "r5", "r6", "memory");
    frameRecord = (u32 *)__builtin_frame_address(0);
    entrySp = (u32)frameRecord + 8;
    pushed[3] = frameRecord[0];
    pushed[4] = frameRecord[1];

    w = p->work;

    // For any other param1 the asm leaves the row pointer in the caller's r5 and the
    // id pointer in an uninitialised stack slot.
    rows = callerR5;
    if (param1 == 0) {
        w->unk_794 = 6;
        rows = entrySp - 0x74;
        ids = entrySp - 0x8C;
    }

    i = 0;
    baseTile = 0x100;
    if (w->unk_794 > 0) {
        win = w->windows;
        do {
            void *str;
            s32 x = (s32)ReadOriginalFrame(rows, entrySp, pushed);
            s32 y = (s32)ReadOriginalFrame(rows + 4, entrySp, pushed);
            s32 width = (s32)ReadOriginalFrame(rows + 8, entrySp, pushed);
            s32 height = (s32)ReadOriginalFrame(rows + 12, entrySp, pushed);

            InitWindow(win);
            AddWindowParameterized(p->bgConfig, win, 2, (u8)x, (u8)y, (u8)width, (u8)height, 14, (u16)baseTile);
            FillWindowPixelBuffer(win, 0);
            str = NewString_ReadMsgData(p->msgData, (s32)ReadOriginalFrame(ids, entrySp, pushed));
            baseTile += width * height;
            AddTextPrinterParameterizedWithColor(win, 0, str, 0, 0, 0xFF, 0xF0D00, 0);
            ScheduleWindowCopyToVram(win);
            String_Delete(str);
            ids += 4;
            win += 0x10;
            i++;
            rows += 16;
        } while (i < w->unk_794);
    }
}
