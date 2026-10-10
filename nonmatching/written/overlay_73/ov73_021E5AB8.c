typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef int BOOL;

typedef s32 (*Ov73ScreenFn)(void *, s32, void *, u32);

extern Ov73ScreenFn _021EA7C0[];

void *OverlayManager_GetData(void *ovy);
u32 sub_0203769C(void);
u32 sub_02033250(void);
BOOL IsPaletteFadeFinished(void);
s32 ov73_021E746C(void);
void sub_02037030(u32 a, void *b, u32 c);
void ov73_021E735C(void *a, u32 b, u32 c, void *d);
void ov73_021E762C(void *work);
s32 ov73_021E7870(void *work, u32 a);
void SpriteList_RenderAndAnimateSprites(void *spriteList);

s32 ov73_021E5AB8(void *ovy, s32 *state)
{
    u8 *work = OverlayManager_GetData(ovy);
    s32 st;
    u32 r3v;

    u32 online = sub_0203769C();
    __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");
    if (online == 0 && *(u32 *)(work + 0x4a24) != 0) {
        u32 mask = sub_02033250();
        __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");
        *(u32 *)(work + 0x4a24) = mask & *(u32 *)(work + 0x4a24);
    }

    st = *state;
    switch (st) {
    case 0:
        if (IsPaletteFadeFinished()) {
            *state = 1;
            if (sub_0203769C() != 0) {
                if (ov73_021E746C() > 2) {
                    sub_02037030(0x72, 0, 0);
                }
            }
        }
        break;
    case 1: {
        Ov73ScreenFn fn = _021EA7C0[*(u32 *)(work + 0x318)];
        if (fn != 0) {
            *state = fn(work, st, fn, r3v);
        }
        if (*(u8 *)(work + 0x4a14) == 0) {
            ov73_021E735C(work + 0x298, 0, 0x10300, work);
        }
        ov73_021E762C(work);
        if (sub_0203769C() == 0) {
            s32 next = ov73_021E7870(work, 1);
            if (*state == 1) {
                *state = next;
            }
        }
        break;
    }
    case 2: {
        Ov73ScreenFn fn = _021EA7C0[*(u32 *)(work + 0x318)];
        if (fn != 0) {
            *state = fn(work, st, fn, r3v);
        }
        break;
    }
    case 3:
        if (IsPaletteFadeFinished()) {
            return 1;
        }
        break;
    }

    SpriteList_RenderAndAnimateSprites(*(void **)(work + 0x50));
    return 0;
}
