typedef unsigned int u32;
typedef signed int s32;

void *ov92_0225E7E4(void *self, s32 param1, s32 param2);
void ManagedSprite_SetAnim(void *sprite, s32 anim);
void ov92_022608B8(void *task, void *data);
void *SysTask_CreateOnMainQueue(void (*func)(void *, void *), void *data, u32 priority);

void ov92_02260A38(char *self, s32 param1, s32 param2)
{
    s32 v0;
    s32 v1;

    for (v0 = 0; v0 < 8; v0++) {
        char *entry = self + 0x2490 + v0 * 0xA8;

        if (*(s32 *)(entry + 0x00) == 1) {
            continue;
        }

        *(u32 *)(entry + 0xA4) = *(u32 *)(self + 0x14);
        *(u32 *)(entry + 0x04) = 0;
        *(u32 *)(entry + 0x00) = 1;

        for (v1 = 0; v1 < 3; v1++) {
            *(void **)(entry + 0x08 + v1 * 4) = ov92_0225E7E4(self, param1, param2);
            ManagedSprite_SetAnim(*(void **)(entry + 0x08 + v1 * 4), ((param1 * (v0 + 1)) + (param2 * (v1 + 1))) % 3);
        }

        SysTask_CreateOnMainQueue(ov92_022608B8, entry, 0x1000);
        break;
    }
}
