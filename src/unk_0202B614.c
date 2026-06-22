#include "global.h"

#include "constants/global.h"
#include "constants/pokemon.h"

#include "heap.h"
#include "mail_message.h"
#include "pm_string.h"
#include "pm_version.h"
#include "pokemon.h"
#include "save.h"

#define FASHIONDATA_STATUS_EMPTY 0x1234
#define FASHIONDATA_STATUS_VALID 0x2345

typedef struct FashionMon {
    u32 personality;                       // 0x00
    u32 otId;                              // 0x04
    u16 species;                           // 0x08
    u16 nickname[POKEMON_NAME_LENGTH + 1]; // 0x0a
    u16 otName[8];                         // 0x20
    s8 unk30;                              // 0x30
    u8 unk31;                              // 0x31
    u8 unk32;                              // 0x32
    u8 form;                               // 0x33
    u8 unk34;                              // 0x34
    u8 padding_35[3];                      // 0x35
} FashionMon;                              // size=0x38

typedef struct FashionMarker {
    u8 unk0;     // 0x00
    u8 unk1;     // 0x01
    u8 unk2;     // 0x02
    s8 unk3;     // 0x03
} FashionMarker; // size=0x04

typedef struct SaveFashionDataSub {
    u32 status;              // 0x00
    FashionMon mon;          // 0x04
    u32 unk3c;               // 0x3C
    MailMessage mailMessage; // 0x40
    FashionMarker unk48[10]; // 0x48
    u8 unk70;                // 0x70
    u8 language;             // 0x71
    u8 padding_72[2];        // 0x72
} SaveFashionDataSub;        // size=0x74

typedef struct SaveFashionDataSub3FC {
    u32 status;          // 0x00
    u8 filler_04[0x94];  // 0x04
} SaveFashionDataSub3FC; // size=0x98

typedef struct FashionCase {
    u32 itemQuantities[8]; // 0x00 (4-bit each, ids 0..60)
    u32 itemFlags[2];      // 0x20 (1-bit each, ids 0..38)
    u32 wallpapers[5];     // 0x28 (8-bit each, ids 0..18)
    u8 padding_3c[4];      // 0x3C
} FashionCase;             // size=0x40

typedef struct SaveFashionData {
    SaveFashionDataSub unk_000[11];   // 0x000
    SaveFashionDataSub3FC unk_3FC[5]; // 0x4FC
    FashionCase fashionCase;          // 0x7F4
} SaveFashionData;                    // size=0x834

void MATHi_CRC32InitTableRev(MATHCRC32Table *table, u32 poly);
u32 MATH_CalcCRC32(const MATHCRC32Table *table, const void *data, u32 length);

u32 sub_02015FCC(const void *a0);
int sub_02015FF8(const void *a0);
void ov41_02249780(void *a0, int *out1, int *out2);
int ov41_02249710(void *a0);

static BOOL sub_0202B614(u32 status);
static void sub_0202B630(u32 a0, u8 *out1, u8 *out2, s8 *out3);
static void sub_0202B684(FashionMon *mon, Pokemon *pokemon, u8 a2, u8 a3, s8 a4);
static void sub_0202B6E8(FashionMon *mon, Pokemon *pokemon, u32 a2);
static void sub_0202B718(FashionMon *mon, const String *str, u8 a2);
static void sub_0202B730(FashionMon *mon, Pokemon *pokemon);
static void sub_0202B770(FashionMarker *marker, u8 a1, u8 a2, u8 a3, u8 a4);
static void sub_0202B784(u32 *base, u8 value, int id);
static u8 sub_0202B7C8(u32 *base, int id);
static void sub_0202B808(u32 *base, u8 value, int id);
static u8 sub_0202B848(u32 *base, int id);
static void sub_0202B870(u32 *base, u8 value, int id);
static u8 sub_0202B8B4(u32 *base, int id);
static u8 sub_0202B8D8(u32 *base);
static BOOL sub_0202B8FC(u32 id);
static void sub_0202B908(FashionCase *fashionCase);

