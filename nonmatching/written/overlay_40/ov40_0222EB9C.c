// The header declares these with u16/u64 parameters; the original passes the raw 32-bit words
// (r0, and the u64 split over r1/r2), so they are renamed away while the headers are read and
// declared that way below.
#define GetSpeciesNameIntoArray GetSpeciesNameIntoArray_header
#define String16_FormatUnsignedLongLong String16_FormatUnsignedLongLong_header
#include "global.h"
#include "bg_window.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"
#include "text.h"
#undef GetSpeciesNameIntoArray
#undef String16_FormatUnsignedLongLong

void GetSpeciesNameIntoArray(u32 species, enum HeapID heapID, u16 *dest);
void String16_FormatUnsignedLongLong(String *str, u32 lo, u32 hi, u32 ndigits, PrintingMode strConvMode, BOOL whichCharset);

typedef struct UnkStruct_ov40_0222EB9C_Entry {
    u32 unk_00;
    u32 id;
    u64 value;
} UnkStruct_ov40_0222EB9C_Entry;

typedef struct UnkStruct_ov40_0222EB9C_Config {
    UnkStruct_ov40_0222EB9C_Entry *entries;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
} UnkStruct_ov40_0222EB9C_Config;

typedef struct UnkStruct_ov40_0222EB9C_Work {
    int unk_00;
    int unk_04;
    u8 filler_08[4];
    int unk_0C;
    int unk_10;
    int unk_14;
    Window window;
    UnkStruct_ov40_0222EB9C_Config *unk_28;
    u8 filler_2C[8];
    MsgData *unk_34;
    u8 filler_38[8];
    int unk_40;
    int unk_44;
} UnkStruct_ov40_0222EB9C_Work;

typedef struct UnkStruct_ov40_0222EB9C_Param1 {
    u8 filler_00[0x24];
    BgConfig *bgConfig;
    u8 filler_28[0x48 - 0x28];
    MsgData *msgData;
} UnkStruct_ov40_0222EB9C_Param1;

MessageFormat *ov40_0222DAB0(enum HeapID heapID);
int ov40_022307B0(u64 value);

