#include "global.h"

#include "bag_view.h"
#include "field_use_item.h"
#include "heap.h"
#include "item.h"

typedef struct Ov15Bag {
    u8 filler_00[0x66];
    u16 itemId;
    u8 filler_68[8];
    struct ItemCheckUseData *checkUseData;
} Ov15Bag;

typedef struct Ov15_021FB680 {
    u8 filler_000[0x234];
    Ov15Bag *bag;
    u8 filler_238[4];
    PlayerProfile *profile;
    u8 filler_240[0x3A4];
    String *string;
    u8 filler_5E8[0x2E];
    u8 printerId;
} Ov15_021FB680;

void ov15_021FD788(Ov15_021FB680 *a0, int a1);
void ov15_021FFF24(Ov15_021FB680 *a0);
u8 ov15_021FEF48(Ov15_021FB680 *a0, int a1);
int ov15_021FB784(Ov15_021FB680 *a0);

int ov15_021FB680(Ov15_021FB680 *a0) {
    ItemCheckUseFunc check;
    enum ItemUseError error;

    ov15_021FD788(a0, 0);
    ov15_021FFF24(a0);
    check = GetItemFieldUseFunc(2, GetItemAttr(a0->bag->itemId, ITEMATTR_FIELDUSEFUNC, HEAP_ID_6));
    if (check != NULL) {
        error = check(a0->bag->checkUseData);
        if (error != 0) {
            GetItemUseErrorMessage(a0->profile, a0->string, a0->bag->itemId, error, HEAP_ID_6);
            a0->printerId = ov15_021FEF48(a0, 0);
            return 12;
        }
    }
    return ov15_021FB784(a0);
}
