#include "unk_0208F658.h"

#include "constants/heap.h"

#include "save_palpad.h"
#include "save_special_ribbons.h"
#include "unk_02033AE0.h"
#include "unk_02035900.h"
#include "unk_02037C94.h"

void ov65_0221DE24(void *a0, int a1, int a2);
void ov65_0221DE64(int a0, u32 a1, int a2);

typedef void (*MixHandler)(int, int, void *, void *);
typedef u32 (*MixSizeGetter)(void);
typedef void *(*MixRecordGetter)(int, void *);

typedef struct MixCommand {
    MixHandler handler;
    MixSizeGetter getSize;
    MixRecordGetter getRecord;
} MixCommand;

static u32 sub_0208F66C(u32 a0);
static void sub_0208F680(int a0, int a1, void *a2, void *a3);
static void sub_0208F6F4(int a0, int a1, void *a2, void *a3);
static void sub_0208F714(int a0, int a1, void *a2, void *a3);
static void sub_0208F724(int a0, int a1, void *a2, void *a3);
static void sub_0208F728(int a0, int a1, void *a2, void *a3);
static void sub_0208F72C(int a0, int a1, void *a2, void *a3);
static void sub_0208F738(int a0, int a1, void *a2, void *a3);
static void sub_0208F73C(int a0, int a1, void *a2, void *a3);
static void sub_0208F74C(int a0, int a1, void *a2, void *a3);
static void sub_0208F77C(int a0, int a1, void *a2, void *a3);
static void sub_0208F7A8(int a0, int a1, void *a2, void *a3);
static u32 sub_0208F7E8(void);
static u32 sub_0208F7F0(void);
static u32 sub_0208F7F4(void);
static u32 sub_0208F7F8(void);
static void *sub_0208F800(int a0, void *a1);

static const MixCommand sUnkTable_02105430[] = {
    { sub_0208F680, sub_0208F7F8, sub_0208F800 },
    { sub_0208F6F4, sub_020342C4, NULL         },
    { sub_0208F714, sub_020342C4, NULL         },
    { sub_0208F724, sub_020342C4, NULL         },
    { sub_0208F728, sub_020342C4, NULL         },
    { sub_0208F72C, sub_020342C4, NULL         },
    { sub_0208F77C, sub_0208F7F4, sub_0208F800 },
    { sub_0208F7A8, sub_0208F7E8, sub_0208F800 },
    { sub_0208F738, sub_020342C0, NULL         },
    { sub_0208F73C, sub_020342C4, NULL         },
    { sub_0208F74C, sub_0208F7F0, NULL         },
};

void sub_0208F658(void *arg0) {
    sub_0203410C(&sUnkTable_02105430, NELEMS(sUnkTable_02105430), arg0);
}

static u32 sub_0208F66C(u32 a0) {
    if (a0 == 0xC) {
        return 0xC;
    }
    if (a0 < 6) {
        return a0 + 6;
    }
    return a0 - 6;
}

static void sub_0208F680(int a0, int a1, void *a2, void *a3) {
    void *buf = *(void **)((u8 *)a3 + 0x88);
    if (a0 == sub_0203769C()) {
        return;
    }
    memcpy(*(void **)((u8 *)buf + 0x2228), a2, 0x590);
    {
        int n = *(int *)((u8 *)buf + 0x64) + 1;
        *(int *)((u8 *)buf + 0x64) = n;
        if (0x590 * n >= 0x590) {
            if (sub_0203769C() == 1) {
                ov65_0221DE24(buf, 0x1B, 0);
            } else {
                ov65_0221DE64(sub_0203769C(), *(u32 *)((u8 *)buf + 0x2224), *(int *)((u8 *)buf + 0x5C));
            }
        } else {
            ov65_0221DE64(sub_0203769C(), *(u32 *)((u8 *)buf + 0x2224), *(int *)((u8 *)buf + 0x5C));
        }
        *(int *)((u8 *)buf + 0x5C) += 1;
    }
}

static void sub_0208F6F4(int a0, int a1, void *a2, void *a3) {
    void *buf = *(void **)((u8 *)a3 + 0x88);
    if (a0 == sub_0203769C()) {
        return;
    }
    *(u32 *)((u8 *)buf + 0x98) = sub_0208F66C(*(u8 *)a2);
}

static void sub_0208F714(int a0, int a1, void *a2, void *a3) {
    void *buf = *(void **)((u8 *)a3 + 0x88);
    *(u32 *)((u8 *)buf + a0 * 4 + 0x6C) = *(u8 *)a2;
}

static void sub_0208F724(int a0, int a1, void *a2, void *a3) {
}

static void sub_0208F728(int a0, int a1, void *a2, void *a3) {
}

static void sub_0208F72C(int a0, int a1, void *a2, void *a3) {
    void *buf = *(void **)((u8 *)a3 + 0x88);
    *(int *)((u8 *)buf + 0x60) = 2;
}

static void sub_0208F738(int a0, int a1, void *a2, void *a3) {
}

static void sub_0208F73C(int a0, int a1, void *a2, void *a3) {
    void *buf = *(void **)((u8 *)a3 + 0x88);
    *(u32 *)((u8 *)buf + 0x22CC) = *(u8 *)a2;
}

static void sub_0208F74C(int a0, int a1, void *a2, void *a3) {
    SaveSpecialRibbons *ribbons = Save_SpecialRibbons_Get(*(SaveData **)((u8 *)a3 + 0xC));
    u8 *src = a2;
    int i;
    if (a0 == sub_0203769C()) {
        return;
    }
    for (i = 0; i < NUM_SPECIAL_RIBBONS; i++) {
        if (src[i] != 0 && ribbons->ribbons[i] != src[i]) {
            ribbons->ribbons[i] = src[i];
        }
    }
}

static void sub_0208F77C(int a0, int a1, void *a2, void *a3) {
    void *buf = *(void **)((u8 *)a3 + 0x88);
    if (a0 == sub_0203769C()) {
        return;
    }
    SavePalPad_Merge(*(SavePalPad **)((u8 *)buf + 0x2230), (SavePalPad *)a2, 1, HEAP_ID_26);
    *(int *)((u8 *)buf + 0x60) = 3;
}

static void sub_0208F7A8(int a0, int a1, void *a2, void *a3) {
    void *buf = *(void **)((u8 *)a3 + 0x88);
    if (a0 == sub_0203769C()) {
        return;
    }
    MI_CpuCopyFast(a2, (u8 *)buf + 0x2E20 + 0x3EC * a0, 0x3EC - 4);
    *(int *)((u8 *)buf + 0x60) = 4;
    sub_020378E4(0);
}

void sub_0208F7E0(void *a0, void *a1) {
    *(void **)((u8 *)a0 + 0x88) = a1;
}

static u32 sub_0208F7E8(void) {
    return 0x3EC;
}

static u32 sub_0208F7F0(void) {
    return 0xE;
}

static u32 sub_0208F7F4(void) {
    return 0x88;
}

static u32 sub_0208F7F8(void) {
    return 0x590;
}

static void *sub_0208F800(int a0, void *a1) {
    void *buf = *(void **)((u8 *)a1 + 0x88);
    return (u8 *)buf + 0x2300 + 0x590 * a0;
}
