#include "global.h"

#include "assert.h"
#include "heap.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"
#include "save.h"
#include "string_util.h"

typedef BOOL (*UnkStruct_ov39_Callback)(void *work, void *arg);

typedef struct UnkStruct_ov39_Reply {
    void *unk0;
    u8 unk4[8];
    UnkStruct_ov39_Callback unkC;
} UnkStruct_ov39_Reply;

typedef struct UnkStruct_ov39_Status {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
} UnkStruct_ov39_Status;

typedef struct UnkStruct_ov39_Work {
    SaveData *saveData;
    void (*unk4)(void *arg, String *string);
    void *unk8;
    u8 unkC[0x150 - 0xC];
    u32 unk150;
    void *unk154;
    void *unk158;
    void *unk15C;
    void *unk160;
    void *unk164;
    void *unk168;
    void *unk16C;
    void *unk170;
    void *unk174;
    void *unk178;
    UnkStruct_ov39_Status unk17C;
    u8 unk18C[0x3BC - 0x18C];
    int unk3BC;
    u8 unk3C0[0x3E8 - 0x3C0];
    int unk3E8;
    int unk3EC;
    u8 unk3F0[4];
    MsgData *unk3F4;
    MessageFormat *unk3F8;
    String *unk3FC;
    UnkStruct_ov39_Reply unk400;
} UnkStruct_ov39_Work;

typedef struct UnkStruct_ov39_Request {
    u16 unk0;
    u16 unk2;
    u8 unk4[4];
} UnkStruct_ov39_Request;

typedef struct UnkStruct_ov39_PairArg {
    u8 unk0[4];
    u16 unk4;
    u16 unk6;
} UnkStruct_ov39_PairArg;

typedef struct UnkStruct_ov39_Item {
    u8 unk0[0x80];
    u8 unk80[0x58];
    u32 unkD8;
    u32 unkDC;
    u16 unkE0;
    u16 unkE2;
} UnkStruct_ov39_Item;

typedef struct UnkStruct_ov39_Entry {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    UnkStruct_ov39_Item unkC;
} UnkStruct_ov39_Entry;

typedef struct UnkStruct_ov39_EntryList {
    int count;
    UnkStruct_ov39_Entry entries[1];
} UnkStruct_ov39_EntryList;

typedef struct UnkStruct_ov39_Elem0EC {
    u8 unk0[0xC];
    u8 unkC[0xE0];
} UnkStruct_ov39_Elem0EC;

typedef struct UnkStruct_ov39_ElemList0EC {
    int count;
    UnkStruct_ov39_Elem0EC entries[1];
} UnkStruct_ov39_ElemList0EC;

typedef struct UnkStruct_ov39_Elem22C {
    u8 unk0[0x10];
    u8 unk10[0x21C];
} UnkStruct_ov39_Elem22C;

typedef struct UnkStruct_ov39_ElemList22C {
    int count;
    UnkStruct_ov39_Elem22C entries[1];
} UnkStruct_ov39_ElemList22C;

typedef struct UnkStruct_ov39_Pair {
    u32 unk0;
    u32 unk4;
} UnkStruct_ov39_Pair;

typedef struct UnkStruct_ov39_Payload558 {
    u8 unk0[0x558];
    u8 unk558[1];
} UnkStruct_ov39_Payload558;

extern UnkStruct_ov39_Request *ov39_0222A2B4(void);
extern int ov39_0222A2A8(void);
extern int ov39_02228120(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request);
extern int ov40_02244B70(SaveData *saveData, u32 a1, u32 a2, u16 *a3, u16 *a4);

BOOL ov39_02227B1C(void *work, void *arg);
BOOL ov39_02227B20(void *work, void *arg);
BOOL ov39_02227B24(void *work, void *arg);
BOOL ov39_02227B50(void *work, void *arg);
BOOL ov39_02227B54(void *work, void *arg);
int ov39_02227DE4(UnkStruct_ov39_Work *work);
void ov39_02227D50(UnkStruct_ov39_Work *work, String *string);
int ov39_02227E48(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request);
int ov39_02227E6C(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request);
int ov39_02227ECC(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request);
int ov39_02227EF4(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request);
int ov39_02227F60(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request);
int ov39_02227F84(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request);
int ov39_02227FC4(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request);
int ov39_02227FFC(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request);
int ov39_022280B4(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request);

OSHeapHandle _0222AB80;

BOOL ov39_02227B1C(void *work, void *arg) {
    return TRUE;
}


BOOL ov39_02227B20(void *work, void *arg) {
    return TRUE;
}


BOOL ov39_02227B24(void *work, void *arg) {
    UnkStruct_ov39_Work *v0 = work;
    UnkStruct_ov39_PairArg *v1 = arg;
    UnkStruct_ov39_Request *request = ov39_0222A2B4();
    UnkStruct_ov39_Pair *pair = (UnkStruct_ov39_Pair *)request->unk4;
    int result = ov40_02244B70(v0->saveData, pair->unk0, pair->unk4, &v1->unk4, &v1->unk6);

    if (result == 2 || result == 3) {
        return TRUE;
    }

    return FALSE;
}


