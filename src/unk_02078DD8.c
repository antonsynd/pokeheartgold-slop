#include "unk_02078DD8.h"

#include "global.h"

#include "assert.h"

// ov00_021E6D60 is declared `void` in the (frozen) overlay_00_thumb.h, but the
// real function returns a BOOL that this TU checks. Declaring it locally with
// the correct return type avoids an IPA-cascading change to the shared header.
BOOL ov00_021E6D60(void *arg0, s32 arg1);

UnkStruct_02078DD8 *sub_02078DD8(PlayerProfile *profile, enum HeapID heapId) {
    UnkStruct_02078DD8 *ptr = Heap_Alloc(heapId, 0x24);
    memset(ptr, 0, 0x24);
    ptr->unk1B = 0x1C;
    ptr->unk1E = PlayerProfile_GetTrainerGender(profile);
    ptr->unk1D = PlayerProfile_GetAvatar(profile);
    ptr->unk18 = PlayerProfile_GetVersion(profile);
    ptr->unk19 = PlayerProfile_GetLanguage(profile);
    GF_ASSERT(ov00_021E6D60(ptr, 0x24) == 1);
    return ptr;
}

void sub_02078E28(void *ptr) {
    Heap_Free(ptr);
}
