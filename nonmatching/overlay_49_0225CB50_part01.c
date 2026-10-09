#include "global.h"

#include "assert.h"
#include "camera.h"
#include "filesystem.h"
#include "heap.h"
#include "unk_02018000.h"

typedef struct UnkStruct_ov49_0225CB78 {
    Camera *unk0;
    void *unk4;
    VecFx32 unk8;
} UnkStruct_ov49_0225CB78;

typedef struct UnkStruct_ov49_0225CF28 {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    UnkStruct_020181B0 unk4;
    u32 unk7C[4];
    u8 unk8C[0x10];
    VecFx32 unk9C;
    VecFx32 unkA8;
} UnkStruct_ov49_0225CF28;

typedef struct UnkStruct_ov49_0225D7B8 {
    u8 unk0[4];
    UnkStruct_020181B0 unk4[2];
    u32 unkF4[10];
} UnkStruct_ov49_0225D7B8;

typedef struct UnkStruct_ov49_0225D5FC {
    u8 unk0[0x20];
    UnkStruct_020180BC unk20[5];
    u32 unk84[5];
} UnkStruct_ov49_0225D5FC;

typedef struct UnkStruct_ov49_0225D854 {
    UnkStruct_02018030 unk0[3];
    u8 unk30[0xA8];
} UnkStruct_ov49_0225D854;

typedef struct UnkStruct_ov49_0225CC4C {
    UnkStruct_ov49_0225D7B8 unk0;
    UnkStruct_ov49_0225CF28 *unk11C;
    void *unk120;
    u8 unk124;
    u8 unk125;
    u8 unk126;
    u8 unk127;
    BOOL unk128;
    UnkStruct_ov49_0225D5FC unk12C;
    UnkStruct_ov49_0225D854 unk1C4;
    u8 unk29C[0x1F8];
    NNSFndAllocator unk494;
} UnkStruct_ov49_0225CC4C;

extern const CameraAngle ov49_02269A6C;

extern void ov49_02259154(void *a0, VecFx32 *a1);
extern void ov49_0225D7B8(void *a0, UnkStruct_ov49_0225D5FC *a1);
extern void ov49_0225DA70(void *a0, UnkStruct_ov49_0225D854 *a1);
extern void ov49_0225DD68(void *a0, void *a1);
extern void ov49_0225D804(void *a0, UnkStruct_ov49_0225D5FC *a1);
extern void ov49_0225DD0C(void *a0, void *a1);
extern void ov49_0225DAFC(void *a0, UnkStruct_ov49_0225D854 *a1);
extern void *ov49_0225D4FC(int a0, int a1, enum HeapID heapId);
extern void ov49_0225D520(void *a0);
extern void ov49_0225D5FC(UnkStruct_ov49_0225D5FC *a0, NARC *a1, void *a2, enum HeapID heapId, NNSFndAllocator *a4);
extern void ov49_0225DC2C(void *a0, NARC *a1, NNSFndAllocator *a2, void *a3, enum HeapID heapId);
extern void ov49_0225D854(UnkStruct_ov49_0225D854 *a0, NARC *a1, NNSFndAllocator *a2, void *a3, enum HeapID heapId);
extern void ov49_0225D6F0(void *a0, UnkStruct_ov49_0225D5FC *a1);
extern void ov49_0225D76C(void *a0, UnkStruct_ov49_0225D5FC *a1);
extern void ov49_0225D6AC(UnkStruct_ov49_0225D5FC *a0, NNSFndAllocator *a1);
extern void ov49_0225DCBC(void *a0, NNSFndAllocator *a1);
extern void ov49_0225D9D0(UnkStruct_ov49_0225D854 *a0, NNSFndAllocator *a1);
extern UnkStruct_ov49_0225CF28 *ov49_0225D820(void *a0);

typedef struct UnkStruct_ov49_0225CB50 {
    u8 unk0[3];
    u8 unk3;
} UnkStruct_ov49_0225CB50;