BOOL ov39_02227B50(void *work, void *arg) {
    return TRUE;
}


BOOL ov39_02227B54(void *work, void *arg) {
    return TRUE;
}


BOOL ov39_02227B58(void *work, void *arg) {
    return TRUE;
}


int ov39_02227B5C(UnkStruct_ov39_Work *work) {
    UnkStruct_ov39_Request *request;
    int result = 1;

    request = ov39_0222A2B4();
    ov39_0222A2A8();

    GF_ASSERT(work->unk3EC == request->unk0);

    work->unk400.unk0 = NULL;

    switch (request->unk0) {
    case 20000:
        result = ov39_02227E48(work, request);
        work->unk400.unk0 = work->unk154;

        if (result == 0) {
            work->unk400.unkC = ov39_02227B50;
        }
        break;
    case 20001:
        result = ov39_02227E6C(work, request);
        work->unk400.unk0 = work->unk158;
        break;
    case 21000:
        result = ov39_02227ECC(work, request);
        work->unk400.unk0 = work->unk15C;

        if (result == 0) {
            work->unk400.unkC = ov39_02227B54;
        }
        break;
    case 21001:
        result = ov39_02227EF4(work, request);
        work->unk400.unk0 = work->unk160;
        break;
    case 22000:
        result = ov39_02227F60(work, request);
        work->unk400.unk0 = work->unk164;
        break;
    case 22001:
        result = ov39_02227F84(work, request);
        work->unk400.unk0 = work->unk168;
        break;
    case 23000:
        result = ov39_02227FC4(work, request);
        work->unk400.unk0 = work->unk16C;

        if (result == 0) {
            work->unk400.unkC = ov39_02227B20;
        } else {
            work->unk400.unkC = ov39_02227B24;
        }
        break;
    case 23001:
        result = ov39_02227FFC(work, request);
        work->unk400.unk0 = work->unk170;
        break;
    case 23002:
        result = ov39_022280B4(work, request);
        work->unk400.unk0 = work->unk174;
        break;
    case 23003:
        result = ov39_02228120(work, request);
        work->unk400.unk0 = work->unk178;
        break;
    case 0:
    default:
        break;
    }

    if (result == 0) {
        work->unk17C.unk4 = 2;
        work->unk17C.unk8 = request->unk0;
        work->unk17C.unkC = request->unk2;
        work->unk17C.unk0 = 1;
    } else {
        work->unk17C.unk0 = 0;
    }

    return result;
}


BOOL ov39_02227D44(UnkStruct_ov39_Work *work, UnkStruct_ov39_Status **status) {
    *status = &work->unk17C;
    return work->unk17C.unk0;
}


void ov39_02227D50(UnkStruct_ov39_Work *work, String *string) {
    work->unk4(work->unk8, string);
}


void ov39_02227D5C(UnkStruct_ov39_Work *work, int msgNo, int number) {
    String *string;

    if (msgNo == -1) {
        msgNo = 11;
    }

    BufferIntegerAsString(work->unk3F8, 0, number, 5, PRINTING_MODE_LEADING_ZEROS, TRUE);
    string = NewString_ReadMsgData(work->unk3F4, msgNo);
    StringExpandPlaceholders(work->unk3F8, work->unk3FC, string);
    String_Delete(string);
    ov39_02227D50(work, work->unk3FC);
}


BOOL ov39_02227DB8(UnkStruct_ov39_Work *work) {
    if (ov39_02227DE4(work) == 0 && work->unk3E8 == 23004 && work->unk3EC == 23004) {
        return TRUE;
    }

    return FALSE;
}


int ov39_02227DE4(UnkStruct_ov39_Work *work) {
    return work->unk3BC;
}


void *ov39_02227DEC(enum HeapID heapID) {
    void *start;
    void *end;
    void *buffer;
    int size = 0x2000;

    start = Heap_Alloc(heapID, size);
    buffer = start;
    end = (void *)((u32)start + size);
    start = OS_InitAlloc(OS_ARENA_MAIN, start, end, 1);

    OS_SetArenaLo(OS_ARENA_MAIN, start);

    start = (void *)(((u32)start + 32 - 1) & ~(32 - 1));
    end = (void *)(((u32)end + 32 - 1) & ~(32 - 1));

    _0222AB80 = OS_CreateHeap(OS_ARENA_MAIN, start, end);
    OS_SetCurrentHeap(OS_ARENA_MAIN, _0222AB80);

    return buffer;
}


void ov39_02227E3C(void) {
    OS_ClearAlloc(OS_ARENA_MAIN);
}


int ov39_02227E48(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request) {
    int result = 0;

    if (request->unk2 == 0) {
        result = 1;
    }

    return result;
}


