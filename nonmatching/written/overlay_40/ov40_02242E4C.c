typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef unsigned long long u64;

typedef struct UnkStruct_ov40_02242E4C_860 {
    u8 filler_000[0x4B0];
    u32 lo;             // 0x4B0
    u32 hi;             // 0x4B4
} UnkStruct_ov40_02242E4C_860;

typedef struct UnkStruct_ov40_02242E4C_work {
    u8 filler_00[0x48];
    void *msgData;      // 0x48
    u8 filler_4C[0x858];
    u8 window[0x10];    // 0x8A4
} UnkStruct_ov40_02242E4C_work;

void *ov40_0222DAB0(s32 heapId);
void *String_New(u32 maxsize, s32 heapId);
void *NewString_ReadMsgData(void *msgData, s32 strno);
void String16_FormatInteger(void *str, s32 num, u32 ndigits, s32 mode, s32 charset);
void BufferString(void *messageFormat, u32 fieldno, const void *string, s32 a3, s32 a4, s32 a5);
void StringExpandPlaceholders(void *messageFormat, void *dest, void *src);
void FillWindowPixelBuffer(void *window, u8 fillValue);
u8 AddTextPrinterParameterizedWithColor(void *window, s32 fontId, void *string, u32 x, u32 y, u32 textSpeed, u32 color, void *callback);
void ScheduleWindowCopyToVram(void *window);
void String_Delete(void *string);
void MessageFormat_ResetBuffers(void *messageFormat);
void MessageFormat_Delete(void *messageFormat);

void ov40_02242E4C(UnkStruct_ov40_02242E4C_860 *p, UnkStruct_ov40_02242E4C_work *q)
{
    void *messageFormat;
    void *s0;
    void *s1;
    void *s2;
    void *msg;
    void *out;
    u64 value;
    u64 quotient;

    messageFormat = ov40_0222DAB0(0x6D);
    value = ((u64)p->hi << 32) | p->lo;
    s0 = String_New(0xFF, 0x6D);
    s1 = String_New(0xFF, 0x6D);
    s2 = String_New(0xFF, 0x6D);
    quotient = value / 100000;
    msg = NewString_ReadMsgData(q->msgData, 0x127);
    out = String_New(0xFF, 0x6D);
    String16_FormatInteger(s0, (s32)(value % 100000), 5, 2, 1);
    String16_FormatInteger(s1, (s32)(quotient % 100000), 5, 2, 1);
    String16_FormatInteger(s2, (s32)(quotient / 100000), 2, 2, 1);
    BufferString(messageFormat, 2, s0, 0, 1, 2);
    BufferString(messageFormat, 1, s1, 0, 1, 2);
    BufferString(messageFormat, 0, s2, 0, 1, 2);
    StringExpandPlaceholders(messageFormat, out, msg);
    FillWindowPixelBuffer(q->window, 0xCC);
    AddTextPrinterParameterizedWithColor(q->window, 0, out, 0, 0, 0xFF, 0xF0D00, 0);
    ScheduleWindowCopyToVram(q->window);
    String_Delete(s0);
    String_Delete(s1);
    String_Delete(s2);
    String_Delete(msg);
    String_Delete(out);
    MessageFormat_ResetBuffers(messageFormat);
    MessageFormat_Delete(messageFormat);
}
