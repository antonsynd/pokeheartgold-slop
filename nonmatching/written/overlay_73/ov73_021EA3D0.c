#include "global.h"
#include "assert.h"
#include "error_handling.h"
#include "save_arrays.h"
#include "unk_02034354.h"
#include "unk_02035900.h"

typedef struct UnkStruct_ov73_021EA3D0 {
    u32 heapId;
    SaveData *saveData;
    u32 unk_08;
    u32 unk_0C;
    void **unk_10;
    void **unk_14;
} UnkStruct_ov73_021EA3D0;

/* The asm calls through the table with r1 = the function pointer and r2/r3
 * still holding whatever the previous call (or the caller) left there. */
typedef struct UnkStruct_ov73_021EA744 {
    u32 (*getSize)(SaveData *saveData, void *self, u32 r2, u32 r3);
    void *unk_04;
    void (*mix)(UnkStruct_ov73_021EA3D0 *args, void *self, u32 r2, u32 r3);
} UnkStruct_ov73_021EA744;

extern UnkStruct_ov73_021EA744 ov73_021EA744[10];
extern void sub_0202E43C(UnkStruct_0202E474 *a0);

#define CAPTURE_R2_R3()                                                                        \
    do {                                                                                       \
        register u32 captured2 __asm__("r4");                                                  \
        register u32 captured3 __asm__("r5");                                                  \
        __asm__ volatile("movs r4, r2\n\tmovs r5, r3" : "=r"(captured2), "=r"(captured3));      \
        r2 = captured2;                                                                        \
        r3 = captured3;                                                                        \
    } while (0)

void ov73_021EA3D0(SaveData *saveData, u8 *param1) {
    u32 r2, r3;
    UnkStruct_ov73_021EA3D0 args;
    u32 total;
    u32 remaining;
    u32 sizes[3];
    void *arrA[5];
    void *arrB[5];
    u32 size;
    int i, j;
    UnkStruct_0202E474 *broadcast;
    u32 sizeSum;

    remaining = 3000;
    args.heapId = 0x32;
    total = 0;
    args.saveData = saveData;
    args.unk_0C = sub_0203769C();
    CAPTURE_R2_R3();
    args.unk_08 = 5;
    args.unk_10 = arrA;
    args.unk_14 = arrB;
    sizes[0] = 0;
    sizes[1] = 0;
    sizes[2] = 0;

    for (i = 0; i < 2; i++) {
        sizeSum = ov73_021EA744[i].getSize(saveData, ov73_021EA744[i].getSize, r2, r3);
        CAPTURE_R2_R3();
        sizes[0] += sizeSum;
    }
    for (i = 0; i < 3; i++) {
        sizeSum = ov73_021EA744[i].getSize(saveData, ov73_021EA744[i].getSize, r2, r3);
        CAPTURE_R2_R3();
        sizes[1] += sizeSum;
    }
    for (i = 0; i < 4; i++) {
        sizeSum = ov73_021EA744[i].getSize(saveData, ov73_021EA744[i].getSize, r2, r3);
        CAPTURE_R2_R3();
        sizes[2] += sizeSum;
    }

    for (i = 0; i < 10; i++) {
        PlayerProfile *profile;

        size = ov73_021EA744[i].getSize(saveData, ov73_021EA744[i].getSize, r2, r3);
        CAPTURE_R2_R3();
        if (!(remaining > size)) {
            GF_AssertFail();
        }
        for (j = 0; j < 5; j++) {
            profile = sub_02034818(j);
            CAPTURE_R2_R3();
            if (profile != NULL) {
                args.unk_10[j] = param1 + j * 0xbc0 + total;
            } else {
                args.unk_10[j] = NULL;
            }
        }
        if (i == 7 || i == 8 || i == 9) {
            for (j = 0; j < 5; j++) {
                profile = sub_02034818(j);
                CAPTURE_R2_R3();
                if (profile != NULL) {
                    args.unk_14[j] = param1 + j * 0xbc0 + sizes[i - 7];
                } else {
                    args.unk_14[j] = NULL;
                }
            }
        }
        if (ov73_021EA744[i].mix != NULL) {
            ov73_021EA744[i].mix(&args, ov73_021EA744[i].mix, r2, r3);
            CAPTURE_R2_R3();
        }
        total += size;
        remaining -= size;
    }

    broadcast = sub_020270C4(saveData);
    sub_0202E43C(broadcast);
    sub_0202E474(broadcast);
}
