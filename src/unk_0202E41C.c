#include "global.h"

#include "constants/save_arrays.h"

#include "save.h"
#include "unk_0202E41C_internal.h"

// sub_0202E41C/424/43C/474 are .public but intentionally NOT declared in the
// (frozen) unk_0202E41C.h: save_arrays.c includes that header for the struct
// only, and adding prototypes there would IPA-cascade save_arrays.c. Declare
// them locally; save_arrays.c already extern-declares the two it needs via its
// DECL_CHUNK_EX(sub_0202E41C, sub_0202E424) macro (left untouched).
u32 sub_0202E41C(void);
void sub_0202E424(void *ptr);
void sub_0202E43C(UnkStruct_0202E474 *ptr);
void sub_0202E474(UnkStruct_0202E474 *ptr);

static void sub_0202E48C(UnkStruct_0202E474 *ptr, int val);
static void sub_0202E498(UnkStruct_0202E474 *ptr);

u32 sub_0202E41C(void) {
    return sizeof(UnkStruct_0202E474);
}

void sub_0202E424(void *ptr) {
    MI_CpuClearFast(ptr, sizeof(UnkStruct_0202E474));
    SaveSubstruct_UpdateCRC(SAVE_UNK_23);
}

void sub_0202E43C(UnkStruct_0202E474 *ptr) {
    MI_CpuClearFast(ptr->unk_00C, sizeof(ptr->unk_00C));
    MI_CpuClearFast(ptr->unk_0CC, sizeof(ptr->unk_0CC));
    MI_CpuClearFast(ptr->unk_18C, sizeof(ptr->unk_18C));
    sub_0202E474(ptr);
    SaveSubstruct_UpdateCRC(SAVE_UNK_23);
}

void sub_0202E474(UnkStruct_0202E474 *ptr) {
    sub_0202E48C(ptr, 0);
    sub_0202E498(ptr);
    SaveSubstruct_UpdateCRC(SAVE_UNK_23);
}

static void sub_0202E48C(UnkStruct_0202E474 *ptr, int val) {
    ptr->filler_000[8] = val;
    SaveSubstruct_UpdateCRC(SAVE_UNK_23);
}

static void sub_0202E498(UnkStruct_0202E474 *ptr) {
    int i;
    for (i = 0; i < 4; i++) {
        ptr->filler_000[i] = 0;
    }
    SaveSubstruct_UpdateCRC(SAVE_UNK_23);
}
