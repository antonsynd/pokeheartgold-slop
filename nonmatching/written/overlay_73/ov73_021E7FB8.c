typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;
typedef int BOOL;

void *OverlayManager_GetData(void *appMan);
void ov00_021ECB40(void);
void ov72_022378DC(void);
BOOL sub_02034DB8(void);
void ov00_021EC294(void *alloc, void *free);
void ov73_021E83F4(void);
void ov73_021E841C(void);
BOOL IsPaletteFadeFinished(void);
void SpriteList_RenderAndAnimateSprites(void *spriteList);

typedef s32 (*Ov73ScreenFn)(void *, s32, void *, u32);

extern void *_021EA940[];
extern Ov73ScreenFn ov73_021EA83C[][3];

s32 ov73_021E7FB8(void *appMan, s32 *state)
{
    u8 *work = OverlayManager_GetData(appMan);

    ov00_021ECB40();
    ov72_022378DC();
    ov00_021ECB40();

    switch (*state) {
    case 0:
        if (sub_02034DB8()) {
            _021EA940[1] = *(void **)(work + 0x28);
            ov00_021EC294(ov73_021E83F4, ov73_021E841C);
            *state = 1;
        }
        break;
    case 1: {
        s32 st = *state;
        u32 mode = *(u32 *)(work + 0x10);
        Ov73ScreenFn fn = ov73_021EA83C[mode][0];
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
        Ov73ScreenFn fn = ov73_021EA83C[mode][1];
        *state = fn(work, st, fn, mode);
        break;
    }
    case 4:
        if (IsPaletteFadeFinished()) {
            u32 mode = *(u32 *)(work + 0x10);
            Ov73ScreenFn fn = ov73_021EA83C[mode][2];
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
