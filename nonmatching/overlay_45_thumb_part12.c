#include "global.h"

#include "assert.h"
#include "heap.h"
#include "message_format.h"
#include "msgdata.h"
#include "player_data.h"
#include "pm_string.h"
#include "pm_version.h"

#define UNK_OV45_MSG_FILE_ID 757
#define UNK_OV45_SLOT_COUNT  20
#define UNK_OV45_ENTRY_COUNT 8
#define UNK_OV45_NAME_COUNT  4
#define UNK_OV45_KIND_COUNT  9

typedef struct UnkStruct_ov45_0222E04C {
    u8 unk0;
    int unk4[3];
    String *unk10[UNK_OV45_NAME_COUNT];
    u16 unk20[4];
    u16 unk28;
    s16 unk2A;
    struct UnkStruct_ov45_0222E04C *unk2C;
    struct UnkStruct_ov45_0222E04C *unk30;
} UnkStruct_ov45_0222E04C;

typedef struct UnkStruct_ov45_0222DF78 {
    UnkStruct_ov45_0222E04C unk0[UNK_OV45_ENTRY_COUNT];
    UnkStruct_ov45_0222E04C unk1A0;
} UnkStruct_ov45_0222DF78;

typedef struct UnkStruct_ov45_0222DE3C_Slot {
    u16 unk0;
    u16 unk2;
} UnkStruct_ov45_0222DE3C_Slot;

typedef struct UnkStruct_ov45_0222DE3C {
    UnkStruct_ov45_0222DE3C_Slot unk0[UNK_OV45_SLOT_COUNT];
    u16 unk50;
    u16 unk52;
} UnkStruct_ov45_0222DE3C;

typedef struct UnkStruct_ov45_0222DD38 {
    u8 unk0[8];
    UnkStruct_ov45_0222DE3C unk8;
    UnkStruct_ov45_0222DF78 unk5C;
} UnkStruct_ov45_0222DD38;

typedef BOOL (*UnkFuncPtr_ov45_0222DD78)(UnkStruct_ov45_0222E04C *, const void *, MessageFormat *, MsgData *, String *, enum HeapID);
typedef u32 (*UnkFuncPtr_ov45_0222DDE4)(const UnkStruct_ov45_0222E04C *, u32);

extern UnkFuncPtr_ov45_0222DD78 const ov45_02254C0C[UNK_OV45_KIND_COUNT];
extern UnkFuncPtr_ov45_0222DDE4 const ov45_02254BE8[UNK_OV45_KIND_COUNT];

extern u32 ov45_0222E540(const UnkStruct_ov45_0222E04C *a0, u32 a1);
extern u32 ov45_0222E550(const UnkStruct_ov45_0222E04C *a0, u32 a1);
extern u32 ov45_0222E560(const UnkStruct_ov45_0222E04C *a0, u32 a1);
extern u32 ov45_0222E574(const UnkStruct_ov45_0222E04C *a0, u32 a1);
extern u32 ov45_0222E584(const UnkStruct_ov45_0222E04C *a0, u32 a1);
extern u32 ov45_0222E598(const UnkStruct_ov45_0222E04C *a0, u32 a1);
extern u32 ov45_0222E59C(const UnkStruct_ov45_0222E04C *a0, u32 a1);
extern u32 ov45_0222E5A0(const UnkStruct_ov45_0222E04C *a0, u32 a1);