void Save_FashionData_Init(SaveFashionData *save);
u32 Save_FashionData_sizeof(void);
u32 sub_0202B994(void);
SaveFashionDataSub *sub_0202B998(enum HeapID heapID);
SaveFashionDataSub *sub_0202B9B8(SaveFashionData *fashionData, int a1);
FashionCase *Save_FashionData_GetFashionCase(SaveFashionData *fashionData);
BOOL sub_0202B9EC(SaveFashionData *fashionData, int a1);
BOOL sub_0202BA08(SaveFashionData *fashionData, int a1);
int sub_0202BA2C(FashionCase *fashionCase, int id, int quantity);
int sub_0202BA5C(FashionCase *fashionCase, int id);
u32 sub_0202BA70(FashionCase *fashionCase, int id);
u8 sub_0202BAB0(FashionCase *fashionCase, int id);
u32 FashionCase_CountAccessories(FashionCase *fashionCase);
u32 FashionCase_CountWallpapers(FashionCase *fashionCase);
void FashionCase_GiveFashionItem(FashionCase *fashionCase, int id, int quantity);
void sub_0202BB7C(FashionCase *fashionCase, int id, int quantity);
void FashionCase_GiveContestBackground(FashionCase *fashionCase, int id);
BOOL sub_0202BC10(SaveFashionDataSub *sub);
void sub_0202BC38(SaveFashionDataSub *sub);
void sub_0202BC60(SaveFashionDataSub *sub);
void sub_0202BC88(SaveFashionDataSub *sub, Pokemon *pokemon, u32 a2);
void sub_0202BCAC(SaveFashionDataSub *sub, void *a1, int a2);
void sub_0202BD60(SaveFashionDataSub *sub, int a1);
void sub_0202BD7C(SaveFashionDataSub *sub, u16 a1);
void sub_0202BDA8(SaveFashionDataSub *dst, const SaveFashionDataSub *src);
void sub_0202BDC8(SaveFashionDataSub *sub, const String *str, u8 a2);
BOOL sub_0202BDEC(SaveFashionData *fashionData, int a1);
FashionMon *sub_0202BE14(SaveFashionDataSub *sub);
FashionMarker *sub_0202BE2C(SaveFashionDataSub *sub, int a1);
void sub_0202BE60(SaveFashionDataSub *sub, String *str);
u8 sub_0202BE80(SaveFashionDataSub *sub);
u16 sub_0202BE98(SaveFashionDataSub *sub);
static BOOL sub_0202BEA4(SaveFashionDataSub3FC *sub);
static void sub_0202BECC(FashionMon *mon, String *str);
s8 sub_0202BEDC(FashionMon *mon);
u8 sub_0202BEE4(FashionMon *mon);
u8 sub_0202BEEC(FashionMon *mon);
void sub_0202BEF4(FashionMon *mon, Pokemon *pokemon);
u8 sub_0202BEFC(FashionMarker *marker);
u8 sub_0202BF00(FashionMarker *marker);
u8 sub_0202BF04(FashionMarker *marker);
s8 sub_0202BF08(FashionMarker *marker);
static BOOL sub_0202BF10(SaveFashionData *fashionData, SaveFashionDataSub *candidate);
void sub_0202BF80(int count, int a1, SaveFashionData *fashionData, SaveFashionDataSub **list);
SaveFashionData *Save_FashionData_Get(SaveData *saveData);

static BOOL sub_0202B614(u32 status) {
    return status == FASHIONDATA_STATUS_EMPTY || status == FASHIONDATA_STATUS_VALID;
}

static void sub_0202B630(u32 a0, u8 *out1, u8 *out2, s8 *out3) {
    int x;
    int y;
    int z;
    ov41_02249780((void *)a0, &x, &y);
    z = ov41_02249710((void *)a0);
    GF_ASSERT(x < 0x100);
    GF_ASSERT(y < 0x100);
    GF_ASSERT(z > -128);
    *out1 = x;
    *out2 = y;
    *out3 = z;
}

static void sub_0202B684(FashionMon *mon, Pokemon *pokemon, u8 a2, u8 a3, s8 a4) {
    mon->species = GetMonData(pokemon, MON_DATA_SPECIES, NULL);
    GetMonData(pokemon, MON_DATA_NICKNAME, mon->nickname);
    mon->personality = GetMonData(pokemon, MON_DATA_PERSONALITY, NULL);
    mon->otId = GetMonData(pokemon, MON_DATA_OT_ID, NULL);
    mon->form = GetMonData(pokemon, MON_DATA_FORM, NULL);
    mon->unk31 = a2;
    mon->unk32 = a3;
    mon->unk30 = a4;
}

