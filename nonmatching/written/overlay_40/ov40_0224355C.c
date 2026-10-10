typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;
typedef unsigned long long u64;

// Entries of 0x1C bytes start at offset 0 (state at +0x00, +0x08 and the sprite at +0x0C).
typedef struct UnkStruct_ov40_0224355C {
    u8 filler_000[0x204];
    s32 count;          // 0x204
    u8 filler_208[0xB8];
    void *unk_2C0;      // 0x2C0
    u8 filler_2C4[4];
    s32 unk_2C8;        // 0x2C8
    u32 accLo;          // 0x2CC
    u32 accHi;          // 0x2D0
} UnkStruct_ov40_0224355C;

void *String_New(u32 maxsize, s32 heapId);
s32 ov40_02244054(s32 a, s32 b);
void ManagedSprite_SetAnim(void *sprite, s32 anim);
void String16_FormatInteger(void *str, s32 num, u32 ndigits, s32 mode, s32 charset);
void String_Cat(void *dest, void *src);
void String_Delete(void *string);
void ov40_0224320C(UnkStruct_ov40_0224355C *p, s32 b);

void ov40_0224355C(UnkStruct_ov40_0224355C *p)
{
    void *str = String_New(100, 0x6D);
    s32 i;
    u8 *entry;

    p->unk_2C8 = 1;
    p->accLo = 0;
    p->accHi = 0;

    entry = (u8 *)p;
    for (i = 0; i < p->count; i++) {
        u32 digit;

        if (*(s32 *)entry == 0) {
            *(s32 *)entry = 1;
            ManagedSprite_SetAnim(*(void **)(entry + 0xC), ov40_02244054(1, *(s32 *)(entry + 8)));
        }
        digit = *(s32 *)entry - 1;
        if (i != 0) {
            u64 a = ((u64)p->accHi << 32) | p->accLo;
            a = a * 10;
            p->accLo = (u32)a;
            p->accHi = (u32)(a >> 32);
        }
        {
            u64 b = (((u64)p->accHi << 32) | p->accLo) + digit;
            p->accLo = (u32)b;
            p->accHi = (u32)(b >> 32);
        }
        String16_FormatInteger(str, (s32)digit, 1, 1, 1);
        String_Cat(p->unk_2C0, str);
        entry += 0x1C;
    }

    String_Delete(str);
    ov40_0224320C(p, 3);
}
