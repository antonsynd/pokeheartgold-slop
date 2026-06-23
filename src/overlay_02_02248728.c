// WIP / DEFERRED — matching decomp of asm/overlay_02_02248728.s (364 functions:
// follow-mon sprite animation + Pokecenter/field-move task module, a 2D graphics
// renderer built on G2dRenderer / Create2DGfxResObjMan).
//
// main.lsf is kept on asm/overlay_02_02248728.o until ALL 364 functions match.
// This .c is compiled (rwildcard picks up every src/*.c) but NOT linked, so the
// ROM stays matching while WIP C accumulates. To iterate:
//   chiri pkg -- build --target main --no-compare
//   python3 tools/decomp_harness/objdiff.py \
//     build/heartgold.us/asm/overlay_02_02248728.o \
//     build/heartgold.us/src/overlay_02_02248728.o --summary
//
// Function order matches the asm. Functions still in asm are simply absent from
// this file (objdiff matches by symbol name). See the handoff block at EOF.
//
// VISIBILITY NOTE: ~318/364 functions are file-local (not in overlay_02.inc's
// .public list) and must be `static` in the final. During WIP they are declared
// WITHOUT `static` (see WIP_LOCAL below) so MWCC's dead-code elimination doesn't
// drop the unreferenced ones before objdiff can compare them. static-vs-global
// only changes the .o symbol-table binding, which is stripped from the linked
// overlay — it does NOT affect ROM bytes / the SHA1. Finalize WIP_LOCAL -> static
// when flipping main.lsf to src.
#include "global.h"

#include "constants/gx.h"
#include "constants/heap.h"

#include "bg_window.h"
#include "field_system.h"
#include "filesystem.h"
#include "filesystem_files_def.h"
#include "heap.h"
#include "map_object.h"
#include "overlay_02.h"
#include "player_avatar.h"
#include "sprite.h"
#include "unk_0200FA24.h"

// WIP_LOCAL marks a function that is file-local in the original (-> `static` in
// the final) but is left global during WIP so it survives dead-code elimination
// for objdiff. See VISIBILITY NOTE above. Finalize to `static` at flip-to-src.
#define WIP_LOCAL /* static */

WIP_LOCAL int ov02_022493EC(void);
WIP_LOCAL NARC *ov02_022493F0(void);
WIP_LOCAL void ov02_022493FC(void);
WIP_LOCAL void ov02_02249420(void);
WIP_LOCAL void ov02_02249444(FieldSystem *fieldSystem, BOOL visible);
WIP_LOCAL void ov02_0224957C(void *ptr);
WIP_LOCAL NARC *ov02_0224A074(void);
WIP_LOCAL void ov02_0224A63C(BgConfig *bgConfig);
WIP_LOCAL void ov02_0224AB54(void);
WIP_LOCAL void ov02_0224AC24(void);
WIP_LOCAL int ov02_0224ADEC(void);
WIP_LOCAL int ov02_0224B294(void);
WIP_LOCAL int ov02_0224B68C(void);
WIP_LOCAL void ov02_0224B804(void);
WIP_LOCAL void ov02_0224F8F4(void *ptr);

WIP_LOCAL int ov02_022493EC(void) {
    return 0;
}

WIP_LOCAL NARC *ov02_022493F0(void) {
    return NARC_New(NARC_application_choose_starter_choose_starter_sub_res, HEAP_ID_FIELD1);
}

WIP_LOCAL void ov02_022493FC(void) {
    BeginNormalPaletteFade(0, 1, 1, RGB_WHITE, 6, 1, HEAP_ID_FIELD1);
}

WIP_LOCAL void ov02_02249420(void) {
    BeginNormalPaletteFade(0, 0, 0, RGB_WHITE, 6, 1, HEAP_ID_FIELD1);
}

WIP_LOCAL void ov02_02249444(FieldSystem *fieldSystem, BOOL visible) {
    MapObject_SetVisible(PlayerAvatar_GetMapObject(fieldSystem->playerAvatar), visible);
}

WIP_LOCAL void ov02_0224957C(void *ptr) {
    Heap_Free(ptr);
}

WIP_LOCAL NARC *ov02_0224A074(void) {
    return NARC_New(NARC_application_choose_starter_choose_starter_sub_res, HEAP_ID_FIELD1);
}

WIP_LOCAL void ov02_0224A63C(BgConfig *bgConfig) {
    BgClearTilemapBufferAndCommit(bgConfig, 3);
}

WIP_LOCAL void ov02_0224AB54(void) {
}

WIP_LOCAL void ov02_0224AC24(void) {
}

WIP_LOCAL int ov02_0224ADEC(void) {
    return 0;
}

WIP_LOCAL int ov02_0224B294(void) {
    return 0;
}

WIP_LOCAL int ov02_0224B68C(void) {
    return 0;
}

WIP_LOCAL void ov02_0224B804(void) {
}

WIP_LOCAL void ov02_0224F8F4(void *ptr) {
    Heap_Free(ptr);
}

