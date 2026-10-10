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

typedef struct UnkStruct_ov40_0222F09C_Entry {
    u32 unk_00;
    u32 id;
    u64 value;
} UnkStruct_ov40_0222F09C_Entry;

typedef struct UnkStruct_ov40_0222F09C_Config {
    UnkStruct_ov40_0222F09C_Entry *entries;
    int unk_04;
    int unk_08;
} UnkStruct_ov40_0222F09C_Config;

typedef struct UnkStruct_ov40_0222F09C_Work {
    u8 filler_00[4];
    int unk_04;
    s16 unk_08;
    u8 filler_0A[2];
    int unk_0C;
    int unk_10;
    u8 filler_14[4];
    Window window;
    UnkStruct_ov40_0222F09C_Config *unk_28;
    u8 filler_2C[8];
    MsgData *unk_34;
} UnkStruct_ov40_0222F09C_Work;

typedef struct UnkStruct_ov40_0222F09C_Param1 {
    u8 filler_00[0x48];
    MsgData *msgData;
} UnkStruct_ov40_0222F09C_Param1;

MessageFormat *ov40_0222DAB0(enum HeapID heapID);
int ov40_022307B0(u64 value);

int ov40_0222F09C(UnkStruct_ov40_0222F09C_Work *work, UnkStruct_ov40_0222F09C_Param1 *param1, int param2, int param3, String *param4) {
    // The original reads a three-entry table and a 30-entry rank array on its stack with unchecked
    // indexes. The table sits 0x298 bytes below the entry stack pointer and the rank array 0x8C
    // bytes below it; past the array are the five registers it pushed, then the caller's stack.
    // Listing r4-r6 as clobbered makes the compiler push the same five registers as the original.
    __asm__ volatile("" : : : "r4", "r5", "r6");
    u32 *entrySp = (u32 *)((u8 *)__builtin_frame_address(0) + 8);
    int counts[3] = { 16, 12, 20 };
    int v10[30] = { 0 };
    int v8 = 0;
    u32 lastHi = 0;
    u64 v9 = 0;
    int first;
    int end;
    int row;
    int i;
    int count;
    Window *window;
    MessageFormat *msgFmt;
    String *v5;
    String *v3;
    String *v4;
    String *v6;
    String *v11;
    u16 speciesName[255];

    param4 = param4;

    if (work->unk_08 == work->unk_0C) {
        return 0;
    }
    if (work->unk_10 == work->unk_04) {
        return 0;
    }

    window = &work->window;
    msgFmt = ov40_0222DAB0(0x6D);
    FillWindowPixelBuffer(window, 0);
    row = 0;
    first = work->unk_08;
    end = first + work->unk_10;
    if (end >= work->unk_04) {
        end = work->unk_04;
        first = work->unk_04 - work->unk_10;
    }

    v9 = work->unk_28->entries[0].value;
    v10[0] = 0;
    if ((u32)param3 < 3) {
        count = counts[param3];
    } else {
        // Offset of the read from the original's sp. Below the pushed registers it lands in
        // locals that are still zero at this point (the species name buffer and the rank array).
        u32 offset = 0x60 + param3 * 4;
        if (offset < 0x2E4 || ((int)offset < 0 && (int)offset >= -0xFD08)) {
            count = 0;
        } else {
            count = *(int *)((u8 *)entrySp - 0x2F8 + offset);
        }
    }
    for (i = 1; i < count; i++) {
        u64 v14 = work->unk_28->entries[i].value;
        int *rank = i < 30 ? &v10[i] : (int *)&entrySp[i - 35];
        lastHi = (u32)(v14 >> 32);
        if (v14 == v9) {
            *rank = v8;
        } else {
            v9 = v14;
            *rank = i;
            v8 = i;
        }
    }

    for (i = first; i < end; i++) {
        u64 value;
        int rank;
        v3 = NewString_ReadMsgData(param1->msgData, param3 + 0x58);
        v4 = String_New(0xFF, 0x6D);
        v6 = String_New(0xFF, 0x6D);
        v11 = String_New(0xFF, 0x6D);

        switch (param3) {
        case 0:
            v5 = NewString_ReadMsgData(work->unk_34, work->unk_28->entries[i].id);
            BufferString(msgFmt, 1, v5, 0, 1, 2);
            break;
        case 1:
            v5 = String_New(0xFF, 0x6D);
            BufferMonthNameAbbr(msgFmt, 1, work->unk_28->entries[i].id);
            break;
        case 2:
            v5 = String_New(0xFF, 0x6D);
            GetSpeciesNameIntoArray(work->unk_28->entries[i].id, 0x6D, speciesName);
            CopyU16ArrayToString(v5, speciesName);
            BufferString(msgFmt, 1, v5, 0, 1, 2);
            break;
        }

        value = work->unk_28->entries[i].value;
        String16_FormatUnsignedLongLong(v11, (u32)value, (u32)(value >> 32), ov40_022307B0(value), 0, 1);
        if (i >= 0 && i < 30) {
            rank = v10[i];
        } else if (i < 0 && i >= -128) {
            rank = 0;
        } else if (i < -128 && i >= -131) {
            rank = counts[i + 131];
        } else if (i < -131 && i >= -155) {
            // The original's own locals below the table, as they stand when the rank is read.
            u32 locals[24] = {
                1, 1, row > 0 ? 0xF0D00 : 0, 0,
                (u32)param1, (u32)param3, (u32)i, (u32)param3 + 0x58,
                (u32)entrySp - 0x8C + i * 4, (u32)value, (u32)(value >> 32), param3 == 2 ? work->unk_28->entries[i].id : 0,
                param3 == 1 ? work->unk_28->entries[i].id : 0, (u32)end, (u32)v9, (u32)(v9 >> 32),
                (u32)v8, (u32)row, (u32)v11, (u32)v5,
                (u32)v4, (u32)v3, (u32)window, lastHi,
            };
            rank = locals[155 + i];
        } else if (i < -155 && (int)(0x26C + (u32)i * 4) < 0 && (int)(0x26C + (u32)i * 4) >= -0xFD08) {
            // Below the original's sp, still inside the untouched stack: zero.
            rank = 0;
        } else {
            rank = *(int *)((u8 *)entrySp - 0x8C + (u32)i * 4);
        }
        String16_FormatInteger(v4, rank + 1, 2, 1, 1);
        BufferString(msgFmt, 0, v4, 0, 1, 2);
        StringExpandPlaceholders(msgFmt, v6, v3);
        AddTextPrinterParameterizedWithColor(window, 0, v6, 0, row * (work->unk_28->unk_08 << 4), 0xFF, 0xF0D00, NULL);
        if (work->unk_28->unk_08 == 2 && param4 != NULL) {
            BufferString(msgFmt, 2, v11, 0, 1, 2);
            StringExpandPlaceholders(msgFmt, v6, param4);
            AddTextPrinterParameterizedWithColor(window, 0, v6, 0x10, row * (work->unk_28->unk_08 << 4) + 0x10, 0xFF, 0xF0D00, NULL);
        }
        row++;
        String_Delete(v3);
        String_Delete(v4);
        String_Delete(v5);
        String_Delete(v6);
        String_Delete(v11);
        MessageFormat_ResetBuffers(msgFmt);
    }

    ScheduleWindowCopyToVram(window);
    MessageFormat_Delete(msgFmt);
    work->unk_0C = work->unk_08;
    return 0;
}
