#include "global.h"

typedef struct Ov112_021F15E4 {
    u8 filler_000[0xC0];
    u32 *unk0C0[0x18];
    RTCDate date;
    RTCTime time;
    u8 filler_13C;
    u8 unk13D;
} Ov112_021F15E4;

void ov112_021F15E4(Ov112_021F15E4 *a0) {
    u32 *seconds = a0->unk0C0[a0->unk13D];
    RTCDate date = { 0 };
    RTCTime time = { 0 };

    RTC_ConvertSecondToDateTime(&a0->date, &a0->time, *seconds);
}