static void sub_0202B6E8(FashionMon *mon, Pokemon *pokemon, u32 a2) {
    u8 a; // sp+6
    u8 b; // sp+5
    s8 c; // sp+4
    sub_0202B630(a2, &a, &b, &c);
    sub_0202B684(mon, pokemon, a, b, c);
}

static void sub_0202B718(FashionMon *mon, const String *str, u8 a2) {
    CopyStringToU16Array(str, mon->otName, 8);
    mon->unk34 = a2;
}

static void sub_0202B730(FashionMon *mon, Pokemon *pokemon) {
    CreateMon(pokemon, mon->species, 0, 0, 1, mon->personality, 1, mon->otId);
    SetMonData(pokemon, MON_DATA_NICKNAME, mon->nickname);
    SetMonData(pokemon, MON_DATA_FORM, &mon->form);
}

static void sub_0202B770(FashionMarker *marker, u8 a1, u8 a2, u8 a3, u8 a4) {
    marker->unk0 = a1;
    marker->unk1 = a2;
    marker->unk2 = a3;
    marker->unk3 = a4;
}

static void sub_0202B784(u32 *base, u8 value, int id) {
    u8 shift;
    GF_ASSERT((u32)id < 0x3d);
    shift = (u8)(id % 8) * 4;
    base[(u8)((u32)id >> 3)] &= ~(0xF << shift);
    base[(u8)((u32)id >> 3)] |= value << shift;
}

static u8 sub_0202B7C8(u32 *base, int id) {
    u8 value;
    GF_ASSERT((u32)id < 0x3d);
    value = (base[(u8)((u32)id >> 3)] >> (u8)((u8)(id % 8) * 4)) & 0xF;
    if (value > 9) {
        value = 9;
    }
    return value;
}

static void sub_0202B808(u32 *base, u8 value, int id) {
    u8 shift;
    GF_ASSERT(value < 2);
    shift = (u8)(id % 32);
    base[(u8)((u32)id >> 5)] &= ~(1 << shift);
    base[(u8)((u32)id >> 5)] |= value << shift;
}

static u8 sub_0202B848(u32 *base, int id) {
    return (base[(u8)((u32)id >> 5)] >> (u8)(id % 32)) & 1;
}

static void sub_0202B870(u32 *base, u8 value, int id) {
    u8 shift;
    GF_ASSERT(value <= 0x12);
    shift = (u8)(id % 4) * 8;
    base[(u8)((u32)id >> 2)] &= ~(0xFF << shift);
    base[(u8)((u32)id >> 2)] |= value << shift;
}

static u8 sub_0202B8B4(u32 *base, int id) {
    return base[(u8)((u32)id >> 2)] >> (u8)((u8)(id % 4) * 8);
}

static u8 sub_0202B8D8(u32 *base) {
    int i;
    int count = 0;
    for (i = 0; i < 0x12; i++) {
        if (sub_0202B8B4(base, (u8)i) != 0x12) {
            count++;
        }
    }
    return count;
}

static BOOL sub_0202B8FC(u32 id) {
    return id < 0x3d;
}

static void sub_0202B908(FashionCase *fashionCase) {
    int i;
    memset(fashionCase, 0, sizeof(FashionCase));
    for (i = 0; i < 0x12; i++) {
        sub_0202B870(fashionCase->wallpapers, 0x12, (u8)i);
    }
}

void Save_FashionData_Init(SaveFashionData *save) {
    int i;
    int j;
    for (i = 0; i < 11; i++) {
        memset(&save->unk_000[i], 0, sizeof(SaveFashionDataSub));
        save->unk_000[i].status = FASHIONDATA_STATUS_EMPTY;
    }
    for (j = 0; j < 5; j++) {
        memset(&save->unk_3FC[j], 0, sizeof(SaveFashionDataSub3FC));
        save->unk_3FC[j].status = FASHIONDATA_STATUS_EMPTY;
    }
    sub_0202B908(&save->fashionCase);
}

