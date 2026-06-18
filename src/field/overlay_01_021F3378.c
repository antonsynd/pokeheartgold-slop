#include "global.h"

#include "constants/sndseq.h"

#include "heap.h"
#include "map_object.h"
#include "overlay_01.h"
#include "player_avatar.h"
#include "sys_task.h"
#include "unk_0200FA24.h"

typedef struct {
    FieldSystem *fieldSystem;
    int *unk4;
    int state;
    int counter;
    int facingDir;
} UnkOv01_021F3378;

extern void PlaySE(int sndseq);
extern void ov01_021F92A0(LocalMapObject *mapObject);

static void ov01_021F3378(UnkOv01_021F3378 *work);
static void ov01_021F33B8(SysTask *task, void *data);
static void ov01_021F348C(SysTask *task, void *data);

static void ov01_021F3378(UnkOv01_021F3378 *work) {
    switch (work->facingDir) {
    case 0:
        work->facingDir = 2;
        break;
    case 2:
        work->facingDir = 1;
        break;
    case 1:
        work->facingDir = 3;
        break;
    case 3:
        work->facingDir = 0;
        break;
    }
    PlayerAvatar_SetFacingDirection(work->fieldSystem->playerAvatar, work->facingDir);
}

static void ov01_021F33B8(SysTask *task, void *data) {
    UnkOv01_021F3378 *work = data;
    LocalMapObject *mapObject;
    VecFx32 position;
    mapObject = PlayerAvatar_GetMapObject(work->fieldSystem->playerAvatar);
    switch (work->state) {
    case 0:
        work->state = 1;
        PlaySE(SEQ_SE_DP_TELE2);
        // fallthrough
    case 1:
        if (work->counter % 2 != 0) {
            ov01_021F3378(work);
        }
        sub_0205F990(mapObject, &position);
        position.y = (int)((double)work->counter * (9011.2 + (double)(work->counter << 11)));
        sub_0205F9A0(mapObject, &position);
        work->counter++;
        if (work->counter == 0x14) {
            BeginNormalPaletteFade(2, 0, 0, 0, 6, 1, HEAP_ID_FIELD1);
            return;
        }
        if (work->counter > 0x14) {
            if (IsPaletteFadeFinished()) {
                *work->unk4 = 1;
                Heap_Free(work);
                SysTask_Destroy(task);
            }
        }
        break;
    }
}

static void ov01_021F348C(SysTask *task, void *data) {
    UnkOv01_021F3378 *work = data;
    LocalMapObject *mapObject;
    VecFx32 position;
    int v;
    mapObject = PlayerAvatar_GetMapObject(work->fieldSystem->playerAvatar);
    switch (work->state) {
    case 0:
        MapObject_UnpauseMovement(mapObject);
        sub_0205F990(mapObject, &position);
        v = 0x14 - work->counter;
        position.y = (int)((double)v * (9011.2 + (double)(v << 11)));
        sub_0205F9A0(mapObject, &position);
        ov01_021F92A0(mapObject);
        PlaySE(SEQ_SE_DP_TELE2);
        work->state = 1;
        // fallthrough
    case 1:
        if (work->counter % 2 != 0) {
            ov01_021F3378(work);
        }
        sub_0205F990(mapObject, &position);
        v = 0x14 - work->counter;
        position.y = (int)((double)v * (9011.2 + (double)(v << 11)));
        sub_0205F9A0(mapObject, &position);
        work->counter++;
        if (work->counter == 2) {
            BeginNormalPaletteFade(1, 1, 1, 0, 6, 1, HEAP_ID_FIELD1);
        }
        if (work->counter > 0x14) {
            work->state = 2;
        }
        break;
    case 2:
        if (IsPaletteFadeFinished()) {
            PlayerAvatar_SetFacingDirection(work->fieldSystem->playerAvatar, 1);
            *work->unk4 = 1;
            Heap_Free(work);
            SysTask_Destroy(task);
        }
        break;
    }
}

void ov01_021F35C4(FieldSystem *fieldSystem, int a1, int *a2) {
    UnkOv01_021F3378 *work = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(UnkOv01_021F3378));
    MI_CpuFill8(work, 0, sizeof(UnkOv01_021F3378));
    work->fieldSystem = fieldSystem;
    work->unk4 = a2;
    work->facingDir = PlayerAvatar_GetFacingDirection(fieldSystem->playerAvatar);
    if (a1 != 0) {
        SysTask_CreateOnMainQueue(ov01_021F33B8, work, 0x64);
    } else {
        SysTask_CreateOnMainQueue(ov01_021F348C, work, 0x64);
    }
}
