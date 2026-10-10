typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

typedef struct UnkStruct_ov40_0223E520_860 {
    u8 unk_00[4];       // 0x00
    u8 unk_04[4];       // 0x04
    u32 unk_08;         // 0x08
    u8 filler_0C[0x4B6];
    u8 unk_4C2;         // 0x4C2
} UnkStruct_ov40_0223E520_860;

typedef struct UnkStruct_ov40_0223E520 {
    u8 filler_00[8];
    s32 state;          // 0x08
    u8 filler_0C[0x1C];
    void *palette;      // 0x28
    u8 filler_2C[0x2C];
    u32 blendTarget;    // 0x58
    u8 filler_5C[0x420];
    u8 unk_47C[0x10];   // 0x47C
    s16 unk_48C;        // 0x48C
    u8 filler_48E[0x0E];
    u8 unk_49C[0x20];   // 0x49C
    u8 filler_4BC[0x3A4];
    UnkStruct_ov40_0223E520_860 *work; // 0x860
} UnkStruct_ov40_0223E520;

extern const u8 ov40_02245650[];
extern const u8 ov40_02245758[];
extern const u8 ov40_02245784[];

void ov40_0222DF60(UnkStruct_ov40_0223E520 *p, s32 b);
void ov40_0223DCF0(UnkStruct_ov40_0223E520 *p, u32 b);
void ov40_022420B4(UnkStruct_ov40_0223E520 *p, s32 b);
void ov40_022307DC(UnkStruct_ov40_0223E520 *p, s32 b, s32 c);
s32 ov40_0222DA84(void *a, s32 b);
s32 ov40_0222DA00(void *a, void *b, s32 c, s32 d);
void ov40_02230964(UnkStruct_ov40_0223E520 *p, s32 b);
void ov40_0222F9D4(void *a, UnkStruct_ov40_0223E520 *p);
void ov40_0222F734(void *a);
s32 sub_02087E1C(UnkStruct_ov40_0223E520 *p);
void ov40_0222E8C4(void *a, UnkStruct_ov40_0223E520 *p, const u8 *c);
void ov40_0222FA5C(void *a, void *b);
void ov40_0222F740(void *a, UnkStruct_ov40_0223E520 *p, s32 c);
void ov40_0222FA88(void *a);
void ov40_0222F6D0(void *a, s32 b);
u32 ov40_0222F38C(void *a, UnkStruct_ov40_0223E520 *p);
s32 TouchscreenHitbox_TouchNewIsIn(const u8 *hitbox);
void ov40_02230944(UnkStruct_ov40_0223E520 *p);
void ov40_0222FA24(void *a);
void ov40_0222F720(void *a);
void ov40_0222F920(void *a, UnkStruct_ov40_0223E520 *p);
void ov40_0222FA18(void *a);
void ov40_0222BF80(UnkStruct_ov40_0223E520 *p, s32 b);
void PaletteData_BlendPalettes(void *data, s32 bufferID, u16 selectedBuffer, u8 cur, u16 target);

s32 ov40_0223E520(UnkStruct_ov40_0223E520 *p)
{
    UnkStruct_ov40_0223E520_860 *w = p->work;

    switch (p->state) {
    case 0:
        ov40_0222DF60(p, 0x71);
        w->unk_4C2 = 0xFF;
        ov40_0223DCF0(p, w->unk_4C2);
        ov40_022420B4(p, 1);
        ov40_022307DC(p, 0x3D, 7);
        p->state = p->state + 1;
        break;
    case 1:
        ov40_0222DA84(&w->unk_08, 0);
        if (ov40_0222DA00(w->unk_00, w->unk_04, 0, 2)) {
            ov40_02230964(p, 1);
            ov40_0222F9D4(p->unk_47C, p);
            ov40_0222F734(p->unk_49C);
            if (sub_02087E1C(p) == 1) {
                ov40_0222E8C4(p->unk_49C, p, ov40_02245784);
            } else {
                ov40_0222E8C4(p->unk_49C, p, ov40_02245758);
            }
            ov40_0222FA5C(p->unk_47C, (u8 *)p + 0x49C);
            ov40_0222F740(p->unk_49C, p, 2);
            ov40_02230964(p, 0);
            p->state = p->state + 1;
        }
        PaletteData_BlendPalettes(p->palette, 3, 12, (u8)w->unk_08, (u16)p->blendTarget);
        break;
    case 2:
        ov40_0222FA88(p->unk_47C);
        ov40_0222F6D0(p->unk_49C, p->unk_48C);
        {
            u32 v = ov40_0222F38C(p->unk_49C, p);
            if (v != 0) {
                w->unk_4C2 = (u8)v;
                ov40_0223DCF0(p, v);
                p->state = p->state + 1;
            }
        }
        if (TouchscreenHitbox_TouchNewIsIn(ov40_02245650)) {
            ov40_02230944(p);
            p->state = p->state + 1;
        }
        break;
    case 3:
        ov40_0222FA24(p->unk_47C);
        ov40_0222F720(p->unk_49C);
        ov40_0222F920(p->unk_49C, p);
        ov40_0222FA18(p->unk_47C);
        ov40_0222F734(p->unk_49C);
        p->state = p->state + 1;
        // fall through
    case 4:
        ov40_0222DA84(&w->unk_08, 1);
        if (ov40_0222DA00(w->unk_00, w->unk_04, 1, 2)) {
            ov40_022420B4(p, 0);
            p->state = p->state + 1;
        }
        PaletteData_BlendPalettes(p->palette, 3, 12, (u8)w->unk_08, (u16)p->blendTarget);
        break;
    default:
        ov40_0222BF80(p, 11);
        break;
    }
    return 0;
}
