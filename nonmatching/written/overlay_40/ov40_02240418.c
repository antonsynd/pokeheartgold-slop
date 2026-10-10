typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

typedef struct UnkStruct_ov40_02240418_860 {
    u8 unk_00[4];       // 0x00
    u8 unk_04[4];       // 0x04
    u32 unk_08;         // 0x08
    u8 filler_0C[0x3E8];
    u32 unk_3F4[5];     // 0x3F4
    u8 filler_408[0x74];
    u32 unk_47C[8];     // 0x47C
    u8 filler_49C[0xC];
    void *unk_4A8;      // 0x4A8
    void *unk_4AC;      // 0x4AC
} UnkStruct_ov40_02240418_860;

typedef struct UnkStruct_ov40_02240418 {
    u8 filler_00[8];
    s32 state;          // 0x08
    u8 filler_0C[8];
    u32 unk_14;         // 0x14
    u32 unk_18;         // 0x18
    u32 unk_1C;         // 0x1C
    u8 filler_20[4];
    u32 unk_24;         // 0x24
    void *palette;      // 0x28
    u8 filler_2C[0x2C];
    u32 blendTarget;    // 0x58
    u8 filler_5C[0x7D4];
    void *saveData;     // 0x830
    u8 filler_834[0x2C];
    UnkStruct_ov40_02240418_860 *work; // 0x860
} UnkStruct_ov40_02240418;

void *Save_PlayerData_GetOptionsAddr(void *saveData);
void *ov40_02242FAC(s32 heapId, s32 b, s32 *c, void *options);
void ov40_02241FD0(UnkStruct_ov40_02240418 *p);
void ov40_0222D910(void *a, void *b, s32 c, s32 d, s32 e, s32 f, s32 g);
void GfGfx_EngineATogglePlanes(u8 planeMask, u8 enable);
s32 ov40_0222DA84(void *a, s32 b);
s32 ov40_0222DA00(void *a, void *b, s32 c, s32 d);
void ov40_0222DD9C(UnkStruct_ov40_02240418 *p, s32 b);
void PaletteData_BlendPalettes(void *data, s32 bufferID, u16 selectedBuffer, u8 cur, u16 target);
void ov40_0222BF80(UnkStruct_ov40_02240418 *p, s32 b);

s32 ov40_02240418(UnkStruct_ov40_02240418 *p)
{
    UnkStruct_ov40_02240418_860 *w = p->work;

    switch (p->state) {
    case 0: {
        s32 args[3];
        const u32 *src;
        u32 *dst;
        u32 a, b;

        args[0] = 2;
        args[1] = 5;
        args[2] = 5;
        w->unk_4AC = ov40_02242FAC(0x6D, 12, args, Save_PlayerData_GetOptionsAddr(p->saveData));
        w->unk_3F4[0] = p->unk_14;
        w->unk_3F4[1] = p->unk_18;
        w->unk_3F4[2] = p->unk_1C;
        w->unk_3F4[3] = p->unk_24;
        w->unk_3F4[4] = (u32)p->palette;
        src = (const u32 *)((u32)w->unk_4AC & ~3u);
        dst = w->unk_47C;
        a = src[0]; b = src[1]; dst[0] = a; dst[1] = b;
        a = src[2]; b = src[3]; dst[2] = a; dst[3] = b;
        a = src[4]; b = src[5]; dst[4] = a; dst[5] = b;
        a = src[6]; b = src[7]; dst[6] = a; dst[7] = b;
        w->unk_4A8 = p;
        ov40_02241FD0(p);
        p->state = p->state + 1;
    }
        // fall through
    case 1:
        ov40_0222D910(w, w->unk_04, 8, 0x12, 8, 0x12, 0);
        GfGfx_EngineATogglePlanes(8, 1);
        p->state = p->state + 1;
        break;
    case 2:
        ov40_0222DA84(&w->unk_08, 0);
        if (ov40_0222DA00(w, w->unk_04, 0, 0)) {
            ov40_0222DD9C(p, 0x70);
            p->state = p->state + 1;
        }
        PaletteData_BlendPalettes(p->palette, 2, 12, (u8)w->unk_08, (u16)p->blendTarget);
        break;
    default:
        ov40_0222BF80(p, 3);
        break;
    }
    return 0;
}