int ov39_02227E6C(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request) {
    int result = 0;

    if (request->unk2 == 0) {
        result = 1;
    }

    return result;
}


int ov39_02227E8C(UnkStruct_ov39_Work *work, u8 **out, int max) {
    UnkStruct_ov39_Request *request = ov39_0222A2B4();
    UnkStruct_ov39_ElemList0EC *list = (UnkStruct_ov39_ElemList0EC *)request->unk4;
    int count;
    int i;

    count = list->count;

    if (count > max) {
        count = max;
    }

    for (i = 0; i < count; i++) {
        out[i] = list->entries[i].unkC;
    }

    for (; i < max; i++) {
        out[i] = NULL;
    }

    return count;
}


int ov39_02227ECC(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request) {
    int result = 0;

    if (request->unk2 == 0) {
        result = 1;
    }

    return result;
}


int ov39_02227EF4(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request) {
    int result = 0;

    if (request->unk2 == 0) {
        result = 1;
    }

    return result;
}


int ov39_02227F14(UnkStruct_ov39_Work *work, u8 **out, int max) {
    UnkStruct_ov39_Request *request = ov39_0222A2B4();
    UnkStruct_ov39_ElemList22C *list = (UnkStruct_ov39_ElemList22C *)request->unk4;
    int count;
    int i;

    count = list->count;

    if (count > max) {
        count = max;
        GF_ASSERT(FALSE);
    }

    for (i = 0; i < count; i++) {
        out[i] = list->entries[i].unk10;
    }

    for (; i < max; i++) {
        out[i] = NULL;
    }

    return count;
}


int ov39_02227F60(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request) {
    int result = 0;

    if (request->unk2 == 0) {
        result = 1;
    }

    return result;
}


void ov39_02227F74(UnkStruct_ov39_Work *work, void **out) {
    UnkStruct_ov39_Request *request = ov39_0222A2B4();

    *out = request->unk4;
}


int ov39_02227F84(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request) {
    int result = 0;

    if (request->unk2 == 0) {
        result = 1;
    }

    return result;
}


void ov39_02227FA8(UnkStruct_ov39_Work *work, void **out1, void **out2) {
    UnkStruct_ov39_Request *request = ov39_0222A2B4();
    UnkStruct_ov39_Payload558 *payload = (UnkStruct_ov39_Payload558 *)request->unk4;

    *out1 = payload;
    *out2 = payload->unk558;
}


int ov39_02227FC4(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request) {
    int result = 0;

    if (request->unk2 == 0) {
        result = 1;
    }

    return result;
}


u64 ov39_02227FEC(UnkStruct_ov39_Work *work) {
    UnkStruct_ov39_Request *request = ov39_0222A2B4();
    UnkStruct_ov39_Pair *pair = (UnkStruct_ov39_Pair *)request->unk4;

    return ((u64)pair->unk4 << 32) | pair->unk0;
}


int ov39_02227FFC(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request) {
    int result = 0;

    if (request->unk2 == 0) {
        result = 1;
    }

    return result;
}


int ov39_0222801C(UnkStruct_ov39_Work *work, UnkStruct_ov39_Item **out, int max) {
    UnkStruct_ov39_Request *request = ov39_0222A2B4();
    UnkStruct_ov39_EntryList *list = (UnkStruct_ov39_EntryList *)request->unk4;
    int count;
    int i;

    count = list->count;

    if (count > max) {
        count = max;
        GF_ASSERT(FALSE);
    }

    for (i = 0; i < count; i++) {
        UnkStruct_ov39_Entry *entry = &list->entries[i];

        out[i] = &entry->unkC;

        if (entry->unkC.unkD8 != entry->unk4 || entry->unkC.unkDC != entry->unk8) {
            out[i]->unkD8 = entry->unk4;
            out[i]->unkDC = entry->unk8;
            out[i]->unkE0 = SaveArray_CalcCRC16(work->saveData, out[i]->unk80, sizeof(out[i]->unk80));
        }
    }

    for (; i < max; i++) {
        out[i] = NULL;
    }

    return count;
}


int ov39_022280B4(UnkStruct_ov39_Work *work, UnkStruct_ov39_Request *request) {
    int result = 0;

    if (request->unk2 == 0) {
        result = 1;
    }

    return result;
}


int ov39_022280D4(UnkStruct_ov39_Work *work, UnkStruct_ov39_Item **out) {
    UnkStruct_ov39_Request *request = ov39_0222A2B4();
    UnkStruct_ov39_Entry *entry = (UnkStruct_ov39_Entry *)request->unk4;

    *out = &entry->unkC;

    if (entry->unkC.unkD8 != entry->unk4 || entry->unkC.unkDC != entry->unk8) {
        entry->unkC.unkD8 = entry->unk4;
        entry->unkC.unkDC = entry->unk8;
        (*out)->unkE0 = SaveArray_CalcCRC16(work->saveData, (*out)->unk80, sizeof((*out)->unk80));
    }

    return entry->unk4;
}