u32 Save_FashionData_sizeof(void) {
    return sizeof(SaveFashionData);
}

u32 sub_0202B994(void) {
    return sizeof(SaveFashionDataSub);
}

SaveFashionDataSub *sub_0202B998(enum HeapID heapID) {
    SaveFashionDataSub *sub = Heap_Alloc(heapID, sizeof(SaveFashionDataSub));
    memset(sub, 0, sizeof(SaveFashionDataSub));
    sub->status = FASHIONDATA_STATUS_EMPTY;
    return sub;
}

SaveFashionDataSub *sub_0202B9B8(SaveFashionData *fashionData, int a1) {
    GF_ASSERT(a1 < 11);
    GF_ASSERT(sub_0202B614(fashionData->unk_000[a1].status));
    return &fashionData->unk_000[a1];
}

FashionCase *Save_FashionData_GetFashionCase(SaveFashionData *fashionData) {
    return &fashionData->fashionCase;
}

BOOL sub_0202B9EC(SaveFashionData *fashionData, int a1) {
    GF_ASSERT(a1 < 11);
    return sub_0202BC10(&fashionData->unk_000[a1]);
}

BOOL sub_0202BA08(SaveFashionData *fashionData, int a1) {
    GF_ASSERT(a1 < 5);
    return sub_0202BEA4(&fashionData->unk_3FC[a1]);
}

int sub_0202BA2C(FashionCase *fashionCase, int id, int quantity) {
    int result = 1;
    u32 current = sub_0202BA70(fashionCase, id);
    if (sub_0202B8FC(id)) {
        if (current + quantity > 9) {
            result = 0;
        }
    } else {
        if (current + quantity > 1) {
            result = 0;
        }
    }
    return result;
}

int sub_0202BA5C(FashionCase *fashionCase, int id) {
    if (sub_0202BAB0(fashionCase, id) == 0x12) {
        return 0;
    }
    return 1;
}

u32 sub_0202BA70(FashionCase *fashionCase, int id) {
    GF_ASSERT((u32)id < 0x64);
    if (sub_0202B8FC(id)) {
        return sub_0202B7C8(fashionCase->itemQuantities, (u8)id);
    }
    GF_ASSERT((u32)id >= 0x3d);
    id = (u8)(id - 0x3d);
    return sub_0202B848(fashionCase->itemFlags, (u8)id);
}

u8 sub_0202BAB0(FashionCase *fashionCase, int id) {
    GF_ASSERT((u32)id < 0x12);
    return sub_0202B8B4(fashionCase->wallpapers, (u8)id);
}

u32 FashionCase_CountAccessories(FashionCase *fashionCase) {
    int i;
    u32 count = 0;
    for (i = 0; i < 0x64; i++) {
        count += sub_0202BA70(fashionCase, i);
    }
    return count;
}

u32 FashionCase_CountWallpapers(FashionCase *fashionCase) {
    int i;
    u32 count = 0;
    for (i = 0; i < 0x12; i++) {
        if (sub_0202BAB0(fashionCase, i) != 0x12) {
            count++;
        }
    }
    return count;
}

void FashionCase_GiveFashionItem(FashionCase *fashionCase, int id, int quantity) {
    GF_ASSERT((u32)id < 0x64);
    if (sub_0202B8FC(id)) {
        u8 value = sub_0202B7C8(fashionCase->itemQuantities, (u8)id);
        value += quantity;
        if (value > 9) {
            value = 9;
        }
        sub_0202B784(fashionCase->itemQuantities, value, id & 0xFF);
    } else {
        u8 value = sub_0202B848(fashionCase->itemFlags, (u8)id);
        value += quantity;
        if (value > 1) {
            value = 1;
        }
        GF_ASSERT((u32)id >= 0x3d);
        id = (u8)(id - 0x3d);
        sub_0202B808(fashionCase->itemFlags, value, (u8)id);
    }
}

