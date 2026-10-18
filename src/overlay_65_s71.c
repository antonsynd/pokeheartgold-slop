#include "global.h"

#include "bg_window.h"
#include "sprite.h"

typedef struct TradeRoom TradeRoom;
typedef int (*TradeRoomFunc)(TradeRoom *tradeRoom);

typedef struct TradeMonDisplayData {
    u16 unk0;
    u16 heldItemType;
    u8 filler_4[8];
    int ballCapsuleId;
} TradeMonDisplayData;

struct TradeRoom {
    u8 filler_0000[0x94];
    int selectedSlot[2];
    u8 filler_009C[0x2A8];
    Sprite *cursorSprites[2];
    u8 filler_034C[0x30];
    Sprite *iconSprites[12];
    Sprite *itemIconSprites[12];
    Sprite *capsuleIconSprites[12];
    u8 filler_040C[0x38];
    Window windows[25];
    u8 filler_05D4[0xC8];
    TradeMonDisplayData monDisplayData[12];
    u8 filler_075C[0x1AC4];
    TradeRoomFunc subStepCallback;
    u8 filler_2224[0xA4];
    int slideAnimFrame;
    u8 filler_22CC[4];
    u8 playerSlidePath[0x18];
    u8 partnerSlidePath[0x18];
};

extern const int ov65_0221FF4C[][2];
extern const int ov65_0221FF50[][2];

void ov65_0221ED80(void *path, int x, int y, int destX, int destY);
int ov65_0221EE18(TradeRoom *tradeRoom);

int ov65_0221EC34(TradeRoom *tradeRoom) {
    for (int i = 0; i < 6; i++) {
        if (i != tradeRoom->selectedSlot[0]) {
            Sprite_SetDrawFlag(tradeRoom->iconSprites[i], FALSE);
            if (tradeRoom->monDisplayData[i].heldItemType) {
                Sprite_SetDrawFlag(tradeRoom->itemIconSprites[i], FALSE);
            }
            if (tradeRoom->monDisplayData[i].ballCapsuleId) {
                Sprite_SetDrawFlag(tradeRoom->capsuleIconSprites[i], FALSE);
            }
        }
        ClearWindowTilemapAndScheduleTransfer(&tradeRoom->windows[7 + i]);
        if (i != (tradeRoom->selectedSlot[1] - 6)) {
            Sprite_SetDrawFlag(tradeRoom->iconSprites[i + 6], FALSE);
            if (tradeRoom->monDisplayData[i + 6].heldItemType) {
                Sprite_SetDrawFlag(tradeRoom->itemIconSprites[i + 6], FALSE);
            }
            if (tradeRoom->monDisplayData[i + 6].ballCapsuleId) {
                Sprite_SetDrawFlag(tradeRoom->capsuleIconSprites[i + 6], FALSE);
            }
        }
        ClearWindowTilemapAndScheduleTransfer(&tradeRoom->windows[13 + i]);
    }
    Sprite_SetDrawFlag(tradeRoom->cursorSprites[0], FALSE);
    Sprite_SetDrawFlag(tradeRoom->cursorSprites[1], FALSE);
    ov65_0221ED80(tradeRoom->playerSlidePath, ov65_0221FF4C[tradeRoom->selectedSlot[0]][0] + 16, ov65_0221FF50[tradeRoom->selectedSlot[0]][0] + -6, 6 * 8, 4 * 8);
    ov65_0221ED80(tradeRoom->partnerSlidePath, ov65_0221FF4C[tradeRoom->selectedSlot[1]][0] + 16, ov65_0221FF50[tradeRoom->selectedSlot[1]][0] + -6, 22 * 8, 4 * 8);
    tradeRoom->slideAnimFrame = 0;
    tradeRoom->subStepCallback = ov65_0221EE18;
    return 0;
}
