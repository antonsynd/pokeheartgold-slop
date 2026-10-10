#include "global.h"

#include "bg_window.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "msgdata.h"
#include "pm_string.h"
#include "pokemon.h"

extern const u8 ov112_021F5578[];
extern const u8 ov112_021F4138[];
extern const u8 ov112_021F413C[];
extern void *const ov112_021FF528[];
extern const u8 ov112_021FE498[];

extern void ov112_021E8B74(u8 *a, u8 *b, u8 *c, u32 idx, u32 *out);
extern void ov112_021E8C5C(const u8 *a, BoxPokemon *boxMon, u8 *b);
extern void ov112_021E9148(Window *windows, u8 *data, const u8 *a, u32 *out);
extern s32 ov112_021E9470(u16 a);
extern s32 ov112_021E9480(u16 species, u8 a, u8 b);
extern s32 ov112_021E9464(BoxPokemon *boxMon);
extern void ov112_021E9A30(void *p, const u8 *table, u32 value);
extern void ov112_021E93BC(void *pixels, int a, int b, void *buf, int c, int d, int e, int f);

void ov112_021E8CB8(u8 *out, u8 *data) {
    Window windows[15];
    u32 tmp;
    u32 idx;
    void *buf;
    u32 i;
    int j;
    BoxPokemon *boxMon;
    BASE_STATS *personal;
    String *str;
    void *file;
    u32 base;
    u32 entry;
    const u8 *src;

    idx = (u8)*(u32 *)(data + 0x1D798);
    buf = Heap_Alloc((enum HeapID)0x9A, 0x180);
    for (i = 0; i < 15; i++) {
        AddWindowParameterized(*(BgConfig **)(data + 0x18), &windows[i], 1, 0, 0, ov112_021F5578[i], 2, 0, 0);
        FillWindowPixelBuffer(&windows[i], 0);
    }
    *(u16 *)out = *(u16 *)(data + 0x1D77C);
    AcquireBoxMonLock(*(BoxPokemon **)(data + 0x1E430));
    for (j = 0; j < 4; j++) {
        *(u16 *)(out + 4 + j * 2) = GetBoxMonData(*(BoxPokemon **)(data + 0x1E430), 0x36 + j, NULL);
    }
    out[0xC] = GetBoxMonData(*(BoxPokemon **)(data + 0x1E430), 0xA1, NULL);
    tmp = GetBoxMonData(*(BoxPokemon **)(data + 0x1E430), 0x70, NULL);
    out[0xD] = (out[0xD] & ~0x1F) | ((u8)tmp & 0x1F);
    out[0xD] &= ~0x80;
    tmp = BoxMonIsShiny(*(BoxPokemon **)(data + 0x1E430));
    out[0xE] = (out[0xE] & ~2) | ((tmp & 1) << 1);
    out[0x26] = GetBoxMonData(*(BoxPokemon **)(data + 0x1E430), 9, NULL);
    GetBoxMonData(*(BoxPokemon **)(data + 0x1E430), 0x75, out + 0x10);
    ReleaseBoxMonLock(*(BoxPokemon **)(data + 0x1E430), TRUE);
    personal = AllocAndLoadMonPersonal(*(u16 *)out, (enum HeapID)0x9A);
    tmp = GetPersonalAttr(personal, 0x1C);
    out[0xE] = (out[0xE] & ~1) | ((u8)tmp & 1);
    FreeMonPersonal(personal);
    tmp = GetBoxMonGender(*(BoxPokemon **)(data + 0x1E430));
    out[0xD] = (out[0xD] & ~0x60) | ((tmp & 3) << 5);

    base = idx * 0xC0;
    entry = *(u32 *)(ov112_021F413C + base);
    out[0x27] = entry - 1;
    str = NewString_ReadMsgData(*(MsgData **)(data + 0x1E44C), *(u32 *)(data + 0x1D798) + 0x5B);
    CopyStringToU16Array(str, (u16 *)(out + 0x28), 0x15);
    String_Delete(str);
    ov112_021E8B74(out + 0x52, out + 0x82, out + 0x88, idx, &tmp);
    ov112_021E8C5C(ov112_021F4138 + base + 0xBC, *(BoxPokemon **)(data + 0x1E430), out + 0x82);
    ov112_021E9148(windows, data, ov112_021F4138 + base, &tmp);

    for (j = 0; j < 3; j++) {
        file = GfGfxLoader_LoadFromNarc((NarcId)0xFA, ov112_021E9470(*(u16 *)(out + 0x52 + j * 0x10)), TRUE, (enum HeapID)0x9A, TRUE);
        MI_CpuCopy8(file, out + 0xB7E + j * 0x180, 0x180);
        Heap_Free(file);
    }
    file = GfGfxLoader_LoadFromNarc((NarcId)0x102, ov112_021E9480(*(u16 *)(out + 0x72), (out[0x7F] >> 5) & 3, 0), TRUE, (enum HeapID)0x9A, TRUE);
    MI_CpuCopy8(file, out + 0xFFE, 0x600);
    Heap_Free(file);

    for (j = 0; j < 3; j++) {
        ov112_021E93BC(windows[10 + j].pixelBuffer, 0xA, 2, buf, 0, 0, 0x50, 0x10);
        MI_CpuCopy8(buf, out + 0x15FE + j * 0x140, 0x140);
    }

    src = ov112_021F4138 + base;
    for (j = 0; j < 10; j++) {
        *(u16 *)(out + 0x8C + j * 2) = *(u16 *)(src + 0x80);
        *(u16 *)(out + 0xA0 + j * 2) = *(u16 *)(src + 0x82);
        out[0xB4 + j] = *(u16 *)(src + 0x84);
        src += 6;
    }
    MI_CpuCopy8(ov112_021FF528[entry], out + 0xBE, 0xC0);

    ov112_021E93BC(windows[13].pixelBuffer, 0xA, 2, buf, 0, 0, 0x50, 0x10);
    MI_CpuCopy8(buf, out + 0x17E, 0x140);

    file = GfGfxLoader_LoadFromNarc((NarcId)0xFA, ov112_021E9464(*(BoxPokemon **)(data + 0x1E430)), TRUE, (enum HeapID)0x9A, TRUE);
    MI_CpuCopy8(file, out + 0x2BE, 0x180);
    Heap_Free(file);

    if (*(u16 *)(data + 0x1D77C) == 0) {
        GF_AssertFail();
    }
    file = GfGfxLoader_LoadFromNarc((NarcId)0x102, ov112_021E9480(*(u16 *)(data + 0x1D77C), data[0x1D796], data[0x1D794]), TRUE, (enum HeapID)0x9A, TRUE);
    if (*(u16 *)(data + 0x1D77C) == 0x147) {
        ov112_021E9A30(file, ov112_021FE498, GetBoxMonData(*(BoxPokemon **)(data + 0x1E430), 0, NULL));
    }
    MI_CpuCopy8(file, out + 0x43E, 0x600);
    Heap_Free(file);

    ov112_021E93BC(windows[14].pixelBuffer, 0xA, 2, buf, 0, 0, 0x50, 0x10);
    MI_CpuCopy8(buf, out + 0xA3E, 0x140);

    for (j = 0; j < 10; j++) {
        ov112_021E93BC(windows[j].pixelBuffer, 0xC, 2, buf, 0, 0, 0x60, 0x10);
        MI_CpuCopy8(buf, out + 0x19BE + j * 0x180, 0x180);
    }
    for (i = 0; i < 15; i++) {
        RemoveWindow(&windows[i]);
    }
    Heap_Free(buf);
}
