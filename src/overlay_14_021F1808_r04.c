#include "global.h"

#include "unk_02019BA4.h"

typedef struct Ov14_021F1C04_Sub {
    u8 filler_000[0x2C];
    GridInputHandler *gridInput;
    u8 filler_030[0x2C0];
    void *unk2F0;
} Ov14_021F1C04_Sub;

typedef struct Ov14_021F1C04 {
    u8 filler_00[0x34];
    Ov14_021F1C04_Sub *unk34;
} Ov14_021F1C04;

extern const u8 ov14_021EAC24[];

BOOL ov14_021E7588(Ov14_021F1C04 *a0, u32 input);
void ov14_021E8620(void *a0);
void ov14_021E765C(Ov14_021F1C04 *a0, u32 input);
void ov14_021F1F24(Ov14_021F1C04 *a0);
void ov14_021F0234(Ov14_021F1C04 *a0, const u8 *a1, int a2);

void ov14_021F1C04(Ov14_021F1C04 *a0) {
    u32 input = GridInputHandler_GetNextInput(a0->unk34->gridInput);

    if (input < 0x24) {
        if (ov14_021E7588(a0, input) == TRUE) {
            ov14_021E8620(a0->unk34->unk2F0);
        }
    } else {
        ov14_021E765C(a0, input);
    }
    ov14_021F1F24(a0);
    ov14_021F0234(a0, ov14_021EAC24, 0x86);
}