u32 ov45_0222DD38(const UnkStruct_ov45_0222DD38 *a0);
BOOL ov45_0222DD44(const UnkStruct_ov45_0222DD38 *a0);
int ov45_0222DD5C(const UnkStruct_ov45_0222DD38 *a0);
BOOL ov45_0222DD78(const UnkStruct_ov45_0222DD38 *a0, const void *a1, int a2, String *a3, enum HeapID heapID);
u32 ov45_0222DDE4(const UnkStruct_ov45_0222DD38 *a0, int a1, u32 a2);
void ov45_0222DE1C(UnkStruct_ov45_0222DE3C *a0);
void ov45_0222DE3C(UnkStruct_ov45_0222DE3C *a0, u32 a1, u32 a2, u32 a3);
void ov45_0222DE58(UnkStruct_ov45_0222DE3C *a0, u32 a1, u32 a2, u32 a3);
void ov45_0222DE74(UnkStruct_ov45_0222DE3C *a0, u32 a1);
void ov45_0222DE8C(UnkStruct_ov45_0222DE3C *a0, u32 a1, u32 a2);
void ov45_0222DEA4(UnkStruct_ov45_0222DE3C *a0, int a1);
void ov45_0222DEB8(UnkStruct_ov45_0222DE3C *a0, u32 a1);
BOOL ov45_0222DECC(const UnkStruct_ov45_0222DE3C *a0, u32 a1);
u32 ov45_0222DEE0(const UnkStruct_ov45_0222DE3C *a0, u32 a1);
BOOL ov45_0222DEF4(const UnkStruct_ov45_0222DE3C *a0, u32 a1);
BOOL ov45_0222DF14(const UnkStruct_ov45_0222DE3C *a0, u32 a1);
u32 ov45_0222DF38(const UnkStruct_ov45_0222DE3C *a0, u32 a1);
u32 ov45_0222DF50(const UnkStruct_ov45_0222DE3C *a0);
BOOL ov45_0222DF58(const UnkStruct_ov45_0222DE3C *a0, u32 a1);
void ov45_0222DF78(UnkStruct_ov45_0222DF78 *a0, enum HeapID heapID);
void ov45_0222DFD0(UnkStruct_ov45_0222DF78 *a0);
void ov45_0222E000(UnkStruct_ov45_0222DF78 *a0);
void ov45_0222E03C(UnkStruct_ov45_0222DF78 *a0);
UnkStruct_ov45_0222E04C *ov45_0222E04C(UnkStruct_ov45_0222DF78 *a0, u16 a1);
void ov45_0222E094(UnkStruct_ov45_0222E04C *a0, UnkStruct_ov45_0222E04C *a1);
void ov45_0222E0A4(UnkStruct_ov45_0222DF78 *a0, UnkStruct_ov45_0222E04C *a1);
void ov45_0222E0CC(UnkStruct_ov45_0222DF78 *a0, UnkStruct_ov45_0222E04C *a1);
void ov45_0222E0E0(UnkStruct_ov45_0222E04C *a0, int a1, int a2, int a3, PlayerProfile *a4, PlayerProfile *a5, PlayerProfile *a6, PlayerProfile *a7, u16 a8, u16 a9, u16 a10, u16 a11, u32 a12, u32 a13, u32 a14);
BOOL ov45_0222E14C(UnkStruct_ov45_0222E04C *a0, const void *a1, MessageFormat *a2, MsgData *a3, String *a4, enum HeapID heapID);
BOOL ov45_0222E1A0(UnkStruct_ov45_0222E04C *a0, const void *a1, MessageFormat *a2, MsgData *a3, String *a4, enum HeapID heapID);

u32 ov45_0222DD38(const UnkStruct_ov45_0222DD38 *a0) {
    return ov45_0222DF50(&a0->unk8);
}

BOOL ov45_0222DD44(const UnkStruct_ov45_0222DD38 *a0) {
    if (a0->unk5C.unk1A0.unk2C != &a0->unk5C.unk1A0) {
        return TRUE;
    }
    return FALSE;
}

int ov45_0222DD5C(const UnkStruct_ov45_0222DD38 *a0) {
    GF_ASSERT(ov45_0222DD44(a0));
    return a0->unk5C.unk1A0.unk2C->unk0;
}

BOOL ov45_0222DD78(const UnkStruct_ov45_0222DD38 *a0, const void *a1, int a2, String *a3, enum HeapID heapID) {
    MessageFormat *messageFormat;
    MsgData *msgData;
    UnkStruct_ov45_0222E04C *entry;
    BOOL result;

    GF_ASSERT(ov45_0222DD44(a0));

    entry = a0->unk5C.unk1A0.unk2C;
    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, UNK_OV45_MSG_FILE_ID, heapID);
    messageFormat = MessageFormat_New(heapID);

    if (entry->unk0 < UNK_OV45_KIND_COUNT) {
        result = ov45_02254C0C[entry->unk0](entry, a1, messageFormat, msgData, a3, heapID);
    } else {
        result = FALSE;
    }

    DestroyMsgData(msgData);
    MessageFormat_Delete(messageFormat);
    return result;
}

u32 ov45_0222DDE4(const UnkStruct_ov45_0222DD38 *a0, int a1, u32 a2) {
    const UnkStruct_ov45_0222E04C *entry;

    GF_ASSERT(ov45_0222DD44(a0));

    entry = a0->unk5C.unk1A0.unk2C;
    if (entry->unk0 < UNK_OV45_KIND_COUNT) {
        return ov45_02254BE8[entry->unk0](entry, a2);
    }
    GF_AssertFail();
    return 20;
}

void ov45_0222DE1C(UnkStruct_ov45_0222DE3C *a0) {
    int i;

    for (i = 0; i < UNK_OV45_SLOT_COUNT; i++) {
        ov45_0222DE3C(a0, i, 2, 0);
    }
}

