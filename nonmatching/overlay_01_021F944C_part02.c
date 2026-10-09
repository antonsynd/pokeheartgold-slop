#include "global.h"

#include "gf_3d_loader.h"
#include "map_object.h"
#include "overlay_01_021F944C.h"

#define UNK_OV01_021F944C_EMPTY_SHORT 0xFF
#define UNK_OV01_021F944C_EMPTY_LONG  0xFFFF

typedef struct UnkStruct_Ov01_021F944C {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    int unk14;
    int unk18;
    int unk1C;
    int unk20[8];
    int unk40[8];
    int unk60[32];
    void *unkE0;
    void *unkE4;
    void *unkE8;
    void *unkEC;
    GF_3DGfxRawResMan *unkF0;
    void *unkF4;
    void *unkF8;
    void *unkFC;
} UnkStruct_Ov01_021F944C;

extern u8 ov01_022072CC[];

extern int ov01_021F98CC(UnkStruct_Ov01_021F944C *arg0, void *arg1, int arg2, int arg3, u8 *arg4);
extern void ov01_021F9980(UnkStruct_Ov01_021F944C *arg0, const int *arg1);
extern void ov01_021F99FC(UnkStruct_Ov01_021F944C *arg0, const int *arg1);
extern void ov01_021FA4F0(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern void ov01_021FA6A4(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern int ov01_021FA524(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern void ov01_021FC588(void *arg0, int arg1);

extern int ov01_021F9FCC(MapObjectManager *manager, int spriteId, LocalMapObject *exclude);
extern int ov01_021FA01C(MapObjectManager *manager, int arg1, LocalMapObject *exclude);
extern int ov01_021FA094(MapObjectManager *manager, int arg1, LocalMapObject *exclude);
extern void *ov01_021FA1DC(UnkStruct_Ov01_021F944C *arg0);
extern void *ov01_021FA1E4(UnkStruct_Ov01_021F944C *arg0);
extern GF_3DGfxRawResMan *ov01_021FA1F4(UnkStruct_Ov01_021F944C *arg0);
extern int *ov01_021FA1FC(UnkStruct_Ov01_021F944C *arg0);
extern int *ov01_021FA200(UnkStruct_Ov01_021F944C *arg0);
extern int *ov01_021FA204(UnkStruct_Ov01_021F944C *arg0);
extern int ov01_021FA20C(UnkStruct_Ov01_021F944C *arg0);
extern int ov01_021FA214(UnkStruct_Ov01_021F944C *arg0);
extern int ov01_021FA21C(UnkStruct_Ov01_021F944C *arg0);
extern int ov01_021FA224(UnkStruct_Ov01_021F944C *arg0);
extern int ov01_021FA22C(UnkStruct_Ov01_021F944C *arg0);
extern int ov01_021FA234(UnkStruct_Ov01_021F944C *arg0);

void ov01_021F9A18(UnkStruct_Ov01_021F944C *arg0, int arg1);
void ov01_021F9A44(UnkStruct_Ov01_021F944C *arg0, int arg1);
void ov01_021F9A70(UnkStruct_Ov01_021F944C *arg0, const int *arg1);
void ov01_021F9A8C(UnkStruct_Ov01_021F944C *arg0, const int *arg1, const int *arg2, const int *arg3);
void ov01_021F9AAC(int *arg0, int arg1, int arg2);
int ov01_021F9AB4(int *arg0, int arg1, int arg2, int arg3);
int ov01_021F9AD0(int *arg0, int arg1, int arg2);
int ov01_021F9AE4(int *arg0, int arg1, int arg2, int arg3);
void ov01_021F9B00(UnkStruct_Ov01_021F944C *arg0);
void ov01_021F9B10(UnkStruct_Ov01_021F944C *arg0, int arg1);
int ov01_021F9B38(UnkStruct_Ov01_021F944C *arg0, int arg1);
void ov01_021F9B54(UnkStruct_Ov01_021F944C *arg0, int arg1);
int ov01_021F9B84(UnkStruct_Ov01_021F944C *arg0, int arg1);
void ov01_021F9BAC(UnkStruct_Ov01_021F944C *arg0, int arg1);
void ov01_021F9BD4(MapObjectManager *manager, UnkStruct_Ov01_021F944C *arg1);
void ov01_021F9C24(UnkStruct_Ov01_021F944C *arg0);
void ov01_021F9C34(UnkStruct_Ov01_021F944C *arg0, int arg1);
int ov01_021F9C5C(UnkStruct_Ov01_021F944C *arg0, int arg1);
void ov01_021F9C78(UnkStruct_Ov01_021F944C *arg0, int arg1);
int ov01_021F9CA8(UnkStruct_Ov01_021F944C *arg0, int arg1);
void ov01_021F9CD0(UnkStruct_Ov01_021F944C *arg0, int arg1);
void ov01_021F9CF8(MapObjectManager *manager, UnkStruct_Ov01_021F944C *arg1);
void ov01_021F9D48(UnkStruct_Ov01_021F944C *arg0);
void ov01_021F9D5C(UnkStruct_Ov01_021F944C *arg0, int arg1);
int ov01_021F9D88(UnkStruct_Ov01_021F944C *arg0, int arg1);
int ov01_021F9DA4(UnkStruct_Ov01_021F944C *arg0, int arg1);
void ov01_021F9DD0(UnkStruct_Ov01_021F944C *arg0, int arg1);
void ov01_021F9E04(UnkStruct_Ov01_021F944C *arg0, int arg1);
void ov01_021F9E30(MapObjectManager *manager, UnkStruct_Ov01_021F944C *arg1);
int ov01_021F9E9C(UnkStruct_Ov01_021F944C *arg0, int arg1);

void ov01_021F9A18(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    ov01_021FA1E4(arg0);
    ov01_021F98CC(arg0, arg0->unkFC, arg1, UNK_OV01_021F944C_EMPTY_SHORT, ov01_022072CC);
    ov01_021F9C34(arg0, arg1);
}

void ov01_021F9A44(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    ov01_021FA1E4(arg0);
    ov01_021F98CC(arg0, arg0->unkFC, arg1, UNK_OV01_021F944C_EMPTY_SHORT, ov01_022072CC);
    ov01_021F9C78(arg0, arg1);
}

void ov01_021F9A70(UnkStruct_Ov01_021F944C *arg0, const int *arg1) {
    while (*arg1 != UNK_OV01_021F944C_EMPTY_SHORT) {
        ov01_021F9A18(arg0, *arg1);
        arg1++;
    }
}

void ov01_021F9A8C(UnkStruct_Ov01_021F944C *arg0, const int *arg1, const int *arg2, const int *arg3) {
    ov01_021F9980(arg0, arg1);
    ov01_021F99FC(arg0, arg2);
    ov01_021F9A70(arg0, arg3);
}

void ov01_021F9AAC(int *arg0, int arg1, int arg2) {
    do {
        *arg0 = arg1;
        arg0++;
        arg2--;
    } while (arg2);
}

int ov01_021F9AB4(int *arg0, int arg1, int arg2, int arg3) {
    do {
        if (*arg0 == arg2) {
            *arg0 = arg1;
            return 1;
        }
        arg0++;
        arg3--;
    } while (arg3);
    return 0;
}

int ov01_021F9AD0(int *arg0, int arg1, int arg2) {
    do {
        if (*arg0 == arg1) {
            return 1;
        }
        arg0++;
        arg2--;
    } while (arg2);
    return 0;
}

int ov01_021F9AE4(int *arg0, int arg1, int arg2, int arg3) {
    do {
        if (*arg0 == arg1) {
            *arg0 = arg2;
            return 1;
        }
        arg0++;
        arg3--;
    } while (arg3);
    return 0;
}

void ov01_021F9B00(UnkStruct_Ov01_021F944C *arg0) {
    int *slots = ov01_021FA200(arg0);
    ov01_021F9AAC(slots, UNK_OV01_021F944C_EMPTY_SHORT, 8);
}

void ov01_021F9B10(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    int count = ov01_021FA20C(arg0);
    int *slots = ov01_021FA200(arg0);
    int found = ov01_021F9AB4(slots, arg1, UNK_OV01_021F944C_EMPTY_SHORT, count);

    GF_ASSERT(found != 0);
}

int ov01_021F9B38(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    int count = ov01_021FA20C(arg0);
    int *slots = ov01_021FA200(arg0);

    return ov01_021F9AD0(slots, arg1, count);
}

void ov01_021F9B54(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    int found;
    int *slots = ov01_021FA200(arg0);
    int count;

    slots = &slots[ov01_021FA20C(arg0)];
    count = ov01_021FA214(arg0);
    found = ov01_021F9AB4(slots, arg1, UNK_OV01_021F944C_EMPTY_SHORT, count);

    GF_ASSERT(found != 0);
}

int ov01_021F9B84(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    int count;
    int *slots = ov01_021FA200(arg0);

    slots = &slots[ov01_021FA20C(arg0)];
    count = ov01_021FA214(arg0);

    return ov01_021F9AD0(slots, arg1, count);
}

void ov01_021F9BAC(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    int count;
    int *slots = ov01_021FA200(arg0);

    slots = &slots[ov01_021FA20C(arg0)];
    count = ov01_021FA214(arg0);

    ov01_021F9AE4(slots, arg1, UNK_OV01_021F944C_EMPTY_SHORT, count);
}

void ov01_021F9BD4(MapObjectManager *manager, UnkStruct_Ov01_021F944C *arg1) {
    int count;
    int *slots;

    ov01_021FA1DC(arg1);
    slots = ov01_021FA200(arg1);
    slots = &slots[ov01_021FA20C(arg1)];
    count = ov01_021FA214(arg1);

    do {
        if (*slots != UNK_OV01_021F944C_EMPTY_SHORT) {
            if (ov01_021FA01C(manager, *slots, NULL) == 0) {
                ov01_021FC588(arg1->unkF8, *slots);
                *slots = UNK_OV01_021F944C_EMPTY_SHORT;
            }
        }
        slots++;
        count--;
    } while (count);
}

void ov01_021F9C24(UnkStruct_Ov01_021F944C *arg0) {
    int *slots = ov01_021FA204(arg0);
    ov01_021F9AAC(slots, UNK_OV01_021F944C_EMPTY_SHORT, 8);
}

void ov01_021F9C34(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    int count = ov01_021FA21C(arg0);
    int *slots = ov01_021FA204(arg0);
    int found = ov01_021F9AB4(slots, arg1, UNK_OV01_021F944C_EMPTY_SHORT, count);

    GF_ASSERT(found != 0);
}

int ov01_021F9C5C(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    int count = ov01_021FA21C(arg0);
    int *slots = ov01_021FA204(arg0);

    return ov01_021F9AD0(slots, arg1, count);
}

void ov01_021F9C78(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    int found;
    int *slots = ov01_021FA204(arg0);
    int count;

    slots = &slots[ov01_021FA21C(arg0)];
    count = ov01_021FA224(arg0);
    found = ov01_021F9AB4(slots, arg1, UNK_OV01_021F944C_EMPTY_SHORT, count);

    GF_ASSERT(found != 0);
}

int ov01_021F9CA8(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    int count;
    int *slots = ov01_021FA204(arg0);

    slots = &slots[ov01_021FA21C(arg0)];
    count = ov01_021FA224(arg0);

    return ov01_021F9AD0(slots, arg1, count);
}

void ov01_021F9CD0(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    int count;
    int *slots = ov01_021FA204(arg0);

    slots = &slots[ov01_021FA21C(arg0)];
    count = ov01_021FA224(arg0);

    ov01_021F9AE4(slots, arg1, UNK_OV01_021F944C_EMPTY_SHORT, count);
}

void ov01_021F9CF8(MapObjectManager *manager, UnkStruct_Ov01_021F944C *arg1) {
    int count;
    int *slots;

    ov01_021FA1E4(arg1);
    slots = ov01_021FA204(arg1);
    slots = &slots[ov01_021FA21C(arg1)];
    count = ov01_021FA224(arg1);

    do {
        if (*slots != UNK_OV01_021F944C_EMPTY_SHORT) {
            if (ov01_021FA094(manager, *slots, NULL) == 0) {
                ov01_021FC588(arg1->unkFC, *slots);
                *slots = UNK_OV01_021F944C_EMPTY_SHORT;
            }
        }
        slots++;
        count--;
    } while (count);
}

void ov01_021F9D48(UnkStruct_Ov01_021F944C *arg0) {
    int *slots = ov01_021FA1FC(arg0);
    ov01_021F9AAC(slots, UNK_OV01_021F944C_EMPTY_LONG, 32);
}

void ov01_021F9D5C(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    int count = ov01_021FA22C(arg0);
    int *slots = ov01_021FA1FC(arg0);
    int found = ov01_021F9AB4(slots, arg1, UNK_OV01_021F944C_EMPTY_LONG, count);

    GF_ASSERT(found != 0);
}

int ov01_021F9D88(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    int count = ov01_021FA22C(arg0);
    int *slots = ov01_021FA1FC(arg0);

    return ov01_021F9AD0(slots, arg1, count);
}

int ov01_021F9DA4(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    if (ov01_021F9D88(arg0, arg1) == 1) {
        return 1;
    }
    if (ov01_021F9E9C(arg0, arg1) == 1) {
        return 2;
    }
    return ov01_021FA524(arg0, arg1);
}

void ov01_021F9DD0(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    int found;
    int *slots = ov01_021FA1FC(arg0);
    int count;

    slots = &slots[ov01_021FA22C(arg0)];
    count = ov01_021FA234(arg0);
    found = ov01_021F9AB4(slots, arg1, UNK_OV01_021F944C_EMPTY_LONG, count);

    GF_ASSERT(found != 0);
}

void ov01_021F9E04(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    int count;
    int *slots = ov01_021FA1FC(arg0);

    slots = &slots[ov01_021FA22C(arg0)];
    count = ov01_021FA234(arg0);

    ov01_021F9AE4(slots, arg1, UNK_OV01_021F944C_EMPTY_LONG, count);
}

void ov01_021F9E30(MapObjectManager *manager, UnkStruct_Ov01_021F944C *arg1) {
    int count;
    int id;
    GF_3DGfxRawResMan *resMan = ov01_021FA1F4(arg1);
    int *slots = ov01_021FA1FC(arg1);

    slots = &slots[ov01_021FA22C(arg1)];
    count = ov01_021FA234(arg1);

    do {
        id = *slots;

        if (id != UNK_OV01_021F944C_EMPTY_LONG) {
            if (ov01_021F9FCC(manager, id, NULL) == 0) {
                GF3dGfxRawResMan_FreeObjById(resMan, id);
                ov01_021FA4F0(arg1, id);
                ov01_021FA6A4(arg1, id);
                *slots = UNK_OV01_021F944C_EMPTY_LONG;
            }
        }
        slots++;
        count--;
    } while (count);
}

int ov01_021F9E9C(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    int count;
    int *slots = ov01_021FA1FC(arg0);

    slots = &slots[ov01_021FA22C(arg0)];
    count = ov01_021FA234(arg0);

    return ov01_021F9AD0(slots, arg1, count);
}
