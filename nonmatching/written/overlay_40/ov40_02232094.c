typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

typedef struct UnkStruct_ov40_02232094 {
    u8 filler_00[8];
    s32 state;          // 0x08
    u8 filler_0C[0x1C];
    void *palette;      // 0x28
    u8 filler_2C[0x28];
    u32 blendCur;       // 0x54
    u32 blendTarget;    // 0x58
    u8 cycle;           // 0x5C
} UnkStruct_ov40_02232094;

void ov40_0222BF80(UnkStruct_ov40_02232094 *a, s32 b);
void GfGfx_EngineATogglePlanes(u8 planeMask, u8 enable);
void GfGfx_EngineBTogglePlanes(u8 planeMask, u8 enable);
void *ov40_0222DAC0(UnkStruct_ov40_02232094 *a);
void ov40_0222DBEC(UnkStruct_ov40_02232094 *a, u32 b);
s32 ov40_0222DA84(u32 *cur, s32 dir);
void PaletteData_BlendPalettes(void *data, s32 bufferID, u16 selectedBuffer, u8 cur, u16 target);

static void BlendAll(UnkStruct_ov40_02232094 *p)
{
    PaletteData_BlendPalettes(p->palette, 2, 0xFFFF, (u8)p->blendCur, (u16)p->blendTarget);
    PaletteData_BlendPalettes(p->palette, 0, 0xFFFF, (u8)p->blendCur, (u16)p->blendTarget);
    PaletteData_BlendPalettes(p->palette, 3, 0xFFFF, (u8)p->blendCur, (u16)p->blendTarget);
    PaletteData_BlendPalettes(p->palette, 1, 0xFFFF, (u8)p->blendCur, (u16)p->blendTarget);
}

u32 ov40_02232094(UnkStruct_ov40_02232094 *p)
{
    switch (p->state) {
    case 0:
        p->blendCur = 0;
        p->cycle++;
        p->cycle %= 7;
        p->blendTarget = (u32)ov40_0222DAC0(p);
        p->state++;
        break;
    case 1:
        if (ov40_0222DA84(&p->blendCur, 1)) {
            p->state++;
        }
        BlendAll(p);
        break;
    case 2:
        GfGfx_EngineATogglePlanes(0x10, 0);
        GfGfx_EngineBTogglePlanes(0x10, 0);
        ov40_0222DBEC(p, p->cycle);
        BlendAll(p);
        p->state++;
        break;
    case 3:
        GfGfx_EngineATogglePlanes(0x10, 1);
        GfGfx_EngineBTogglePlanes(0x10, 1);
        p->state++;
        break;
    case 4:
        if (ov40_0222DA84(&p->blendCur, 0)) {
            p->state++;
        }
        BlendAll(p);
        break;
    default:
        p->blendCur = 0;
        ov40_0222BF80(p, 0);
        break;
    }
    return 0;
}
