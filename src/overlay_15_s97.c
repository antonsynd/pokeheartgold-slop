#include "global.h"

#include "bag.h"
#include "bg_window.h"
#include "player_data.h"
#include "sound.h"
#include "text.h"

typedef struct Ov15Pocket {
    ItemSlot *slots;
    u8 filler_4[5];
    u8 count;
    u8 filler_A[2];
} Ov15Pocket;

typedef struct Ov15Shop {
    u8 filler_00[4];
    Ov15Pocket pockets[8];
    u8 pocket;
    u8 filler_65;
    u16 itemId;
    u8 filler_68[0xD];
    u8 unk75;
} Ov15Shop;

typedef struct Ov15_021FD24C {
    u8 filler_000[0x34];
    Window window;
    u8 filler_044[0x1F0];
    Ov15Shop *shop;
    u8 filler_238[4];
    PlayerProfile *profile;
    u8 filler_240[0x3D6];
    u8 printerId;
    u8 filler_617[0x69];
    s16 quantity;
    u8 filler_682[2];
    u32 price;
} Ov15_021FD24C;

// Called as matched
#define Pocket_TakeItem(slots, count, itemId, quantity, heapId) ((BOOL (*)(ItemSlot *, u32, u16, u16, enum HeapID))Pocket_TakeItem)(slots, count, itemId, quantity, heapId)

void ov15_021F9F08(Ov15_021FD24C *a0);

int ov15_021FD24C(Ov15_021FD24C *a0) {
    if (TextPrinterCheckActive(a0->printerId)) {
        return 23;
    }
    PlaySE(SEQ_SE_DP_REGI);
    PlayerProfile_AddMoney(a0->profile, a0->quantity * a0->price);
    if (a0->quantity == 1) {
        if (a0->shop->unk75 != 0xFF) {
            a0->shop->unk75++;
        }
    } else {
        a0->shop->unk75 = 2;
    }
    Pocket_TakeItem(a0->shop->pockets[a0->shop->pocket].slots, a0->shop->pockets[a0->shop->pocket].count, a0->shop->itemId, a0->quantity, HEAP_ID_6);
    ov15_021F9F08(a0);
    ScheduleWindowCopyToVram(&a0->window);
    return 24;
}
