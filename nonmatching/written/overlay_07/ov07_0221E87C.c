#include "global.h"

typedef struct {
    s16 startScanline;
    s16 endScanline;
    s16 scrollSpeed;
    s16 scrollAccum;
    u32 baseOffset;
} UnkStruct_ov07_0221E87C_Strip;

typedef struct {
    UnkStruct_ov07_0221E87C_Strip strips[16];
    void *bgScrollCtx; // 0xC0
} UnkStruct_ov07_0221E87C_Wave;

typedef struct {
    u8 unk0[0x18];
    int cancel; // 0x18
    u8 unk1C[4];
    UnkStruct_ov07_0221E87C_Wave *waveCtx; // 0x20
} UnkStruct_ov07_0221E87C;

extern void ov07_02222C60(void *ctx);
extern u32 *ov07_02222C84(void *ctx);
extern u32 ov07_02222D88(u16 x, u16 y);
extern void Heap_Free(void *ptr);
extern void SysTask_Destroy(void *task);

void ov07_0221E87C(void *task, UnkStruct_ov07_0221E87C *bgAnim) {
    int stripIdx, scanline;
    UnkStruct_ov07_0221E87C_Wave *waveCtx = bgAnim->waveCtx;
    u32 *buffer;

    if (bgAnim->cancel == 1) {
        ov07_02222C60(waveCtx->bgScrollCtx);
        Heap_Free(bgAnim->waveCtx);
        Heap_Free(bgAnim);
        SysTask_Destroy(task);
        return;
    }

    buffer = ov07_02222C84(waveCtx->bgScrollCtx);

    for (stripIdx = 0; stripIdx < 16; stripIdx++) {
        UnkStruct_ov07_0221E87C_Strip *strip = &waveCtx->strips[stripIdx];
        u32 *dst;
        strip->scrollAccum += strip->scrollSpeed;
        scanline = strip->startScanline;
        /* stmia ignores the low two address bits */
        dst = (u32 *)((u32)&buffer[scanline] & ~3);
        for (; scanline < strip->endScanline; scanline++) {
            u32 base = strip->baseOffset;
            s16 baseX = base & 0xffff;
            s16 baseY = base >> 16;
            *dst++ = ov07_02222D88(baseX + strip->scrollAccum, baseY);
        }
    }
}
