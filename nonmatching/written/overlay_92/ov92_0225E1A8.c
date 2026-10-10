typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;
typedef signed int s32;

extern const s16 ov92_02263BEC[36];

void GfGfxLoader_LoadScrnDataFromOpenNarc(void *narc, s32 memberNo, void *bgConfig, u32 layer, u32 tileStart, u32 szByte, s32 isCompressed, s32 heapID);
void GF_AssertFail(void);
s32 ov90_022588A4(void *a, s32 b);
void *ov90_022588CC(void *a, s32 b);
void InitWindow(void *window);
void AddWindowParameterized(void *bgConfig, void *window, u8 bgId, u8 x, u8 y, u8 width, u8 height, u8 paletteNum, u16 baseTile);
void FillWindowPixelBuffer(void *window, u8 fillValue);
void *PlayerProfile_GetPlayerName_NewString(void *profile, s32 heapID);
u32 ov92_0225E188(void *window, void *string);
u8 AddTextPrinterParameterizedWithColorAndSpacing(void *window, s32 fontId, void *string, u32 x, u32 y, u32 textSpeed, u32 color, u32 letterSpacing, u32 lineSpacing, void *callback);
void String_Delete(void *string);
void CopyWindowToVram(void *window);

/* The original copies the ROM table to its stack and indexes it unchecked. boff is the byte offset
   from the start of that copy; past its end are the registers the original pushed (r4-r7, lr),
   then the caller's frame. */
static s16 ReadTable(char *entrySp, const u32 *saved, s32 boff)
{
    char *a;

    if ((u32)boff < 0x48) {
        return *(const s16 *)((const char *)ov92_02263BEC + boff);
    }
    if ((u32)(boff + 0x18) < 8) {
        /* a count of 1 puts the first row on the original's own locals just below the table: the
           offset counter (0) and the width/height slots, which are not written yet */
        return 0;
    }
    a = entrySp - 0x5C + boff;
    if (a >= entrySp - 0x14 && a < entrySp) {
        u32 w = saved[(a - (entrySp - 0x14)) >> 2];
        return (s16)(((u32)a & 2) ? (w >> 16) : w);
    }
    return *(s16 *)a;
}

void ov92_0225E1A8(char *param0, char *param1)
{
    u32 saved[5];
    char *entrySp;
    s32 v0;
    s32 v1 = 0;
    s32 v2 = 256;
    char *v3;
    s32 v5, v6, v7, v8;
    s32 v9;
    void *v10;
    s32 n = *(s32 *)(param1 + 4);
    s32 boff;

    __asm__ volatile("movs %0, r4" : "=l"(saved[0]) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(saved[1]) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(saved[2]) : : "cc");
    saved[3] = *(u32 *)__builtin_frame_address(0);
    __asm__ volatile("mov %0, lr" : "=l"(saved[4]));
    entrySp = (char *)__builtin_frame_address(0) + 8;

    switch (n) {
    case 2:
        GfGfxLoader_LoadScrnDataFromOpenNarc(**(void ***)(param1 + 0x14), 79, *(void **)(*(char **)(param1 + 0x14) + 0x10), 7, 0, 0, 0, 0x71);
        break;
    case 3:
        GfGfxLoader_LoadScrnDataFromOpenNarc(**(void ***)(param1 + 0x14), 80, *(void **)(*(char **)(param1 + 0x14) + 0x10), 7, 0, 0, 0, 0x71);
        break;
    case 4:
        GfGfxLoader_LoadScrnDataFromOpenNarc(**(void ***)(param1 + 0x14), 81, *(void **)(*(char **)(param1 + 0x14) + 0x10), 7, 0, 0, 0, 0x71);
        break;
    default:
        GF_AssertFail();
        break;
    }

    for (v0 = 0; v0 < *(s32 *)(param1 + 4); v0++) {
        if (v0 == *(s32 *)(param1 + 0)) {
            continue;
        }

        v9 = ov90_022588A4(param0 + 0x8C, v0);
        v10 = ov90_022588CC(param0 + 0x8C, v0);
        v3 = param1 + 0x1FF0 + v1 * 0x10;

        InitWindow(v3);

        boff = (*(s32 *)(param1 + 4) - 2) * 0x18 + v1 * 8;
        v7 = ReadTable(entrySp, saved, boff + 4);
        v8 = ReadTable(entrySp, saved, boff + 6);
        v6 = ReadTable(entrySp, saved, boff + 2);
        v5 = ReadTable(entrySp, saved, boff + 0);

        AddWindowParameterized(*(void **)(*(char **)(param1 + 0x14) + 0x10), v3, 7, v5, v6, v7, v8, 14, v2);
        v2 += v7 * v8;
        FillWindowPixelBuffer(v3, 0xFF);

        {
            void *v11 = PlayerProfile_GetPlayerName_NewString(v10, 0x71);
            u32 v12 = ov92_0225E188(v3, v11);

            if (v9 != 0) {
                AddTextPrinterParameterizedWithColorAndSpacing(v3, 0, v11, v12, 0, 0, 0x5060F, 0, 0, 0);
            } else {
                AddTextPrinterParameterizedWithColorAndSpacing(v3, 0, v11, v12, 0, 0, 0x1020F, 0, 0, 0);
            }
            String_Delete(v11);
        }

        CopyWindowToVram(v3);
        v1++;
    }
}