void ov40_0222EB9C(UnkStruct_ov40_0222EB9C_Work *work, UnkStruct_ov40_0222EB9C_Param1 *param1, MsgData *param2,
                   UnkStruct_ov40_0222EB9C_Config *param3, int param4, int param5, String *param6) {
    // The original reads a three-entry table on its stack with the unchecked index param5; the
    // table sits 0x298 bytes below the entry stack pointer.
    // The rank array v10 is the original's last local: indexes past its 30 entries read the pushed
    // r4-r7 and lr (the five words just below the entry stack pointer), then the caller's stack.
    // Listing r4-r6 as clobbered makes the compiler push the same five registers as the original.
    __asm__ volatile("" : : : "r4", "r5", "r6");
    u32 *entrySp = (u32 *)((u8 *)__builtin_frame_address(0) + 8);
    int counts[3] = { 16, 12, 20 };
    int v8 = 0;
    u64 v9 = 0;
    int v10[30] = { 0 };
    int v0;
    int count;
    Window *window;
    MessageFormat *msgFmt;
    String *v5;
    String *v3;
    String *v4;
    String *v6;
    String *v11;
    u16 speciesName[255];

    param5 = param5;
    param6 = param6;

    window = &work->window;
    work->unk_04 = param3->unk_04;
    work->unk_00 = 0;
    work->unk_0C = 0;
    work->unk_10 = param3->unk_24;
    work->unk_28 = param3;
    if (param2 != NULL) {
        work->unk_34 = param2;
    } else {
        work->unk_34 = param1->msgData;
    }

    work->unk_14 = work->unk_04 / work->unk_10 + 1;
    if (work->unk_04 < work->unk_10) {
        work->unk_10 = work->unk_04;
        work->unk_40 = work->unk_04 - 1;
        work->unk_44 = work->unk_10 - 1;
    }
    work->unk_40 = work->unk_10 / 2;
    work->unk_44 = work->unk_10 / 2;

    InitWindow(window);
    AddWindowParameterized(param1->bgConfig, window, param3->unk_20, param3->unk_0C, param3->unk_10, param3->unk_14, param3->unk_18, 14, param3->unk_1C);
    FillWindowPixelBuffer(window, 0);

    msgFmt = ov40_0222DAB0(0x6D);

    v9 = work->unk_28->entries[0].value;
    v10[0] = 0;
    if ((u32)param5 < 3) {
        count = counts[param5];
    } else {
        // Offset of the read from the original's sp. Below the pushed registers it lands in
        // locals that are still zero at this point (the species name buffer and the rank array).
        u32 offset = 0x58 + param5 * 4;
        if (offset < 0x2DC || ((int)offset < 0 && (int)offset >= -0xFD10)) {
            count = 0;
        } else {
            count = *(int *)((u8 *)entrySp - 0x2F0 + offset);
        }
    }
    for (v0 = 1; v0 < count; v0++) {
        u64 v14 = work->unk_28->entries[v0].value;
        int *rank = v0 < 30 ? &v10[v0] : (int *)&entrySp[v0 - 35];
        if (v14 == v9) {
            *rank = v8;
        } else {
            v9 = v14;
            *rank = v0;
            v8 = v0;
        }
    }

    for (v0 = 0; v0 < work->unk_10; v0++) {
        u64 value;
        v3 = NewString_ReadMsgData(param1->msgData, param5 + 0x58);
        v4 = String_New(0xFF, 0x6D);
        v6 = String_New(0xFF, 0x6D);
        v11 = String_New(0xFF, 0x6D);

        switch (param5) {
        case 0:
            v5 = NewString_ReadMsgData(work->unk_34, work->unk_28->entries[v0].id);
            BufferString(msgFmt, 1, v5, 0, 1, 2);
            break;
        case 1:
            v5 = String_New(0xFF, 0x6D);
            BufferMonthNameAbbr(msgFmt, 1, work->unk_28->entries[v0].id);
            break;
        case 2:
            v5 = String_New(0xFF, 0x6D);
            GetSpeciesNameIntoArray(work->unk_28->entries[v0].id, 0x6D, speciesName);
            CopyU16ArrayToString(v5, speciesName);
            BufferString(msgFmt, 1, v5, 0, 1, 2);
            break;
        }

        value = work->unk_28->entries[v0].value;
        String16_FormatUnsignedLongLong(v11, (u32)value, (u32)(value >> 32), ov40_022307B0(value), 0, 1);
        String16_FormatInteger(v4, (int)(v0 < 30 ? v10[v0] : entrySp[v0 - 35]) + 1, 2, 1, 1);
        BufferString(msgFmt, 0, v4, 0, 1, 2);
        StringExpandPlaceholders(msgFmt, v6, v3);
        AddTextPrinterParameterizedWithColor(window, 0, v6, 0, v0 * (work->unk_28->unk_08 << 4), 0xFF, 0xF0D00, NULL);
        if (work->unk_28->unk_08 == 2 && param6 != NULL) {
            BufferString(msgFmt, 2, v11, 0, 1, 2);
            StringExpandPlaceholders(msgFmt, v6, param6);
            AddTextPrinterParameterizedWithColor(window, 0, v6, 0x10, v0 * (work->unk_28->unk_08 << 4) + 0x10, 0xFF, 0xF0D00, NULL);
        }
        String_Delete(v3);
        String_Delete(v4);
        String_Delete(v5);
        String_Delete(v6);
        String_Delete(v11);
        MessageFormat_ResetBuffers(msgFmt);
    }

    ScheduleWindowCopyToVram(window);
    MessageFormat_Delete(msgFmt);
}
