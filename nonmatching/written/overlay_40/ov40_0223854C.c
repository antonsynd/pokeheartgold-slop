typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef volatile unsigned short vu16;

typedef struct Blob_ov40_0223854C {
    u32 words[0x67];
} Blob_ov40_0223854C;

typedef struct UnkStruct_ov40_0223854C_860 {
    u8 filler_000[4];
    union {
        Blob_ov40_0223854C blob;
        struct {
            u8 filler_00[0x28];
            u16 species[30];    // 0x2C
            u8 filler_64[0xF0];
            s32 unk_158;        // 0x158
            u8 form[30];        // 0x15C
        } f;
    } unk_04;
    u8 filler_1A0[4];
    u8 unk_1A4[4];      // 0x1A4
    u8 unk_1A8[4];      // 0x1A8
    u8 unk_1AC[4];      // 0x1AC (u32 value, address taken)
    s32 unk_1B0;        // 0x1B0
    u8 filler_1B4[0x17C];
    u32 unk_330;        // 0x330
    u8 filler_334[0x10];
    u32 unk_344;        // 0x344
    u8 filler_348[0x44];
    u8 *unk_38C[1];     // 0x38C (indexed; each entry points to a struct with the blob at 0x80)
} UnkStruct_ov40_0223854C_860;

typedef struct UnkStruct_ov40_0223854C {
    u8 filler_00[8];
    s32 state;          // 0x08
    u8 filler_0C[8];
    void *loader;       // 0x14
    u8 filler_18[0xC];
    void *bgConfig;     // 0x24
    void *palette;      // 0x28
    u8 filler_2C[0x2C];
    u32 blendTarget;    // 0x58
    u8 filler_5C[0x420];
    u8 unk_47C[0x20];   // 0x47C
    u8 unk_49C[0x38];   // 0x49C
    s32 unk_4D4;        // 0x4D4
    u8 filler_4D8[0x218];
    void *unk_6F0;      // 0x6F0
    void *unk_6F4;      // 0x6F4
    u8 filler_6F8[0x168];
    UnkStruct_ov40_0223854C_860 *work; // 0x860
} UnkStruct_ov40_0223854C;

void ov40_02237C74(UnkStruct_ov40_0223854C *p);
void ov40_02237D6C(UnkStruct_ov40_0223854C *p);
void ov40_02230964(UnkStruct_ov40_0223854C *p, s32 b);
void ov40_0222FA24(void *a);
void ov40_0222F720(void *a);
void ov40_0222F920(void *a, UnkStruct_ov40_0223854C *p);
void ov40_0222E7B8(void *a, UnkStruct_ov40_0223854C *p);
void ov40_022361B0(UnkStruct_ov40_0223854C *p);
void sub_020879E0(void *a, s32 b);
void sub_020878B0(void *a, s32 b);
void sub_02087A08(void *a, s32 b, s32 c);
void GfGfx_EngineATogglePlanes(u8 planeMask, u8 enable);
void GfGfx_EngineBTogglePlanes(u8 planeMask, u8 enable);
s32 ov40_0222DA00(void *a, void *b, s32 c, s32 d);
s32 ov40_0222DA84(void *a, s32 b);
void ov40_0223655C(UnkStruct_ov40_0223854C_860 *w);
void ov40_0222C710(UnkStruct_ov40_0223854C *p, s32 b);
void ov40_02236EB4(UnkStruct_ov40_0223854C *p);
void ov40_0223757C(UnkStruct_ov40_0223854C *p);
void ov40_0223707C(UnkStruct_ov40_0223854C *p, s32 b);
void ov40_02237548(UnkStruct_ov40_0223854C *p, s32 b);
void ov40_022373E4(UnkStruct_ov40_0223854C *p, s32 b);
void GfGfxLoader_LoadScrnDataFromOpenNarc(void *narc, s32 memberNo, void *bgConfig, s32 layer, u32 tileStart, u32 szByte, s32 isCompressed, s32 heapId);
void ov40_02237BD4(UnkStruct_ov40_0223854C *p);
void ov40_0223077C(UnkStruct_ov40_0223854C *p, void *a, s16 x, s16 y);
s32 ov40_022371D4(s32 a, s32 b);
void PlayCry(u16 species, u8 form);
void ov40_0222BF80(UnkStruct_ov40_0223854C *p, s32 b);
void PaletteData_BlendPalettes(void *data, s32 bufferID, u16 selectedBuffer, u8 cur, u16 target);

