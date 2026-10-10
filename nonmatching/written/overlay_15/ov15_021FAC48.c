typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;
typedef short s16;

void ov15_021FED60(void *app);
void ov15_021FB114(void *app);
void ov15_02200294(void *app);
void ov15_021FF560(void *app);
void ov15_021FF7AC(void *p);
void ov15_021FED58(void *app);
int ov15_021FA074(void *app);
void ov15_021FD574(void *app, int a, int b, int c);
void ov15_021FF364(void *app, int a, int b, int c);
void ov15_021FF6BC(void *app, int a, int b, int c);
void ov15_02200140(void *app, void *pocket, int a, int b);
void ov15_022001C4(void *app, void *pocket, int idx);
void ov15_021FFECC(void *app, int idx);

void ov15_021FAC48(void *app)
{
    u8 *ctx = *(u8 **)((u8 *)app + 0x234);
    u8 *pocket = ctx + 4 + *(u8 *)(ctx + 0x64) * 0xc;
    int r;

    *(u8 *)((u8 *)app + 0x671) = 1;
    *(u8 *)((u8 *)app + 0x672) = *(s16 *)(pocket + 6) + *(s32 *)((u8 *)app + 0x644) - 8;
    ov15_021FED60(app);
    ov15_021FB114(app);
    ov15_02200294(app);
    ov15_021FF560(app);
    ov15_021FF7AC((u8 *)app + 0x184);
    ov15_021FED58(app);
    ctx = *(u8 **)((u8 *)app + 0x234);
    pocket = ctx + 4 + *(u8 *)(ctx + 0x64) * 0xc;
    r = ov15_021FA074(app);
    ov15_021FD574(app, 1, r, *(s32 *)((u8 *)app + 0x644) - 8);
    ov15_021FF364(app, *(s16 *)(pocket + 6), *(s32 *)((u8 *)app + 0x644) - 8, 1);
    ov15_021FF6BC(app, *(u8 *)(pocket + 9), *(s16 *)(pocket + 6), 0);
    r = ov15_021FA074(app);
    ov15_02200140(app, pocket, r, 0);
    ov15_022001C4(app, pocket, *(s16 *)(pocket + 6) + *(s32 *)((u8 *)app + 0x644) - 8);
    ov15_021FFECC(app, *(s32 *)((u8 *)app + 0x644));
    *(s32 *)((u8 *)app + 0x66c) = *(s32 *)((u8 *)app + 0x644) - 8;
}
