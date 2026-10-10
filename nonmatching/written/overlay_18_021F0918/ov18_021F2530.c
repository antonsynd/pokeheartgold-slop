typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef short s16;
typedef int BOOL;

BOOL Pokedex_GetInternationalViewFlag(const void *pokedex);
void ManagedSprite_SetDrawFlag(void *managedSprite, int flag);
void ManagedSprite_SetPositionXY(void *managedSprite, s16 x, s16 y);
void ManagedSprite_GetPositionXY(void *managedSprite, s16 *x, s16 *y);
int sub_020912AC(int index);
int sub_02091294(int index);
BOOL ov18_021E6D10(void *app, u32 a, u32 b);
int LanguageToDexFlag(u32 language);
void ov18_021F118C(void *app, int a, int b);

void ov18_021F2530(void *app, u32 flag, s32 first)
{
    s32 i;
    s32 shown;
    u32 end;
    void **sprites = (void **)((u8 *)app + 0x670);

    if (flag == 0 || Pokedex_GetInternationalViewFlag(**(void ***)app) == 0) {
        i = (s16)first;
        end = first + 6;
        if ((u32)i >= end) {
            return;
        }
        do {
            ManagedSprite_SetDrawFlag(sprites[i], 0);
            i = (s16)(i + 1);
        } while ((u32)i < end);
    } else {
        s16 pos[2]; // pos[0] = y, pos[1] = x
        s32 diff;
        s32 lang;
        s32 dexFlag;
        s32 entry;
        shown = 0;
        i = (s16)(first + 5);
        if ((u32)i < (u32)first) {
            return;
        }
        do {
            diff = i - first;
            lang = sub_02091294(sub_020912AC(diff));
            if (ov18_021E6D10(app, flag, (u16)lang) == 1 || lang == 2) {
                dexFlag = LanguageToDexFlag(*(u8 *)((u8 *)app + 0x185c));
                entry = sub_020912AC(diff);
                if (entry == dexFlag) {
                    ov18_021F118C(app, i, entry);
                } else {
                    ov18_021F118C(app, i, entry + 6);
                }
                ManagedSprite_GetPositionXY(sprites[i], &pos[1], &pos[0]);
                ManagedSprite_SetPositionXY(sprites[i], (5 - shown) * 0x18 + 0x7c, pos[0]);
                ManagedSprite_SetDrawFlag(sprites[i], 1);
                shown = (s16)(shown + 1);
            } else {
                ManagedSprite_SetDrawFlag(sprites[i], 0);
            }
            i = (s16)(i - 1);
        } while ((u32)i >= (u32)first);
    }
}
