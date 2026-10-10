typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

typedef struct UnkStruct_ov40_022363BC_860 {
    u8 filler_000[0x2C];
    u16 species[30];    // 0x2C
    u8 filler_68[0xF0];
    s32 unk_158;        // 0x158
    u8 form[30];        // 0x15C
    u8 filler_17A[0x36];
    s32 unk_1B0;        // 0x1B0
    u8 filler_1B4[0x2DB4];
    s32 unk_2F68;       // 0x2F68
    s32 unk_2F6C;       // 0x2F6C
} UnkStruct_ov40_022363BC_860;

typedef struct UnkStruct_ov40_022363BC {
    u8 filler_00[0x6F0];
    void *unk_6F0;      // 0x6F0
    u8 filler_6F4[0x16C];
    UnkStruct_ov40_022363BC_860 *work; // 0x860
} UnkStruct_ov40_022363BC;

void ov40_02230944(UnkStruct_ov40_022363BC *a);
void ov40_022361E0(UnkStruct_ov40_022363BC_860 *a);
void sub_020878B8(void *a, s16 x, s16 y);
void ov40_02230964(UnkStruct_ov40_022363BC *a, s32 b);
void ov40_02237564(UnkStruct_ov40_022363BC *a);
void ov40_02237474(UnkStruct_ov40_022363BC *a);
void ov40_022371E4(UnkStruct_ov40_022363BC *a, s32 b);
s32 ov40_022371D4(s32 a, s32 b);
void PlayCry(u16 species, u8 form);
void sub_020879E0(void *a, s32 b);
void sub_02087A08(void *a, s32 b, s32 c);
void ov40_0222BF80(UnkStruct_ov40_022363BC *a, s32 b);

void ov40_022363BC(u32 param0, u32 param1, UnkStruct_ov40_022363BC *p)
{
    UnkStruct_ov40_022363BC_860 *w = p->work;

    if (param1 != 0) {
        return;
    }

    if (param0 == 0) {
        ov40_02230944(p);

        w->unk_1B0 = w->unk_1B0 + 1;
        w->unk_1B0 = w->unk_1B0 % 30;

        ov40_022361E0(w);

        w->unk_2F68 = w->unk_1B0 % 6;
        w->unk_2F6C = w->unk_1B0 / 6;

        sub_020878B8(p->unk_6F0, (s16)(w->unk_2F68 * 24 + 110), (s16)(w->unk_2F6C * 22 + 52));

        ov40_02230964(p, 1);
        ov40_02237564(p);
        ov40_02237474(p);
        ov40_02230964(p, 0);
        ov40_022371E4(p, w->unk_1B0);

        if (w->species[w->unk_1B0] != 0) {
            if (ov40_022371D4(w->unk_158, 1 << w->unk_1B0) != 1) {
                PlayCry(w->species[w->unk_1B0], w->form[w->unk_1B0]);
            }
        }
    } else if (param0 == 1) {
        ov40_02230944(p);
        sub_020879E0(p->unk_6F0, 0);
        sub_02087A08(p->unk_6F0, 0, 0);
        ov40_0222BF80(p, 11);
    }
}