s32 ov40_0223854C(UnkStruct_ov40_0223854C *p)
{
    UnkStruct_ov40_0223854C_860 *w = p->work;

    switch (p->state) {
    case 0:
        ov40_02237C74(p);
        if (*(s32 *)((u8 *)w + 0x2F64) == 0) {
            ov40_02237D6C(p);
            ov40_02230964(p, 1);
            ov40_0222FA24(p->unk_47C);
            ov40_0222F720(p->unk_49C);
            ov40_0222F920(p->unk_49C, p);
            ov40_02230964(p, 0);
        } else {
            ov40_02230964(p, 1);
            ov40_0222E7B8((u8 *)w + 0x2ED8, p);
            ov40_022361B0(p);
            ov40_02230964(p, 0);
        }
        sub_020879E0(p->unk_6F4, 0);
        sub_020878B0(p->unk_6F0, 0);
        sub_020879E0(p->unk_6F0, 0);
        sub_02087A08(p->unk_6F0, 0, 0);
        GfGfx_EngineATogglePlanes(4, 0);
        p->state = p->state + 1;
        // fall through
    case 1:
        if (ov40_0222DA00(w->unk_1A4, w->unk_1A8, 1, 0)) {
            p->state = p->state + 1;
        }
        break;
    case 2:
        ov40_02230964(p, 1);
        {
            const u32 *src = (const u32 *)((u32)(w->unk_38C[p->unk_4D4] + 0x80) & ~3u);
            u32 *dst = w->unk_04.blob.words;
            s32 k;
            for (k = 0; k < 0x33; k++) {
                u32 a = src[0];
                u32 b = src[1];
                src += 2;
                dst[0] = a;
                dst[1] = b;
                dst += 2;
            }
            *dst = *src;
        }
        ov40_0223655C(w);
        ov40_0222C710(p, 2);
        ov40_02236EB4(p);
        ov40_0223757C(p);
        ov40_0223707C(p, 0xFF);
        ov40_02237548(p, 1);
        ov40_022373E4(p, 0);
        ov40_02230964(p, 0);
        GfGfx_EngineBTogglePlanes(4, 0);
        GfGfxLoader_LoadScrnDataFromOpenNarc(p->loader, 0x4B, p->bgConfig, 7, 0, 0, 0, 0x6D);
        GfGfx_EngineATogglePlanes(8, 1);
        GfGfx_EngineBTogglePlanes(8, 1);
        p->state = p->state + 1;
        break;
    case 3:
        if (ov40_0222DA00(w->unk_1A4, w->unk_1A8, 0, 0)) {
            ov40_02237548(p, 0);
            ov40_022373E4(p, 1);
            ov40_02237BD4(p);
            GfGfx_EngineBTogglePlanes(4, 1);
            GfGfx_EngineATogglePlanes(1, 1);
            GfGfx_EngineATogglePlanes(4, 1);
            *(vu16 *)0x04000050 = 0;
            p->state = p->state + 1;
        }
        break;
    default:
        if (ov40_0222DA84(w->unk_1AC, 0)) {
            w->unk_344 = w->unk_330;
            ov40_0223655C(w);
            *(s32 *)((u8 *)w + 0x2F68) = w->unk_1B0 % 6;
            *(s32 *)((u8 *)w + 0x2F6C) = w->unk_1B0 / 6;
            ov40_0223077C(p, p->unk_6F0, (s16)(*(s32 *)((u8 *)w + 0x2F68) * 24 + 110), (s16)(*(s32 *)((u8 *)w + 0x2F6C) * 22 + 52));
            sub_020879E0(p->unk_6F0, 1);
            sub_02087A08(p->unk_6F0, 12, 12);
            if (w->unk_04.f.species[w->unk_1B0] != 0) {
                if (ov40_022371D4(w->unk_04.f.unk_158, 1 << w->unk_1B0) != 1) {
                    PlayCry(w->unk_04.f.species[w->unk_1B0], w->unk_04.f.form[w->unk_1B0]);
                }
            }
            ov40_0222BF80(p, 10);
        }
        {
            u32 cur = *(u32 *)w->unk_1AC;
            PaletteData_BlendPalettes(p->palette, 3, 12, (u8)cur, (u16)p->blendTarget);
        }
        break;
    }
    return 0;
}