void ov45_0222DE3C(UnkStruct_ov45_0222DE3C *a0, u32 a1, u32 a2, u32 a3) {
    GF_ASSERT(a1 < UNK_OV45_SLOT_COUNT);
    a0->unk0[a1].unk0 = a2;
    a0->unk0[a1].unk2 = a3;
}

void ov45_0222DE58(UnkStruct_ov45_0222DE3C *a0, u32 a1, u32 a2, u32 a3) {
    ov45_0222DE3C(a0, a1, a2, a3);
    ov45_0222DEA4(a0, 1);
    ov45_0222DEB8(a0, a1);
}

void ov45_0222DE74(UnkStruct_ov45_0222DE3C *a0, u32 a1) {
    ov45_0222DE3C(a0, a1, 2, 0);
    ov45_0222DEA4(a0, 2);
}

void ov45_0222DE8C(UnkStruct_ov45_0222DE3C *a0, u32 a1, u32 a2) {
    GF_ASSERT(a1 < UNK_OV45_SLOT_COUNT);
    a0->unk0[a1].unk2 = a2;
}

void ov45_0222DEA4(UnkStruct_ov45_0222DE3C *a0, int a1) {
    GF_ASSERT(a1 <= 2);
    a0->unk50 = a1;
}

void ov45_0222DEB8(UnkStruct_ov45_0222DE3C *a0, u32 a1) {
    GF_ASSERT(a1 < UNK_OV45_SLOT_COUNT);
    a0->unk52 = a1;
}

BOOL ov45_0222DECC(const UnkStruct_ov45_0222DE3C *a0, u32 a1) {
    if (ov45_0222DEE0(a0, a1) == 2) {
        return FALSE;
    }
    return TRUE;
}

u32 ov45_0222DEE0(const UnkStruct_ov45_0222DE3C *a0, u32 a1) {
    GF_ASSERT(a1 < UNK_OV45_SLOT_COUNT);
    return a0->unk0[a1].unk0;
}

BOOL ov45_0222DEF4(const UnkStruct_ov45_0222DE3C *a0, u32 a1) {
    GF_ASSERT(a1 < UNK_OV45_SLOT_COUNT);
    if (a0->unk0[a1].unk2 & 1) {
        return TRUE;
    }
    return FALSE;
}

BOOL ov45_0222DF14(const UnkStruct_ov45_0222DE3C *a0, u32 a1) {
    GF_ASSERT(a1 < UNK_OV45_SLOT_COUNT);
    if (a0->unk0[a1].unk2 & 2) {
        return TRUE;
    }
    return FALSE;
}

u32 ov45_0222DF38(const UnkStruct_ov45_0222DE3C *a0, u32 a1) {
    GF_ASSERT(a1 < UNK_OV45_SLOT_COUNT);
    return a0->unk0[a1].unk2;
}

u32 ov45_0222DF50(const UnkStruct_ov45_0222DE3C *a0) {
    return a0->unk50;
}

BOOL ov45_0222DF58(const UnkStruct_ov45_0222DE3C *a0, u32 a1) {
    GF_ASSERT(a1 < UNK_OV45_SLOT_COUNT);
    if (a0->unk52 == a1) {
        return TRUE;
    }
    return FALSE;
}

void ov45_0222DF78(UnkStruct_ov45_0222DF78 *a0, enum HeapID heapID) {
    int i;
    int j;

    memset(a0, 0, sizeof(UnkStruct_ov45_0222DF78));

    for (i = 0; i < UNK_OV45_ENTRY_COUNT; i++) {
        for (j = 0; j < UNK_OV45_NAME_COUNT; j++) {
            a0->unk0[i].unk10[j] = String_New(8, heapID);
        }
    }

    a0->unk1A0.unk2C = &a0->unk1A0;
    a0->unk1A0.unk30 = &a0->unk1A0;
}

void ov45_0222DFD0(UnkStruct_ov45_0222DF78 *a0) {
    int i;
    int j;

    for (i = 0; i < UNK_OV45_ENTRY_COUNT; i++) {
        for (j = 0; j < UNK_OV45_NAME_COUNT; j++) {
            String_Delete(a0->unk0[i].unk10[j]);
        }
    }

    memset(a0, 0, sizeof(UnkStruct_ov45_0222DF78));
}

void ov45_0222E000(UnkStruct_ov45_0222DF78 *a0) {
    UnkStruct_ov45_0222E04C *next;
    UnkStruct_ov45_0222E04C *sentinel = &a0->unk1A0;
    UnkStruct_ov45_0222E04C *entry = sentinel->unk2C;

    while (entry != sentinel) {
        next = entry->unk2C;
        entry->unk28 = 0;
        if (entry->unk2A - 1 > 0) {
            entry->unk2A--;
        } else {
            ov45_0222E0CC(a0, entry);
        }
        entry = next;
    }
}