void ov49_0225CB50(u32 a0, int a1, UnkStruct_ov49_0225CB50 *a2);
void ov49_0225CB68(u16 *a0);
u32 ov49_0225CB70(const u8 *a0);
UnkStruct_ov49_0225CB78 *ov49_0225CB78(enum HeapID heapId);
void ov49_0225CBDC(UnkStruct_ov49_0225CB78 *a0);
void ov49_0225CBF4(UnkStruct_ov49_0225CB78 *a0);
void ov49_0225CC20(UnkStruct_ov49_0225CB78 *a0, fx32 a1, fx32 a2, fx32 a3);
void ov49_0225CC28(UnkStruct_ov49_0225CB78 *a0, fx32 a1, fx32 a2, fx32 a3);
void ov49_0225CC40(UnkStruct_ov49_0225CB78 *a0, void *a1);
void ov49_0225CC44(UnkStruct_ov49_0225CB78 *a0);
UnkStruct_ov49_0225CC4C *ov49_0225CC4C(u32 a0, u32 a1, enum HeapID heapId, u32 a3);
void ov49_0225CCC0(UnkStruct_ov49_0225CC4C *a0);
void ov49_0225CCF0(UnkStruct_ov49_0225CC4C *a0);
void ov49_0225CD58(UnkStruct_ov49_0225CC4C *a0);
void ov49_0225CDE8(UnkStruct_ov49_0225CC4C *a0);
void ov49_0225CDEC(UnkStruct_ov49_0225CC4C *a0, int a1, int a2, enum HeapID heapId, enum HeapID heapId2);
void ov49_0225CE88(UnkStruct_ov49_0225CC4C *a0);
void ov49_0225CED0(UnkStruct_ov49_0225CC4C *a0);
void ov49_0225CEFC(UnkStruct_ov49_0225CC4C *a0);
UnkStruct_ov49_0225CF28 *ov49_0225CF28(UnkStruct_ov49_0225CC4C *a0, int a1, int a2, const VecFx32 *a3);
void ov49_0225CF94(UnkStruct_ov49_0225CF28 *a0);
void ov49_0225CFA8(UnkStruct_ov49_0225CF28 *a0, const VecFx32 *a1);
void ov49_0225CFEC(UnkStruct_ov49_0225CF28 *a0, const VecFx32 *a1);
void ov49_0225D030(const UnkStruct_ov49_0225CF28 *a0, VecFx32 *a1);
void ov49_0225D040(UnkStruct_ov49_0225CF28 *a0, BOOL a1);
BOOL ov49_0225D04C(UnkStruct_ov49_0225CF28 *a0);
BOOL ov49_0225D064(UnkStruct_ov49_0225CF28 *a0);
void ov49_0225D07C(UnkStruct_ov49_0225CF28 *a0, u16 a1);
BOOL ov49_0225D088(const UnkStruct_ov49_0225CF28 *a0);
BOOL ov49_0225D090(const UnkStruct_ov49_0225CF28 *a0);

void ov49_0225CB50(u32 a0, int a1, UnkStruct_ov49_0225CB50 *a2) {
    a2->unk3 = a1;

    if (a2->unk3 == 0) {
        a2->unk3 = 2;
    } else {
        if (a2->unk3 == 3) {
            a2->unk3 = 1;
        }
    }
}

void ov49_0225CB68(u16 *a0) {
    *a0 = 0;
}

u32 ov49_0225CB70(const u8 *a0) {
    return *(const u32 *)(a0 + 0x30C);
}

UnkStruct_ov49_0225CB78 *ov49_0225CB78(enum HeapID heapId) {
    UnkStruct_ov49_0225CB78 *v0;

    v0 = Heap_Alloc(heapId, sizeof(UnkStruct_ov49_0225CB78));
    memset(v0, 0, sizeof(UnkStruct_ov49_0225CB78));
    v0->unk0 = Camera_New(heapId);

    Camera_Init_FromTargetDistanceAndAngle(&v0->unk8, 0x29AEC1, &ov49_02269A6C, 0x5C1, 0, 1, v0->unk0);
    Camera_SetStaticPtr(v0->unk0);
    Camera_SetPerspectiveClippingPlane(FX32_CONST(150), FX32_CONST(900), v0->unk0);

    return v0;
}

void ov49_0225CBDC(UnkStruct_ov49_0225CB78 *a0) {
    Camera_UnsetStaticPtr();
    Camera_Delete(a0->unk0);
    Heap_Free(a0);
}

void ov49_0225CBF4(UnkStruct_ov49_0225CB78 *a0) {
    if (a0->unk4) {
        ov49_02259154(a0->unk4, &a0->unk8);

        a0->unk8.x += FX32_CONST(8);
        a0->unk8.z += -FX32_CONST(32);
    }

    Camera_PushLookAtToNNSGlb();
}

