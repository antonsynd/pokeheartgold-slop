#include "global.h"

#include "pm_string.h"
#include "sprite_system.h"

typedef struct Ov40Digit {
    int value;
    u8 filler_04[4];
    int unk8;
    ManagedSprite *sprite;
    u8 filler_10[0xC];
} Ov40Digit;

typedef struct Ov40_0224355C {
    Ov40Digit digits[18];
    u8 filler_1F8[0xC];
    int count;
    u8 filler_208[0xB8];
    String *numberString;
    u8 filler_2C4[4];
    int entered;
    u64 number;
} Ov40_0224355C;

int ov40_02244054(int value, int a1);
void ov40_0224320C(Ov40_0224355C *a0, int a1);

void ov40_0224355C(Ov40_0224355C *a0) {
    u32 value;
    String *string = String_New(100, HEAP_ID_109);
    int i;
    Ov40Digit *digit;

    a0->entered = TRUE;
    a0->number = 0;
    for (i = 0; i < a0->count; i++) {
        digit = &a0->digits[i];
        if (digit->value == 0) {
            digit->value = 1;
            ManagedSprite_SetAnim(digit->sprite, ov40_02244054(digit->value, digit->unk8));
        }
        value = digit->value - 1;
        if (i != 0) {
            a0->number *= 10;
        }
        a0->number += value;
        String16_FormatInteger(string, value, 1, PRINTING_MODE_RIGHT_ALIGN, TRUE);
        String_Cat(a0->numberString, string);
    }
    String_Delete(string);
    ov40_0224320C(a0, 3);
}
