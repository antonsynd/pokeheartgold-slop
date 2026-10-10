typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef s32 fx32;

typedef struct UnkStruct_ov40_02233AEC_860 {
    u8 filler_00[4];
    float scale[5];     // 0x04
    s32 radius[5];      // 0x18
    s32 angle[5];       // 0x2C
    void *spritesA[5];  // 0x40
    void *spritesB[5];  // 0x54
    void *spritesC[5];  // 0x68
    u8 filler_7C[0x58];
    u8 unk_D4[4];       // 0xD4
    u8 unk_D8[4];       // 0xD8
} UnkStruct_ov40_02233AEC_860;

typedef struct UnkStruct_ov40_02233AEC {
    u8 filler_00[0x860];
    UnkStruct_ov40_02233AEC_860 *work; // 0x860
} UnkStruct_ov40_02233AEC;

void ov40_0222DA00(void *a, void *b, s32 c, s32 d);
void ManagedSprite_SetAffineOverwriteMode(void *sprite, u8 mode);
fx32 GF_SinDeg(u16 deg);
fx32 GF_CosDeg(u16 deg);
void ManagedSprite_SetPositonFxXY(void *sprite, fx32 x, fx32 y);
void ManagedSprite_GetPositionXY(void *sprite, s16 *x, s16 *y);
void ManagedSprite_SetPositionXY(void *sprite, s16 x, s16 y);
void ManagedSprite_SetAffineScale(void *sprite, float x, float y);

s32 ov40_02233AEC(UnkStruct_ov40_02233AEC *p)
{
    UnkStruct_ov40_02233AEC_860 *w = p->work;
    s16 pos[2];
    s32 i;

    for (i = 0; i < 5; i++) {
        s32 angle = w->angle[i] + 20;
        w->angle[i] = angle;
        w->angle[i] = angle % 360;
    }

    if (w->angle[0] == 0x14) {
        for (i = 0; i < 5; i++) {
            ManagedSprite_SetAffineOverwriteMode(w->spritesA[i], 2);
            ManagedSprite_SetAffineOverwriteMode(w->spritesB[i], 2);
            ManagedSprite_SetAffineOverwriteMode(w->spritesC[i], 2);
        }
    }

    ov40_0222DA00(&w->unk_D4, &w->unk_D8, 1, 0);

    for (i = 0; i < 5; i++) {
        if (w->angle[0] != 0) {
            w->scale[i] = w->scale[i] - 0.05f;
        } else {
            ManagedSprite_SetDrawFlag(w->spritesC[i], 0);
            ManagedSprite_SetDrawFlag(w->spritesA[i], 0);
            ManagedSprite_SetDrawFlag(w->spritesB[i], 0);
        }
        {
            u32 deg = w->angle[i];
            fx32 sinv = GF_SinDeg((u16)deg);
            fx32 x = sinv * w->radius[i];
            u32 deg2 = w->angle[i];
            fx32 cosv = GF_CosDeg((u16)deg2);
            fx32 y = cosv * w->radius[i];
            ManagedSprite_SetPositonFxXY(w->spritesC[i], 0x80000 - x, 0x6A000 - y);
        }
        ManagedSprite_GetPositionXY(w->spritesC[i], &pos[1], &pos[0]);
        ManagedSprite_SetPositionXY(w->spritesA[i], (s16)(pos[1] - 0x20), (s16)(pos[0] - 2));
        ManagedSprite_SetPositionXY(w->spritesB[i], (s16)(pos[1] + 0x10), (s16)(pos[0] - 2));
        ManagedSprite_SetAffineScale(w->spritesC[i], w->scale[i], w->scale[i]);
        ManagedSprite_SetAffineScale(w->spritesA[i], w->scale[i], w->scale[i]);
        ManagedSprite_SetAffineScale(w->spritesB[i], w->scale[i], w->scale[i]);
    }

    if (w->angle[0] != 0) {
        return 1;
    }
    return 0;
}