void ov49_0225CC20(UnkStruct_ov49_0225CB78 *a0, fx32 a1, fx32 a2, fx32 a3) {
    a0->unk8.x = a1;
    a0->unk8.y = a2;
    a0->unk8.z = a3;
}

void ov49_0225CC28(UnkStruct_ov49_0225CB78 *a0, fx32 a1, fx32 a2, fx32 a3) {
    a0->unk8.x = a1 + FX32_CONST(8);
    a0->unk8.y = a2;
    a0->unk8.z = a3 + -FX32_CONST(32);
}

void ov49_0225CC40(UnkStruct_ov49_0225CB78 *a0, void *a1) {
    a0->unk4 = a1;
}

void ov49_0225CC44(UnkStruct_ov49_0225CB78 *a0) {
    a0->unk4 = NULL;
}

UnkStruct_ov49_0225CC4C *ov49_0225CC4C(u32 a0, u32 a1, enum HeapID heapId, u32 a3) {
    UnkStruct_ov49_0225CC4C *v0 = Heap_Alloc(heapId, sizeof(UnkStruct_ov49_0225CC4C));
    memset(v0, 0, sizeof(UnkStruct_ov49_0225CC4C));

    v0->unk11C = Heap_Alloc(heapId, sizeof(UnkStruct_ov49_0225CF28) * a0);
    v0->unk120 = Heap_Alloc(heapId, 0xE4 * a1);

    memset(v0->unk11C, 0, sizeof(UnkStruct_ov49_0225CF28) * a0);
    memset(v0->unk120, 0, 0xE4 * a1);

    v0->unk124 = a0;
    v0->unk125 = a1;

    return v0;
}

void ov49_0225CCC0(UnkStruct_ov49_0225CC4C *a0) {
    if (a0->unk128) {
        ov49_0225CE88(a0);
    }

    Heap_Free(a0->unk11C);
    Heap_Free(a0->unk120);
    Heap_Free(a0);
}

void ov49_0225CCF0(UnkStruct_ov49_0225CC4C *a0) {
    ov49_0225D7B8(&a0->unk0, &a0->unk12C);

    {
        int v0;

        for (v0 = 0; v0 < a0->unk124; v0++) {
            ov49_0225DA70(&a0->unk11C[v0], &a0->unk1C4);
        }
    }

    {
        int v1;

        for (v1 = 0; v1 < a0->unk125; v1++) {
            ov49_0225DD68(a0, (u8 *)a0->unk120 + 0xE4 * v1);
        }
    }
}

void ov49_0225CD58(UnkStruct_ov49_0225CC4C *a0) {
    int v0;

    GF_ASSERT(a0);
    GF_ASSERT(a0->unk120);
    GF_ASSERT(a0->unk11C);

    ov49_0225D804(&a0->unk0, &a0->unk12C);

    for (v0 = 0; v0 < a0->unk125; v0++) {
        ov49_0225DD0C(a0->unk29C, (u8 *)a0->unk120 + 0xE4 * v0);
    }

    for (v0 = 0; v0 < a0->unk124; v0++) {
        ov49_0225DAFC(&a0->unk11C[v0], &a0->unk1C4);
    }
}

void ov49_0225CDE8(UnkStruct_ov49_0225CC4C *a0) {
    return;
}

void ov49_0225CDEC(UnkStruct_ov49_0225CC4C *a0, int a1, int a2, enum HeapID heapId, enum HeapID heapId2) {
    NARC *v0;
    void *v1;

    a0->unk127 = a2;
    a0->unk126 = a1;

    v1 = ov49_0225D4FC(a1, a2, heapId);
    v0 = NARC_New(0xCB, heapId);

    HeapExp_FndInitAllocator(&a0->unk494, heapId2, 4);

    ov49_0225D5FC(&a0->unk12C, v0, v1, heapId2, &a0->unk494);
    ov49_0225DC2C(a0->unk29C, v0, &a0->unk494, v1, heapId2);
    ov49_0225D854(&a0->unk1C4, v0, &a0->unk494, v1, heapId2);

    NARC_Delete(v0);

    ov49_0225D520(v1);
    ov49_0225D6F0(&a0->unk0, &a0->unk12C);

    a0->unk128 = 1;
}

