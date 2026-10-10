typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

typedef struct UnkStruct_ov40_0223527C_860 {
    u8 filler_000[0x228];
    void *unk_228;      // 0x228
    u8 filler_22C[8];
    s32 unk_234;        // 0x234
    u8 filler_238[0xAC];
    s32 unk_2E4;        // 0x2E4
} UnkStruct_ov40_0223527C_860;

typedef struct UnkStruct_ov40_0223527C {
    u8 filler_00[0x860];
    UnkStruct_ov40_0223527C_860 *work; // 0x860
} UnkStruct_ov40_0223527C;

extern const u8 ov40_022451C4[];
extern const u8 ov40_022451D0[];
extern const u8 ov40_022451D4[];
extern const u8 ov40_022451D8[];

s32 TouchscreenHitbox_TouchNewIsIn(const u8 *hitbox);
void ov40_02230944(UnkStruct_ov40_0223527C *a);
void ov40_0222BF80(UnkStruct_ov40_0223527C *a, s32 b);
void Thunk_G3X_Reset(void);
void ov41_0224B554(void *a);
void RequestSwap3DBuffers(s32 sortMode, s32 bufferMode);

s32 ov40_0223527C(UnkStruct_ov40_0223527C *p)
{
    UnkStruct_ov40_0223527C_860 *w = p->work;

    if (TouchscreenHitbox_TouchNewIsIn(ov40_022451C4)) {
        ov40_02230944(p);
        ov40_0222BF80(p, 9);
    }

    if (TouchscreenHitbox_TouchNewIsIn(ov40_022451D0)) {
        ov40_02230944(p);
        ov40_0222BF80(p, 10);
    }

    if (TouchscreenHitbox_TouchNewIsIn(ov40_022451D4)) {
        s32 v = w->unk_234;
        if (v == 0) {
            v = w->unk_2E4;
        }
        w->unk_234 = v - 1;
        ov40_02230944(p);
        ov40_0222BF80(p, 11);
    }

    if (TouchscreenHitbox_TouchNewIsIn(ov40_022451D8)) {
        w->unk_234 = w->unk_234 + 1;
        w->unk_234 = w->unk_234 % w->unk_2E4;
        ov40_02230944(p);
        ov40_0222BF80(p, 11);
    }

    if (w->unk_228 != 0) {
        Thunk_G3X_Reset();
        ov41_0224B554(w->unk_228);
        RequestSwap3DBuffers(0, 0);
    }

    return 0;
}
