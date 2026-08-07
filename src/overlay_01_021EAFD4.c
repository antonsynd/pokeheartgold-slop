#include "global.h"

#include "filesystem.h"
#include "heap.h"
#include "vram_transfer_manager.h"

extern u32 sub_020208DC(void *a0, void *a1);
extern u32 sub_020209E0(void *a0, void *a1);
extern void *sub_02020838(void *a0, int a1);
extern int sprintf(char *str, const char *format, ...);

typedef struct {
    u32 unk0;
    u32 unk4;
    void *unk8;
    void *unkc;
    void *unk10;
    u16 unk14;
    u16 unk16;
} UnkStruct_ov01_021EAFD4_sub;

typedef struct {
    void *unk0;
    void *unk4;
    UnkStruct_ov01_021EAFD4_sub entries[16];
    u32 unk188;
} UnkStruct_ov01_021EAFD4;

static char ov01_02209898[] = "data/fld_anime%d.bin";

UnkStruct_ov01_021EAFD4 *FieldTextureManager_Init(void);
int FieldTextureManager_LoadTexture(UnkStruct_ov01_021EAFD4 *work, void *a1);
void FieldTextureManager_Free(UnkStruct_ov01_021EAFD4 *work);
void FieldTextureManager_FreeAllSlots(UnkStruct_ov01_021EAFD4 *work);
void FieldTextureManager_Destroy(void *a0);

static int ov01_021EB058(UnkStruct_ov01_021EAFD4 *work, void *a1, int memberIdx, NARC *narc);
static void ov01_021EB18C(UnkStruct_ov01_021EAFD4 *work, int i);

UnkStruct_ov01_021EAFD4 *FieldTextureManager_Init(void) {
    UnkStruct_ov01_021EAFD4 *work = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_ov01_021EAFD4));
    GF_ASSERT(work != NULL);
    {
        int i;
        for (i = 0; i < 16; i++) {
            work->entries[i].unk14 = 0;
            work->entries[i].unk16 = 0;
            work->entries[i].unk0 = 0;
            work->entries[i].unk8 = NULL;
            work->entries[i].unk10 = NULL;
            work->entries[i].unkc = NULL;
        }
    }
    work->unk188 = 0;
    return work;
}

int FieldTextureManager_LoadTexture(UnkStruct_ov01_021EAFD4 *work, void *a1) {
    int count = 0;
    NARC *narc = NARC_New(NARC_a_1_3_9, HEAP_ID_FIELD1);
    u32 i;
    work->unk4 = work->unk0 = NARC_AllocAndReadWholeMember(narc, 0, HEAP_ID_FIELD1);
    for (i = 0; i < *(u32 *)work->unk4; i++) {
        if (ov01_021EB058(work, a1, i, narc) >= 0) {
            count++;
        }
    }
    NARC_Delete(narc);
    return count;
}

static int ov01_021EB058(UnkStruct_ov01_021EAFD4 *work, void *a1, int memberIdx, NARC *narc) {
    char buf[40];
    int slot;
    if (work == NULL) {
        return -1;
    }
    for (slot = 0; slot < 16; slot++) {
        if (work->entries[slot].unkc == NULL) {
            break;
        }
    }
    if (slot == 16 || a1 == NULL) {
        return -1;
    }
    work->entries[slot].unk0 = sub_020208DC(a1, (u8 *)work->unk4 + 4 + memberIdx * 0x34);
    if (work->entries[slot].unk0 == 0) {
        return -1;
    }
    work->entries[slot].unk4 = sub_020209E0(a1, (u8 *)work->unk4 + 4 + memberIdx * 0x34);
    sprintf(buf, ov01_02209898, memberIdx);
    work->entries[slot].unk10 = (u8 *)work->unk4 + 4 + memberIdx * 0x34;
    work->entries[slot].unkc = NARC_AllocAndReadWholeMember(narc, memberIdx + 1, HEAP_ID_FIELD1);
    work->entries[slot].unk8 = NNS_G3dGetTex(work->entries[slot].unkc);
    return slot;
}

void FieldTextureManager_Free(UnkStruct_ov01_021EAFD4 *work) {
    int i;
    if (work == NULL) {
        return;
    }
    if (work->unk188 != 0) {
        return;
    }
    for (i = 0; i < 16; i++) {
        UnkStruct_ov01_021EAFD4_sub *e = &work->entries[i];
        if (e->unkc == NULL) {
            continue;
        }
        if (e->unk10 == NULL) {
            continue;
        }
        if (((u8 *)e->unk10)[e->unk14 * 2 + 0x11] <= e->unk16) {
            e->unk16 = 1;
            e->unk14++;
            if (((u8 *)e->unk10)[e->unk14 * 2 + 0x10] == 0xFF) {
                e->unk14 = 0;
            }
            GF_CreateNewVramTransferTask(NNS_GFD_DST_3D_TEX_VRAM, e->unk0, sub_02020838(e->unk8, ((u8 *)e->unk10)[e->unk14 * 2 + 0x10]), e->unk4);
        } else {
            e->unk16++;
        }
    }
}

static void ov01_021EB18C(UnkStruct_ov01_021EAFD4 *work, int i) {
    if (work == NULL) {
        return;
    }
    if (work->entries[i].unkc != NULL) {
        Heap_Free(work->entries[i].unkc);
    }
    if (work->entries[i].unk10 != NULL) {
        work->entries[i].unk10 = NULL;
    }
    work->entries[i].unk14 = 0;
    work->entries[i].unk16 = 0;
}

void FieldTextureManager_FreeAllSlots(UnkStruct_ov01_021EAFD4 *work) {
    int i;
    if (work == NULL) {
        return;
    }
    for (i = 0; i < 16; i++) {
        ov01_021EB18C(work, i);
    }
    Heap_Free(work->unk0);
}

void FieldTextureManager_Destroy(void *a0) {
    if (a0 != NULL) {
        Heap_Free(a0);
    }
}
