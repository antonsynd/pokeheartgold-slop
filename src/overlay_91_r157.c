#include "global.h"

#include "filesystem.h"
#include "unk_02018000.h"

typedef struct Ov91Course {
    UnkStruct_020181B0 objects[3];
    UnkStruct_02018030 models[3];
    UnkStruct_020180BC anims[6];
    u16 unk210;
    u8 filler_212[2];
    UnkStruct_020180BC courseAnims[1];
    u16 unk228;
    u8 filler_22A[2];
    u16 unk22C;
    u16 unk22E;
} Ov91Course;

extern const u16 ov91_02261C04[3];
extern const u16 ov91_02261C1C[6];
extern const u8 ov91_0226274C[6];
extern const NNSG3dResName ov91_022621AC[6][15];
extern const u8 _02261BE8[1];

void ov91_02260334(Ov91Course *course, int a1);

void ov91_0225FF00(Ov91Course *course, NARC *narc, enum HeapID heapID, NNSFndAllocator *allocator) {
    int i, j, idx;
    const NNSG3dResName *name;
    const NNSG3dResNodeInfo *nodeInfo;

    memset(course, 0, sizeof(Ov91Course));

    for (i = 0; i < 3; i++) {
        sub_02018030(&course->models[i], narc, ov91_02261C04[i], heapID);
        sub_020181B0(&course->objects[i], &course->models[i]);
        sub_020182A0(&course->objects[i], FALSE);
        sub_020182A8(&course->objects[i], 0, -FX32_CONST(290), 0);
        sub_020182C4(&course->objects[i], FX32_CONST(1.50f), FX32_CONST(1.50f), FX32_CONST(1.50f));
    }

    for (i = 0; i < 6; i++) {
        sub_020180BC(&course->anims[i], &course->models[ov91_0226274C[i]], narc, ov91_02261C1C[i], heapID, allocator);
        sub_02018198(&course->anims[i], 0);

        j = 0;
        nodeInfo = NNS_G3dGetNodeInfo(course->models[ov91_0226274C[i]].model);

        while ((name = NNS_G3dGetNodeNameByIdx(nodeInfo, j)) != NULL) {
            NNS_G3dAnmObjDisableID(course->anims[i].anmObj, j);
            j++;
        }

        for (j = 0; j < 15; j++) {
            idx = NNS_G3dGetNodeIdxByName(nodeInfo, &ov91_022621AC[i][j]);

            if (idx != -1) {
                NNS_G3dAnmObjEnableID(course->anims[i].anmObj, idx);
            }
        }
    }

    for (i = 0; i < 1; i++) {
        sub_020180BC(&course->courseAnims[i], &course->models[_02261BE8[i]], narc, 32, heapID, allocator);
        sub_020181D4(&course->objects[_02261BE8[i]], &course->courseAnims[i]);
    }

    course->unk22C = 4;
    course->unk22E = 0;

    ov91_02260334(course, 0);

    sub_020181D4(&course->objects[1], &course->anims[4]);
    sub_02018198(&course->anims[4], 0);
    sub_020182A0(&course->objects[1], TRUE);

    course->unk210 = 4;
}
