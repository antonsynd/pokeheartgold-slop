#include "global.h"

#include "error_handling.h"
#include "unk_02005D10.h"

typedef struct {
    u8 unk0[0xF5C];
    int playingSE;
    u16 seId;
} UnkOv01_021EB1E8_Weather;

void ov01_021EDAB4(UnkOv01_021EB1E8_Weather *weather, u16 seId);
void ov01_021EDAE0(UnkOv01_021EB1E8_Weather *weather);

void ov01_021EDAB4(UnkOv01_021EB1E8_Weather *weather, u16 seId) {
    if (weather->playingSE != 0) {
        GF_AssertFail();
    }
    weather->playingSE = 1;
    weather->seId = seId;
    PlaySE(seId);
}

void ov01_021EDAE0(UnkOv01_021EB1E8_Weather *weather) {
    StopSE(weather->seId, 0);
    weather->playingSE = 0;
}
