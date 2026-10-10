typedef unsigned char u8;
typedef signed char s8;
typedef short s16;
typedef unsigned int u32;
typedef int s32;

extern u8 ov72_0223B478[];
extern u8 ov72_0223B479[];

s32 ov72_0223A7F4(void *p, s32 val);
void ov72_02238730(void *sprite, s32 idx, u32 kind);
u32 ov72_0223A8DC(void *p);
void ov72_022386F4(void *sprite, u32 digit);
void ov72_0223AED0(void *work, u32 a, u32 b, u32 c);
void PlaySE(u32 seq);
void Sprite_SetAnimCtrlSeq(void *sprite, s32 seq);

void ov72_0223A8F0(u8 *work, s32 key)
{
    if ((u32)key > 0xf) {
        return;
    }

    switch (key) {
    case 0:
    case 1:
    case 2:
        return;
    case 13:
        *(u8 *)(work + *(s16 *)(work + 0x1310) + 0x1314) = 0xff;
        *(s16 *)(work + 0x1310) = *(s16 *)(work + 0x1310) - 1;
        if (*(u8 *)(work + 0x130d) == 0x64) {
            if (*(s16 *)(work + 0x1310) < 0) {
                *(s16 *)(work + 0x1310) = 0;
            }
        } else {
            if (*(s16 *)(work + 0x1310) < 1) {
                *(s16 *)(work + 0x1310) = 1;
            }
        }
        PlaySE(0x5dc);
        ov72_02238730(*(void **)(work + 0xe04), *(s16 *)(work + 0x1310), *(u32 *)(work + 0x1368));
        Sprite_SetAnimCtrlSeq(*(void **)(work + 0xe08), 5);
        return;
    case 14:
        *(u8 *)(work + 0x130f) = key - 3;
        ov72_022386F4(*(void **)(work + 0xe00), *(u8 *)(work + 0x130f));
        *(u8 *)(work + 0x130e) = ov72_0223A7F4(work + 0x130c, -1);
        if (*(s8 *)(work + 0x130e) <= 0) {
            *(u8 *)(work + 0x130e) = 1;
        }
        *(u8 *)(work + 0x1312) = 7;
        PlaySE(0x5dc);
        Sprite_SetAnimCtrlSeq(*(void **)(work + 0xe0c), 5);
        return;
    case 15:
        *(u8 *)(work + 0x130f) = key - 3;
        *(u8 *)(work + 0x130e) = 0xff;
        ov72_022386F4(*(void **)(work + 0xe00), *(u8 *)(work + 0x130f));
        *(u8 *)(work + 0x1312) = 7;
        PlaySE(0x5dc);
        Sprite_SetAnimCtrlSeq(*(void **)(work + 0xe10), 5);
        return;
    default:
        break;
    }

    if (ov72_0223A7F4(work + 0x130c, key - 3) == -1) {
        PlaySE(0x5f2);
        return;
    }
    *(u8 *)(work + *(s16 *)(work + 0x1310) + 0x1314) = key - 3;
    if (*(s16 *)(work + 0x1310) < 2) {
        *(s16 *)(work + 0x1310) = *(s16 *)(work + 0x1310) + 1;
    }
    ov72_02238730(*(void **)(work + 0xe04), *(s16 *)(work + 0x1310), *(u32 *)(work + 0x1368));
    *(u8 *)(work + 0x130f) = key - 3;
    *(u8 *)(work + 0x130f) = ov72_0223A8DC(work + 0x130c);
    ov72_022386F4(*(void **)(work + 0xe00), *(u8 *)(work + 0x130f));
    PlaySE(0x5dc);
    {
        s32 idx = (key - 3) * 2;
        ov72_0223AED0(work, ov72_0223B478[idx], ov72_0223B479[idx], 3);
    }
}
