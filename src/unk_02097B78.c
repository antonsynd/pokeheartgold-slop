#include "global.h"

#include "heap.h"
#include "unk_02097B78_internal.h"

static const LegendaryCinematicFunc sLegendaryCinematicFuncs[] = {
    ScriptCinematic_HoOh,
    ScriptCinematic_Lugia,
    ScriptCinematic_Arceus,
};

BOOL LegendaryCinematic_Init(OverlayManager *man, int *state) {
    Heap_Create(HEAP_ID_3, HEAP_ID_153, 0x80000);
    LegendaryCinematicWork *data = OverlayManager_CreateAndGetData(man, sizeof(LegendaryCinematicWork), HEAP_ID_153);
    MI_CpuFill8(data, 0, sizeof(LegendaryCinematicWork));
    data->args = OverlayManager_GetArgs(man);
    return TRUE;
}

BOOL LegendaryCinematic_Main(OverlayManager *man, int *state) {
    LegendaryCinematicWork *data = OverlayManager_GetData(man);
    if (sLegendaryCinematicFuncs[data->args->unk4C](data) == 0) {
        return TRUE;
    }
    return FALSE;
}

BOOL LegendaryCinematic_Exit(OverlayManager *man, int *state) {
    OverlayManager_FreeData(man);
    Heap_Destroy(HEAP_ID_153);
    return TRUE;
}
