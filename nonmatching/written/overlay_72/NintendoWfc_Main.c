typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;
typedef int BOOL;

void *OverlayManager_GetData(void *appMan);
void ov00_021ECB40(void);
void ov72_022378DC(void);
BOOL sub_02034DB8(void);
void ov00_021EC294(void *alloc, void *free);
void ov72_02238778(void);
void ov72_022387A0(void);
BOOL IsPaletteFadeFinished(void);
void SpriteList_RenderAndAnimateSprites(void *spriteList);

typedef s32 (*NintendoWfcScreenFn)(void *, s32, void *, u32);

extern void *ov72_0223B92C;
extern NintendoWfcScreenFn ov72_0223B654[][3];

s32 NintendoWfc_Main(void *appMan, s32 *state)
{
    u8 *work = OverlayManager_GetData(appMan);

    ov00_021ECB40();
    ov72_022378DC();
    ov00_021ECB40();

    switch (*state) {
    case 0:
        if (sub_02034DB8()) {
            ov72_0223B92C = *(void **)(work + 0x28);
            ov00_021EC294(ov72_02238778, ov72_022387A0);
            *state = 1;
        }
        break;
    case 1: {
        s32 st = *state;
        u32 mode = *(u32 *)(work + 0x10);
        NintendoWfcScreenFn fn = ov72_0223B654[mode][0];
        *state = fn(work, st, fn, mode);
        break;
    }
    case 2:
        if (IsPaletteFadeFinished()) {
            *state = 3;
        }
        break;
    case 3: {
        s32 st = *state;
        u32 mode = *(u32 *)(work + 0x10);
        NintendoWfcScreenFn fn = ov72_0223B654[mode][1];
        *state = fn(work, st, fn, mode);
        break;
    }
    case 4:
        if (IsPaletteFadeFinished()) {
            u32 mode = *(u32 *)(work + 0x10);
            NintendoWfcScreenFn fn = ov72_0223B654[mode][2];
            s32 st = *state;
            *state = fn(work, st, fn, mode);
        }
        break;
    case 5:
        return 1;
    }

    if (*(void **)(work + 0xBF8) != 0) {
        SpriteList_RenderAndAnimateSprites(*(void **)(work + 0xBF8));
    }
    return 0;
}
