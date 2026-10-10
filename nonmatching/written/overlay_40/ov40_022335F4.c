typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

typedef struct SpriteTemplate_ov40_022335F4 {
    s16 x;              // 0x00
    s16 y;              // 0x02
    s16 z;              // 0x04
    s16 animIdx;        // 0x06
    s32 priority;       // 0x08
    s32 plttIdx;        // 0x0C
    s32 vramType;       // 0x10
    s32 resources[6];   // 0x14
    s32 bgPriority;     // 0x2C
    s32 vramTransfer;   // 0x30
} SpriteTemplate_ov40_022335F4;

typedef struct UnkStruct_ov40_022335F4_860 {
    u8 filler_00[4];
    u32 scale[5];       // 0x04
    u8 filler_18[0x28];
    void *spritesA[5];  // 0x40
    void *spritesB[5];  // 0x54
    void *spritesC[5];  // 0x68
    void *digits[5];    // 0x7C
    s32 value;          // 0x90
} UnkStruct_ov40_022335F4_860;

typedef struct UnkStruct_ov40_022335F4 {
    u8 filler_00[0x18];
    void *spriteSystem; // 0x18
    void *spriteManager; // 0x1C
    u8 filler_20[0x810];
    void *saveData;     // 0x830
    u8 filler_834[0x2C];
    UnkStruct_ov40_022335F4_860 *work; // 0x860
} UnkStruct_ov40_022335F4;

const s32 ov40_022451B0[5] = { 0, 1, 4, 3, 2 };

void *Save_VarsFlags_Get(void *saveData);
u16 Save_VarsFlags_GetBattleTowerPrintProgress(void *state);
u16 Save_VarsFlags_GetBattleFactoryPrintProgress(void *state);
u16 Save_VarsFlags_GetBattleArcadePrintProgress(void *state);
u16 Save_VarsFlags_GetBattleCastlePrintProgress(void *state);
u16 Save_VarsFlags_GetBattleHallPrintProgress(void *state);
void *SpriteSystem_NewSprite(void *spriteSystem, void *spriteManager, const SpriteTemplate_ov40_022335F4 *tmpl);
void ManagedSprite_SetAnim(void *sprite, s32 anim);
void ManagedSprite_TickFrame(void *sprite);
void ManagedSprite_SetAffineScale(void *sprite, u32 x, u32 y);
void ManagedSprite_SetPaletteOverride(void *sprite, s32 index);
void ManagedSprite_SetDrawFlag(void *sprite, s32 flag);
void ManagedSprite_SetAffineOverwriteMode(void *sprite, u8 mode);
void ov40_0222D288(void *sprite, s16 x, s16 y);

