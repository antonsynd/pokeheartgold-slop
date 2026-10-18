#include "global.h"

#include "sound.h"
#include "sprite.h"
#include "sys_task.h"
#include "systask_environment.h"

typedef struct Ov70AvatarPos {
    s16 x;
    s16 y;
} Ov70AvatarPos;

typedef struct Ov70Profile {
    u8 filler_000[0x1A8];
    u8 unk1A8[1];
} Ov70Profile;

typedef struct Ov70_02240D74 {
    u8 filler_0000[0xD84];
    SpriteResourcesHeader avatarResHeader;
    u8 filler_0DA8[0x13C];
    Sprite *avatarSprites[8];
    u8 filler_0F04[8];
    Sprite *unkF0C;
    Sprite *unkF10;
    Ov70Profile *unkF14;
    u8 filler_0F18[0x2C0];
    SysTask *avatarAnimTask;
    u8 filler_11DC[0x30];
    Ov70AvatarPos avatarPositions[8];
} Ov70_02240D74;

typedef struct Ov70AvatarAnimData {
    int state;
    int y;
    int gender;
    Ov70_02240D74 *app;
} Ov70AvatarAnimData;

extern const u16 ov70_02245D0A[][2];

void ov70_0224127C(Ov70_02240D74 *app);
void ov70_02238B54(SpriteTemplate *template, Ov70_02240D74 *app, SpriteResourcesHeader *header, int vramType);
void ov70_022410F0(Sprite *sprite, u16 x, u16 y);
void ov70_02238F9C(Sprite *sprite, int a1, void *a2);
void ov70_02240F58(SysTask *task, void *data);
void ov70_02240F3C(Ov70AvatarAnimData *animData, int a1);

void ov70_02240D74(Ov70_02240D74 *app, int gender) {
    SpriteTemplate template;

    ov70_0224127C(app);
    ov70_02238B54(&template, app, &app->avatarResHeader, NNS_G2D_VRAM_TYPE_2DSUB);
    template.whichScreen = NNS_G2D_VRAM_TYPE_2DSUB;
    template.position.x = FX32_ONE * 128;
    template.position.y = FX32_ONE * 130 + (256 * FX32_ONE);

    app->avatarSprites[0] = Sprite_CreateAffine(&template);
    Sprite_SetAnimActiveFlag(app->avatarSprites[0], TRUE);
    Sprite_SetPriority(app->avatarSprites[0], 2);
    Sprite_SetAnimCtrlSeq(app->avatarSprites[0], 3 + gender * 7);
    Sprite_SetDrawFlag(app->avatarSprites[0], TRUE);

    for (int i = 0; i < 7; i++) {
        app->avatarSprites[i + 1] = Sprite_CreateAffine(&template);
        Sprite_SetAnimActiveFlag(app->avatarSprites[i + 1], TRUE);
        Sprite_SetAnimCtrlSeq(app->avatarSprites[i + 1], 14 + i * 4);
        Sprite_SetDrawFlag(app->avatarSprites[i + 1], FALSE);
        ov70_022410F0(app->avatarSprites[i + 1], ov70_02245D0A[i][0], ov70_02245D0A[i][1]);
        Sprite_SetPriority(app->avatarSprites[i + 1], 2);
    }

    app->unkF0C = Sprite_CreateAffine(&template);
    Sprite_SetAnimActiveFlag(app->unkF0C, TRUE);
    Sprite_SetAnimCtrlSeq(app->unkF0C, 43);
    Sprite_SetDrawFlag(app->unkF0C, FALSE);
    ov70_022410F0(app->unkF0C, 128, 86);
    Sprite_SetPriority(app->unkF0C, 1);

    app->unkF10 = Sprite_CreateAffine(&template);
    Sprite_SetAnimActiveFlag(app->unkF10, TRUE);
    Sprite_SetAnimCtrlSeq(app->unkF10, 42);
    ov70_02238F9C(app->unkF10, 55, app->unkF14->unk1A8);
    Sprite_SetDrawFlag(app->unkF10, FALSE);

    for (int i = 0; i < 8; i++) {
        VecFx32 *pos = Sprite_GetMatrixPtr(app->avatarSprites[i]);

        app->avatarPositions[i].x = pos->x / FX32_ONE;
        app->avatarPositions[i].y = pos->y / FX32_ONE;
    }
}

void ov70_02240EF4(Ov70_02240D74 *app, int gender) {
    Ov70AvatarAnimData *animData;

    ov70_02240D74(app, gender);
    app->avatarAnimTask = CreateSysTaskAndEnvironment(ov70_02240F58, sizeof(Ov70AvatarAnimData), 5, HEAP_ID_61);
    animData = SysTask_GetData(app->avatarAnimTask);
    animData->state = 0;
    animData->y = -40;
    animData->gender = gender;
    animData->app = app;
    ov70_02240F3C(animData, 0);
    PlaySE(SEQ_SE_DP_PYUU);
}
