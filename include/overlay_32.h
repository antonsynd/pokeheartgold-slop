#ifndef POKEHEARTGOLD_OVERLAY_32_H
#define POKEHEARTGOLD_OVERLAY_32_H

#include "bg_window.h"
#include "field_system.h"
#include "sys_task.h"

// Sub-screen player-name picker: pages through the 32 stored names
// (8 per page, 4 pages) with a grid cursor, L/R page arrows and a cancel
// button. Launched from the overlay_01 sub-app table at ov01_02206C60
// alongside overlay_29 (number entry) and overlay_33.
//
// *result is set to -1 on launch, the selected name index on confirm, or
// -2 on cancel.
SysTask *ov32_0225D520(BgConfig *bgConfig, void *a1, FieldSystem *fieldSystem, int *result);
void ov32_0225D5CC(BgConfig *bgConfig, SysTask *task);
BOOL ov32_0225D608(void *a0);

#endif // POKEHEARTGOLD_OVERLAY_32_H