void sub_0202BB7C(FashionCase *fashionCase, int id, int quantity) {
    GF_ASSERT((u32)id < 0x64);
    if (sub_0202B8FC(id)) {
        u8 value = sub_0202B7C8(fashionCase->itemQuantities, (u8)id);
        if (value > (u32)quantity) {
            value = value - quantity;
        } else {
            value = 0;
        }
        sub_0202B784(fashionCase->itemQuantities, value, id & 0xFF);
    } else {
        GF_ASSERT((u32)id >= 0x3d);
        id = (u8)(id - 0x3d);
        sub_0202B808(fashionCase->itemFlags, 0, (u8)id);
    }
}

void FashionCase_GiveContestBackground(FashionCase *fashionCase, int id) {
    GF_ASSERT((u32)id < 0x12);
    if (sub_0202B8B4(fashionCase->wallpapers, (u8)id) == 0x12) {
        u8 count = sub_0202B8D8(fashionCase->wallpapers);
        sub_0202B870(fashionCase->wallpapers, count, id & 0xFF);
    }
}

BOOL sub_0202BC10(SaveFashionDataSub *sub) {
    GF_ASSERT(sub_0202B614(sub->status));
    if (sub->status == FASHIONDATA_STATUS_VALID) {
        return TRUE;
    }
    return FALSE;
}

void sub_0202BC38(SaveFashionDataSub *sub) {
    GF_ASSERT(sub_0202B614(sub->status));
    sub->status = FASHIONDATA_STATUS_VALID;
    sub->language = gGameLanguage;
}

void sub_0202BC60(SaveFashionDataSub *sub) {
    GF_ASSERT(sub_0202B614(sub->status));
    memset(sub, 0, sizeof(SaveFashionDataSub));
    sub->status = FASHIONDATA_STATUS_EMPTY;
}

void sub_0202BC88(SaveFashionDataSub *sub, Pokemon *pokemon, u32 a2) {
    GF_ASSERT(sub_0202B614(sub->status));
    sub_0202B6E8(&sub->mon, pokemon, a2);
}