// ===========================================================================
// HANDOFF — overlay_02_02248728 WIP (15/364 byte-match, objdiff-verified)
// ===========================================================================
// MODULE: follow-mon sprite animation + Pokecenter / field-move (Escape Rope,
//   Dig, Teleport) task subsystem. A 2D graphics renderer built on G2dRenderer /
//   Create2DGfxResObjMan, plus Field3dObject task wrappers.
//
// RESUME LOOP (main.lsf stays on asm/overlay_02_02248728.o — ROM keeps matching):
//   chiri pkg -- build --target main --no-compare      # compiles this partial .c
//   python3 tools/decomp_harness/objdiff.py \
//     build/heartgold.us/asm/overlay_02_02248728.o \
//     build/heartgold.us/src/overlay_02_02248728.o --summary
//   Only flip main.lsf -> src AND change WIP_LOCAL -> static once ALL 364 match.
//
// MATCHED (15, all OK): ov02_022493EC, ov02_022493F0, ov02_022493FC,
//   ov02_02249420, ov02_02249444, ov02_0224957C, ov02_0224A074, ov02_0224A63C,
//   ov02_0224AB54, ov02_0224AC24, ov02_0224ADEC, ov02_0224B294, ov02_0224B68C,
//   ov02_0224B804, ov02_0224F8F4.  (ov02_0224F8F4 is .public; all others local.)
//
// EASY NEXT TARGETS (≈49 more tiny ≤6-insn funcs, mostly tail-call wrappers):
//   * Field3dObjectTaskManager_CreateTask wrappers (r0 = (*(void**)((*(void**)
//     (a0+4))+4)), r1 = &ov02_022539xx callback, tail-call): ov02_0224D2C8,
//     D2DC, D3F4, D408, D598, D67C, D9A4, DC64, DC78, DDE0, DDF4.
//   * Field3dObjectTask_Delete tails: ov02_0224D2F0, D41C, D5AC, D690, D9B8,
//     DC8C, DE08.  Field3dObject_Draw tails: ov02_0224D1DC (+ ov02_0224B87C =
//     Field3dObject_Draw(((void**)a1)[0] + 0x24c)).
//   * ov02_0224D144 / ov02_0224D1DC dispatchers (r0=r2, r1=r2+0xdc): ov02_0224D278,
//     D2BC, D3A4, D3E8, D648, D670, DB8C, DC58.
//   * SysTask_GetData getters returning [data+4]: ov02_0224953C, ov02_0224B43C
//     (.public, BOOL per overlay_02.h).
//   * sub_02068D74 getters: ov02_02248D8C -> (u8)[ret+2]; ov02_0224B2C0 -> *ret=0.
//   * Sprite_Delete(field) wrappers: ov02_02248DE4 (work->0x68), ov02_0224AAC8
//     (a1->0x8), ov02_0224ABF8 (a1->0x58).  Need the owning struct's field typed.
//   * const-return / empty stubs already covered; remaining: ov02_0224E308
//     (return a0 == 0x165), ov02_0224FB44 (return *(u16*)a1 != 0).
//
// STRUCT LEADS (verify against asm before trusting):
//   * "AnimManager" (the ctor ov02_02248728's arg0, ~0x158 bytes): [0]=u8 nx,
//     [1]=u8 ny, [2..7]=u8 params (note [7] read SIGNED via ldrsb in ov02_02248C10),
//     [8]=int G2dRenderer surface id, [0xc]=G2dRenderer (embedded; G2dRenderer_Init
//     gets &mgr[0xc]), [0x134/0x138/0x13c/0x140]=Create2DGfxResObjMan* (char/pltt/
//     cell/anim), [0x144/0x148/0x14c]=ov02_0224B690 ret (per-axis arrays, stride 8,
//     filled with strh in ctor loops), [0x150]=ov02_0224B690 ret. [0x70]=SpriteList*
//     (ov02_0224A32C -> SpriteList_RenderAndAnimateSprites). ov02_02248C10 builds a
//     SpriteResourcesHeader + SpriteTemplate on the stack from mgr fields and returns
//     a Sprite* (good next medium target — unlocks the per-sprite cluster).
//   * Per-sprite work struct: u8 draw/state at +2, Sprite* at +0x68.
//   * Field3dObject task env: a0->[4] = ptr whose [4] = Field3dObjectTaskManager*.
//   * Several task-env structs use int fields at 0x30 (flag), 0x3c, 0x40, 0x44-0x50.
//
// HEADERS already wired: overlay_02.h declares ~28 of this file's .public funcs
//   with real signatures (FieldSystem*, TaskManager*, Pokemon*, ...). follow_mon.h
//   has the FollowMon_* / sub_02069* / sub_02068* helpers. Reuse OVY_2 neighbors
//   (src/field/encounter_check.c, legend_cutscene_camera.c, *cutscene*, gear_phone)
//   for shared types. unknown_callees in triage = [] (all callees have headers).
// ===========================================================================
