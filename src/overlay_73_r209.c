#include "global.h"

#include "save.h"
#include "unk_02034354.h"
#include "unk_02035900.h"

typedef struct Ov73RecordMixData {
    u8 data[0xBC0];
} Ov73RecordMixData;

typedef struct Ov73RecordMixArgs {
    enum HeapID heapID;
    SaveData *saveData;
    int unk08;
    int netId;
    const void **unk10;
    const void **unk14;
} Ov73RecordMixArgs;

typedef struct Ov73RecordMixHandler {
    u32 (*getSize)(SaveData *saveData);
    void *unk04;
    void (*receive)(Ov73RecordMixArgs *args);
} Ov73RecordMixHandler;

extern const Ov73RecordMixHandler ov73_021EA744[10];

void *sub_020270C4(SaveData *saveData);
void sub_0202E43C(void *broadcast);
void sub_0202E474(void *broadcast);

void ov73_021EA3D0(SaveData *saveData, const Ov73RecordMixData *mixData) {
    Ov73RecordMixArgs args;
    u32 size;
    u32 offset = 0;
    u32 remaining = 3000;
    int i, j, k;
    const void *records[5];
    const void *records2[5];
    u32 offsets[3];

    args.heapID = HEAP_ID_50;
    args.saveData = saveData;
    args.netId = sub_0203769C();
    args.unk08 = 5;
    args.unk10 = records;
    args.unk14 = records2;

    offsets[0] = 0;
    offsets[1] = 0;
    offsets[2] = 0;

    for (i = 0; i < 2; i++) {
        offsets[0] += ov73_021EA744[i].getSize(saveData);
    }
    for (i = 0; i < 3; i++) {
        offsets[1] += ov73_021EA744[i].getSize(saveData);
    }
    for (i = 0; i < 4; i++) {
        offsets[2] += ov73_021EA744[i].getSize(saveData);
    }

    for (i = 0; i < NELEMS(ov73_021EA744); i++) {
        size = ov73_021EA744[i].getSize(saveData);
        GF_ASSERT(remaining > size);

        for (j = 0; j < 5; j++) {
            if (sub_02034818(j) != NULL) {
                args.unk10[j] = &mixData[j].data[offset];
            } else {
                args.unk10[j] = NULL;
            }
        }

        switch (i) {
        case 7:
        case 8:
        case 9:
            for (k = 0; k < 5; k++) {
                if (sub_02034818(k) != NULL) {
                    args.unk14[k] = &mixData[k].data[offsets[i - 7]];
                } else {
                    args.unk14[k] = NULL;
                }
            }
            break;
        }

        if (ov73_021EA744[i].receive != NULL) {
            ov73_021EA744[i].receive(&args);
        }

        offset += size;
        remaining -= size;
    }

    void *broadcast = sub_020270C4(saveData);
    sub_0202E43C(broadcast);
    sub_0202E474(broadcast);
}