void ov45_0222E03C(UnkStruct_ov45_0222DF78 *a0) {
    ov45_0222E0CC(a0, a0->unk1A0.unk2C);
}

UnkStruct_ov45_0222E04C *ov45_0222E04C(UnkStruct_ov45_0222DF78 *a0, u16 a1) {
    int i;
    UnkStruct_ov45_0222E04C *found = NULL;

    for (i = 0; i < UNK_OV45_ENTRY_COUNT; i++) {
        if (a0->unk0[i].unk2C == NULL) {
            found = &a0->unk0[i];
            break;
        }
    }

    if (found == NULL) {
        for (i = 0; i < UNK_OV45_ENTRY_COUNT; i++) {
            if (a0->unk0[i].unk28 >= a1) {
                found = &a0->unk0[i];
                ov45_0222E0CC(a0, found);
                break;
            }
        }
    }

    return found;
}

void ov45_0222E094(UnkStruct_ov45_0222E04C *a0, UnkStruct_ov45_0222E04C *a1) {
    a1->unk2C = a0->unk2C;
    a1->unk30 = a0;
    a0->unk2C = a1;
    a1->unk2C->unk30 = a1;
}

void ov45_0222E0A4(UnkStruct_ov45_0222DF78 *a0, UnkStruct_ov45_0222E04C *a1) {
    UnkStruct_ov45_0222E04C *sentinel = &a0->unk1A0;
    UnkStruct_ov45_0222E04C *entry = sentinel->unk30;

    while (entry != sentinel) {
        if (entry->unk28 < a1->unk28) {
            break;
        }
        entry = entry->unk30;
    }

    ov45_0222E094(entry, a1);
}

void ov45_0222E0CC(UnkStruct_ov45_0222DF78 *a0, UnkStruct_ov45_0222E04C *a1) {
    a1->unk30->unk2C = a1->unk2C;
    a1->unk2C->unk30 = a1->unk30;
    a1->unk30 = NULL;
    a1->unk2C = NULL;
}

void ov45_0222E0E0(UnkStruct_ov45_0222E04C *a0, int a1, int a2, int a3, PlayerProfile *a4, PlayerProfile *a5, PlayerProfile *a6, PlayerProfile *a7, u16 a8, u16 a9, u16 a10, u16 a11, u32 a12, u32 a13, u32 a14) {
    GF_ASSERT(a14 < UNK_OV45_KIND_COUNT);
    a0->unk0 = a14;
    a0->unk2A = a12;
    a0->unk28 = a13;
    a0->unk4[0] = a1;
    a0->unk4[1] = a2;
    a0->unk4[2] = a3;
    a0->unk20[0] = a8;
    a0->unk20[1] = a9;
    a0->unk20[2] = a10;
    a0->unk20[3] = a11;

    if (a4 != NULL) {
        PlayerName_FlatToString(a4, a0->unk10[0]);
    }
    if (a5 != NULL) {
        PlayerName_FlatToString(a5, a0->unk10[1]);
    }
    if (a6 != NULL) {
        PlayerName_FlatToString(a6, a0->unk10[2]);
    }
    if (a7 != NULL) {
        PlayerName_FlatToString(a7, a0->unk10[3]);
    }
}

BOOL ov45_0222E14C(UnkStruct_ov45_0222E04C *a0, const void *a1, MessageFormat *a2, MsgData *a3, String *a4, enum HeapID heapID) {
    String *string;
    u8 language = gGameLanguage;

    BufferString(a2, 0, a0->unk10[0], 0, 1, language);
    BufferString(a2, 1, a0->unk10[1], 0, 1, language);
    string = NewString_ReadMsgData(a3, 7);
    StringExpandPlaceholders(a2, a4, string);
    String_Delete(string);
    return TRUE;
}

BOOL ov45_0222E1A0(UnkStruct_ov45_0222E04C *a0, const void *a1, MessageFormat *a2, MsgData *a3, String *a4, enum HeapID heapID) {
    String *string;
    u8 language = gGameLanguage;

    BufferString(a2, 0, a0->unk10[0], 0, 1, language);
    BufferString(a2, 1, a0->unk10[1], 0, 1, language);
    BufferWiFiPlazaInstrumentName(a2, 2, a0->unk4[0]);
    string = NewString_ReadMsgData(a3, 8);
    StringExpandPlaceholders(a2, a4, string);
    String_Delete(string);
    return TRUE;
}