#ifdef NONMATCHING
void sub_0202BCAC(SaveFashionDataSub *sub, void *a1, int a2) {
    u16 pos[4]; // sp+0xc
    u32 packed = sub_02015FCC(*(void **)((u8 *)a1 + 4));
    int y;
    int z;
    pos[0] = packed;
    pos[1] = packed >> 0x10;
    pos[2] = pos[0];
    pos[3] = pos[1];
    z = sub_02015FF8(*(void **)((u8 *)a1 + 4));
    GF_ASSERT(a2 < 0xa);
    GF_ASSERT((s16)pos[2] < 0x100);
    y = (s16)pos[3];
    GF_ASSERT(y < 0x100);
    GF_ASSERT(z > -128);
    GF_ASSERT(!((1 << a2) & sub->unk3c));
    GF_ASSERT(sub_0202B614(sub->status));
    sub_0202B770(&sub->unk48[a2], (u8) * (u32 *)a1, (s16)pos[2], y, z);
    sub->unk3c |= (1 << a2);
}
#else
// clang-format off
// NONMATCHING: correct C above. MWCC keeps the y=(s16)pos[3] temp live in a
// register for its bounds-check instead of reloading it from the homed stack
// slot like retail (a register-allocation tie-break, not source-controllable).
// Marking pos[] volatile reproduces the u16[4] layout but not this one reload.
asm void sub_0202BCAC(SaveFashionDataSub *sub, void *a1, int a2) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r6, r2, #0
	bl sub_02015FCC
	add r1, sp, #0xc
	strh r0, [r1, #0]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1, #0]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, [r4, #4]
	bl sub_02015FF8
	add r7, r0, #0
	cmp r6, #0xa
	blt _0202BCDC
	bl GF_AssertFail
_0202BCDC:
	add r1, sp, #0xc
	mov r0, #4
	ldrsh r1, [r1, r0]
	add r0, #0xfc
	cmp r1, r0
	blt _0202BCEC
	bl GF_AssertFail
_0202BCEC:
	add r0, sp, #0xc
	mov r1, #6
	ldrsh r0, [r0, r1]
	add r1, #0xfa
	str r0, [sp, #8]
	ldr r0, [sp, #8]
	cmp r0, r1
	blt _0202BD00
	bl GF_AssertFail
_0202BD00:
	mov r0, #0x7f
	mvn r0, r0
	cmp r7, r0
	bgt _0202BD0C
	bl GF_AssertFail
_0202BD0C:
	mov r0, #1
	lsl r0, r6
	ldr r1, [r5, #0x3c]
	str r0, [sp, #4]
	tst r0, r1
	beq _0202BD1C
	bl GF_AssertFail
_0202BD1C:
	ldr r0, [r5, #0]
	bl sub_0202B614
	cmp r0, #0
	bne _0202BD2A
	bl GF_AssertFail
_0202BD2A:
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0]
	add r1, r5, #0
	add r3, sp, #0xc
	mov r2, #4
	ldrsh r2, [r3, r2]
	ldr r3, [sp, #8]
	add r1, #0x48
	lsl r0, r6, #2
	add r0, r1, r0
	ldr r1, [r4, #0]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0202B770
	ldr r1, [r5, #0x3c]
	ldr r0, [sp, #4]
	orr r0, r1
	str r0, [r5, #0x3c]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

void sub_0202BD60(SaveFashionDataSub *sub, int a1) {
    GF_ASSERT(sub_0202B614(sub->status));
    sub->unk70 = a1;
}

void sub_0202BD7C(SaveFashionDataSub *sub, u16 a1) {
    GF_ASSERT(sub_0202B614(sub->status));
    MailMsg_Init(&sub->mailMessage);
    MailMsg_SetFieldI(&sub->mailMessage, 0, a1);
}

void sub_0202BDA8(SaveFashionDataSub *dst, const SaveFashionDataSub *src) {
    GF_ASSERT(sub_0202B614(dst->status));
    memcpy(dst, src, sizeof(SaveFashionDataSub));
}

void sub_0202BDC8(SaveFashionDataSub *sub, const String *str, u8 a2) {
    GF_ASSERT(sub_0202B614(sub->status));
    sub_0202B718(&sub->mon, str, a2);
}

BOOL sub_0202BDEC(SaveFashionData *fashionData, int a1) {
    GF_ASSERT(a1 < 0xa);
    GF_ASSERT(sub_0202B614(fashionData->unk_000[0].status));
    return fashionData->unk_000[0].unk3c & (1 << a1);
}

FashionMon *sub_0202BE14(SaveFashionDataSub *sub) {
    GF_ASSERT(sub_0202B614(sub->status));
    return &sub->mon;
}

FashionMarker *sub_0202BE2C(SaveFashionDataSub *sub, int a1) {
    GF_ASSERT(a1 < 0xa);
    GF_ASSERT(sub->unk3c & (1 << a1));
    GF_ASSERT(sub_0202B614(sub->status));
    return &sub->unk48[a1];
}

void sub_0202BE60(SaveFashionDataSub *sub, String *str) {
    GF_ASSERT(sub_0202B614(sub->status));
    sub_0202BECC(&sub->mon, str);
}

u8 sub_0202BE80(SaveFashionDataSub *sub) {
    GF_ASSERT(sub_0202B614(sub->status));
    return sub->unk70;
}

u16 sub_0202BE98(SaveFashionDataSub *sub) {
    return MailMsg_GetFieldI(&sub->mailMessage, 0);
}

static BOOL sub_0202BEA4(SaveFashionDataSub3FC *sub) {
    GF_ASSERT(sub_0202B614(sub->status));
    if (sub->status == FASHIONDATA_STATUS_VALID) {
        return TRUE;
    }
    return FALSE;
}

static void sub_0202BECC(FashionMon *mon, String *str) {
    CopyU16ArrayToString(str, mon->otName);
}

s8 sub_0202BEDC(FashionMon *mon) {
    return mon->unk30;
}

u8 sub_0202BEE4(FashionMon *mon) {
    return mon->unk31;
}

u8 sub_0202BEEC(FashionMon *mon) {
    return mon->unk32;
}

void sub_0202BEF4(FashionMon *mon, Pokemon *pokemon) {
    sub_0202B730(mon, pokemon);
}

u8 sub_0202BEFC(FashionMarker *marker) {
    return marker->unk0;
}

u8 sub_0202BF00(FashionMarker *marker) {
    return marker->unk1;
}

u8 sub_0202BF04(FashionMarker *marker) {
    return marker->unk2;
}

s8 sub_0202BF08(FashionMarker *marker) {
    return marker->unk3;
}

static BOOL sub_0202BF10(SaveFashionData *fashionData, SaveFashionDataSub *candidate) {
    MATHCRC32Table table;
    BOOL result = TRUE;
    if (sub_0202BC10(candidate) == TRUE) {
        u32 crc;
        int i;
        MATHi_CRC32InitTableRev(&table, 0xEDB88320);
        crc = MATH_CalcCRC32(&table, candidate, sizeof(SaveFashionDataSub));
        for (i = 0; i < 11; i++) {
            SaveFashionDataSub *entry = sub_0202B9B8(fashionData, i);
            u32 entryCrc;
            MATHi_CRC32InitTableRev(&table, 0xEDB88320);
            entryCrc = MATH_CalcCRC32(&table, entry, sizeof(SaveFashionDataSub));
            if (entryCrc == crc) {
                result = FALSE;
                break;
            }
        }
    } else {
        result = FALSE;
    }
    return result;
}

#ifdef NONMATCHING
void sub_0202BF80(int count, int a1, SaveFashionData *fashionData, SaveFashionDataSub **list) {
    int i;
    int newCount = 0;
    int j;
    int dst;
    for (i = 0; i < count; i++) {
        if (i != a1 && list[i] != NULL && sub_0202BF10(fashionData, list[i]) == TRUE) {
            newCount++;
        }
    }
    for (j = 10; j >= 1; j--) {
        if (j + newCount < 11) {
            sub_0202BDA8(sub_0202B9B8(fashionData, j + newCount), sub_0202B9B8(fashionData, j));
        }
    }
    dst = 1;
    for (i = 0; i < count; i++) {
        SaveFashionDataSub *entry;
        if (i != a1 && (entry = list[i]) != NULL && sub_0202BF10(fashionData, entry) == TRUE) {
            sub_0202BDA8(sub_0202B9B8(fashionData, dst++), entry);
        }
    }
}
#else
// clang-format off
// NONMATCHING: correct C above. MWCC keeps the homed `count` param live in r0
// for the first loop's entry comparison instead of reloading it from sp like
// retail (a register-allocation tie-break, not source-controllable).
asm void sub_0202BF80(int count, int a1, SaveFashionData *fashionData, SaveFashionDataSub **list) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #0]
	mov r7, #0
	ldr r0, [sp, #0]
	str r1, [sp, #4]
	add r5, r2, #0
	add r6, r7, #0
	str r3, [sp, #8]
	cmp r0, #0
	ble _0202BFBA
	add r4, r3, #0
_0202BF98:
	ldr r0, [sp, #4]
	cmp r6, r0
	beq _0202BFB0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0202BFB0
	add r0, r5, #0
	bl sub_0202BF10
	cmp r0, #1
	bne _0202BFB0
	add r7, r7, #1
_0202BFB0:
	ldr r0, [sp, #0]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0202BF98
_0202BFBA:
	mov r4, #0xa
_0202BFBC:
	add r1, r4, r7
	cmp r1, #0xb
	bge _0202BFDA
	add r0, r5, #0
	bl sub_0202B9B8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202B9B8
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0202BDA8
_0202BFDA:
	sub r4, r4, #1
	cmp r4, #1
	bge _0202BFBC
	ldr r0, [sp, #0]
	mov r6, #1
	mov r4, #0
	cmp r0, #0
	ble _0202C022
_0202BFEA:
	ldr r0, [sp, #4]
	cmp r4, r0
	beq _0202C014
	ldr r0, [sp, #8]
	ldr r7, [r0, #0]
	cmp r7, #0
	beq _0202C014
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0202BF10
	cmp r0, #1
	bne _0202C014
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0202B9B8
	add r1, r7, #0
	add r6, r6, #1
	bl sub_0202BDA8
_0202C014:
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0]
	cmp r4, r0
	blt _0202BFEA
_0202C022:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

SaveFashionData *Save_FashionData_Get(SaveData *saveData) {
    return SaveArray_Get(saveData, 0xc);
}
