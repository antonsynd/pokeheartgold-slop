#include "global.h"

extern u32 ov112_021FFAA4[];

void ov112_021E5E48(void) {
    RTCDate date;
    RTCTime time;
    s64 secs;
    u32 v;
    if (RTC_GetTime(&time) != 0) {
        return;
    }
    if (RTC_GetDate(&date) != 0) {
        return;
    }
    secs = RTC_ConvertDateTimeToSecond(&date, &time);
    if (secs > 0xFFFFFFFFLL) {
        secs = 0xFFFFFFFFLL;
    }
    if (secs < 0) {
        v = 0;
    } else {
        v = (u32)secs;
    }
    v = (v << 24) | ((v << 8) & 0x00FF0000) | ((v >> 8) & 0x0000FF00) | (v >> 24);
    *(u32 *)((u8 *)ov112_021FFAA4[0x20 / 4] + 0x60) = v;
}