void ov40_022335F4(UnkStruct_ov40_022335F4 *p)
{
    SpriteTemplate_ov40_022335F4 tmpl;
    UnkStruct_ov40_022335F4_860 *w;
    s32 i;
    s32 leadingZeros = 0;
    s32 digit[5];
    u32 progress[5];
    s32 order[5];
    void *vars;

    w = p->work;
    tmpl.x = 0;
    tmpl.y = 0x100;
    tmpl.z = 0;
    tmpl.animIdx = 0;
    tmpl.priority = 10;
    tmpl.plttIdx = 0;
    tmpl.vramType = 1;
    tmpl.bgPriority = 0;
    tmpl.vramTransfer = 0;
    tmpl.resources[4] = -1;
    tmpl.resources[5] = -1;
    tmpl.resources[0] = 0x2869F;
    tmpl.resources[1] = 0x2869F;
    tmpl.resources[2] = 0x2869F;
    tmpl.resources[3] = 0x2869F;

    for (i = 0; i < 5; i++) {
        void *sprite = SpriteSystem_NewSprite(p->spriteSystem, p->spriteManager, &tmpl);
        w->spritesA[i] = sprite;
        ManagedSprite_SetAnim(sprite, 1);
        ManagedSprite_TickFrame(w->spritesA[i]);
        ManagedSprite_SetAffineScale(w->spritesA[i], w->scale[i], w->scale[i]);
    }

    for (i = 0; i < 5; i++) {
        tmpl.resources[0] = 0x4705 + i;
        tmpl.resources[1] = 0x4705 + i;
        if (i == 3) {
            tmpl.resources[2] = 0x4706;
            tmpl.resources[3] = 0x4706;
        } else {
            tmpl.resources[2] = 0x4705;
            tmpl.resources[3] = 0x4705;
        }
        w->spritesB[i] = SpriteSystem_NewSprite(p->spriteSystem, p->spriteManager, &tmpl);
        if (i == 3) {
            ManagedSprite_SetAnim(w->spritesB[i], 0);
        } else {
            ManagedSprite_SetAnim(w->spritesB[i], 1);
        }
        ManagedSprite_TickFrame(w->spritesB[i]);
        ManagedSprite_SetAffineScale(w->spritesB[i], w->scale[i], w->scale[i]);
        ManagedSprite_SetPaletteOverride(w->spritesB[i], i + 10);
    }

    tmpl.resources[0] = 0x6E7A;
    tmpl.resources[1] = 0x6E7A;
    tmpl.resources[2] = 0x6E7A;
    tmpl.resources[3] = 0x6E7A;
    tmpl.resources[4] = -1;
    tmpl.resources[5] = -1;
    tmpl.priority = 20;

    vars = Save_VarsFlags_Get(p->saveData);
    progress[0] = Save_VarsFlags_GetBattleTowerPrintProgress(vars);
    progress[1] = Save_VarsFlags_GetBattleFactoryPrintProgress(vars);
    progress[2] = Save_VarsFlags_GetBattleArcadePrintProgress(vars);
    progress[3] = Save_VarsFlags_GetBattleCastlePrintProgress(vars);
    progress[4] = Save_VarsFlags_GetBattleHallPrintProgress(vars);

    for (i = 0; i < 5; i++) {
        w->spritesC[i] = SpriteSystem_NewSprite(p->spriteSystem, p->spriteManager, &tmpl);
        if (progress[i] <= 1) {
            ManagedSprite_SetAnim(w->spritesC[i], 5);
            ManagedSprite_SetPaletteOverride(w->spritesC[i], 9);
            ManagedSprite_SetDrawFlag(w->spritesB[i], 0);
            ManagedSprite_SetDrawFlag(w->spritesA[i], 0);
        } else {
            order[0] = ov40_022451B0[0];
            order[1] = ov40_022451B0[1];
            order[2] = ov40_022451B0[2];
            order[3] = ov40_022451B0[3];
            order[4] = ov40_022451B0[4];
            ManagedSprite_SetAnim(w->spritesC[i], order[i]);
            ManagedSprite_SetPaletteOverride(w->spritesC[i], order[i] + 4);
        }
        ManagedSprite_TickFrame(w->spritesC[i]);
        ManagedSprite_SetAffineScale(w->spritesC[i], w->scale[i], w->scale[i]);
    }

    tmpl.resources[0] = 0x726C;
    tmpl.resources[1] = 0x726C;
    tmpl.resources[2] = 0x726C;
    tmpl.resources[3] = 0x726C;
    tmpl.resources[4] = -1;
    tmpl.resources[5] = -1;
    tmpl.vramType = 2;
    tmpl.priority = 0;

    {
        s32 divisor = 1000;
        s32 rest = w->value;
        s32 started = 0;

        for (i = 0; i < 4; i++) {
            digit[i] = rest / divisor;
            rest = rest % divisor;
            divisor = divisor / 10;
            if (digit[i] == 0 && started == 0) {
                leadingZeros++;
            } else {
                started = 1;
            }
        }
        digit[4] = 10;
    }

    for (i = 0; i < 5; i++) {
        w->digits[i] = SpriteSystem_NewSprite(p->spriteSystem, p->spriteManager, &tmpl);
        if (digit[i] == 0 && i < leadingZeros) {
            ManagedSprite_SetDrawFlag(w->digits[i], 0);
        }
        ManagedSprite_SetAnim(w->digits[i], digit[i]);
        ov40_0222D288(w->digits[i], (s16)(0x58 + i * 0x10), 0x48);
        ManagedSprite_TickFrame(w->digits[i]);
    }

    ManagedSprite_SetDrawFlag(w->digits[3], 1);
    ManagedSprite_SetDrawFlag(w->digits[4], 1);

    for (i = 0; i < 5; i++) {
        ManagedSprite_SetAffineOverwriteMode(w->spritesA[i], 2);
        ManagedSprite_SetAffineOverwriteMode(w->spritesB[i], 2);
        ManagedSprite_SetAffineOverwriteMode(w->spritesC[i], 2);
    }
}