void ov49_0225CE88(UnkStruct_ov49_0225CC4C *a0) {
    ov49_0225D76C(&a0->unk0, &a0->unk12C);
    ov49_0225D6AC(&a0->unk12C, &a0->unk494);
    ov49_0225DCBC(a0->unk29C, &a0->unk494);
    ov49_0225D9D0(&a0->unk1C4, &a0->unk494);

    a0->unk128 = 0;
}

void ov49_0225CED0(UnkStruct_ov49_0225CC4C *a0) {
    if (a0->unk12C.unk84[4] == 1) {
        if (a0->unk0.unkF4[4] == 0) {
            a0->unk0.unkF4[4] = 1;
            sub_020181D4(&a0->unk0.unk4[0], &a0->unk12C.unk20[4]);
        }
    }
}

void ov49_0225CEFC(UnkStruct_ov49_0225CC4C *a0) {
    if (a0->unk12C.unk84[4] == 1) {
        if (a0->unk0.unkF4[4] == 1) {
            sub_020181E0(&a0->unk0.unk4[0], &a0->unk12C.unk20[4]);
            a0->unk0.unkF4[4] = 0;
        }
    }
}

UnkStruct_ov49_0225CF28 *ov49_0225CF28(UnkStruct_ov49_0225CC4C *a0, int a1, int a2, const VecFx32 *a3) {
    UnkStruct_ov49_0225CF28 *v0;

    GF_ASSERT(a1 <= 2);
    GF_ASSERT(a2 <= 3);

    v0 = ov49_0225D820(a0);

    sub_020181B0(&v0->unk4, &a0->unk1C4.unk0[a1]);
    sub_020182A0(&v0->unk4, 1);

    ov49_0225CFA8(v0, a3);

    {
        VecFx32 v1;

        v1.x = 0;
        v1.y = 0;
        v1.z = 0;
        ov49_0225CFEC(v0, &v1);
    }

    v0->unk1 = a2;
    v0->unk2 = a1;
    v0->unk0 = 1;

    v0->unk7C[0] = 1;
    v0->unk7C[2] = 1;

    return v0;
}

void ov49_0225CF94(UnkStruct_ov49_0225CF28 *a0) {
    sub_020182A0(&a0->unk4, 0);

    a0->unk0 = 0;
}

void ov49_0225CFA8(UnkStruct_ov49_0225CF28 *a0, const VecFx32 *a1) {
    a0->unk9C = *a1;
    sub_020182A8(&a0->unk4, a0->unk9C.x + a0->unkA8.x, a0->unk9C.y + a0->unkA8.y, a0->unk9C.z + a0->unkA8.z);
}

void ov49_0225CFEC(UnkStruct_ov49_0225CF28 *a0, const VecFx32 *a1) {
    a0->unkA8 = *a1;
    sub_020182A8(&a0->unk4, a0->unk9C.x + a0->unkA8.x, a0->unk9C.y + a0->unkA8.y, a0->unk9C.z + a0->unkA8.z);
}

void ov49_0225D030(const UnkStruct_ov49_0225CF28 *a0, VecFx32 *a1) {
    sub_020182B0((UnkStruct_020181B0 *)&a0->unk4, &a1->x, &a1->y, &a1->z);
}

void ov49_0225D040(UnkStruct_ov49_0225CF28 *a0, BOOL a1) {
    sub_020182A0(&a0->unk4, a1);
}

BOOL ov49_0225D04C(UnkStruct_ov49_0225CF28 *a0) {
    if (a0->unk7C[1] == 0) {
        a0->unk7C[1] = 1;
        return TRUE;
    }

    return FALSE;
}

BOOL ov49_0225D064(UnkStruct_ov49_0225CF28 *a0) {
    if (a0->unk7C[3] == 0) {
        a0->unk7C[3] = 1;
        return TRUE;
    }

    return FALSE;
}

void ov49_0225D07C(UnkStruct_ov49_0225CF28 *a0, u16 a1) {
    sub_020182E0(&a0->unk4, a1, 0);
}

BOOL ov49_0225D088(const UnkStruct_ov49_0225CF28 *a0) {
    return a0->unk7C[1];
}

BOOL ov49_0225D090(const UnkStruct_ov49_0225CF28 *a0) {
    return a0->unk7C[3];
}
