#include "overlay_01_021FB04C_internal.h"

static void ov01_021FB04C(NARC *narc, UnkStruct_Ov01_021FB04C_Header *header) {
    u32 magic[2];
    MI_CpuClear32(header, sizeof(UnkStruct_Ov01_021FB04C_Header));
    NARC_ReadFile(narc, 4, magic);
    NARC_ReadFile(narc, 2, &header->unk00);
    NARC_ReadFile(narc, 2, &header->unk04);
    NARC_ReadFile(narc, 2, &header->unk08);
    NARC_ReadFile(narc, 2, &header->unk0C);
    NARC_ReadFile(narc, 2, &header->unk10);
    NARC_ReadFile(narc, 2, &header->unk14);
}

static void ov01_021FB0B0(UnkStruct_Ov01_021FB04C_Header *header, UnkStruct_Ov01_021FB04C *output, void **pBase) {
    int offset = 0;
    output->unk10 = *pBase;
    offset += header->unk00 << 3;
    output->unk14 = (u8 *)*pBase + offset;
    offset += header->unk04 * 12;
    output->unk04 = (u8 *)*pBase + offset;
    offset += header->unk08 << 2;
    output->unk00 = (u8 *)*pBase + offset;
    offset += header->unk0C << 3;
    output->unk08 = (u8 *)*pBase + offset;
    offset += header->unk10 << 3;
    output->unk0C = (u8 *)*pBase + offset;
    offset += header->unk14 << 1;
    GF_ASSERT(offset <= 0x9000);
}

static void ov01_021FB110(NARC *narc, UnkStruct_Ov01_021FB04C *output, UnkStruct_Ov01_021FB04C_Header *header) {
    NARC_ReadFile(narc, header->unk00 << 3, output->unk10);
}

static void ov01_021FB120(NARC *narc, UnkStruct_Ov01_021FB04C *output, UnkStruct_Ov01_021FB04C_Header *header) {
    NARC_ReadFile(narc, header->unk04 * 12, output->unk14);
}

static void ov01_021FB134(NARC *narc, UnkStruct_Ov01_021FB04C *output, UnkStruct_Ov01_021FB04C_Header *header) {
    NARC_ReadFile(narc, header->unk08 << 2, output->unk04);
}

static void ov01_021FB144(NARC *narc, UnkStruct_Ov01_021FB04C *output, UnkStruct_Ov01_021FB04C_Header *header) {
    NARC_ReadFile(narc, header->unk0C << 3, output->unk00);
}

static void ov01_021FB154(NARC *narc, UnkStruct_Ov01_021FB04C *output, UnkStruct_Ov01_021FB04C_Header *header) {
    NARC_ReadFile(narc, header->unk10 << 3, output->unk08);
}

static void ov01_021FB164(NARC *narc, UnkStruct_Ov01_021FB04C *output, UnkStruct_Ov01_021FB04C_Header *header) {
    NARC_ReadFile(narc, header->unk14 << 1, output->unk0C);
}

static void ov01_021FB174(SysTask *task, void *data) {
    UnkStruct_Ov01_021FB174 *work = data;
    int advance;
    if (work->unk74 == 1) {
        work->unk68 = 2;
    }
    switch (work->unk68) {
    case 0:
        if (*work->unk84 != 0) {
            advance = 0;
        } else {
            ov01_021FB04C(work->unk7C, &work->unk4C);
            work->unk70->unk1C = work->unk4C.unk10;
            ov01_021FB0B0(&work->unk4C, work->unk70, &work->unk6C);
            advance = 1;
        }
        break;
    case 1:
        ov01_021FB110(work->unk7C, work->unk70, &work->unk4C);
        ov01_021FB120(work->unk7C, work->unk70, &work->unk4C);
        ov01_021FB134(work->unk7C, work->unk70, &work->unk4C);
        ov01_021FB144(work->unk7C, work->unk70, &work->unk4C);
        ov01_021FB154(work->unk7C, work->unk70, &work->unk4C);
        ov01_021FB164(work->unk7C, work->unk70, &work->unk4C);
        advance = 1;
        break;
    case 2:
        *work->unk78 = 0;
        Heap_Free(work);
        SysTask_Destroy(task);
        return;
    }
    if (advance == 1) {
        work->unk68++;
        if (work->unk68 == 2) {
            work->unk70->unk18 = 1;
        }
    }
}

UnkStruct_Ov01_021FB04C *ov01_021FB254(void) {
    UnkStruct_Ov01_021FB04C *output = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_Ov01_021FB04C));
    output->unk10 = NULL;
    output->unk14 = NULL;
    output->unk00 = NULL;
    output->unk08 = NULL;
    output->unk0C = NULL;
    output->unk18 = 0;
    output->unk1C = 0;
    return output;
}

void ov01_021FB270(NARC *narc, void *a1, UnkStruct_Ov01_021FB04C *output, void *base) {
    UnkStruct_Ov01_021FB04C_Header *header = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(UnkStruct_Ov01_021FB04C_Header));
    ov01_021FB04C(narc, header);
    output->unk1C = header->unk10;
    ov01_021FB0B0(header, output, &base);
    ov01_021FB110(narc, output, header);
    ov01_021FB120(narc, output, header);
    ov01_021FB134(narc, output, header);
    ov01_021FB144(narc, output, header);
    ov01_021FB154(narc, output, header);
    ov01_021FB164(narc, output, header);
    Heap_Free(header);
    output->unk18 = 1;
}

void ov01_021FB2E8(void *ptr) {
    if (ptr != NULL) {
        Heap_Free(ptr);
    }
}

void ov01_021FB2F4(UnkStruct_Ov01_021FB04C *output) {
    if (output != NULL) {
        output->unk18 = 0;
        output->unk10 = NULL;
        output->unk14 = NULL;
        output->unk00 = NULL;
        output->unk08 = NULL;
        output->unk0C = NULL;
    }
}

SysTask *ov01_021FB308(NARC *narc, void *a1, UnkStruct_Ov01_021FB04C *output, u32 *a3, void **a4, u32 *a5) {
    UnkStruct_Ov01_021FB174 *work = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(UnkStruct_Ov01_021FB174));
    work->unk68 = 0;
    work->unk7C = narc;
    work->unk80 = a1;
    work->unk70 = output;
    work->unk78 = a3;
    work->unk74 = 0;
    work->unk64 = 0;
    work->unk48 = 0;
    work->unk6C = *a4;
    work->unk84 = a5;
    return SysTask_CreateOnMainQueue(ov01_021FB174, work, 1);
}

void ov01_021FB354(SysTask *task) {
    UnkStruct_Ov01_021FB174 *work = SysTask_GetData(task);
    work->unk74 = 1;
}

void ov01_021FB360(UnkStruct_Ov01_021FB04C *output) {
    output->unk18 = 0;
}
