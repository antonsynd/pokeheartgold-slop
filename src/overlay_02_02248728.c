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
#define OV02_02248728_OWN_DECLS

#include "global.h"

#include "constants/gx.h"
#include "constants/heap.h"
#include "constants/sndseq.h"
#include "constants/std_script.h"

#include "field/overlay_01_021E66E4.h"
#include "field/overlay_01_021FB878.h"
#include "nnsys/g3d/binres/res_struct_accessor_inline.h"

#include "bg_window.h"
#include "field_roamer.h"
#include "field_system.h"
#include "field_warp_tasks.h"
#include "fieldmap.h"
#include "filesystem.h"
#include "filesystem_files_def.h"
#include "follow_mon.h"
#include "heap.h"
#include "map_object.h"
#include "metatile_behavior.h"
#include "overlay_02.h"
#include "party.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "roamer.h"
#include "save_local_field_data.h"
#include "script_pokemon_util.h"
#include "sprite.h"
#include "sprite_transfer.h"
#include "sys_task_api.h"
#include "task.h"
#include "unk_02005D10.h"
#include "unk_02009D48.h"
#include "unk_0200A090.h"
#include "unk_0200FA24.h"
#include "unk_02013FDC.h"
#include "unk_02062108.h"

// WIP_LOCAL marks a function that is file-local in the original (-> `static` in
// the final) but is left global during WIP so it survives dead-code elimination
// for objdiff. See VISIBILITY NOTE above. Finalize to `static` at flip-to-src.
#define WIP_LOCAL /* static */

// 8-byte pair used for the sub_02068D98 struct-copy getters (name TBD).
typedef struct UnkPair8 {
    s32 unk0;
    s32 unk4;
} UnkPair8;

// 16-byte blob copied via two ldm/stm word-pairs (sub_02068D98 -> obj+0x58).
typedef struct UnkBlob16 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
} UnkBlob16;

// 24-byte blob copied via three ldm/stm word-pairs (sub_02068D98 -> work+0xc).
typedef struct UnkBlob24 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
} UnkBlob24;

// AnimManager per-resource entry (arrays at mgr->0x144 / 0x148, stride 8).
typedef struct AnimResEntry {
    s16 id;
    s16 unk2;
    SpriteResource *res;
} AnimResEntry;

// follow-mon work byte at +0x86c: low nibble is an 8-byte-stride array index.
typedef struct ov02_FollowMonStep {
    u8 idx : 4;
    u8 hi : 4;
} ov02_FollowMonStep;

struct ov02_PokeathlonStarBits {
    u16 s0 : 3;
    u16 s1 : 3;
    u16 s2 : 3;
    u16 s3 : 3;
    u16 s4 : 3;
};

// ov02_0224A9D8 per-entry rodata (ov02_022535E4, stride 0x14).
typedef struct ov02_A9D8Entry {
    fx32 unk0;
    fx32 unk4;
    fx32 unk8;
    void *unkC;
    u32 unk10;
} ov02_A9D8Entry;

// follow-mon task-data accessor (defined in unk_020689C8.c); local extern matches
// the convention used by other overlays that don't pull in the full header.
extern void *sub_02068D74(void *work);
extern void *sub_02068D98(void *a0);              // no header included here
extern void sub_02068B48(int a0);                 // unk_020689C8.h
extern void ov01_021E8E70(void *a, int b, int c); // no header yet
extern BOOL ov01_022060B8(FieldSystem *fieldSystem, u8 a1, u8 a2);
extern BOOL ov01_02205D68(FieldSystem *fieldSystem); // no header included here
extern void sub_020689F8(void *a0);                  // unk_020689C8.h

// Nested state-machine dispatch: outer table indexed by sm[0] -> inner func table
// indexed by sm[1]; each func(sm) returns 1 to keep running. Tables are file-local
// rodata defined later (extern here so the runners' relocations resolve by name).
typedef BOOL (*ov02_StateMachineFunc)(void *sm);

// Field-move task state tables: func(taskManager, fieldSystem, env) -> 1=loop, 2=free.
typedef int (*ov02_FieldTaskFunc)(TaskManager *taskManager, FieldSystem *fieldSystem, void *env);
extern BOOL ov01_02205A60(TaskManager *taskMan);                                                             // overlay_01_022053EC.h, not included
extern void sub_02068BAC(void *a0);                                                                          // unk_020689C8.h
extern void ov01_021FCD78(SysTask *task);                                                                    // no header included here
extern BOOL ov01_021FCD6C(SysTask *task);                                                                    // no header included here
extern void ov01_021F8F68(LocalMapObject *object, int a1);                                                   // no header included here
extern void ov01_021F8F08(LocalMapObject *object, int a1);                                                   // no header included here
extern void *Save_VarsFlags_Get(SaveData *saveData);                                                         // save_vars_flags.h, not included
extern BOOL Save_VarsFlags_CheckSafariSysFlag(void *varsFlags);                                              // save_vars_flags.h, not included
extern BOOL sub_0202F620(void *safariZone);                                                                  // no header included here
extern fx32 sub_02054774(FieldSystem *fieldSystem, fx32 refHeight, fx32 xFx32, fx32 zFx32, u8 *outSelector); // unk_02054648.h, not included
WIP_LOCAL BOOL ov02_0224E35C(FieldSystem *fieldSystem);
// --- Task_FollowMonInteract (0x02250110) deps ---
extern void ClearFrameAndWindow2(Window *window, BOOL dont_copy_to_vram);                                                   // render_window.h, not included
extern void RemoveWindow(Window *window);                                                                                   // render_window.h, not included
extern void *Save_FashionData_Get(SaveData *saveData);                                                                      // fashion_case.h, not included
extern void *Save_FashionData_GetFashionCase(void *fashionData);                                                            // fashion_case.h, not included
extern int sub_0202BA2C(void *fashionCase, int a1, int a2);                                                                 // fashion_case.h, not included
extern void FashionCase_GiveFashionItem(void *fashionCase, int id, int quantity);                                           // fashion_case.h, not included
extern void SetFlag99C(void *state);                                                                                        // sys_flags.h, not included
extern BOOL IsPrintFinished(u8 printerId);                                                                                  // text_0205B4EC.h, not included
extern void ov01_021F6A9C(FieldSystem *fieldSystem, int a1, void *a2);                                                      // overlay_01.h, not included
extern int ov01_021F6B00(FieldSystem *fieldSystem);                                                                         // overlay_01.h, not included
extern BOOL ov01_021F6B10(FieldSystem *fieldSystem);                                                                        // overlay_01.h, not included
extern void ov01_021F6ABC(FieldSystem *fieldSystem, int a1, int a2, void *a3);                                              // overlay_01.h, not included
extern int ov01_021F6AEC(FieldSystem *fieldSystem);                                                                         // overlay_01.h, not included
WIP_LOCAL int ov02_0224EF94(FieldSystem *fieldSystem);                                                                      // still in asm
WIP_LOCAL int ov02_0224F8FC(FieldSystem *fieldSystem, void *a1);                                                            // still in asm
extern void sub_02066BE8(void *state, u32 a1, u16 value);                                                                   // sys_vars.h, not included
extern void ov01_021FBD38(Field3dModel *model, void *narcData);                                                             // no header included here
extern void ov01_021FBDFC(Field3dModel *model);                                                                             // no header included here
extern void ov01_021FBE70(Field3DModelAnimation *anim, Field3dModel *model, void *anmResource, NNSFndAllocator *allocator); // no header included here
extern void ov01_021F1448(void *a0);                                                                                        // no header included here
extern void *ov01_021FCD2C(FieldSystem *fieldSystem, int a1);                                                               // no header included here
extern void ov01_021FCD8C(void *a0, int a1, fx32 a2, int a3);                                                               // no header included here
extern void *Save_SafariZone_Get(SaveData *saveData);                                                                       // safari_zone.h, not included
extern void *SafariZone_GetAreaSet(void *safari_zone, int area_set_no);                                                     // safari_zone.h, not included
extern int ov02_0224EE4C(void *a0, int a1, int a2, int a3, fx32 a4, u16 *a5, u16 *a6, int a7);                              // still in asm
WIP_LOCAL int ov02_0224E698(void *work);
// --- NONMATCHING-finalization deps (asm-only references) ---
extern void _s32_div_f(void);                 // int-division runtime
extern void _fadd(void);                      // soft-float runtime (asm bl)
extern void _fsub(void);                      // soft-float runtime
extern void _fflt(void);                      // soft-float runtime
extern void _ffix(void);                      // soft-float runtime
extern void Field3dObject_SetXRotation(void); // not in any included header (asm-only ref)
extern void sub_020548C0(void);               // not in any included header (asm-only ref)
WIP_LOCAL void ov02_0224D488(void *a0, void *a1, void *a2);
extern u16 GF_DegreeToSinCosIdxNoWrap(u16 deg);                           // math_util.h, not included
extern BOOL Save_VarsFlags_CheckFlagInArray(void *varsFlags, u16 flagId); // save_vars_flags.h, not included
WIP_LOCAL void ov02_0224AAD4(void *a0, void *a1);
WIP_LOCAL void ov02_0224D5B4(void *a0, void *a1, void *a2);
WIP_LOCAL int ov02_0224DB9C(void *a0, void *a1, void *a2);
WIP_LOCAL int ov02_0224F108(void *a0, void *a1, void *a2);
WIP_LOCAL int ov02_0224E828(void *a0, int a1, int a2, int a3, fx32 a4, u16 *a5, u16 *a6, int a7);
WIP_LOCAL int ov02_0224EB48(void *a0, int a1, int a2, int a3, fx32 a4, u16 *a5, u16 *a6, int a7);
typedef struct ov02_BF58Cfg {
    int unk0;
    int unk4;
} ov02_BF58Cfg;
extern void *ov01_021F771C(void *a0);            // no header included here
extern void sub_02023E78(void *a0, VecFx32 *a1); // no header included here
WIP_LOCAL BOOL ov02_022508D8(TaskManager *taskManager);

typedef struct ov02_FieldList5 {
    u32 v[5];
} ov02_FieldList5;
extern int sub_02054C90(void *a0, void *a1, int a2, void **a3, void **a4);                                             // no header included here
extern void *ov01_021FB9E0(void *a0);                                                                                  // no header included here
extern void *ov01_021F3B38(void *a0);                                                                                  // no header included here
extern void *ov01_021F3B3C(void *a0);                                                                                  // no header included here
extern void ov01_021E8DE8(void *a0, void *a1, int a2, void *a3, void *a4, void *a5, void *a6, int a7, int a8, int a9); // no header included here
extern void *ov01_021FB90C(int a0, void *a1);                                                                          // no header included here
extern BOOL ov01_021E8F10(void *a0, int a1);                                                                           // no header included here
extern void ov01_021E8ED0(void *a0, void *a1, int a2);                                                                 // no header included here
extern NNSG3dResMdlSet *NNS_G3dGetMdlSet(const NNSG3dResFileHeader *header);                                           // res_struct_accessor.h, not included (IPA)
extern int ov01_021F3C0C(void *a0, int a1, const VecFx32 *a2, const VecFx32 *a3, void *a4);                            // overlay_01.h not included (real return non-void)
extern void *ov01_021F3B60(void *a0, int a1);                                                                          // no header included here
extern void ov01_021E8E40(void *a0, int a1, int a2, void *a3);                                                         // no header included here
extern void ov01_021F36DC(int a0, void *a1);                                                                           // no header included here
typedef struct ov02_SafariObjCfg {
    u8 buildModel;
    u8 isAnimated : 1;
    u8 width : 3;
    u8 height : 3;
    u8 hasGenderedLayout : 1;
    u8 objectType;
} ov02_SafariObjCfg;
extern void GetSafariObjectConfig(ov02_SafariObjCfg *a0, int a1, int a2); // unk_02097268.h, not included
extern int GetDeltaXByFacingDirection(int direction);                     // unk_0205FD20.h, not included
extern int GetDeltaYByFacingDirection(int direction);                     // unk_0205FD20.h, not included
extern PlayerProfile *Save_PlayerData_GetProfile(SaveData *saveData);     // player_data.h, not included
extern u32 PlayerProfile_GetTrainerGender(PlayerProfile *profile);        // player_data.h, not included
WIP_LOCAL int ov02_0224E754(void *work, u16 *out);
extern BOOL ov01_02206268(FieldSystem *fieldSystem);                                                                 // overlay_01.h, not included
extern int ov01_022062CC(FieldSystem *fieldSystem);                                                                  // overlay_01.h, not included
extern void PlayCryEx(int, int, int, int, int, int);                                                                 // sound_02004A44.h, not included
extern void PlayCry(u16 species, u8 form);                                                                           // sound_chatot.h, not included
extern int Field_GetTimeOfDay(FieldSystem *fieldSystem);                                                             // unk_02055418.h, not included (TIMEOFDAY as int)
extern void GfGfx_EngineATogglePlanes(u8 planeMask, u8 enable);                                                      // gf_gfx_planes.h, not included
extern void *GfGfxLoader_LoadFromNarc(NarcId narcId, s32 fileId, BOOL isCompressed, enum HeapID heapID, BOOL atEnd); // gf_gfx_loader.h, not included
extern void sub_0205B4EC(int a0, int a1);                                                                            // text_0205B4EC.h, not included
extern void *sub_020689C8(int a0, int a1);                                                                           // unk_020689C8.h, not included
extern u16 GF_DegreeToSinCosIdx(u16 deg);                                                                            // math_util.h, not included
extern u16 LCRandom(void);                                                                                           // math_util.h, not included
extern fx32 GF_SinDeg(u16 deg);                                                                                      // math_util.h, not included
extern fx32 GF_CosDeg(u16 deg);                                                                                      // math_util.h, not included
extern void ov01_021F8F74(LocalMapObject *mapObject, int a1);                                                        // no header included here
extern BOOL ov01_022055DC(LocalMapObject *mapObject);                                                                // no header included here
extern void ov01_021FF0E4(LocalMapObject *mapObject, int a1, u32 x, u32 z, int a4);                                  // no header included here
extern void ov01_021FF964(LocalMapObject *mapObject, int a1, u32 x, u32 z, int a4);                                  // no header included here
extern BOOL MetatileBehavior_IsVeryTallGrass(u8 tile);                                                               // no header included here
WIP_LOCAL void ov02_0224A9D8(void *work, int a1);                                                                    // still in asm; forward decl for callers

// NewMsgDataFromNarc / MessageFormat_* / Buffer* / MapHeader_GetMapSec are reachable
// transitively (msgdata.h / message_format.h / map_header.h) — no local externs.
extern PlayerProfile *Save_PlayerData_GetProfile(SaveData *saveData);                   // player_data.h, not included
extern String *String_New(u32 maxsize, enum HeapID heapID);                             // pm_string.h, not included
extern void sub_0205B514(BgConfig *bgConfig, Window *window, int a2);                   // text_0205B4EC.h, not included
extern void sub_0205B564(Window *window, Options *options);                             // text_0205B4EC.h, not included
extern u8 sub_0205B5B4(Window *window, String *string, Options *options, BOOL speedup); // text_0205B4EC.h, not included
extern u32 PlayerProfile_GetTrainerID(PlayerProfile *profile);                          // player_data.h, not included
extern void *Save_SafariZone_Get(SaveData *saveData);                                   // safari_zone.h, not included (opaque)
extern u8 SafariZone_GetObjectUnlockLevel(void *safariZone);                            // safari_zone.h, not included
extern void *Field_GetBgEvents(FieldSystem *fieldSystem);                               // map_events.h, not included (BG_EVENT opaque)
extern u32 Field_GetNumBgEvents(FieldSystem *fieldSystem);                              // map_events.h, not included

// ov02_0224E020 dispatch tables (rodata, still in asm; defined later). Indexed by
// data[0xc]: A34 update funcs return int (1 => advance state); A04 delete funcs
// (result ignored). Declared int(*)(void*) to match the blx call sites.
typedef int (*ov02_AnimDispatchFunc)(void *data);
// ov02_0224E074 create-dispatch table (rodata, defined later): each entry builds a
// Field3dObjectTask from the fieldSystem. Indexed by the anim type.
typedef Field3dObjectTask *(*ov02_CreateDispatchFunc)(FieldSystem *fieldSystem);
extern BOOL sub_02054C20(FieldSystem *fieldSystem, int targetType, int *outObj, void **outHandle); // unk_02054648.h, not included
extern void sub_02054DC8(int idx, int width, VecFx32 *out);                                        // unk_02054648.h, not included
extern void ov01_021F3B0C(VecFx32 *out, void *src);                                                // unk_02054648.h, not included
extern u8 GetMetatileBehavior(FieldSystem *fieldSystem, int x, int z);                             // unk_02054648.h, not included
extern void ov01_02203AB4(FieldSystem *fieldSystem, LocalMapObject *partnerPokeObj, int a2);       // overlay_01.h, not included
extern u16 PlayerProfile_GetTrainerID_VisibleHalf(PlayerProfile *profile);                         // player_data.h, not included
typedef struct WallpaperPasswordBank WallpaperPasswordBank;                                        // opaque; easy_chat.h not included
extern WallpaperPasswordBank *WallpaperPasswordBank_Create(enum HeapID heapID);
extern void WallpaperPasswordBank_Delete(WallpaperPasswordBank *bank);
extern u32 WallpaperPasswordBank_GetCount(WallpaperPasswordBank *bank);
extern s16 WallpaperPasswordBank_GetIndexOfWord(WallpaperPasswordBank *bank, s32 word);
extern void sub_02068DB8(void *a0, VecFx32 *out);                            // no header included here
extern u32 sub_02068D90(void *a0);                                           // unk_020689C8.c, no C proto
extern void sub_02068DA8(void *a0, VecFx32 *src);                            // unk_020689C8.c, no C proto
extern void Field3dObject_SetPos(Field3dObject *object, const VecFx32 *pos); // .public, no C proto yet
extern void GetFlyWarpData(u16 spawnId, Location *dest);                     // unk_0203BA5C.h, not included
extern void GetSpecialSpawnWarpData(u16 spawnId, Location *dest);            // unk_0203BA5C.h, not included

// unk_020689C8.c task launcher: sub_02068B0C(mgr, src, pos, a3, a4, priority).
// The UnkTemplateBase/UnkTaskWork types are local to that TU; mirror minimally.
// src points to a 0x14-byte template (file-local rodata, still in asm for now).
typedef struct ov02_LaunchTemplate {
    u32 unk0;
    void *unk4;
    void *unk8;
    void *unkC;
    void *unk10;
} ov02_LaunchTemplate;
extern void *sub_02068B0C(void *mgr, const ov02_LaunchTemplate *src, VecFx32 *pos, u32 a3, void *a4, u32 priority);

// STRUCT-CLEANUP TODO: the getters/setters/deleters below use byte-offset casts
// because their owning struct isn't named yet. They byte-match; replace the casts
// with real struct field accesses once those structs are reversed.
WIP_LOCAL u8 ov02_02248D8C(void *work);
WIP_LOCAL void ov02_02248DE4(void *a0, void *work);
WIP_LOCAL BOOL ov02_0224953C(void *work);
WIP_LOCAL int ov02_0224997C(void *work);
WIP_LOCAL int ov02_0224939C(void *work);
WIP_LOCAL int ov02_02249774(void *work);
WIP_LOCAL void ov02_0224FDF8(void *arg0, u16 arg1, int arg2, int arg3);
WIP_LOCAL int ov02_0224C05C(TaskManager *taskManager, FieldSystem *fieldSystem, void *work);
WIP_LOCAL int ov02_0224C87C(TaskManager *taskManager, FieldSystem *fieldSystem, void *work);
WIP_LOCAL void ov02_0224E020(SysTask *task, void *data);
WIP_LOCAL BOOL ov02_0224E640(SaveData *saveData);
WIP_LOCAL void ov02_0224DE10(Field3dObject *obj, VecFx32 *arg1, fx32 arg2, fx32 arg3);
WIP_LOCAL void ov02_0224F580(FieldSystem *fieldSystem, void *out);
WIP_LOCAL Sprite *ov02_02248CAC(void *mgr);
WIP_LOCAL void ov02_0224A66C(void *work);
WIP_LOCAL void ov02_0224A674(void *work);
WIP_LOCAL void ov02_0224A690(void *work);
WIP_LOCAL void ov02_0224AAC8(void *a0, void *work);
WIP_LOCAL void ov02_0224ABF8(void *a0, void *work);
WIP_LOCAL void ov02_0224B2C0(void *work);
WIP_LOCAL BOOL ov02_0224B0E0(void *work);
WIP_LOCAL void ov02_0224DEA8(Field3dObject *obj, Field3dModel *model, NNSFndAllocator *allocator, void **anmResources);
WIP_LOCAL BOOL ov02_0224B43C(SysTask *task);
WIP_LOCAL BOOL ov02_0224E308(int a0);
WIP_LOCAL BOOL ov02_0224FB44(void *a0, u16 *a1);
WIP_LOCAL Sprite *ov02_02248C10(void *mgr, VecFx32 *pos, int charId, int plttId, int cellId, int cellAnmId, int priority, int drawPriority);
WIP_LOCAL Sprite *ov02_02248D18(void *mgr, int a1);
WIP_LOCAL int ov02_0224C338(void *a0, void *a1, void *work);
WIP_LOCAL Sprite *ov02_0224A33C(void *mgr, VecFx32 *pos, int charId, int plttId, int cellId, int mode, int priority, int drawPriority);
WIP_LOCAL Sprite *ov02_0224A9B8(void *mgr, VecFx32 *pos);
WIP_LOCAL Sprite *ov02_0224A3F0(void *mgr, VecFx32 *pos, int drawPriority, int seq);
WIP_LOCAL void ov02_0224A570(NARC *narc, u32 fileId, NNSG2dPaletteData **a2);
WIP_LOCAL void ov02_0224A5D0(BgConfig *bgConfig, NARC *narc, u32 fileId, NNSG2dScreenData **a3);
WIP_LOCAL void ov02_0224B88C(void *work);
WIP_LOCAL void ov02_0224B90C(void *work);
WIP_LOCAL int ov02_0224B938(void *work);
WIP_LOCAL void ov02_0224B808(void *a0, void *work);
WIP_LOCAL void ov02_0224B784(void *work); // still in asm
WIP_LOCAL int ov02_0224B964(void *work);
WIP_LOCAL int ov02_0224C71C(void *a0, FieldSystem *fieldSystem, void *work);
WIP_LOCAL void ov02_RepelActiveRoamersFromMapNo(RoamerSaveData *roamerSave, u32 mapNo);
WIP_LOCAL void ov02_0224DD4C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224A598(BgConfig *bgConfig, NARC *narc, u32 fileId, NNSG2dCharacterData **a3);
WIP_LOCAL void ov02_0224B314(void *mgr);
WIP_LOCAL void FollowMon_PlaceholdersSet(void *work, void *messageFormat);
WIP_LOCAL void FollowMon_ExpandInteractionMessage(void *work, void *dest, enum HeapID heapID, int strno);
WIP_LOCAL int ov02_0224C14C(TaskManager *taskManager, FieldSystem *fieldSystem, void *work);
WIP_LOCAL void ov02_0224D698(Field3dObject *obj, PlayerAvatar *playerAvatar, fx32 arg2, fx32 arg3);
WIP_LOCAL int ov02_0224C7D4(TaskManager *taskManager, FieldSystem *fieldSystem, void *work);
WIP_LOCAL BOOL FollowMon_TryPrintInteractionMessage(void *work, void *window, void *arg2);
WIP_LOCAL void *ov02_02249458(FieldSystem *fieldSystem, int a1, Pokemon *a2, int a3);
WIP_LOCAL int ov02_02249858(void *work);
WIP_LOCAL int ov02_0224C8D0(TaskManager *taskManager, FieldSystem *fieldSystem, void *work);
WIP_LOCAL int ov02_0224C234(TaskManager *taskManager, FieldSystem *fieldSystem, void *work);
WIP_LOCAL int ov02_02249C74(void *work);
WIP_LOCAL int ov02_02249A5C(void *work);
WIP_LOCAL void ov02_0224FD9C(void *arg0, LocalMapObject *mapObject);
WIP_LOCAL void ov02_022494C4(FieldSystem *fieldSystem, void *a1, void *a2, void *a3);
WIP_LOCAL int ov02_022499EC(void *work);
WIP_LOCAL int ov02_022495E8(void *work);
WIP_LOCAL int ov02_022497C0(void *work);
WIP_LOCAL int ov02_0224E26C(int a0);
WIP_LOCAL int ov02_0224E2A0(int a0);
WIP_LOCAL int ov02_0224E2D4(int a0);
WIP_LOCAL void ov02_0224FF04(LocalMapObject *mapObject, int dir, u32 *outX, u32 *outZ);
WIP_LOCAL int ov02_0224FF5C(void *a0, LocalMapObject *a1);
WIP_LOCAL void ov02_0224F728(FieldSystem *fieldSystem, void *arg1);
WIP_LOCAL int ov02_0224F820(int a0);
WIP_LOCAL void ov02_0224F64C(FieldSystem *fieldSystem, void *arg1);
WIP_LOCAL void ov02_0224A288(void *work);
WIP_LOCAL int ov02_0224B664(void *work);
WIP_LOCAL int ov02_02249658(void *work);
WIP_LOCAL int ov02_0224C75C(TaskManager *taskManager, FieldSystem *fieldSystem, void *work);
WIP_LOCAL int ov02_0224C93C(TaskManager *taskManager, FieldSystem *fieldSystem, void *work);
WIP_LOCAL int ov02_0224C9B8(TaskManager *taskManager, FieldSystem *fieldSystem, void *work);
WIP_LOCAL int ov02_0224C0B0(TaskManager *taskManager, FieldSystem *fieldSystem, void *work);
WIP_LOCAL void ov02_0224E074(FieldSystem *fieldSystem, u16 *p_ret, int type, enum HeapID heapID);
WIP_LOCAL BOOL ov02_022506D4(u32 a0, u32 a1);
WIP_LOCAL BOOL ov02_02250738(u32 a0, u32 a1);
WIP_LOCAL void ov02_02250504(void *work);
WIP_LOCAL int ov02_022498BC(void *work);
WIP_LOCAL void ov02_0224A080(void *work, NARC *narc);
WIP_LOCAL void ov02_02249F6C(void *work);
WIP_LOCAL void ov02_0224A028(void *work);
WIP_LOCAL void ov02_02249FD4(void *work);
WIP_LOCAL BOOL ov02_0224FFD8(void *p);
WIP_LOCAL BOOL ov02_02249088(void *mgr);
WIP_LOCAL BOOL ov02_02248D98(void *a0, void *obj);
WIP_LOCAL void ov02_0224A834(void *mgr, void *src);
WIP_LOCAL Sprite *ov02_0224A418(void *mgr, VecFx32 *pos);
WIP_LOCAL void ov02_0224D288(Field3dObjectTask *task, FieldSystem *fieldSystem, Field3dObject *obj);
WIP_LOCAL void ov02_0224D3B4(Field3dObjectTask *task, FieldSystem *fieldSystem, Field3dObject *obj);
WIP_LOCAL BOOL ov02_0224B7CC(void *a0, void **out);
WIP_LOCAL Roamer *ov02_0224BAA8(RoamerSaveData *roamerSave, int a1);
WIP_LOCAL void ov02_0224B72C(void *work);
WIP_LOCAL void ov02_0224AB58(void *work);
WIP_LOCAL void *ov02_0224B298(void *mgr, void *arg1);
WIP_LOCAL void ov02_02248E20(void *arg0);
WIP_LOCAL void *ov02_02248D58(void *arg0, void *arg1, void *arg2, void *arg3);
WIP_LOCAL void ov02_0224AA44(void *arg0, VecFx32 *pos, VecFx32 *vec, void *arg3, u32 arg4, void *arg5);
WIP_LOCAL void ov02_0224DE6C(void *obj);
WIP_LOCAL void ov02_0224D950(void *a0, void *a1, void *data);
WIP_LOCAL void ov02_0224DD8C(void *a0, void *a1, void *data);
WIP_LOCAL int ov02_02249690(void *work);
WIP_LOCAL int ov02_022496D0(void *work);
WIP_LOCAL int ov02_022491CC(void *work);
WIP_LOCAL int ov02_02249290(void *work);
WIP_LOCAL int ov02_02248F88(void *work);
WIP_LOCAL int ov02_022490BC(void *work);
WIP_LOCAL int ov02_0224B158(void *work);
WIP_LOCAL int ov02_0224AF70(void *work);
WIP_LOCAL int ov02_0224ACE0(void *work);
WIP_LOCAL int ov02_02249BD8(void *work);
WIP_LOCAL int ov02_02250594(int a0, int a1);
WIP_LOCAL int ov02_02250628(int a0, int a1);
WIP_LOCAL int ov02_02250004(FieldSystem *fieldSystem, void *a1, int a2);
WIP_LOCAL void ov02_0224D310(void *a0, void *a1, void *data);
WIP_LOCAL int ov02_0224C840(TaskManager *taskManager, void *a1, void *a2);
WIP_LOCAL void ov02_0224D820(void *data);
WIP_LOCAL void ov02_0224D7B0(void *data);
WIP_LOCAL void ov02_0224D73C(Field3dObject *obj, Field3dModel *model, NNSFndAllocator *allocator, void **anmResources);
WIP_LOCAL void ov02_0224D880(void *a0, FieldSystem *fieldSystem, void *work);
WIP_LOCAL void ov02_0224DF1C(void *data);
WIP_LOCAL BOOL ov02_0224BE24(TaskManager *taskManager);
WIP_LOCAL BOOL ov02_0224CE28(TaskManager *taskManager);
WIP_LOCAL BOOL PokecenterAnimRun(TaskManager *taskManager);
WIP_LOCAL int ov02_0224CAB8(WallpaperPasswordBank *bank, u16 trainerId, u16 a, u16 b, u16 c, u16 d);
WIP_LOCAL int ov02_0224CBF8(WallpaperPasswordBank *bank, u16 trainerId, u16 a, u16 b, u16 c, u16 d);
WIP_LOCAL void ov02_0224CA58(u8 *arr, int n, u8 val);
WIP_LOCAL int ov02_0224C6DC(TaskManager *taskManager, FieldSystem *fieldSystem, void *work);
WIP_LOCAL int ov02_0224C2A8(TaskManager *taskManager, FieldSystem *fieldSystem, void *work);
WIP_LOCAL int ov02_0224C698(TaskManager *taskManager, FieldSystem *fieldSystem, void *work);
WIP_LOCAL void *ov02_0224A7B8(Pokemon *mon, void *arg1, enum HeapID heapID);
WIP_LOCAL BOOL ov02_0224AA80(void *a0, void *work);
WIP_LOCAL void ov02_0224B2CC(void *work);
WIP_LOCAL int ov02_0224B5F0(void *work);
WIP_LOCAL void ov02_0224D1E4(void *a0, void *a1, void *data);
WIP_LOCAL int ov02_0224E224(void *a, void *b);
WIP_LOCAL void ov02_0224F5FC(FieldSystem *fieldSystem, void *work);
WIP_LOCAL void ov02_0224F058(FieldSystem *fieldSystem, void *work);
WIP_LOCAL void ov02_0224F324(Pokemon *mon, void *work);
WIP_LOCAL void ov02_0224F4BC(FieldSystem *fieldSystem, void *work);
WIP_LOCAL void ov02_0224F6AC(FieldSystem *fieldSystem, int species, int form, void *work);
WIP_LOCAL void ov02_02248E20(void *a0);
WIP_LOCAL void ov02_0224B784(void *work);
WIP_LOCAL BOOL ov02_0224FB54(FieldSystem *fieldSystem, void *a1, void *arg2);
WIP_LOCAL void ov02_0224B364(void *a0, void *work);
WIP_LOCAL int ov02_0224C2EC(TaskManager *taskManager, FieldSystem *fieldSystem, void *work);
WIP_LOCAL void ov02_0224D22C(void *a0, void *a1, void *data);
WIP_LOCAL void ov02_0224DAA4(void *a0, void *a1, void *data);
WIP_LOCAL void ov02_0224D9C0(void *a0, void *a1, void *data);
WIP_LOCAL void ov02_0224B3B0(void *a0, void *work);
WIP_LOCAL void ov02_0224D358(void *a0, void *a1, void *data);
WIP_LOCAL void ov02_0224CFD8(void *a0, int a1, void *data);
WIP_LOCAL void ov02_0224A88C(void *mgr, void *dst);
WIP_LOCAL void ov02_0224B6E4(void *a0, void *work);
WIP_LOCAL void ov02_0224D0C8(void *data, int a1, int a2, int a3, void *a4);
WIP_LOCAL void ov02_0224D044(void *a0, void *data);
WIP_LOCAL void ov02_0224D700(void *obj);
WIP_LOCAL void ov02_0224D914(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL BOOL ov02_0224ABCC(void *a0, void *a1);
WIP_LOCAL void *ov02_0224A468(void *a, VecFx32 *b, int c, int d); // still in asm
WIP_LOCAL BOOL ov02_02250780(FieldSystem *fieldSystem, u8 a1);
WIP_LOCAL void ov02_02249E90(SysTask *task, void *work);
WIP_LOCAL void ov02_0224FE40(void *a0, u8 *a1, LocalMapObject *obj);
WIP_LOCAL void ov02_0224FE70(void *a0, LocalMapObject *obj, u8 dir);
WIP_LOCAL BOOL ov02_0224D178(void *obj);
WIP_LOCAL void ov02_022507B4(FieldSystem *fieldSystem, u8 a1);
WIP_LOCAL BOOL ov02_022507E8(TaskManager *taskManager); // still in asm
WIP_LOCAL BOOL ov02_022489F0(void *mgr, int a1);
WIP_LOCAL void ov02_02248A24(void *mgr, int a1);
WIP_LOCAL BOOL ov02_02248AC8(void *mgr, int a1);
WIP_LOCAL void ov02_02248AFC(void *mgr, int a1);
WIP_LOCAL int ov02_0224B4AC(void *work);

// forward decls for functions referenced only from the consolidated rodata tables
extern void sub_02068DD0(void);
extern void sub_02068DD4(void);
WIP_LOCAL void ov02_02248DF0(void *a0, u8 *sm);
WIP_LOCAL int ov02_02248E10(void *work);
WIP_LOCAL int ov02_022491A8(void *work);
WIP_LOCAL int ov02_022493EC(void);
WIP_LOCAL int ov02_022495B8(void *work);
WIP_LOCAL int ov02_022495D0(void *work);
WIP_LOCAL int ov02_02249754(void *work);
WIP_LOCAL int ov02_02249838(void *work);
WIP_LOCAL int ov02_02249940(void *work);
WIP_LOCAL int ov02_02249954(void *work);
WIP_LOCAL int ov02_02249968(void *work);
WIP_LOCAL int ov02_02249AC4(void *work);
WIP_LOCAL int ov02_02249AD8(void *work);
WIP_LOCAL BOOL ov02_02249AF0(void *work);
WIP_LOCAL int ov02_02249B10(void *work);
WIP_LOCAL int ov02_02249B38(void *work);
WIP_LOCAL BOOL ov02_02249B60(void *work);
WIP_LOCAL BOOL ov02_02249B80(void *work);
WIP_LOCAL BOOL ov02_02249BA8(void *work);
WIP_LOCAL int ov02_02249CD8(int *work);
WIP_LOCAL void ov02_0224AB54(void);
WIP_LOCAL void ov02_0224AC04(void *a0, u8 *sm);
WIP_LOCAL void ov02_0224AC24(void);
WIP_LOCAL int ov02_0224AC28(void *work);
WIP_LOCAL int ov02_0224ADEC(void);
WIP_LOCAL int ov02_0224B294(void);
WIP_LOCAL BOOL ov02_0224B350(void *a0, void *out);
WIP_LOCAL void ov02_0224B3FC(void *a0, int *a1);
WIP_LOCAL int ov02_0224B494(void *work);
WIP_LOCAL int ov02_0224B638(void *work);
WIP_LOCAL int ov02_0224B68C(void);
WIP_LOCAL BOOL ov02_0224B6D0(void *a0, void *out);
WIP_LOCAL void ov02_0224B804(void);
WIP_LOCAL void ov02_0224B87C(void *a0, void *a1);
WIP_LOCAL int ov02_0224C1B8(TaskManager *taskManager, void *a1, void *a2);
WIP_LOCAL int ov02_0224C4B4(void *a0, FieldSystem *fieldSystem, void *work);
WIP_LOCAL int ov02_0224C4D8(void *a0, void *a1, void *work);
WIP_LOCAL int ov02_0224C680(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL int ov02_0224CA38(TaskManager *taskManager, void *a1, void *a2);
WIP_LOCAL void ov02_0224D278(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224D2BC(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL Field3dObjectTask *ov02_0224D2C8(FieldSystem *fieldSystem);
WIP_LOCAL Field3dObjectTask *ov02_0224D2DC(FieldSystem *fieldSystem);
WIP_LOCAL void ov02_0224D2F0(Field3dObjectTask *task);
WIP_LOCAL BOOL ov02_0224D2F8(Field3dObjectTask *task);
WIP_LOCAL void ov02_0224D3A4(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224D3E8(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL Field3dObjectTask *ov02_0224D3F4(FieldSystem *fieldSystem);
WIP_LOCAL Field3dObjectTask *ov02_0224D408(FieldSystem *fieldSystem);
WIP_LOCAL void ov02_0224D41C(Field3dObjectTask *task);
WIP_LOCAL BOOL ov02_0224D424(Field3dObjectTask *task);
WIP_LOCAL void ov02_0224D43C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224D468(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224D580(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224D648(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224D658(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224D670(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224D98C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224DB8C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224DC58(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL Field3dObjectTask *ov02_0224DC64(FieldSystem *fieldSystem);
WIP_LOCAL Field3dObjectTask *ov02_0224DC78(FieldSystem *fieldSystem);
WIP_LOCAL void ov02_0224DC8C(Field3dObjectTask *task);
WIP_LOCAL BOOL ov02_0224DC94(Field3dObjectTask *task);
WIP_LOCAL void ov02_0224DCB0(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224DD38(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224DDC8(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);

// ====================== consolidated rodata / .data ======================
// Consolidated rodata: ONE const object so MWCC -O4 cannot size-sort it
// (separate const objects get bucketed by size). Field order = address
// order. Individual symbol names restored via #define below. The two
// asm-referenced fields (f022538EC, f02253A4C) are reached from inline
// asm via `=sRodata+offset` instead of a macro.
static const struct {
    ov02_StateMachineFunc f022532F8[1];
    u16 f022532FC[2];
    ov02_StateMachineFunc f02253300[1];
    u16 f02253304[3];
    u16 f0225330A[3];
    u16 f02253310[8];
    ov02_StateMachineFunc *f02253320[4];
    ov02_StateMachineFunc f02253330[6];
    VecFx32 f02253348;
    VecFx32 f02253354;
    VecFx32 f02253360;
    VecFx32 f0225336C;
    VecFx32 f02253378;
    VecFx32 f02253384;
    VecFx32 f02253390;
    VecFx32 f0225339C;
    VecFx32 f022533A8;
    VecFx32 f022533B4;
    ov02_StateMachineFunc *f022533C0[3];
    VecFx32 f022533CC;
    VecFx32 f022533D8;
    VecFx32 f022533E4;
    VecFx32 f022533F0;
    VecFx32 f022533FC;
    VecFx32 f02253408;
    VecFx32 f02253414;
    ov02_StateMachineFunc f02253420[4];
    fx32 f02253430[4];
    ov02_LaunchTemplate f02253440;
    ov02_LaunchTemplate f02253454;
    ov02_LaunchTemplate f02253468;
    ov02_LaunchTemplate f0225347C;
    ov02_LaunchTemplate f02253490;
    ov02_LaunchTemplate f022534A4;
    ov02_StateMachineFunc f022534B8[6];
    ov02_StateMachineFunc f022534D0[8];
    ov02_StateMachineFunc f022534F0[12];
    fx32 f02253520[12];
    ov02_StateMachineFunc f02253550[14];
    ov02_StateMachineFunc f02253588[23];
    ov02_A9D8Entry f022535E4[13];
    ov02_BF58Cfg f022536E8;
    ov02_FieldTaskFunc f022536F0[4];
    ov02_FieldTaskFunc f02253700[4];
    ov02_FieldTaskFunc f02253710[5];
    ov02_FieldTaskFunc f02253724[6];
    ov02_FieldTaskFunc f0225373C[6];
    ov02_FieldTaskFunc f02253754[7];
    MovementScriptCommand f02253770[9];
    MovementScriptCommand f02253794[9];
    MovementScriptCommand f022537B8[9];
    MovementScriptCommand f022537DC[17];
    MovementScriptCommand f02253820[25];
    MovementScriptCommand f02253884[26];
    u8 f022538EC[16];
    Field3dObjectTaskTemplate f022538FC;
    Field3dObjectTaskTemplate f02253914;
    Field3dObjectTaskTemplate f0225392C;
    Field3dObjectTaskTemplate f02253944;
    Field3dObjectTaskTemplate f0225395C;
    Field3dObjectTaskTemplate f02253974;
    Field3dObjectTaskTemplate f0225398C;
    Field3dObjectTaskTemplate f022539A4;
    Field3dObjectTaskTemplate f022539BC;
    Field3dObjectTaskTemplate f022539D4;
    Field3dObjectTaskTemplate f022539EC;
    ov02_AnimDispatchFunc f02253A04[6];
    ov02_CreateDispatchFunc f02253A1C[6];
    ov02_AnimDispatchFunc f02253A34[6];
    u8 f02253A4C[8];
    u8 f02253A54[8];
    ov02_FieldList5 f02253A5C;
    MovementScriptCommand f02253A70[4][5];
    u32 f02253AC0[25];
    VecFx32 f02253B24;
    VecFx32 f02253B30;
} sRodata = {
    { (ov02_StateMachineFunc)ov02_02248E10 }, // ov02_022532F8
    { 0x0007, 0x0008 }, // ov02_022532FC
    { (ov02_StateMachineFunc)ov02_0224AC28 }, // ov02_02253300
    { 0x0011, 0x0014, 0x0017 }, // ov02_02253304
    { 0x0013, 0x0016, 0x0019 }, // ov02_0225330A
    { 0x0012, 0x0015, 0x0018, 0x0000, 0x0000, 0x0000, 0x0010, 0x0000 }, // ov02_02253310
    { (ov02_StateMachineFunc *)sRodata.f022532F8, (ov02_StateMachineFunc *)sRodata.f022534D0, (ov02_StateMachineFunc *)0x1, (ov02_StateMachineFunc *)0xF }, // ov02_02253320
    { (ov02_StateMachineFunc)ov02_0224ACE0, (ov02_StateMachineFunc)ov02_0224ADEC, (ov02_StateMachineFunc)0x0, (ov02_StateMachineFunc)0x6, (ov02_StateMachineFunc)0x1, (ov02_StateMachineFunc)0xE }, // ov02_02253330
    { 0x00080000, 0x00054000, 0 }, // ov02_02253348
    { 0x00080000, 0x00068000, 0 }, // ov02_02253354
    { 0x00001000, 0x00001000, 0 }, // ov02_02253360
    { 0x00001400, 0x00001400, 0 }, // ov02_0225336C
    { 0x00001000, 0x00001000, 0 }, // ov02_02253378
    { 0x00128000, 0x00060000, 0 }, // ov02_02253384
    { 0x00001000, 0x00001000, 0 }, // ov02_02253390
    { 0x00080000, 0x0006F000, 0 }, // ov02_0225339C
    { 0x00002000, 0x00002000, 0 }, // ov02_022533A8
    { 0x00001000, 0x00001000, 0 }, // ov02_022533B4
    { (ov02_StateMachineFunc *)sRodata.f02253300, (ov02_StateMachineFunc *)sRodata.f02253330, (ov02_StateMachineFunc *)sRodata.f02253420 }, // ov02_022533C0
    { 0x00002000, 0x00002000, 0 }, // ov02_022533CC
    { 0x00088000, 0x0004F000, 0 }, // ov02_022533D8
    { 0x00088000, 0x00058000, 0 }, // ov02_022533E4
    { 0x00000400, 0x00000400, 0 }, // ov02_022533F0
    { 0x00080000, 0x00060000, 0 }, // ov02_022533FC
    { 0x00080000, 0x00060000, 0 }, // ov02_02253408
    { 0x00128000, 0x00060000, 0 }, // ov02_02253414
    { (ov02_StateMachineFunc)ov02_0224AF70, (ov02_StateMachineFunc)ov02_0224B0E0, (ov02_StateMachineFunc)ov02_0224B158, (ov02_StateMachineFunc)ov02_0224B294 }, // ov02_02253420
    { (fx32)0xFFFFC000, (fx32)0xFFFFA000, (fx32)0xFFFF9000, (fx32)0xFFFF8000 }, // ov02_02253430
    { 0x8, (void *)ov02_0224B6D0, (void *)sub_02068DD4, (void *)ov02_0224B6E4, (void *)sub_02068DD0 }, // ov02_02253440
    { 0x74, (void *)ov02_02248D98, (void *)ov02_02248DE4, (void *)ov02_02248DF0, (void *)sub_02068DD0 }, // ov02_02253454
    { 0x24, (void *)ov02_0224AA80, (void *)ov02_0224AAC8, (void *)ov02_0224AAD4, (void *)ov02_0224AB54 }, // ov02_02253468
    { 0x68, (void *)ov02_0224ABCC, (void *)ov02_0224ABF8, (void *)ov02_0224AC04, (void *)ov02_0224AC24 }, // ov02_0225347C
    { 0xC, (void *)ov02_0224B7CC, (void *)ov02_0224B804, (void *)ov02_0224B808, (void *)ov02_0224B87C }, // ov02_02253490
    { 0x24, (void *)ov02_0224B350, (void *)sub_02068DD4, (void *)ov02_0224B3FC, (void *)sub_02068DD0 }, // ov02_022534A4
    { (ov02_StateMachineFunc)ov02_0224B494, (ov02_StateMachineFunc)ov02_0224B4AC, (ov02_StateMachineFunc)ov02_0224B5F0, (ov02_StateMachineFunc)ov02_0224B638, (ov02_StateMachineFunc)ov02_0224B664, (ov02_StateMachineFunc)ov02_0224B68C }, // ov02_022534B8
    { (ov02_StateMachineFunc)ov02_02248F88, (ov02_StateMachineFunc)ov02_02249088, (ov02_StateMachineFunc)ov02_022490BC, (ov02_StateMachineFunc)ov02_022491A8, (ov02_StateMachineFunc)ov02_022491CC, (ov02_StateMachineFunc)ov02_02249290, (ov02_StateMachineFunc)ov02_0224939C, (ov02_StateMachineFunc)ov02_022493EC }, // ov02_022534D0
    { (ov02_StateMachineFunc)ov02_022495D0, (ov02_StateMachineFunc)ov02_02249A5C, (ov02_StateMachineFunc)ov02_0224B938, (ov02_StateMachineFunc)ov02_0224B964, (ov02_StateMachineFunc)ov02_02249AD8, (ov02_StateMachineFunc)ov02_02249AF0, (ov02_StateMachineFunc)ov02_02249B80, (ov02_StateMachineFunc)ov02_02249BA8, (ov02_StateMachineFunc)ov02_02249C74, (ov02_StateMachineFunc)ov02_02249CD8, (ov02_StateMachineFunc)ov02_02249954, (ov02_StateMachineFunc)ov02_0224997C }, // ov02_022534F0
    { (fx32)0xFFFF4000, (fx32)0xFFFF0000, (fx32)0xFFFEC000, (fx32)0xFFFE8000, (fx32)0xFFFE6000, (fx32)0xFFFE4000, (fx32)0xFFFE4000, (fx32)0xFFFE4000, (fx32)0xFFFE6000, (fx32)0xFFFE8000, (fx32)0xFFFEA000, (fx32)0xFFFEC000 }, // ov02_02253520
    { (ov02_StateMachineFunc)ov02_022495B8, (ov02_StateMachineFunc)ov02_022495E8, (ov02_StateMachineFunc)ov02_02249658, (ov02_StateMachineFunc)ov02_02249690, (ov02_StateMachineFunc)ov02_022496D0, (ov02_StateMachineFunc)ov02_02249754, (ov02_StateMachineFunc)ov02_02249774, (ov02_StateMachineFunc)ov02_022497C0, (ov02_StateMachineFunc)ov02_02249838, (ov02_StateMachineFunc)ov02_02249858, (ov02_StateMachineFunc)ov02_022498BC, (ov02_StateMachineFunc)ov02_02249940, (ov02_StateMachineFunc)ov02_02249968, (ov02_StateMachineFunc)ov02_0224997C }, // ov02_02253550
    { (ov02_StateMachineFunc)ov02_022495B8, (ov02_StateMachineFunc)ov02_022499EC, (ov02_StateMachineFunc)ov02_02249658, (ov02_StateMachineFunc)ov02_02249690, (ov02_StateMachineFunc)ov02_022496D0, (ov02_StateMachineFunc)ov02_02249754, (ov02_StateMachineFunc)ov02_02249774, (ov02_StateMachineFunc)ov02_022497C0, (ov02_StateMachineFunc)ov02_02249838, (ov02_StateMachineFunc)ov02_02249858, (ov02_StateMachineFunc)ov02_02249AC4, (ov02_StateMachineFunc)ov02_02249AD8, (ov02_StateMachineFunc)ov02_02249AF0, (ov02_StateMachineFunc)ov02_02249B10, (ov02_StateMachineFunc)ov02_02249B38, (ov02_StateMachineFunc)ov02_02249B60, (ov02_StateMachineFunc)ov02_02249BA8, (ov02_StateMachineFunc)ov02_02249BD8, (ov02_StateMachineFunc)ov02_02249C74, (ov02_StateMachineFunc)ov02_02249CD8, (ov02_StateMachineFunc)ov02_02249940, (ov02_StateMachineFunc)ov02_02249968, (ov02_StateMachineFunc)ov02_0224997C }, // ov02_02253588
    { { 0x0000F000, 0x0003F000, 0x00010000, (void *)0x85, 0x0 }, { 0x0004C000, 0x00043000, 0x00010000, (void *)0x85, 0x0 }, { 0x00080000, 0x0003D000, 0x00018000, (void *)0x80, 0x1 }, { 0x000F0000, 0x00045000, 0x00010000, (void *)0x85, 0x0 }, { 0x00028000, 0x0004E000, 0x00018000, (void *)0x80, 0x1 }, { 0x00048000, 0x0005B000, 0x00010000, (void *)0x85, 0x0 }, { 0x000D0000, 0x00056000, 0x00018000, (void *)0x80, 0x1 }, { 0x00038000, 0x00074000, 0x00010000, (void *)0x85, 0x0 }, { 0x0005F000, 0x0006D000, 0x00018000, (void *)0x80, 0x1 }, { 0x0009F000, 0x00064000, 0x00010000, (void *)0x85, 0x0 }, { 0x00018000, 0x0007E000, 0x00018000, (void *)0x80, 0x1 }, { 0x0008C000, 0x0007D000, 0x00018000, (void *)0x80, 0x1 }, { 0x000DD000, 0x0007C000, 0x00018000, (void *)0x80, 0x1 } }, // ov02_022535E4
    { 0x21, 0x8A }, // ov02_022536E8
    { (ov02_FieldTaskFunc)ov02_0224C234, (ov02_FieldTaskFunc)ov02_0224C2A8, (ov02_FieldTaskFunc)ov02_0224C2EC, (ov02_FieldTaskFunc)ov02_0224C338 }, // ov02_022536F0
    { (ov02_FieldTaskFunc)ov02_0224C05C, (ov02_FieldTaskFunc)ov02_0224C0B0, (ov02_FieldTaskFunc)ov02_0224C14C, (ov02_FieldTaskFunc)ov02_0224C1B8 }, // ov02_02253700
    { (ov02_FieldTaskFunc)ov02_0224C87C, (ov02_FieldTaskFunc)ov02_0224C8D0, (ov02_FieldTaskFunc)ov02_0224C93C, (ov02_FieldTaskFunc)ov02_0224C9B8, (ov02_FieldTaskFunc)ov02_0224CA38 }, // ov02_02253710
    { (ov02_FieldTaskFunc)ov02_0224C4B4, (ov02_FieldTaskFunc)ov02_0224C4D8, (ov02_FieldTaskFunc)ov02_0224C71C, (ov02_FieldTaskFunc)ov02_0224C75C, (ov02_FieldTaskFunc)ov02_0224C7D4, (ov02_FieldTaskFunc)ov02_0224C840 }, // ov02_02253724
    { (ov02_FieldTaskFunc)ov02_0224C680, (ov02_FieldTaskFunc)ov02_0224C698, (ov02_FieldTaskFunc)ov02_0224C6DC, (ov02_FieldTaskFunc)ov02_0224C75C, (ov02_FieldTaskFunc)ov02_0224C7D4, (ov02_FieldTaskFunc)ov02_0224C840 }, // ov02_0225373C
    { (ov02_FieldTaskFunc)ov02_0224C4B4, (ov02_FieldTaskFunc)ov02_0224C4D8, (ov02_FieldTaskFunc)ov02_0224C87C, (ov02_FieldTaskFunc)ov02_0224C8D0, (ov02_FieldTaskFunc)ov02_0224C93C, (ov02_FieldTaskFunc)ov02_0224C9B8, (ov02_FieldTaskFunc)ov02_0224CA38 }, // ov02_02253754
    { { 0x1, 0x1 }, { 0x3C, 0x2 }, { 0x2, 0x1 }, { 0x3C, 0x2 }, { 0x0, 0x1 }, { 0x3C, 0x2 }, { 0x3, 0x1 }, { 0x3C, 0x2 }, { 0xFE, 0x0 } }, // ov02_02253770
    { { 0x0, 0x1 }, { 0x3, 0x1 }, { 0x1, 0x1 }, { 0x2, 0x1 }, { 0x0, 0x1 }, { 0x3, 0x1 }, { 0x1, 0x1 }, { 0x2, 0x1 }, { 0xFE, 0x0 } }, // ov02_02253794
    { { 0x1, 0x1 }, { 0x2, 0x1 }, { 0x0, 0x1 }, { 0x3, 0x1 }, { 0x1, 0x1 }, { 0x2, 0x1 }, { 0x0, 0x1 }, { 0x3, 0x1 }, { 0xFE, 0x0 } }, // ov02_022537B8
    { { 0x1, 0x1 }, { 0x3C, 0x2 }, { 0x2, 0x1 }, { 0x3C, 0x2 }, { 0x0, 0x1 }, { 0x3C, 0x2 }, { 0x3, 0x1 }, { 0x3C, 0x2 }, { 0x1, 0x1 }, { 0x3C, 0x1 }, { 0x2, 0x1 }, { 0x3C, 0x1 }, { 0x0, 0x1 }, { 0x3C, 0x1 }, { 0x3, 0x1 }, { 0x3C, 0x1 }, { 0xFE, 0x0 } }, // ov02_022537DC
    { { 0x1, 0x1 }, { 0x3C, 0x2 }, { 0x2, 0x1 }, { 0x3C, 0x2 }, { 0x0, 0x1 }, { 0x3C, 0x2 }, { 0x3, 0x1 }, { 0x3C, 0x2 }, { 0x1, 0x1 }, { 0x3C, 0x1 }, { 0x2, 0x1 }, { 0x3C, 0x1 }, { 0x0, 0x1 }, { 0x3C, 0x1 }, { 0x3, 0x1 }, { 0x3C, 0x1 }, { 0x1, 0x1 }, { 0x2, 0x1 }, { 0x0, 0x1 }, { 0x3, 0x1 }, { 0x1, 0x1 }, { 0x2, 0x1 }, { 0x0, 0x1 }, { 0x3, 0x1 }, { 0xFE, 0x0 } }, // ov02_02253820
    { { 0x1, 0x1 }, { 0x2, 0x1 }, { 0x0, 0x1 }, { 0x3, 0x1 }, { 0x1, 0x1 }, { 0x2, 0x1 }, { 0x0, 0x1 }, { 0x3, 0x1 }, { 0x1, 0x1 }, { 0x3C, 0x1 }, { 0x2, 0x1 }, { 0x3C, 0x1 }, { 0x0, 0x1 }, { 0x3C, 0x1 }, { 0x3, 0x1 }, { 0x3C, 0x1 }, { 0x1, 0x1 }, { 0x3C, 0x2 }, { 0x2, 0x1 }, { 0x3C, 0x3 }, { 0x0, 0x1 }, { 0x3C, 0x4 }, { 0x3, 0x1 }, { 0x3C, 0x5 }, { 0x1, 0x1 }, { 0xFE, 0x0 } }, // ov02_02253884
    { 0x10, 0x0F, 0x0E, 0x0B, 0x0C, 0x09, 0xB4, 0x00, 0x00, 0x00, 0x0E, 0x01, 0x5A, 0x00, 0x00, 0x00 }, // ov02_022538EC
    { 0x400, 0xF0, (Field3dObjectTaskFunc)ov02_0224D310, (Field3dObjectTaskFunc)ov02_0224D3A4, (Field3dObjectTaskFunc)ov02_0224D3B4, (Field3dObjectTaskFunc)ov02_0224D3E8 }, // ov02_022538FC
    { 0x400, 0xF0, (Field3dObjectTaskFunc)ov02_0224D5B4, (Field3dObjectTaskFunc)ov02_0224D648, (Field3dObjectTaskFunc)ov02_0224D658, (Field3dObjectTaskFunc)ov02_0224D670 }, // ov02_02253914
    { 0x400, 0x114, (Field3dObjectTaskFunc)ov02_0224DAA4, (Field3dObjectTaskFunc)ov02_0224DB8C, (Field3dObjectTaskFunc)ov02_0224DB9C, (Field3dObjectTaskFunc)ov02_0224DC58 }, // ov02_0225392C
    { 0x400, 0x1CC, (Field3dObjectTaskFunc)ov02_0224D43C, (Field3dObjectTaskFunc)ov02_0224D468, (Field3dObjectTaskFunc)ov02_0224D488, (Field3dObjectTaskFunc)ov02_0224D580 }, // ov02_02253944
    { 0x400, 0xD10, (Field3dObjectTaskFunc)ov02_0224D880, (Field3dObjectTaskFunc)ov02_0224D914, (Field3dObjectTaskFunc)ov02_0224D950, (Field3dObjectTaskFunc)ov02_0224D98C }, // ov02_0225395C
    { 0x400, 0xF0, (Field3dObjectTaskFunc)ov02_0224D1E4, (Field3dObjectTaskFunc)ov02_0224D278, (Field3dObjectTaskFunc)ov02_0224D288, (Field3dObjectTaskFunc)ov02_0224D2BC }, // ov02_02253974
    { 0x400, 0xF0, (Field3dObjectTaskFunc)ov02_0224D358, (Field3dObjectTaskFunc)ov02_0224D3A4, (Field3dObjectTaskFunc)ov02_0224D3B4, (Field3dObjectTaskFunc)ov02_0224D3E8 }, // ov02_0225398C
    { 0x400, 0x114, (Field3dObjectTaskFunc)ov02_0224D9C0, (Field3dObjectTaskFunc)ov02_0224DB8C, (Field3dObjectTaskFunc)ov02_0224DB9C, (Field3dObjectTaskFunc)ov02_0224DC58 }, // ov02_022539A4
    { 0x400, 0xF0, (Field3dObjectTaskFunc)ov02_0224D22C, (Field3dObjectTaskFunc)ov02_0224D278, (Field3dObjectTaskFunc)ov02_0224D288, (Field3dObjectTaskFunc)ov02_0224D2BC }, // ov02_022539BC
    { 0x400, 0xE9C, (Field3dObjectTaskFunc)ov02_0224DCB0, (Field3dObjectTaskFunc)ov02_0224DD4C, (Field3dObjectTaskFunc)ov02_0224DD8C, (Field3dObjectTaskFunc)ov02_0224DDC8 }, // ov02_022539D4
    { 0x400, 0xE9C, (Field3dObjectTaskFunc)ov02_0224DD38, (Field3dObjectTaskFunc)ov02_0224DD4C, (Field3dObjectTaskFunc)ov02_0224DD8C, (Field3dObjectTaskFunc)ov02_0224DDC8 }, // ov02_022539EC
    { (ov02_AnimDispatchFunc)ov02_0224D2F0, (ov02_AnimDispatchFunc)ov02_0224D41C, (ov02_AnimDispatchFunc)ov02_0224D41C, (ov02_AnimDispatchFunc)ov02_0224D2F0, (ov02_AnimDispatchFunc)ov02_0224DC8C, (ov02_AnimDispatchFunc)ov02_0224DC8C }, // ov02_02253A04
    { (ov02_CreateDispatchFunc)ov02_0224D2C8, (ov02_CreateDispatchFunc)ov02_0224D3F4, (ov02_CreateDispatchFunc)ov02_0224D408, (ov02_CreateDispatchFunc)ov02_0224D2DC, (ov02_CreateDispatchFunc)ov02_0224DC64, (ov02_CreateDispatchFunc)ov02_0224DC78 }, // ov02_02253A1C
    { (ov02_AnimDispatchFunc)ov02_0224D2F8, (ov02_AnimDispatchFunc)ov02_0224D424, (ov02_AnimDispatchFunc)ov02_0224D424, (ov02_AnimDispatchFunc)ov02_0224D2F8, (ov02_AnimDispatchFunc)ov02_0224DC94, (ov02_AnimDispatchFunc)ov02_0224DC94 }, // ov02_02253A34
    { 0xFF, 0x01, 0xFF, 0x01, 0x01, 0xFF, 0x00, 0x00 }, // ov02_02253A4C
    { 0x01, 0x02, 0x04, 0x08, 0x10, 0x00, 0x00, 0x00 }, // ov02_02253A54
    { { 0xB5, 0xB6, 0xB7, 0xB8, 0xB9 } }, // ov02_02253A5C
    { { { 0x49, 0x1 }, { 0x30, 0x1 }, { 0x3E, 0x1 }, { 0x4A, 0x1 }, { 0xFE, 0x0 } }, { { 0x49, 0x1 }, { 0x31, 0x1 }, { 0x3E, 0x1 }, { 0x4A, 0x1 }, { 0xFE, 0x0 } }, { { 0x49, 0x1 }, { 0x32, 0x1 }, { 0x3E, 0x1 }, { 0x4A, 0x1 }, { 0xFE, 0x0 } }, { { 0x49, 0x1 }, { 0x33, 0x1 }, { 0x3E, 0x1 }, { 0x4A, 0x1 }, { 0xFE, 0x0 } } }, // ov02_02253A70
    { 0x00000004, 0x00000005, 0x00000004, 0x00000004, 0x00000001, 0x00000004, 0x00000003, 0x00000002, 0x00000001, 0x00000002, 0x00000005, 0x00000006, 0x00000003, 0x00000001, 0x00000001, 0x00000003, 0x00000006, 0x00000003, 0x00000005, 0x00000006, 0x00000002, 0x00000002, 0x00000001, 0x00000003, 0x00000006 }, // ov02_02253AC0
    { 0x00001000, 0x00001000, 0x00001000 }, // ov02_02253B24
    { 0x00001000, 0x00001000, 0x00001000 }, // ov02_02253B30
};

static struct {
    VecFx32 f02253D90[6];
    VecFx32 f02253DD8[6];
} sData = {
    { { (fx32)0xFFFFB800, 0x0000C000, (fx32)0xFFFFB800 }, { 0x00004800, 0x0000C000, (fx32)0xFFFFB800 }, { (fx32)0xFFFFB800, 0x0000C000, 0 }, { 0x00004800, 0x0000C000, 0 }, { (fx32)0xFFFFB800, 0x0000C000, 0x00004800 }, { 0x00004800, 0x0000C000, 0x00004800 } }, // ov02_02253D90
    { { (fx32)0xFFFFB800, 0x0000C000, (fx32)0xFFFFB800 }, { 0x00004800, 0x0000C000, (fx32)0xFFFFB800 }, { (fx32)0xFFFFB800, 0x0000C000, 0 }, { 0x00004800, 0x0000C000, 0 }, { (fx32)0xFFFFB800, 0x0000C000, 0x00004800 }, { 0x00004800, 0x0000C000, 0x00004800 } }, // ov02_02253DD8
};

#define ov02_022532F8 (sRodata.f022532F8)
#define ov02_022532FC (sRodata.f022532FC)
#define ov02_02253300 (sRodata.f02253300)
#define ov02_02253304 (sRodata.f02253304)
#define ov02_0225330A (sRodata.f0225330A)
#define ov02_02253310 (sRodata.f02253310)
#define ov02_02253320 (sRodata.f02253320)
#define ov02_02253330 (sRodata.f02253330)
#define ov02_02253348 (sRodata.f02253348)
#define ov02_02253354 (sRodata.f02253354)
#define ov02_02253360 (sRodata.f02253360)
#define ov02_0225336C (sRodata.f0225336C)
#define ov02_02253378 (sRodata.f02253378)
#define ov02_02253384 (sRodata.f02253384)
#define ov02_02253390 (sRodata.f02253390)
#define ov02_0225339C (sRodata.f0225339C)
#define ov02_022533A8 (sRodata.f022533A8)
#define ov02_022533B4 (sRodata.f022533B4)
#define ov02_022533C0 (sRodata.f022533C0)
#define ov02_022533CC (sRodata.f022533CC)
#define ov02_022533D8 (sRodata.f022533D8)
#define ov02_022533E4 (sRodata.f022533E4)
#define ov02_022533F0 (sRodata.f022533F0)
#define ov02_022533FC (sRodata.f022533FC)
#define ov02_02253408 (sRodata.f02253408)
#define ov02_02253414 (sRodata.f02253414)
#define ov02_02253420 (sRodata.f02253420)
#define ov02_02253430 (sRodata.f02253430)
#define ov02_02253440 (sRodata.f02253440)
#define ov02_02253454 (sRodata.f02253454)
#define ov02_02253468 (sRodata.f02253468)
#define ov02_0225347C (sRodata.f0225347C)
#define ov02_02253490 (sRodata.f02253490)
#define ov02_022534A4 (sRodata.f022534A4)
#define ov02_022534B8 (sRodata.f022534B8)
#define ov02_022534D0 (sRodata.f022534D0)
#define ov02_022534F0 (sRodata.f022534F0)
#define ov02_02253520 (sRodata.f02253520)
#define ov02_02253550 (sRodata.f02253550)
#define ov02_02253588 (sRodata.f02253588)
#define ov02_022535E4 (sRodata.f022535E4)
#define ov02_022536E8 (sRodata.f022536E8)
#define ov02_022536F0 (sRodata.f022536F0)
#define ov02_02253700 (sRodata.f02253700)
#define ov02_02253710 (sRodata.f02253710)
#define ov02_02253724 (sRodata.f02253724)
#define ov02_0225373C (sRodata.f0225373C)
#define ov02_02253754 (sRodata.f02253754)
#define ov02_02253770 (sRodata.f02253770)
#define ov02_02253794 (sRodata.f02253794)
#define ov02_022537B8 (sRodata.f022537B8)
#define ov02_022537DC (sRodata.f022537DC)
#define ov02_02253820 (sRodata.f02253820)
#define ov02_02253884 (sRodata.f02253884)
// ov02_022538EC -> sRodata+0x5F4 (referenced from inline asm)
#define ov02_022538FC (sRodata.f022538FC)
#define ov02_02253914 (sRodata.f02253914)
#define ov02_0225392C (sRodata.f0225392C)
#define ov02_02253944 (sRodata.f02253944)
#define ov02_0225395C (sRodata.f0225395C)
#define ov02_02253974 (sRodata.f02253974)
#define ov02_0225398C (sRodata.f0225398C)
#define ov02_022539A4 (sRodata.f022539A4)
#define ov02_022539BC (sRodata.f022539BC)
#define ov02_022539D4 (sRodata.f022539D4)
#define ov02_022539EC (sRodata.f022539EC)
#define ov02_02253A04 (sRodata.f02253A04)
#define ov02_02253A1C (sRodata.f02253A1C)
#define ov02_02253A34 (sRodata.f02253A34)
// ov02_02253A4C -> sRodata+0x754 (referenced from inline asm)
#define ov02_02253A54 (sRodata.f02253A54)
#define ov02_02253A5C (sRodata.f02253A5C)
#define ov02_02253A70 (sRodata.f02253A70)
#define ov02_02253AC0 (sRodata.f02253AC0)
#define ov02_02253B24 (sRodata.f02253B24)
#define ov02_02253B30 (sRodata.f02253B30)
#define ov02_02253D90 (sData.f02253D90)
#define ov02_02253DD8 (sData.f02253DD8)

WIP_LOCAL void ov02_02248728(void *mgr, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9);
WIP_LOCAL void ov02_02248980(void *mgr, void *narc, int resId, int flag);
WIP_LOCAL void ov02_02248A58(void *mgr, void *narc, int resId, int flag);
WIP_LOCAL void ov02_02248B30(void *mgr, void *narc, int resId, int flag);
WIP_LOCAL void ov02_02248BA0(void *mgr, void *narc, int resId, int flag);
WIP_LOCAL void ov02_02248C98(Sprite *sprite, VecFx32 *out);
WIP_LOCAL int ov02_02248E10(void *work);
WIP_LOCAL void ov02_0224A69C(void *work, int p1, int p2, int p3, int p4);
WIP_LOCAL void *ov02_0224A800(u16 *a0, enum HeapID heapID);
WIP_LOCAL u8 ov02_0224AB8C(void *work);
WIP_LOCAL int ov02_0224AC28(void *work);
WIP_LOCAL void ov02_0224B87C(void *a0, void *a1);
WIP_LOCAL BOOL ov02_0224E4CC(u8 tile, int flag);
WIP_LOCAL BOOL ov02_0224E4DC(u8 tile, int flag);
WIP_LOCAL BOOL ov02_0224EF6C(u8 tile, int flag, int sel);
WIP_LOCAL void ov02_0224F644(void *a, void *b);
WIP_LOCAL BOOL Task_FollowMonInteract(TaskManager *taskman); // big fn, defined later
WIP_LOCAL void ov02_0224A32C(void *mgr);
WIP_LOCAL void ov02_02249548(void *work);
WIP_LOCAL void ov02_0224B448(SysTask *task);
WIP_LOCAL void ov02_0224DD38(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL BOOL ov02_0224D2F8(Field3dObjectTask *task);
WIP_LOCAL BOOL ov02_0224D424(Field3dObjectTask *task);
WIP_LOCAL BOOL ov02_0224DC94(Field3dObjectTask *task);
WIP_LOCAL void ov02_0224D580(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224F698(FieldSystem *fieldSystem, void *out);
WIP_LOCAL int ov02_02249CD8(int *work);
WIP_LOCAL void ov02_0224A450(Sprite *sprite);
WIP_LOCAL BOOL ov02_0224B350(void *a0, void *out);
WIP_LOCAL void ov02_0224E0BC(LocalMapObject *obj1, LocalMapObject *obj2, TaskManager *taskManager);
// referenced above; full bodies still in asm
WIP_LOCAL void ov02_0224DCB0(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void *ov02_0224E0D4(LocalMapObject *obj1, LocalMapObject *obj2);
WIP_LOCAL BOOL ov02_0224E0EC(TaskManager *taskManager);

// batch: render loops, alloc helpers, step funcs (some callees still in asm)
WIP_LOCAL void ov02_0224D98C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224DDC8(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void *ov02_0224B690(enum HeapID heapID, u32 size);
WIP_LOCAL void *ov02_0224C660(enum HeapID heapID, u32 size);
WIP_LOCAL void *ov02_0224F864(enum HeapID heapID);
WIP_LOCAL void ov02_0224A67C(void *work);
WIP_LOCAL int ov02_02249968(void *work);
WIP_LOCAL int ov02_02249AC4(void *work);
WIP_LOCAL int ov02_02249940(void *work);
WIP_LOCAL int ov02_02249954(void *work);
WIP_LOCAL void ov02_0224B3FC(void *a0, int *a1);
WIP_LOCAL BOOL ov02_0224B6D0(void *a0, void *out);
WIP_LOCAL int ov02_0224B494(void *work);
WIP_LOCAL void ov02_0224D658(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL BOOL ov02_0224FC74(void *a0, void *a1);
WIP_LOCAL void ov02_0224FC08(void *work, void *window, int arg2);
WIP_LOCAL void ov02_0224FCE0(void *work, String *dest, enum HeapID heapID, int flags, u8 a5);
WIP_LOCAL void ov02_0224A6D0(void *work);
WIP_LOCAL void ov02_0224A8D4(void *work);
WIP_LOCAL void ov02_02249FD4(void *work);
WIP_LOCAL void ov02_0224A028(void *work);
WIP_LOCAL void ov02_0224B364(void *a0, void *a1);
WIP_LOCAL void ov02_0224B3B0(void *a0, void *a1);
WIP_LOCAL void ov02_0224D1AC(void *data);
WIP_LOCAL void ov02_0224D0AC(void *playerAvatar, void *data);
WIP_LOCAL int ov02_0224E340(FieldSystem *fieldSystem);
WIP_LOCAL void ov02_0224B6B0(void *work, BOOL visible);
WIP_LOCAL int ov02_0224C680(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224B768(void *work);
WIP_LOCAL void ov02_02249D40(void *work);
WIP_LOCAL void ov02_0224D468(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224D868(void *data);
WIP_LOCAL void ov02_0224E008(void *data);
WIP_LOCAL int ov02_022495B8(void *work);
WIP_LOCAL void ov02_02249DD8(SysTask *task, void *work);
// callees still in asm
WIP_LOCAL int ov02_0224E31C(u32 x, u32 z);
WIP_LOCAL void ov02_0224D700(void *p);
WIP_LOCAL void ov02_0224DE6C(void *p);
WIP_LOCAL void ov02_02249EC0(void *work);
WIP_LOCAL void ov02_02249CF0(void *work);

WIP_LOCAL void ov02_02248DF0(void *a0, u8 *sm);
WIP_LOCAL void ov02_0224AC04(void *a0, u8 *sm);
WIP_LOCAL void ov02_02249584(SysTask *task, void *sm);
WIP_LOCAL void ov02_0224D43C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_02249984(SysTask *task, void *sm);
WIP_LOCAL void ov02_022499B8(SysTask *task, void *sm);
WIP_LOCAL BOOL ov02_02249BA8(void *work);
WIP_LOCAL void ov02_0224AB9C(void *work);
WIP_LOCAL int ov02_0224B638(void *work);
WIP_LOCAL void ov02_02248DBC(void *a0);
WIP_LOCAL int ov02_02249B10(void *work);
WIP_LOCAL void ov02_0224F5D0(FieldSystem *fieldSystem, void *out);
WIP_LOCAL void ov02_0224F76C(int a0, void *out);
WIP_LOCAL int ov02_0224F79C(int a0);
WIP_LOCAL void ov02_0224F880(void *a0, int a1);
WIP_LOCAL BOOL PlayerStepEvent_RepelCounterDecrement(SaveData *saveData, FieldSystem *fieldSystem);
WIP_LOCAL void ov02_0224AC38(void *work); // still in asm
WIP_LOCAL SpriteResource *ov02_0224A868(void *mgr, NARC *narc);
WIP_LOCAL void ov02_0224D788(void *obj, NNSFndAllocator *alloc);
WIP_LOCAL void ov02_0224DEF4(void *obj, NNSFndAllocator *alloc);
WIP_LOCAL void ov02_0224886C(void *mgr); // destructor, still in asm
WIP_LOCAL int ov02_0224CA38(TaskManager *taskManager, void *a1, void *a2);
WIP_LOCAL int ov02_0224C4B4(void *a0, FieldSystem *fieldSystem, void *work);
WIP_LOCAL int ov02_0224C4D8(void *a0, void *a1, void *work);

WIP_LOCAL int ov02_0224C1B8(TaskManager *taskManager, void *a1, void *a2);
WIP_LOCAL void ov02_0224A6A8(void *work);
WIP_LOCAL int ov02_02249B38(void *work);
WIP_LOCAL BOOL ov02_02249B80(void *work);
WIP_LOCAL SpriteResource *ov02_0224A810(void *mgr, NARC *narc);
// callees still in asm
WIP_LOCAL void ov02_0224A700(SysTask *task, void *data);
WIP_LOCAL void ov02_02249D5C(SysTask *task, void *data);
WIP_LOCAL void ov02_02249E58(SysTask *task, void *data);
WIP_LOCAL void ov02_0224AB58(void *work);

WIP_LOCAL void ov02_0224A7A8(void *a0, PokepicTemplate *tmpl);
WIP_LOCAL int ov02_022495D0(void *work);
WIP_LOCAL int ov02_02249AD8(void *work);
WIP_LOCAL int ov02_02249754(void *work);
WIP_LOCAL int ov02_02249838(void *work);
WIP_LOCAL BOOL ov02_02249B60(void *work);
WIP_LOCAL void *ov02_0224955C(void *a0);
WIP_LOCAL BOOL ov02_02249AF0(void *work);
WIP_LOCAL void ov02_0224A648(void *work);
WIP_LOCAL int ov02_022491A8(void *work);
// callees still in asm
WIP_LOCAL void ov02_02249F6C(void *work);
WIP_LOCAL void ov02_0224A4D0(void *work);
WIP_LOCAL void ov02_02249D18(void *work);
WIP_LOCAL void ov02_0224ADF0(void *work);
WIP_LOCAL void ov02_0224A6A8(void *work);
WIP_LOCAL void ov02_0224B45C(SysTask *task, void *data);

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
WIP_LOCAL void ov02_0224D1DC(Field3dObject *object);
WIP_LOCAL void ov02_0224D278(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224D2BC(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224D2F0(Field3dObjectTask *task);
WIP_LOCAL void ov02_0224D3A4(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224D3E8(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224D41C(Field3dObjectTask *task);
WIP_LOCAL void ov02_0224D5AC(Field3dObjectTask *task);
WIP_LOCAL void ov02_0224D648(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224D670(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224D690(Field3dObjectTask *task);
WIP_LOCAL void ov02_0224D9B8(Field3dObjectTask *task);
WIP_LOCAL void ov02_0224DB8C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224DC58(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
WIP_LOCAL void ov02_0224DC8C(Field3dObjectTask *task);
WIP_LOCAL void ov02_0224DE08(Field3dObjectTask *task);
WIP_LOCAL Field3dObjectTask *ov02_0224D2C8(FieldSystem *fieldSystem);
WIP_LOCAL Field3dObjectTask *ov02_0224D2DC(FieldSystem *fieldSystem);
WIP_LOCAL Field3dObjectTask *ov02_0224D3F4(FieldSystem *fieldSystem);
WIP_LOCAL Field3dObjectTask *ov02_0224D408(FieldSystem *fieldSystem);
WIP_LOCAL Field3dObjectTask *ov02_0224D598(FieldSystem *fieldSystem);
WIP_LOCAL Field3dObjectTask *ov02_0224D67C(FieldSystem *fieldSystem);
WIP_LOCAL Field3dObjectTask *ov02_0224D9A4(FieldSystem *fieldSystem);
WIP_LOCAL Field3dObjectTask *ov02_0224DC64(FieldSystem *fieldSystem);
WIP_LOCAL Field3dObjectTask *ov02_0224DC78(FieldSystem *fieldSystem);
WIP_LOCAL Field3dObjectTask *ov02_0224DDE0(FieldSystem *fieldSystem);
WIP_LOCAL Field3dObjectTask *ov02_0224DDF4(FieldSystem *fieldSystem);
WIP_LOCAL void ov02_0224F8F4(void *ptr);

// Forward decl — defined later in the file's asm; referenced by destroy dispatchers.
WIP_LOCAL void ov02_0224D144(void *obj, void *fieldSystem);

// Field3dObjectTaskTemplate data (rodata) defined later in the file's .rodata.
// Declared extern here so the create wrappers' relocations resolve by name.

// ov02_02248728
// clang-format off
asm void ov02_02248728(void *mgr, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9) {
    push {r3, r4, r5, r6, r7, lr}
    add r5, r0, #0
    add r6, r2, #0
    ldr r0, [sp, #0x1c]
    add r7, r3, #0
    strb r6, [r5, #0]
    ldr r4, [sp, #0x18]
    strb r7, [r5, #1]
    strb r4, [r5, #2]
    str r0, [sp, #0x1c]
    strb r0, [r5, #3]
    ldr r0, [sp, #0x20]
    mov r2, #4
    strb r0, [r5, #4]
    ldr r0, [sp, #0x24]
    strb r0, [r5, #5]
    ldr r0, [sp, #0x28]
    strb r0, [r5, #6]
    ldr r0, [sp, #0x2c]
    strb r0, [r5, #7]
    add r0, r1, #0
    add r1, r5, #0
    add r1, #0xc
    bl G2dRenderer_Init
    str r0, [r5, #8]
    add r0, r5, #0
    mov r2, #2
    add r0, #0xc
    mov r1, #0
    lsl r2, r2, #0x14
    bl G2dRenderer_SetSubSurfaceCoords
    add r0, r6, #0
    mov r1, #0
    mov r2, #4
    bl Create2DGfxResObjMan
    mov r1, #0x4d
    lsl r1, r1, #2
    str r0, [r5, r1]
    add r0, r7, #0
    mov r1, #1
    mov r2, #4
    bl Create2DGfxResObjMan
    mov r1, #0x4e
    lsl r1, r1, #2
    str r0, [r5, r1]
    add r0, r4, #0
    mov r1, #2
    mov r2, #4
    bl Create2DGfxResObjMan
    mov r1, #0x4f
    lsl r1, r1, #2
    str r0, [r5, r1]
    ldr r0, [sp, #0x1c]
    mov r1, #3
    mov r2, #4
    bl Create2DGfxResObjMan
    mov r1, #5
    lsl r1, r1, #6
    str r0, [r5, r1]
    mov r0, #4
    lsl r1, r6, #3
    bl ov02_0224B690
    mov r1, #0x51
    lsl r1, r1, #2
    str r0, [r5, r1]
    mov r0, #4
    lsl r1, r7, #3
    bl ov02_0224B690
    mov r1, #0x52
    lsl r1, r1, #2
    str r0, [r5, r1]
    mov r0, #4
    lsl r1, r4, #3
    bl ov02_0224B690
    mov r1, #0x53
    lsl r1, r1, #2
    str r0, [r5, r1]
    ldr r1, [sp, #0x1c]
    mov r0, #4
    lsl r1, r1, #3
    bl ov02_0224B690
    mov r1, #0x15
    lsl r1, r1, #4
    str r0, [r5, r1]
    mov r1, #0
    cmp r6, #0
    ble _02248804
    ble _02248804
    ldr r0, [sp, #0x20]
    add r2, r1, #0
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
_022487F4:
    mov r3, #0x51
    lsl r3, r3, #2
    ldr r3, [r5, r3]
    add r1, r1, #1
    strh r0, [r3, r2]
    add r2, #8
    cmp r1, r6
    blt _022487F4
_02248804:
    mov r3, #0
    cmp r7, #0
    ble _02248824
    ble _02248824
    ldr r0, [sp, #0x24]
    mov r6, #0x52
    lsl r0, r0, #0x10
    add r2, r3, #0
    asr r1, r0, #0x10
    lsl r6, r6, #2
_02248818:
    ldr r0, [r5, r6]
    add r3, r3, #1
    strh r1, [r0, r2]
    add r2, #8
    cmp r3, r7
    blt _02248818
_02248824:
    mov r1, #0
    cmp r4, #0
    ble _02248844
    ble _02248844
    ldr r2, [sp, #0x28]
    add r0, r1, #0
    lsl r2, r2, #0x10
    asr r6, r2, #0x10
    mov r2, #0x53
    lsl r2, r2, #2
_02248838:
    ldr r3, [r5, r2]
    add r1, r1, #1
    strh r6, [r3, r0]
    add r0, #8
    cmp r1, r4
    blt _02248838
_02248844:
    ldr r0, [sp, #0x1c]
    mov r1, #0
    cmp r0, #0
    ble _02248868
    ble _02248868
    ldr r2, [sp, #0x2c]
    mov r3, #0x15
    lsl r2, r2, #0x10
    add r0, r1, #0
    asr r4, r2, #0x10
    lsl r3, r3, #4
_0224885A:
    ldr r2, [r5, r3]
    add r1, r1, #1
    strh r4, [r2, r0]
    ldr r2, [sp, #0x1c]
    add r0, #8
    cmp r1, r2
    blt _0224885A
_02248868:
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

WIP_LOCAL void ov02_0224886C(void *mgr) {
    int i;
    for (i = 0; i < *(u8 *)mgr; i++) {
        if (*(s8 *)((u8 *)mgr + 4) != (*(AnimResEntry **)((u8 *)mgr + 0x144))[i].id) {
            SpriteTransfer_DeleteCharTransferTask((*(AnimResEntry **)((u8 *)mgr + 0x144))[i].res);
        }
    }
    for (i = 0; i < *((u8 *)mgr + 1); i++) {
        if (*(s8 *)((u8 *)mgr + 5) != (*(AnimResEntry **)((u8 *)mgr + 0x148))[i].id) {
            SpriteTransfer_DeletePlttTransferTask((*(AnimResEntry **)((u8 *)mgr + 0x148))[i].res);
        }
    }
    for (i = 0; i < *((u8 *)mgr + 2); i++) {
        if (*(s8 *)((u8 *)mgr + 6) != (*(AnimResEntry **)((u8 *)mgr + 0x14c))[i].id) {
            sub_0200A740((*(AnimResEntry **)((u8 *)mgr + 0x14c))[i].res);
        }
    }
    for (i = 0; i < *((u8 *)mgr + 3); i++) {
        if (*(s8 *)((u8 *)mgr + 7) != (*(AnimResEntry **)((u8 *)mgr + 0x150))[i].id) {
            sub_0200A740((*(AnimResEntry **)((u8 *)mgr + 0x150))[i].res);
        }
    }
    Destroy2DGfxResObjMan(*(GF_2DGfxResMan **)((u8 *)mgr + 0x134));
    Destroy2DGfxResObjMan(*(GF_2DGfxResMan **)((u8 *)mgr + 0x138));
    Destroy2DGfxResObjMan(*(GF_2DGfxResMan **)((u8 *)mgr + 0x13c));
    Destroy2DGfxResObjMan(*(GF_2DGfxResMan **)((u8 *)mgr + 0x140));
    Heap_Free(*(void **)((u8 *)mgr + 0x144));
    Heap_Free(*(void **)((u8 *)mgr + 0x148));
    Heap_Free(*(void **)((u8 *)mgr + 0x14c));
    Heap_Free(*(void **)((u8 *)mgr + 0x150));
    SpriteList_DeleteAllSprites(*(SpriteList **)((u8 *)mgr + 8));
    SpriteList_Delete(*(SpriteList **)((u8 *)mgr + 8));
}

// ov02_02248980
// clang-format off
asm void ov02_02248980(void *mgr, void *narc, int resId, int flag) {
    push {r4, r5, r6, r7, lr}
    sub sp, #0x14
    add r6, r0, #0
    ldrb r5, [r6, #0]
    str r2, [sp, #0x10]
    str r1, [sp, #0xc]
    add r7, r3, #0
    mov r2, #0
    cmp r5, #0
    ble _022489E6
    mov r0, #0x51
    lsl r0, r0, #2
    ldr r3, [r6, r0]
    mov r0, #4
    ldrsb r4, [r6, r0]
    mov ip, r3
    add r0, r2, #0
_022489A2:
    ldrsh r1, [r3, r0]
    cmp r4, r1
    bne _022489DE
    lsl r4, r2, #3
    mov r0, ip
    strh r7, [r0, r4]
    mov r0, #0x51
    lsl r0, r0, #2
    ldr r1, [r6, r0]
    mov r3, #0
    add r1, r1, r4
    strh r3, [r1, #2]
    str r7, [sp, #0]
    mov r1, #1
    str r1, [sp, #4]
    mov r1, #4
    str r1, [sp, #8]
    sub r0, #0x10
    ldr r0, [r6, r0]
    ldr r1, [sp, #0xc]
    ldr r2, [sp, #0x10]
    bl AddCharResObjFromOpenNarc
    mov r1, #0x51
    lsl r1, r1, #2
    ldr r1, [r6, r1]
    add sp, #0x14
    add r1, r1, r4
    str r0, [r1, #4]
    pop {r4, r5, r6, r7, pc}
_022489DE:
    add r2, r2, #1
    add r3, #8
    cmp r2, r5
    blt _022489A2
_022489E6:
    bl GF_AssertFail
    add sp, #0x14
    pop {r4, r5, r6, r7, pc}
}
// clang-format on

WIP_LOCAL BOOL ov02_022489F0(void *mgr, int a1) {
    int i;
    int count = *(u8 *)mgr;
    for (i = 0; i < count; i++) {
        if (a1 == (*(AnimResEntry **)((u8 *)mgr + 0x144))[i].id) {
            return SpriteTransfer_CreateCharTransferTask_AllocAtEnd((*(AnimResEntry **)((u8 *)mgr + 0x144))[i].res);
        }
    }
    GF_AssertFail();
}

WIP_LOCAL void ov02_02248A24(void *mgr, int a1) {
    int i;
    int count = *(u8 *)mgr;
    for (i = 0; i < count; i++) {
        if (a1 == (*(AnimResEntry **)((u8 *)mgr + 0x144))[i].id) {
            sub_0200A740((*(AnimResEntry **)((u8 *)mgr + 0x144))[i].res);
            return;
        }
    }
    GF_AssertFail();
}

// ov02_02248A58
// clang-format off
asm void ov02_02248A58(void *mgr, void *narc, int resId, int flag) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x18
    add r6, r0, #0
    ldrb r5, [r6, #0]
    str r2, [sp, #0x14]
    str r1, [sp, #0x10]
    add r7, r3, #0
    mov r2, #0
    cmp r5, #0
    ble _02248AC0
    mov r0, #0x52
    lsl r0, r0, #2
    ldr r3, [r6, r0]
    mov r0, #5
    ldrsb r4, [r6, r0]
    mov ip, r3
    add r0, r2, #0
_02248A7A:
    ldrsh r1, [r3, r0]
    cmp r4, r1
    bne _02248AB8
    lsl r4, r2, #3
    mov r0, ip
    strh r7, [r0, r4]
    mov r0, #0x52
    lsl r0, r0, #2
    ldr r1, [r6, r0]
    mov r3, #0
    add r1, r1, r4
    strh r3, [r1, #2]
    str r7, [sp, #0]
    mov r1, #1
    str r1, [sp, #4]
    str r1, [sp, #8]
    mov r1, #4
    str r1, [sp, #0xc]
    sub r0, #0x10
    ldr r0, [r6, r0]
    ldr r1, [sp, #0x10]
    ldr r2, [sp, #0x14]
    bl AddPlttResObjFromOpenNarc
    mov r1, #0x52
    lsl r1, r1, #2
    ldr r1, [r6, r1]
    add sp, #0x18
    add r1, r1, r4
    str r0, [r1, #4]
    pop {r3, r4, r5, r6, r7, pc}
_02248AB8:
    add r2, r2, #1
    add r3, #8
    cmp r2, r5
    blt _02248A7A
_02248AC0:
    bl GF_AssertFail
    add sp, #0x18
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

WIP_LOCAL BOOL ov02_02248AC8(void *mgr, int a1) {
    int i;
    int count = *((u8 *)mgr + 1);
    for (i = 0; i < count; i++) {
        if (a1 == (*(AnimResEntry **)((u8 *)mgr + 0x148))[i].id) {
            return SpriteTransfer_CreatePlttTransferTask((*(AnimResEntry **)((u8 *)mgr + 0x148))[i].res);
        }
    }
    GF_AssertFail();
}

WIP_LOCAL void ov02_02248AFC(void *mgr, int a1) {
    int i;
    int count = *((u8 *)mgr + 1);
    for (i = 0; i < count; i++) {
        if (a1 == (*(AnimResEntry **)((u8 *)mgr + 0x148))[i].id) {
            sub_0200A740((*(AnimResEntry **)((u8 *)mgr + 0x148))[i].res);
            return;
        }
    }
    GF_AssertFail();
}

// ov02_02248B30
// clang-format off
asm void ov02_02248B30(void *mgr, void *narc, int resId, int flag) {
    push {r4, r5, r6, r7, lr}
    sub sp, #0x14
    add r6, r0, #0
    ldrb r5, [r6, #0]
    str r2, [sp, #0x10]
    str r1, [sp, #0xc]
    add r7, r3, #0
    mov r2, #0
    cmp r5, #0
    ble _02248B96
    mov r0, #0x53
    lsl r0, r0, #2
    ldr r3, [r6, r0]
    mov r0, #6
    ldrsb r4, [r6, r0]
    mov ip, r3
    add r0, r2, #0
_02248B52:
    ldrsh r1, [r3, r0]
    cmp r4, r1
    bne _02248B8E
    lsl r4, r2, #3
    mov r0, ip
    strh r7, [r0, r4]
    mov r0, #0x53
    lsl r0, r0, #2
    ldr r1, [r6, r0]
    mov r3, #0
    add r1, r1, r4
    strh r3, [r1, #2]
    str r7, [sp, #0]
    mov r1, #2
    str r1, [sp, #4]
    mov r1, #4
    str r1, [sp, #8]
    sub r0, #0x10
    ldr r0, [r6, r0]
    ldr r1, [sp, #0xc]
    ldr r2, [sp, #0x10]
    bl AddCellOrAnimResObjFromOpenNarc
    mov r1, #0x53
    lsl r1, r1, #2
    ldr r1, [r6, r1]
    add sp, #0x14
    add r1, r1, r4
    str r0, [r1, #4]
    pop {r4, r5, r6, r7, pc}
_02248B8E:
    add r2, r2, #1
    add r3, #8
    cmp r2, r5
    blt _02248B52
_02248B96:
    bl GF_AssertFail
    add sp, #0x14
    pop {r4, r5, r6, r7, pc}
}
// clang-format on

// ov02_02248BA0
// clang-format off
asm void ov02_02248BA0(void *mgr, void *narc, int resId, int flag) {
    push {r4, r5, r6, r7, lr}
    sub sp, #0x14
    add r6, r0, #0
    ldrb r5, [r6, #0]
    str r2, [sp, #0x10]
    str r1, [sp, #0xc]
    add r7, r3, #0
    mov r2, #0
    cmp r5, #0
    ble _02248C06
    mov r0, #0x15
    lsl r0, r0, #4
    ldr r3, [r6, r0]
    mov r0, #7
    ldrsb r4, [r6, r0]
    mov ip, r3
    add r0, r2, #0
_02248BC2:
    ldrsh r1, [r3, r0]
    cmp r4, r1
    bne _02248BFE
    lsl r4, r2, #3
    mov r0, ip
    strh r7, [r0, r4]
    mov r0, #0x15
    lsl r0, r0, #4
    ldr r1, [r6, r0]
    mov r3, #0
    add r1, r1, r4
    strh r3, [r1, #2]
    str r7, [sp, #0]
    mov r1, #3
    str r1, [sp, #4]
    mov r1, #4
    str r1, [sp, #8]
    sub r0, #0x10
    ldr r0, [r6, r0]
    ldr r1, [sp, #0xc]
    ldr r2, [sp, #0x10]
    bl AddCellOrAnimResObjFromOpenNarc
    mov r1, #0x15
    lsl r1, r1, #4
    ldr r1, [r6, r1]
    add sp, #0x14
    add r1, r1, r4
    str r0, [r1, #4]
    pop {r4, r5, r6, r7, pc}
_02248BFE:
    add r2, r2, #1
    add r3, #8
    cmp r2, r5
    blt _02248BC2
_02248C06:
    bl GF_AssertFail
    add sp, #0x14
    pop {r4, r5, r6, r7, pc}
}
// clang-format on

WIP_LOCAL Sprite *ov02_02248C10(void *mgr, VecFx32 *pos, int charId, int plttId, int cellId, int cellAnmId, int priority, int drawPriority) {
    SpriteResourcesHeader header;
    SimpleSpriteTemplate template;
    Sprite *sprite;

    if (cellAnmId == *(s8 *)((u8 *)mgr + 7)) {
        cellAnmId = -1;
    }
    CreateSpriteResourcesHeader(&header, charId, plttId, cellId, cellAnmId, -1, -1, 0, priority, *(GF_2DGfxResMan **)((u8 *)mgr + 0x134), *(GF_2DGfxResMan **)((u8 *)mgr + 0x138), *(GF_2DGfxResMan **)((u8 *)mgr + 0x13c), *(GF_2DGfxResMan **)((u8 *)mgr + 0x140), NULL, NULL);
    template.spriteList = *(SpriteList **)((u8 *)mgr + 8);
    template.header = &header;
    template.position = *pos;
    template.priority = drawPriority;
    template.whichScreen = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.heapID = HEAP_ID_FIELD1;
    sprite = Sprite_Create(&template);
    if (sprite == NULL) {
        GF_AssertFail();
    }
    return sprite;
}

WIP_LOCAL void ov02_02248C98(Sprite *sprite, VecFx32 *out) {
    *out = *Sprite_GetMatrixPtr(sprite);
}

WIP_LOCAL Sprite *ov02_02248CAC(void *mgr) {
    VecFx32 pos = { 0, 0, 0 };
    VecFx32 affineMatrix = { 0, 0, 0 };
    VecFx32 affineScale;
    Sprite *sprite;

    affineScale = ov02_02253360;
    sprite = ov02_02248C10(mgr, &pos, 0, 0, 0, 2, 0, 0x84);
    Sprite_SetAffineOverwriteMode(sprite, 2);
    Sprite_SetAffineMatrix(sprite, &affineMatrix);
    Sprite_SetAffineScale(sprite, &affineScale);
    Sprite_SetAffineZRotation(sprite, GF_DegreeToSinCosIdx(0));
    return sprite;
}

WIP_LOCAL Sprite *ov02_02248D18(void *mgr, int a1) {
    VecFx32 pos = { 0, 0, 0 };
    Sprite *sprite;
    int plttId;

    plttId = 0;
    if (a1 == 1) {
        plttId = 1;
    }
    sprite = ov02_02248C10(mgr, &pos, 2, plttId, 2, 1, 0, 0x83);
    Sprite_SetDrawFlag(sprite, FALSE);
    Sprite_SetAnimCtrlSeq(sprite, 6);
    return sprite;
}

WIP_LOCAL void *ov02_02248D58(void *arg0, void *arg1, void *arg2, void *arg3) {
    VecFx32 pos = { 0, 0, 0 };
    struct {
        void *unk0;
        void *unk4;
        void *unk8;
        void *unkC;
    } a4;
    a4.unk0 = arg1;
    a4.unk4 = arg0;
    a4.unkC = arg2;
    a4.unk8 = arg3;
    return sub_02068B0C(arg1, &ov02_02253454, &pos, 0, &a4, 0x82);
}

// --- cast-based getters/setters/deleters (struct names TBD) ---
WIP_LOCAL u8 ov02_02248D8C(void *work) {
    return ((u8 *)sub_02068D74(work))[2];
}

WIP_LOCAL BOOL ov02_02248D98(void *a0, void *obj) {
    *(UnkBlob16 *)((u8 *)obj + 0x58) = *(UnkBlob16 *)sub_02068D98(a0);
    *(Sprite **)((u8 *)obj + 0x68) = ov02_02248CAC(*(void **)((u8 *)obj + 0x64));
    return TRUE;
}

WIP_LOCAL void ov02_02248DBC(void *a0) {
    void *d = sub_02068D74(a0);
    int v6c = *(int *)((u8 *)d + 0x6c);
    if (v6c != 0) {
        sub_02068B48(v6c);
    }
    if (*(SysTask **)((u8 *)d + 0x70) != NULL) {
        ov01_021FCD78(*(SysTask **)((u8 *)d + 0x70));
    }
    sub_02068B48((int)a0);
}

WIP_LOCAL void ov02_02248DE4(void *a0, void *work) {
    Sprite_Delete(*(Sprite **)((u8 *)work + 0x68));
}

WIP_LOCAL void ov02_02248DF0(void *a0, u8 *sm) {
    ov02_StateMachineFunc *table = ov02_02253320[sm[0]];
    while (table[sm[1]](sm) == 1) {
    }
}

WIP_LOCAL int ov02_02248E10(void *work) {
    *(u8 *)((u8 *)work + 2) = 0;
    Sprite_SetDrawFlag(*(Sprite **)((u8 *)work + 0x68), FALSE);
    return 0;
}

WIP_LOCAL void ov02_02248E20(void *arg0) {
    VecFx32 v1;
    VecFx32 v2;
    VecFx32 affineMtx;
    VecFx32 affineScale;
    void *handle;
    Sprite *spriteB;
    v1 = ov02_0225339C;
    v2 = ov02_022533CC;
    handle = sub_02068D74(arg0);
    *(u8 *)handle = 1;
    *(u8 *)((u8 *)handle + 2) = 0;
    *(u8 *)((u8 *)handle + 1) = 0;
    *(int *)((u8 *)handle + 4) = 0;
    *(VecFx32 *)((u8 *)handle + 8) = v1;
    *(int *)((u8 *)handle + 0x14) = 0;
    *(int *)((u8 *)handle + 0x18) = 0;
    *(int *)((u8 *)handle + 0x1c) = 0;
    *(int *)((u8 *)handle + 0x38) = 0x15E000;
    *(VecFx32 *)((u8 *)handle + 0x2c) = v2;
    *(int *)((u8 *)handle + 0x50) = 0x400;
    *(int *)((u8 *)handle + 0x40) = 0x2d000;
    *(int *)((u8 *)handle + 0x48) = 0xc0000;
    *(int *)((u8 *)handle + 0x4c) = 0x20000;
    *(int *)((u8 *)handle + 0x14) = GF_CosDeg(0x2d) * (*(int *)((u8 *)handle + 0x48) / 0x1000);
    *(int *)((u8 *)handle + 0x18) = GF_SinDeg((u16)(*(int *)((u8 *)handle + 0x40) / 0x1000)) * (*(int *)((u8 *)handle + 0x48) / 0x1000);
    v1.x = *(int *)((u8 *)handle + 8) + *(int *)((u8 *)handle + 0x14);
    v1.y = *(int *)((u8 *)handle + 0xc) + *(int *)((u8 *)handle + 0x18);
    Sprite_SetMatrix(*(Sprite **)((u8 *)handle + 0x68), &v1);
    Sprite_SetAffineScale(*(Sprite **)((u8 *)handle + 0x68), &v2);
    Sprite_SetAffineZRotation(*(Sprite **)((u8 *)handle + 0x68), GF_DegreeToSinCosIdx((u16)(*(int *)((u8 *)handle + 0x38) / 0x1000)));
    Sprite_SetDrawPriority(*(Sprite **)((u8 *)handle + 0x68), 0x84);
    Sprite_SetDrawFlag(*(Sprite **)((u8 *)handle + 0x68), 1);
    *(void **)((u8 *)handle + 0x6c) = ov02_0224B298(*(void **)((u8 *)handle + 0x58), *(void **)((u8 *)handle + 0x60));
    *(void **)((u8 *)handle + 0x70) = ov01_021FCD2C(*(FieldSystem **)((u8 *)handle + 0x5c), 4);
    ov01_021FCD8C(*(void **)((u8 *)handle + 0x70), 1, (fx32)0xFFF88000, 0xc);
    {
        int *p = (int *)&affineMtx;
        p[0] = 0;
        p[1] = 0;
        p[2] = 0;
    }
    affineScale = ov02_022533A8;
    spriteB = *(Sprite **)((u8 *)handle + 0x60);
    Sprite_SetAffineOverwriteMode(spriteB, 2);
    Sprite_SetAffineMatrix(spriteB, &affineMtx);
    Sprite_SetAffineScale(spriteB, &affineScale);
    Sprite_SetAffineZRotation(spriteB, GF_DegreeToSinCosIdx(0));
    Sprite_SetAnimCtrlSeq(spriteB, 2);
    ov02_022493FC();
}

WIP_LOCAL int ov02_02248F88(void *work) {
    Sprite *spriteA = *(Sprite **)((u8 *)work + 0x68);
    Sprite *spriteB = *(Sprite **)((u8 *)work + 0x60);
    VecFx32 mtx;
    *(int *)((u8 *)work + 0x48) = *(int *)((u8 *)work + 0x48) - *(int *)((u8 *)work + 0x4c);
    if (*(int *)((u8 *)work + 0x48) < 0) {
        *(int *)((u8 *)work + 0x48) = 0;
    }
    if (*(int *)((u8 *)work + 0x4c) > 0x800) {
        *(int *)((u8 *)work + 0x4c) -= 0x1c00;
    }
    if (*(int *)((u8 *)work + 0x4c) < 0x1000) {
        *(int *)((u8 *)work + 0x4c) = 0x1000;
    }
    *(int *)((u8 *)work + 0x14) = GF_CosDeg(0x2d) * (*(int *)((u8 *)work + 0x48) / 0x1000);
    *(int *)((u8 *)work + 0x18) = GF_SinDeg((u16)(*(int *)((u8 *)work + 0x40) / 0x1000)) * (*(int *)((u8 *)work + 0x48) / 0x1000);
    if (*(int *)((u8 *)work + 0x40) / 0x1000 < 0x5a) {
        *(int *)((u8 *)work + 0x40) += 0x4000;
    }
    *(int *)((u8 *)work + 0x2c) -= *(int *)((u8 *)work + 0x50);
    if (*(int *)((u8 *)work + 0x2c) < 0x1000) {
        *(int *)((u8 *)work + 0x2c) = 0x1000;
    }
    *(int *)((u8 *)work + 0x30) -= *(int *)((u8 *)work + 0x50);
    if (*(int *)((u8 *)work + 0x30) < 0x1000) {
        *(int *)((u8 *)work + 0x30) = 0x1000;
    }
    Sprite_SetAffineScale(spriteA, (VecFx32 *)((u8 *)work + 0x2c));
    Sprite_SetAffineScale(spriteB, (VecFx32 *)((u8 *)work + 0x2c));
    mtx.x = *(int *)((u8 *)work + 8) + *(int *)((u8 *)work + 0x14);
    mtx.y = *(int *)((u8 *)work + 0xc) + *(int *)((u8 *)work + 0x18);
    Sprite_SetMatrix(spriteA, &mtx);
    mtx.y -= 0x12000;
    Sprite_SetMatrix(spriteB, &mtx);
    if (*(int *)((u8 *)work + 0x48) == 0) {
        *(int *)((u8 *)work + 4) = 0;
        *(u8 *)((u8 *)work + 1) += 1;
    } else {
        *(int *)((u8 *)work + 4) += 1;
    }
    return 0;
}

WIP_LOCAL BOOL ov02_02249088(void *mgr) {
    ov02_0224B314(*(void **)((u8 *)mgr + 0x6c));
    ov01_021FCD8C(*(void **)((u8 *)mgr + 0x70), 2, 0, 0xc);
    *(u32 *)((u8 *)mgr + 0x50) = 0x400;
    *(u32 *)((u8 *)mgr + 0x40) = 0x80000;
    *(u32 *)((u8 *)mgr + 0x48) = 0;
    *(u32 *)((u8 *)mgr + 0x4c) = 0x1800;
    ((u8 *)mgr)[1]++;
    return TRUE;
}

WIP_LOCAL int ov02_022490BC(void *work) {
    Sprite *sprite = *(Sprite **)((u8 *)work + 0x68);
    VecFx32 mtx;
    *(int *)((u8 *)work + 0x48) = *(int *)((u8 *)work + 0x48) + *(int *)((u8 *)work + 0x4c);
    *(int *)((u8 *)work + 0x4c) += 0x1000;
    if (*(int *)((u8 *)work + 0x4c) > 0x10000) {
        *(int *)((u8 *)work + 0x4c) = 0x10000;
    }
    *(int *)((u8 *)work + 0x14) = GF_CosDeg((u16)(*(int *)((u8 *)work + 0x40) / 0x1000)) * (*(int *)((u8 *)work + 0x48) / 0x1000);
    *(int *)((u8 *)work + 0x18) = GF_SinDeg(0x80) * (*(int *)((u8 *)work + 0x48) / 0x1000);
    if (*(int *)((u8 *)work + 0x40) < 0xa0000) {
        *(int *)((u8 *)work + 0x40) += 0x1000;
    }
    *(int *)((u8 *)work + 0x38) += 0x2000;
    Sprite_SetAffineZRotation(sprite, GF_DegreeToSinCosIdx((u16)(*(int *)((u8 *)work + 0x38) / 0x1000)));
    *(int *)((u8 *)work + 0x2c) = *(int *)((u8 *)work + 0x2c) + *(int *)((u8 *)work + 0x50);
    if (*(int *)((u8 *)work + 0x2c) > 0x1000) {
        *(int *)((u8 *)work + 0x2c) = 0x1000;
    }
    *(int *)((u8 *)work + 0x30) = *(int *)((u8 *)work + 0x30) + *(int *)((u8 *)work + 0x50);
    if (*(int *)((u8 *)work + 0x30) > 0x1000) {
        *(int *)((u8 *)work + 0x30) = 0x1000;
    }
    Sprite_SetAffineScale(sprite, (VecFx32 *)((u8 *)work + 0x2c));
    mtx.x = *(int *)((u8 *)work + 8) + *(int *)((u8 *)work + 0x14);
    mtx.y = *(int *)((u8 *)work + 0xc) - *(int *)((u8 *)work + 0x18);
    Sprite_SetMatrix(sprite, &mtx);
    if (mtx.y / 0x1000 <= -0x10) {
        (*(u8 *)((u8 *)work + 1))++;
    }
    return 0;
}

WIP_LOCAL int ov02_022491A8(void *work) {
    Sprite_SetDrawFlag(*(Sprite **)((u8 *)work + 0x68), FALSE);
    Sprite_SetAnimCtrlSeq(*(Sprite **)((u8 *)work + 0x60), 1);
    *(int *)((u8 *)work + 4) = 0;
    *(u8 *)((u8 *)work + 1) = *(u8 *)((u8 *)work + 1) + 1;
    return 1;
}

WIP_LOCAL int ov02_022491CC(void *work) {
    VecFx32 local1;
    VecFx32 local2;
    if (++*(int *)((u8 *)work + 4) < 0x14) {
        return 0;
    }
    local1 = ov02_022533D8;
    local2 = ov02_022533B4;
    *(int *)((u8 *)work + 4) = 0;
    *(VecFx32 *)((u8 *)work + 8) = local1;
    *(int *)((u8 *)work + 0x14) = 0;
    *(int *)((u8 *)work + 0x18) = 0;
    *(int *)((u8 *)work + 0x1c) = 0;
    *(int *)((u8 *)work + 0x38) = 0;
    *(VecFx32 *)((u8 *)work + 0x2c) = local2;
    *(int *)((u8 *)work + 0x50) = 0x200;
    *(int *)((u8 *)work + 0x40) = 0x13B000;
    *(int *)((u8 *)work + 0x48) = 0x80000;
    *(int *)((u8 *)work + 0x4c) = 0x2000;
    Sprite_SetMatrix(*(Sprite **)((u8 *)work + 0x68), &local1);
    Sprite_SetAffineScale(*(Sprite **)((u8 *)work + 0x68), &local2);
    Sprite_SetAffineZRotation(*(Sprite **)((u8 *)work + 0x68), GF_DegreeToSinCosIdx((u16)(*(int *)((u8 *)work + 0x38) / 0x1000)));
    Sprite_SetDrawFlag(*(Sprite **)((u8 *)work + 0x68), 1);
    Sprite_SetAnimCtrlSeq(*(Sprite **)((u8 *)work + 0x60), 6);
    Sprite_SetAnimActiveFlag(*(Sprite **)((u8 *)work + 0x60), 1);
    (*(u8 *)((u8 *)work + 1))++;
    return 1;
}

WIP_LOCAL int ov02_02249290(void *work) {
    Sprite *sprite = *(Sprite **)((u8 *)work + 0x68);
    VecFx32 mtx;
    *(int *)((u8 *)work + 0x48) = *(int *)((u8 *)work + 0x48) - *(int *)((u8 *)work + 0x4c);
    if (*(int *)((u8 *)work + 0x4c) < 0x10000) {
        *(int *)((u8 *)work + 0x4c) += 0x2000;
    }
    if (*(int *)((u8 *)work + 0x48) < 0) {
        *(int *)((u8 *)work + 0x48) = 0;
    }
    *(int *)((u8 *)work + 0x14) = GF_CosDeg(0x13B) * (*(int *)((u8 *)work + 0x48) / 0x1000);
    *(int *)((u8 *)work + 0x18) = GF_SinDeg((u16)(*(int *)((u8 *)work + 0x40) / 0x1000)) * (*(int *)((u8 *)work + 0x48) / 0x1000);
    if (*(int *)((u8 *)work + 0x40) / 0x1000 < 0xb4) {
        *(int *)((u8 *)work + 0x40) -= 0x4000;
    }
    *(int *)((u8 *)work + 0x2c) = *(int *)((u8 *)work + 0x2c) - *(int *)((u8 *)work + 0x50);
    if (*(int *)((u8 *)work + 0x2c) < 0x400) {
        *(int *)((u8 *)work + 0x2c) = 0x400;
    }
    *(int *)((u8 *)work + 0x30) = *(int *)((u8 *)work + 0x30) - *(int *)((u8 *)work + 0x50);
    if (*(int *)((u8 *)work + 0x30) < 0x400) {
        *(int *)((u8 *)work + 0x30) = 0x400;
    }
    Sprite_SetAffineScale(sprite, (VecFx32 *)((u8 *)work + 0x2c));
    *(int *)((u8 *)work + 0x38) += 0x6000;
    if (*(int *)((u8 *)work + 0x38) / 0x1000 > 0x3c) {
        *(int *)((u8 *)work + 0x38) = 0x3c000;
    }
    Sprite_SetAffineZRotation(sprite, GF_DegreeToSinCosIdx((u16)(*(int *)((u8 *)work + 0x38) / 0x1000)));
    mtx.x = *(int *)((u8 *)work + 8) + *(int *)((u8 *)work + 0x14);
    mtx.y = *(int *)((u8 *)work + 0xc) + *(int *)((u8 *)work + 0x18);
    Sprite_SetMatrix(sprite, &mtx);
    if (*(int *)((u8 *)work + 0x48) <= 0) {
        Sprite_SetDrawFlag(sprite, FALSE);
        (*(u8 *)((u8 *)work + 1))++;
    }
    return 0;
}

WIP_LOCAL int ov02_0224939C(void *work) {
    if (++*(int *)((u8 *)work + 4) == 8) {
        Sprite_SetAnimCtrlSeq(*(Sprite **)((u8 *)work + 0x60), 1);
        ov02_02249444(*(FieldSystem **)((u8 *)work + 0x5c), FALSE);
    }
    if (*(int *)((u8 *)work + 4) == 0xa) {
        Sprite_SetDrawFlag(*(Sprite **)((u8 *)work + 0x60), FALSE);
    }
    if (*(int *)((u8 *)work + 4) > 0xf && ov01_021FCD6C(*(SysTask **)((u8 *)work + 0x70)) == 1) {
        *(int *)((u8 *)work + 4) = 0;
        *(u8 *)((u8 *)work + 1) = *(u8 *)((u8 *)work + 1) + 1;
        *(u8 *)((u8 *)work + 2) = 2;
    }
    return 0;
}
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

WIP_LOCAL void *ov02_02249458(FieldSystem *fieldSystem, int a1, Pokemon *a2, int a3) {
    void *work = ov02_0224955C(fieldSystem);
    *(void **)((u8 *)work + 0x5c) = a2;
    *(u16 *)((u8 *)work + 0xc) = a3;
    *(u16 *)((u8 *)work + 0xe) = *(u16 *)((u8 *)work + 0xc);
    *(int *)((u8 *)work + 0x20) = a1;
    *(LocalMapObject **)((u8 *)work + 0x208) = PlayerAvatar_GetMapObject((*(FieldSystem **)((u8 *)work + 0x60))->playerAvatar);
    if (a1 == 0) {
        return SysTask_CreateOnMainQueue(ov02_02249584, work, 0x86);
    } else if (a1 == 2) {
        *(LocalMapObject **)((u8 *)work + 0x20c) = FollowMon_GetMapObject(fieldSystem);
        return SysTask_CreateOnMainQueue(ov02_022499B8, work, 0x86);
    } else {
        return SysTask_CreateOnMainQueue(ov02_02249984, work, 0x86);
    }
}

WIP_LOCAL void ov02_022494C4(FieldSystem *fieldSystem, void *a1, void *a2, void *a3) {
    VecFx32 vec1;
    VecFx32 vec2;
    void *work = ov02_0224955C(fieldSystem);
    *(void **)((u8 *)work + 0x5c) = a1;
    *(u16 *)((u8 *)work + 0xc) = 0;
    *(u16 *)((u8 *)work + 0xe) = 2;
    *(int *)((u8 *)work + 0x20) = 3;
    *(void **)((u8 *)work + 0x208) = a2;
    *(void **)((u8 *)work + 0x20c) = a3;
    MapObject_CopyPositionVector(PlayerAvatar_GetMapObject((*(FieldSystem **)((u8 *)work + 0x60))->playerAvatar), &vec1);
    MapObject_CopyPositionVector(*(LocalMapObject **)((u8 *)work + 0x208), &vec2);
    *(fx32 *)((u8 *)work + 0x2ec) = *(fx32 *)((u8 *)work + 0x2ec) + FX_Div(vec2.x - vec1.x, 0x2000);
    *(fx32 *)((u8 *)work + 0x2f4) = vec2.z - vec1.z;
    SysTask_CreateOnMainQueue(ov02_022499B8, work, 0x86);
}

WIP_LOCAL BOOL ov02_0224953C(void *work) {
    return ((int *)SysTask_GetData(work))[1];
}

WIP_LOCAL void ov02_02249548(void *work) {
    ov02_0224957C(SysTask_GetData(work));
    SysTask_Destroy(work);
}

WIP_LOCAL void *ov02_0224955C(void *a0) {
    void *ptr = Heap_AllocAtEnd(HEAP_ID_FIELD1, 0x2f8);
    memset(ptr, 0, 0x2f8);
    *(void **)((u8 *)ptr + 0x60) = a0;
    return ptr;
}

WIP_LOCAL void ov02_0224957C(void *ptr) {
    Heap_Free(ptr);
}

WIP_LOCAL void ov02_02249584(SysTask *task, void *sm) {
    ov02_StateMachineFunc const *table = ov02_02253550;
    while (table[*(int *)sm](sm) == 1) {
    }
    if (*(int *)((u8 *)sm + 0x10) == 1) {
        if (*(void **)((u8 *)sm + 0x1e0) != NULL) {
            sub_02068BAC(*(void **)((u8 *)sm + 0x1e0));
        }
        ov02_0224A32C(sm);
    }
}

WIP_LOCAL int ov02_022495B8(void *work) {
    ov02_02249EC0(work);
    ov02_02249CF0(work);
    *(int *)work = *(int *)work + 1;
    return 0;
}

WIP_LOCAL int ov02_022495D0(void *work) {
    ov02_02249F6C(work);
    ov02_02249CF0(work);
    *(int *)work = *(int *)work + 1;
    return 0;
}

WIP_LOCAL int ov02_022495E8(void *work) {
    VecFx32 vec1;
    VecFx32 vec2;
    if (*(int *)((u8 *)work + 0x214) == 0) {
        return 0;
    }
    vec1 = ov02_02253408;
    vec2 = ov02_02253384;
    *(Sprite **)((u8 *)work + 0x1e4) = ov02_0224A418(work, &vec1);
    *(Sprite **)((u8 *)work + 0x1e8) = ov02_0224A9B8(work, &vec2);
    ov02_0224A9D8(work, 1);
    ov02_02249D40(work);
    *(int *)((u8 *)work + 0x10) = 1;
    (*(int *)work)++;
    return 1;
}

WIP_LOCAL int ov02_02249658(void *work) {
    ov02_0224B72C(work);
    *(int *)((u8 *)work + 0x2c) = 0;
    *(fx32 *)((u8 *)work + 0x54) = (fx32)0xFFFC0000;
    *(fx32 *)((u8 *)work + 0x44) = 0xfe000;
    *(fx32 *)((u8 *)work + 0x48) = 0xff000;
    *(fx32 *)((u8 *)work + 0x4c) = 0x5f000;
    *(fx32 *)((u8 *)work + 0x50) = 0x61000;
    *(int *)((u8 *)work + 0x2c) = 1;
    (*(int *)work)++;
    return 0;
}

WIP_LOCAL int ov02_02249690(void *work) {
    int v;
    *(int *)((u8 *)work + 0x2c) = 0;
    v = *(int *)((u8 *)work + 0x44) + *(int *)((u8 *)work + 0x54);
    *(int *)((u8 *)work + 0x44) = v;
    if (v <= 0) {
        *(int *)((u8 *)work + 0x44) = 0;
        *(int *)((u8 *)work + 0x54) = 0x2000;
        (*(int *)((u8 *)work))++;
    }
    ov02_0224A69C(work, *(int *)((u8 *)work + 0x44), *(int *)((u8 *)work + 0x4c), *(int *)((u8 *)work + 0x48), *(int *)((u8 *)work + 0x50));
    *(int *)((u8 *)work + 0x2c) = 1;
    return 0;
}

WIP_LOCAL int ov02_022496D0(void *work) {
    *(int *)((u8 *)work + 0x2c) = 0;
    *(int *)((u8 *)work + 0x4c) = *(int *)((u8 *)work + 0x4c) - *(int *)((u8 *)work + 0x54);
    *(int *)((u8 *)work + 0x50) = *(int *)((u8 *)work + 0x50) + *(int *)((u8 *)work + 0x54);
    *(int *)((u8 *)work + 0x54) += 0x2000;
    if (*(int *)((u8 *)work + 0x54) > 0x20000) {
        *(int *)((u8 *)work + 0x54) = 0x20000;
    }
    if (*(int *)((u8 *)work + 0x4c) < 0x38000) {
        *(int *)((u8 *)work + 0x4c) = 0x38000;
    }
    if (*(int *)((u8 *)work + 0x50) > 0x88000) {
        *(int *)((u8 *)work + 0x50) = 0x88000;
    }
    ov02_0224A69C(work, *(int *)((u8 *)work + 0x44), *(int *)((u8 *)work + 0x4c), *(int *)((u8 *)work + 0x48), *(int *)((u8 *)work + 0x50));
    *(int *)((u8 *)work + 0x2c) = 1;
    if (*(int *)((u8 *)work + 0x4c) == 0x38000 && *(int *)((u8 *)work + 0x50) == 0x88000) {
        ov02_0224A450(*(Sprite **)((u8 *)work + 0x1e4));
        (*(int *)((u8 *)work))++;
    }
    return 0;
}

WIP_LOCAL int ov02_02249754(void *work) {
    int c = *(int *)((u8 *)work + 8) + 1;
    *(int *)((u8 *)work + 8) = c;
    if (c >= 0xf) {
        *(int *)((u8 *)work + 8) = 0;
        *(s32 *)((u8 *)work + 0x58) = 0xFFFC0000;
        *(int *)work = *(int *)work + 1;
    }
    return 0;
}

WIP_LOCAL int ov02_02249774(void *work) {
    VecFx32 vec;
    vec = *Sprite_GetMatrixPtr(*(Sprite **)((u8 *)work + 0x1e8));
    vec.x = vec.x + *(fx32 *)((u8 *)work + 0x58);
    if (vec.x <= 0xa0000) {
        vec.x = 0xc0000;
        *(int *)work = *(int *)work + 1;
    }
    Sprite_SetMatrix(*(Sprite **)((u8 *)work + 0x1e8), &vec);
    return 0;
}

WIP_LOCAL int ov02_022497C0(void *work) {
    VecFx32 vec;
    fx32 v = *(fx32 *)((u8 *)work + 0x58) / 2;
    *(fx32 *)((u8 *)work + 0x58) = v;
    if (v > (fx32)0xFFFFE000) {
        *(fx32 *)((u8 *)work + 0x58) = (fx32)0xFFFFE000;
        (*(int *)work)++;
        {
            int species = GetMonData(*(Pokemon **)((u8 *)work + 0x5c), MON_DATA_SPECIES, NULL);
            int form = GetMonData(*(Pokemon **)((u8 *)work + 0x5c), MON_DATA_FORM, NULL);
            PlayCry((u16)species, (u8)form);
        }
    }
    vec = *Sprite_GetMatrixPtr(*(Sprite **)((u8 *)work + 0x1e8));
    vec.x = vec.x + *(fx32 *)((u8 *)work + 0x58);
    Sprite_SetMatrix(*(Sprite **)((u8 *)work + 0x1e8), &vec);
    return 0;
}

WIP_LOCAL int ov02_02249838(void *work) {
    int c = *(int *)((u8 *)work + 8) + 1;
    *(int *)((u8 *)work + 8) = c;
    if (c >= 8) {
        *(int *)((u8 *)work + 8) = 0;
        *(s32 *)((u8 *)work + 0x58) = 0xFFFFF000;
        *(int *)work = *(int *)work + 1;
    }
    return 0;
}

WIP_LOCAL int ov02_02249858(void *work) {
    VecFx32 vec;
    fx32 v = *(fx32 *)((u8 *)work + 0x58) << 1;
    *(fx32 *)((u8 *)work + 0x58) = v;
    if (v < (fx32)0xFFFC0000) {
        *(fx32 *)((u8 *)work + 0x58) = (fx32)0xFFFC0000;
    }
    vec = *Sprite_GetMatrixPtr(*(Sprite **)((u8 *)work + 0x1e8));
    vec.x = vec.x + *(fx32 *)((u8 *)work + 0x58);
    Sprite_SetMatrix(*(Sprite **)((u8 *)work + 0x1e8), &vec);
    if (vec.x <= (fx32)0xFFFD8000) {
        *(fx32 *)((u8 *)work + 0x54) = 0x1000;
        (*(int *)work)++;
    }
    return 0;
}

WIP_LOCAL int ov02_022498BC(void *work) {
    *(int *)((u8 *)work + 0x2c) = 0;
    *(fx32 *)((u8 *)work + 0x4c) = *(fx32 *)((u8 *)work + 0x4c) + *(fx32 *)((u8 *)work + 0x54);
    *(fx32 *)((u8 *)work + 0x50) = *(fx32 *)((u8 *)work + 0x50) - *(fx32 *)((u8 *)work + 0x54);
    *(fx32 *)((u8 *)work + 0x54) = *(fx32 *)((u8 *)work + 0x54) + 0x4000;
    if (*(fx32 *)((u8 *)work + 0x54) > 0x10000) {
        *(fx32 *)((u8 *)work + 0x54) = 0x10000;
    }
    if (*(fx32 *)((u8 *)work + 0x4c) >= 0x5f000) {
        *(fx32 *)((u8 *)work + 0x4c) = 0x5f000;
    }
    if (*(fx32 *)((u8 *)work + 0x50) <= 0x61000) {
        *(fx32 *)((u8 *)work + 0x50) = 0x61000;
    }
    ov02_0224A69C(work, *(int *)((u8 *)work + 0x44), *(int *)((u8 *)work + 0x4c), *(int *)((u8 *)work + 0x48), *(int *)((u8 *)work + 0x50));
    *(int *)((u8 *)work + 0x2c) = 1;
    if (*(fx32 *)((u8 *)work + 0x4c) == 0x5f000 && *(fx32 *)((u8 *)work + 0x50) == 0x61000) {
        ov02_0224B768(work);
        *(int *)((u8 *)work + 0x34) = 0x11;
        (*(int *)work)++;
    }
    return 0;
}

WIP_LOCAL int ov02_02249940(void *work) {
    ov02_02249FD4(work);
    *(int *)((u8 *)work + 0x10) = 0;
    *(int *)work = *(int *)work + 1;
    return 0;
}

WIP_LOCAL int ov02_02249954(void *work) {
    ov02_0224A028(work);
    *(int *)((u8 *)work + 0x10) = 0;
    *(int *)work = *(int *)work + 1;
    return 0;
}

WIP_LOCAL int ov02_02249968(void *work) {
    ov02_0224A6D0(work);
    *(int *)work = *(int *)work + 1;
    return 0;
}

WIP_LOCAL int ov02_0224997C(void *work) {
    *(int *)((u8 *)work + 4) = 1;
    return 0;
}

WIP_LOCAL void ov02_02249984(SysTask *task, void *sm) {
    ov02_StateMachineFunc const *table = ov02_02253588;
    while (table[*(int *)sm](sm) == 1) {
    }
    if (*(int *)((u8 *)sm + 0x10) == 1) {
        if (*(void **)((u8 *)sm + 0x1e0) != NULL) {
            sub_02068BAC(*(void **)((u8 *)sm + 0x1e0));
        }
        ov02_0224A32C(sm);
    }
}

WIP_LOCAL void ov02_022499B8(SysTask *task, void *sm) {
    ov02_StateMachineFunc const *table = ov02_022534F0;
    while (table[*(int *)sm](sm) == 1) {
    }
    if (*(int *)((u8 *)sm + 0x10) == 1) {
        if (*(void **)((u8 *)sm + 0x1e0) != NULL) {
            sub_02068BAC(*(void **)((u8 *)sm + 0x1e0));
        }
        ov02_0224A32C(sm);
    }
}

WIP_LOCAL int ov02_022499EC(void *work) {
    VecFx32 vec1;
    VecFx32 vec2;
    if (*(int *)((u8 *)work + 0x214) == 0) {
        return 0;
    }
    vec1 = ov02_022533FC;
    vec2 = ov02_02253414;
    *(Sprite **)((u8 *)work + 0x1e4) = ov02_0224A418(work, &vec1);
    *(Sprite **)((u8 *)work + 0x1e8) = ov02_0224A9B8(work, &vec2);
    ov02_0224A9D8(work, 1);
    ov02_02249D40(work);
    *(int *)((u8 *)work + 0x10) = 1;
    (*(int *)work)++;
    return 1;
}

WIP_LOCAL int ov02_02249A5C(void *work) {
    VecFx32 vec;
    if (*(int *)((u8 *)work + 0x214) == 0) {
        return 0;
    }
    vec = ov02_02253348;
    vec.x = vec.x + *(fx32 *)((u8 *)work + 0x2ec);
    vec.y = vec.y + *(fx32 *)((u8 *)work + 0x2f4);
    *(Sprite **)((u8 *)work + 0x1e4) = ov02_0224A418(work, &vec);
    Sprite_SetAnimCtrlSeq(*(Sprite **)((u8 *)work + 0x1e4), 1);
    ov02_02249D40(work);
    *(int *)((u8 *)work + 0x10) = 1;
    (*(int *)work)++;
    return 1;
}

WIP_LOCAL int ov02_02249AC4(void *work) {
    ov02_0224A8D4(work);
    *(int *)work = *(int *)work + 1;
    return 0;
}

WIP_LOCAL int ov02_02249AD8(void *work) {
    ov02_0224A4D0(work);
    ov02_02249D18(work);
    *(int *)work = *(int *)work + 1;
    return 0;
}

WIP_LOCAL BOOL ov02_02249AF0(void *work) {
    if (*(int *)((u8 *)work + 0x214) == 0) {
        return FALSE;
    }
    ov02_02249D40(work);
    *(int *)work = *(int *)work + 1;
    return TRUE;
}

WIP_LOCAL int ov02_02249B10(void *work) {
    ov02_0224AB58(work);
    ov02_0224AC38(work);
    ov02_0224A690(work);
    ov02_0224B6B0(work, TRUE);
    *(int *)work = *(int *)work + 1;
    return 0;
}

WIP_LOCAL int ov02_02249B38(void *work) {
    if (ov02_0224AB8C(work) != 2) {
        return 0;
    }
    Sprite_SetAnimCtrlSeq(*(Sprite **)((u8 *)work + 0x1e4), 1);
    *(int *)work = *(int *)work + 1;
    return 0;
}

WIP_LOCAL BOOL ov02_02249B60(void *work) {
    int c = *(int *)((u8 *)work + 8) + 1;
    *(int *)((u8 *)work + 8) = c;
    if (c >= 0x14) {
        *(int *)((u8 *)work + 8) = 0;
        *(int *)work = *(int *)work + 1;
        ov02_0224ADF0(work);
    }
    return TRUE;
}

WIP_LOCAL BOOL ov02_02249B80(void *work) {
    int c = *(int *)((u8 *)work + 8) + 1;
    *(int *)((u8 *)work + 8) = c;
    if (c >= 0x14) {
        *(int *)((u8 *)work + 8) = 0;
        *(int *)work = *(int *)work + 1;
        ov02_0224AB58(work);
        ov02_0224ADF0(work);
    }
    return TRUE;
}

WIP_LOCAL BOOL ov02_02249BA8(void *work) {
    if (ov02_0224AB8C(work) != 3) {
        return FALSE;
    }
    PlaySE(SEQ_SE_DP_FW019);
    *(int *)((u8 *)work + 0x54) = 0x800;
    *(int *)((u8 *)work + 0x14) = 2;
    *(int *)work = *(int *)work + 1;
    return TRUE;
}

WIP_LOCAL int ov02_02249BD8(void *work) {
    *(int *)((u8 *)work + 0x2c) = 0;
    *(int *)((u8 *)work + 0x4c) = *(int *)((u8 *)work + 0x4c) + *(int *)((u8 *)work + 0x54);
    *(int *)((u8 *)work + 0x50) = *(int *)((u8 *)work + 0x50) - *(int *)((u8 *)work + 0x54);
    *(int *)((u8 *)work + 0x54) += 0x800;
    if (*(int *)((u8 *)work + 0x54) > 0x10000) {
        *(int *)((u8 *)work + 0x54) = 0x10000;
    }
    if (*(int *)((u8 *)work + 0x4c) >= 0x5f000) {
        *(int *)((u8 *)work + 0x4c) = 0x5f000;
    }
    if (*(int *)((u8 *)work + 0x50) <= 0x61000) {
        *(int *)((u8 *)work + 0x50) = 0x61000;
    }
    ov02_0224A69C(work, *(int *)((u8 *)work + 0x44), *(int *)((u8 *)work + 0x4c), *(int *)((u8 *)work + 0x48), *(int *)((u8 *)work + 0x50));
    *(int *)((u8 *)work + 0x2c) = 1;
    if (*(int *)((u8 *)work + 0x18) == 0 && ov02_0224AB8C(work) == 4) {
        *(int *)((u8 *)work + 0x18) = 1;
        ov02_02249420();
    }
    if (*(int *)((u8 *)work + 0x4c) == 0x5f000 && *(int *)((u8 *)work + 0x50) == 0x61000) {
        *(int *)((u8 *)work + 0x34) = 0x11;
        *(int *)((u8 *)work + 0x14) = 1;
        (*(int *)((u8 *)work))++;
    }
    return 0;
}

WIP_LOCAL int ov02_02249C74(void *work) {
    if (*(int *)((u8 *)work + 0x20) == 3) {
        if (ov02_0224AB8C(work) == 2) {
            ov02_0224AB9C(work);
            *(int *)work += 2;
        }
        return 0;
    }
    if (*(int *)((u8 *)work + 0x18) == 0 && ov02_0224AB8C(work) == 4) {
        *(int *)((u8 *)work + 0x18) = 1;
        ov02_02249420();
    }
    if (ov02_0224AB8C(work) != 2) {
        return 0;
    }
    if (*(int *)((u8 *)work + 0x18) == 0) {
        *(int *)((u8 *)work + 0x18) = 1;
        ov02_02249420();
    }
    ov02_0224AB9C(work);
    (*(int *)work)++;
    return 0;
}

WIP_LOCAL int ov02_02249CD8(int *work) {
    if (IsPaletteFadeFinished()) {
        *work = *work + 1;
    }
    return 0;
}

WIP_LOCAL void ov02_02249CF0(void *work) {
    *(int *)((u8 *)work + 0x210) = 0;
    *(int *)((u8 *)work + 0x214) = 0;
    *(SysTask **)((u8 *)work + 0x220) = SysTask_CreateOnVBlankQueue(ov02_02249D5C, work, 0x80);
}

WIP_LOCAL void ov02_02249D18(void *work) {
    *(int *)((u8 *)work + 0x210) = 0;
    *(int *)((u8 *)work + 0x214) = 0;
    *(SysTask **)((u8 *)work + 0x220) = SysTask_CreateOnVBlankQueue(ov02_02249E58, work, 0x80);
}

WIP_LOCAL void ov02_02249D40(void *work) {
    SysTask *task = *(SysTask **)((u8 *)work + 0x220);
    if (task != NULL) {
        SysTask_Destroy(task);
        *(SysTask **)((u8 *)work + 0x220) = NULL;
    }
}

WIP_LOCAL void ov02_02249D5C(SysTask *task, void *work) {
    int i;
    if (*(int *)((u8 *)work + 0x210) == 0) {
        for (i = 0; i < 4; i++) {
            if (((SpriteResource **)work)[0x6b + i] != NULL) {
                SpriteTransfer_CreateCharTransferTask_AllocAtEnd(((SpriteResource **)work)[0x6b + i]);
            }
        }
        for (i = 0; i < 3; i++) {
            if (((SpriteResource **)work)[0x6f + i] != NULL) {
                SpriteTransfer_CreatePlttTransferTask(((SpriteResource **)work)[0x6f + i]);
            }
        }
        if (*(void **)((u8 *)work + 0x218) != NULL) {
            ov02_0224A834(work, *(void **)((u8 *)work + 0x218));
        }
        if (*(void **)((u8 *)work + 0x21c) != NULL) {
            ov02_0224A88C(work, *(void **)((u8 *)work + 0x21c));
        }
        (*(int *)((u8 *)work + 0x210))++;
        SysTask_CreateOnVWaitQueue(ov02_02249DD8, work, 0x80);
    }
}

WIP_LOCAL void ov02_02249DD8(SysTask *task, void *work) {
    int i;
    if (*(int *)((u8 *)work + 0x210) == 1) {
        for (i = 0; i < 4; i++) {
            if (((SpriteResource **)work)[0x6b + i] != NULL) {
                sub_0200A740(((SpriteResource **)work)[0x6b + i]);
            }
        }
        for (i = 0; i < 3; i++) {
            if (((SpriteResource **)work)[0x6f + i] != NULL) {
                sub_0200A740(((SpriteResource **)work)[0x6f + i]);
            }
        }
        if (*(void **)((u8 *)work + 0x218) != NULL) {
            Heap_Free(*(void **)((u8 *)work + 0x218));
            *(void **)((u8 *)work + 0x218) = NULL;
        }
        if (*(void **)((u8 *)work + 0x21c) != NULL) {
            Heap_Free(*(void **)((u8 *)work + 0x21c));
            *(void **)((u8 *)work + 0x21c) = NULL;
        }
        *(int *)((u8 *)work + 0x214) = 1;
        SysTask_Destroy(task);
    }
}

WIP_LOCAL void ov02_02249E58(SysTask *task, void *work) {
    SpriteResource *res = SpriteResourceCollection_Find(*(GF_2DGfxResMan **)((u8 *)work + 0x19c), 0);
    if (*(int *)((u8 *)work + 0x210) == 0) {
        SpriteTransfer_CreateCharTransferTask_AllocAtEnd(res);
        SysTask_CreateOnVWaitQueue(ov02_02249E90, work, 0x80);
        *(int *)((u8 *)work + 0x210) = *(int *)((u8 *)work + 0x210) + 1;
    }
}

WIP_LOCAL void ov02_02249E90(SysTask *task, void *work) {
    SpriteResource *res = SpriteResourceCollection_Find(*(GF_2DGfxResMan **)((u8 *)work + 0x19c), 0);
    if (*(int *)((u8 *)work + 0x210) == 1) {
        sub_0200A740(res);
        *(int *)((u8 *)work + 0x214) = 1;
        SysTask_Destroy(task);
    }
}

WIP_LOCAL void ov02_02249EC0(void *work) {
    NARC *narc = ov02_0224A074();
    ov02_0224A69C(work, 0, 0xC0000, 0x1000, 0xC0000);
    ov02_0224A648(work);
    *(u16 *)((u8 *)work + 0x24) = GetBgPriority(*(BgConfig **)((u8 *)*(void **)((u8 *)work + 0x60) + 8), 0);
    *(u16 *)((u8 *)work + 0x26) = GetBgPriority(*(BgConfig **)((u8 *)*(void **)((u8 *)work + 0x60) + 8), 3);
    reg_G2_BG1CNT = (reg_G2_BG1CNT & ~3) | 1;
    reg_G2_BG3CNT = reg_G2_BG3CNT & ~3;
    GfGfx_EngineATogglePlanes(8, 0);
#ifdef HEARTGOLD
    ov02_0224A570(narc, 2, (NNSG2dPaletteData **)((u8 *)work + 0x6c));
    ov02_0224A598(*(BgConfig **)((u8 *)*(void **)((u8 *)work + 0x60) + 8), narc, 0, (NNSG2dCharacterData **)((u8 *)work + 0x68));
    ov02_0224A5D0(*(BgConfig **)((u8 *)*(void **)((u8 *)work + 0x60) + 8), narc, 1, (NNSG2dScreenData **)((u8 *)work + 0x64));
#else
    ov02_0224A570(narc, 5, (NNSG2dPaletteData **)((u8 *)work + 0x6c));
    ov02_0224A598(*(BgConfig **)((u8 *)*(void **)((u8 *)work + 0x60) + 8), narc, 3, (NNSG2dCharacterData **)((u8 *)work + 0x68));
    ov02_0224A5D0(*(BgConfig **)((u8 *)*(void **)((u8 *)work + 0x60) + 8), narc, 4, (NNSG2dScreenData **)((u8 *)work + 0x64));
#endif
    ov02_0224A080(work, narc);
    NARC_Delete(narc);
    *(void **)((u8 *)work + 0x1e0) = sub_020689C8(HEAP_ID_FIELD1, 0x20);
    GfGfx_EngineATogglePlanes(8, 1);
}

WIP_LOCAL void ov02_02249F6C(void *work) {
    NARC *narc = ov02_0224A074();
    *(u16 *)((u8 *)work + 0x24) = GetBgPriority(*(BgConfig **)((u8 *)*(void **)((u8 *)work + 0x60) + 8), 0);
    *(u16 *)((u8 *)work + 0x26) = GetBgPriority(*(BgConfig **)((u8 *)*(void **)((u8 *)work + 0x60) + 8), 3);
    reg_G2_BG1CNT = (reg_G2_BG1CNT & ~3) | 1;
    reg_G2_BG3CNT = reg_G2_BG3CNT & ~3;
    GfGfx_EngineATogglePlanes(8, 0);
    ov02_0224A080(work, narc);
    NARC_Delete(narc);
    *(void **)((u8 *)work + 0x1e0) = sub_020689C8(HEAP_ID_FIELD1, 0x20);
    GfGfx_EngineATogglePlanes(8, 1);
}

WIP_LOCAL void ov02_02249FD4(void *work) {
    GfGfx_EngineATogglePlanes(8, 0);
    sub_020689F8(*(void **)((u8 *)work + 0x1e0));
    ov02_0224A63C(*(BgConfig **)((u8 *)*(void **)((u8 *)work + 0x60) + 8));
    ov02_0224A288(work);
    reg_G2_BG0CNT = (reg_G2_BG0CNT & ~3) | *(u16 *)((u8 *)work + 0x24);
    reg_G2_BG3CNT = (reg_G2_BG3CNT & ~3) | *(u16 *)((u8 *)work + 0x26);
    sub_0205B4EC(0, 1);
    GfGfx_EngineATogglePlanes(8, 1);
}

WIP_LOCAL void ov02_0224A028(void *work) {
    GfGfx_EngineATogglePlanes(8, 0);
    sub_020689F8(*(void **)((u8 *)work + 0x1e0));
    ov02_0224A288(work);
    reg_G2_BG0CNT = (reg_G2_BG0CNT & ~3) | *(u16 *)((u8 *)work + 0x24);
    reg_G2_BG3CNT = (reg_G2_BG3CNT & ~3) | *(u16 *)((u8 *)work + 0x26);
    sub_0205B4EC(0, 1);
    GfGfx_EngineATogglePlanes(8, 1);
}

WIP_LOCAL NARC *ov02_0224A074(void) {
    return NARC_New(NARC_application_choose_starter_choose_starter_sub_res, HEAP_ID_FIELD1);
}

WIP_LOCAL void ov02_0224A080(void *work, NARC *narc) {
    int i;

    ov02_0224A7A8(work, (PokepicTemplate *)((u8 *)work + 0x1f8));
    *(SpriteList **)((u8 *)work + 0x70) = G2dRenderer_Init(0x20, (G2dRenderer *)((u8 *)work + 0x74), HEAP_ID_FIELD1);
    G2dRenderer_SetSubSurfaceCoords((G2dRenderer *)((u8 *)work + 0x74), 0, 0x200000);

    *(GF_2DGfxResMan **)((u8 *)work + 0x19c) = Create2DGfxResObjMan(4, GF_GFX_RES_TYPE_CHAR, HEAP_ID_FIELD1);
    *(GF_2DGfxResMan **)((u8 *)work + 0x1a0) = Create2DGfxResObjMan(3, GF_GFX_RES_TYPE_PLTT, HEAP_ID_FIELD1);
    *(GF_2DGfxResMan **)((u8 *)work + 0x1a4) = Create2DGfxResObjMan(4, GF_GFX_RES_TYPE_CELL, HEAP_ID_FIELD1);
    *(GF_2DGfxResMan **)((u8 *)work + 0x1a8) = Create2DGfxResObjMan(2, GF_GFX_RES_TYPE_ANIM, HEAP_ID_FIELD1);

    *(SpriteResource **)((u8 *)work + 0x1ac) = AddCharResObjFromOpenNarc(*(GF_2DGfxResMan **)((u8 *)work + 0x19c), narc, 0xe, FALSE, 1, 1, HEAP_ID_FIELD1);
    *(SpriteResource **)((u8 *)work + 0x1b0) = AddCharResObjFromOpenNarc(*(GF_2DGfxResMan **)((u8 *)work + 0x19c), narc, ov02_02253304[*(u16 *)((u8 *)work + 0xe)], FALSE, 2, 1, HEAP_ID_FIELD1);
    *(SpriteResource **)((u8 *)work + 0x1b4) = ov02_0224A810(work, narc);

    i = 0;
    *(SpriteResource **)((u8 *)work + i * 4 + 0x1bc) = AddPlttResObjFromOpenNarc(*(GF_2DGfxResMan **)((u8 *)work + 0x1a0), narc, 6, FALSE, 0, 1, 1, HEAP_ID_FIELD1);
    i++;
    if (*(u16 *)((u8 *)work + 0xe) != 0) {
        *(SpriteResource **)((u8 *)work + i * 4 + 0x1bc) = AddPlttResObjFromOpenNarc(*(GF_2DGfxResMan **)((u8 *)work + 0x1a0), narc, ov02_022532FC[*(u16 *)((u8 *)work + 0xe) - 1], FALSE, 1, 1, 1, HEAP_ID_FIELD1);
        i++;
    }
    *(SpriteResource **)((u8 *)work + i * 4 + 0x1bc) = ov02_0224A868(work, narc);

    *(SpriteResource **)((u8 *)work + 0x1c8) = AddCellOrAnimResObjFromOpenNarc(*(GF_2DGfxResMan **)((u8 *)work + 0x1a4), narc, 0xf, FALSE, 1, GF_GFX_RES_TYPE_CELL, HEAP_ID_FIELD1);
    *(SpriteResource **)((u8 *)work + 0x1cc) = AddCellOrAnimResObjFromOpenNarc(*(GF_2DGfxResMan **)((u8 *)work + 0x1a4), narc, ov02_02253310[*(u16 *)((u8 *)work + 0xe)], FALSE, 2, GF_GFX_RES_TYPE_CELL, HEAP_ID_FIELD1);
    *(SpriteResource **)((u8 *)work + 0x1d0) = AddCellOrAnimResObjFromOpenNarc(*(GF_2DGfxResMan **)((u8 *)work + 0x1a4), narc, 0xa, FALSE, 3, GF_GFX_RES_TYPE_CELL, HEAP_ID_FIELD1);
    *(SpriteResource **)((u8 *)work + 0x1d8) = AddCellOrAnimResObjFromOpenNarc(*(GF_2DGfxResMan **)((u8 *)work + 0x1a8), narc, 0x10, FALSE, 0, GF_GFX_RES_TYPE_ANIM, HEAP_ID_FIELD1);
    *(SpriteResource **)((u8 *)work + 0x1dc) = AddCellOrAnimResObjFromOpenNarc(*(GF_2DGfxResMan **)((u8 *)work + 0x1a8), narc, ov02_0225330A[*(u16 *)((u8 *)work + 0xe)], FALSE, 1, GF_GFX_RES_TYPE_ANIM, HEAP_ID_FIELD1);

    *(void **)((u8 *)work + 0x218) = ov02_0224A7B8(*(Pokemon **)((u8 *)work + 0x5c), (u8 *)work + 0x1f8, HEAP_ID_FIELD1);
    *(void **)((u8 *)work + 0x21c) = ov02_0224A800((u16 *)((u8 *)work + 0x1f8), HEAP_ID_FIELD1);
}

WIP_LOCAL void ov02_0224A288(void *work) {
    int i;
    for (i = 0; i < 4; i++) {
        if (((SpriteResource **)work)[0x6b + i] != NULL) {
            SpriteTransfer_DeleteCharTransferTask(((SpriteResource **)work)[0x6b + i]);
        }
    }
    for (i = 0; i < 3; i++) {
        if (((SpriteResource **)work)[0x6f + i] != NULL) {
            SpriteTransfer_DeletePlttTransferTask(((SpriteResource **)work)[0x6f + i]);
        }
    }
    for (i = 0; i < 4; i++) {
        if (((SpriteResource **)work)[0x72 + i] != NULL) {
            sub_0200A740(((SpriteResource **)work)[0x72 + i]);
        }
    }
    for (i = 0; i < 2; i++) {
        if (((SpriteResource **)work)[0x76 + i] != NULL) {
            sub_0200A740(((SpriteResource **)work)[0x76 + i]);
        }
    }
    Destroy2DGfxResObjMan(*(GF_2DGfxResMan **)((u8 *)work + 0x19c));
    Destroy2DGfxResObjMan(*(GF_2DGfxResMan **)((u8 *)work + 0x1a0));
    Destroy2DGfxResObjMan(*(GF_2DGfxResMan **)((u8 *)work + 0x1a4));
    Destroy2DGfxResObjMan(*(GF_2DGfxResMan **)((u8 *)work + 0x1a8));
    SpriteList_DeleteAllSprites(*(SpriteList **)((u8 *)work + 0x70));
    SpriteList_Delete(*(SpriteList **)((u8 *)work + 0x70));
}

WIP_LOCAL void ov02_0224A32C(void *mgr) {
    SpriteList *spriteList = *(SpriteList **)((u8 *)mgr + 0x70);
    if (spriteList != NULL) {
        SpriteList_RenderAndAnimateSprites(spriteList);
    }
}

WIP_LOCAL Sprite *ov02_0224A33C(void *mgr, VecFx32 *pos, int charId, int plttId, int cellId, int mode, int priority, int drawPriority) {
    SpriteResourcesHeader header;
    SimpleSpriteTemplate template;
    Sprite *sprite;

    if (mode == 4) {
        CreateSpriteResourcesHeader(&header, charId, plttId, cellId, -1, -1, -1, 0, priority, *(GF_2DGfxResMan **)((u8 *)mgr + 0x19c), *(GF_2DGfxResMan **)((u8 *)mgr + 0x1a0), *(GF_2DGfxResMan **)((u8 *)mgr + 0x1a4), NULL, NULL, NULL);
    } else {
        CreateSpriteResourcesHeader(&header, charId, plttId, cellId, mode, -1, -1, 0, priority, *(GF_2DGfxResMan **)((u8 *)mgr + 0x19c), *(GF_2DGfxResMan **)((u8 *)mgr + 0x1a0), *(GF_2DGfxResMan **)((u8 *)mgr + 0x1a4), *(GF_2DGfxResMan **)((u8 *)mgr + 0x1a8), NULL, NULL);
    }
    template.spriteList = *(SpriteList **)((u8 *)mgr + 0x70);
    template.header = &header;
    template.position = *pos;
    template.priority = drawPriority;
    template.whichScreen = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.heapID = HEAP_ID_FIELD1;
    sprite = Sprite_Create(&template);
    if (sprite == NULL) {
        GF_AssertFail();
    }
    return sprite;
}

WIP_LOCAL Sprite *ov02_0224A3F0(void *mgr, VecFx32 *pos, int drawPriority, int seq) {
    Sprite *sprite = ov02_0224A33C(mgr, pos, 1, 0, 1, 0, 0, drawPriority);
    Sprite_SetAnimCtrlSeq(sprite, seq);
    return sprite;
}

WIP_LOCAL Sprite *ov02_0224A418(void *mgr, VecFx32 *pos) {
    int plttId = 0;
    Sprite *sprite;
    if (*(u16 *)((u8 *)mgr + 0xe) != 0) {
        plttId = 1;
    }
    sprite = ov02_0224A33C(mgr, pos, 2, plttId, 2, 1, 0, 0x83);
    Sprite_SetDrawFlag(sprite, 0);
    Sprite_SetAnimCtrlSeq(sprite, 6);
    return sprite;
}

WIP_LOCAL void ov02_0224A450(Sprite *sprite) {
    Sprite_SetAnimActiveFlag(sprite, TRUE);
    Sprite_SetAnimSpeed(sprite, FX32_ONE);
}

WIP_LOCAL void *ov02_0224A468(void *mgr, VecFx32 *pos, int drawPriority, int d) {
    VecFx32 affineMatrix = { 0, 0, 0 };
    VecFx32 affineScale;
    Sprite *sprite;

    affineScale = ov02_02253390;
    sprite = ov02_0224A33C(mgr, pos, 0, 0, 0, -1, 0, drawPriority);
    Sprite_SetAffineOverwriteMode(sprite, 2);
    Sprite_SetAffineMatrix(sprite, &affineMatrix);
    Sprite_SetAffineScale(sprite, &affineScale);
    Sprite_SetAffineZRotation(sprite, GF_DegreeToSinCosIdx(0));
    return sprite;
}

WIP_LOCAL void ov02_0224A4D0(void *work) {
    NARC *narc = ov02_0224A074();
    int i;
    for (i = 0; i < 4; i++) {
        if (((SpriteResource **)work)[0x6b + i] == NULL) {
            *(SpriteResource **)((u8 *)work + i * 4 + 0x1ac) = AddCharResObjFromOpenNarc(*(GF_2DGfxResMan **)((u8 *)work + 0x19c), narc, 0xb, FALSE, 0, 1, HEAP_ID_FIELD1);
            break;
        }
    }
    if (i >= 4) {
        GF_AssertFail();
    }
    for (i = 0; i < 4; i++) {
        if (((SpriteResource **)work)[0x72 + i] == NULL) {
            *(SpriteResource **)((u8 *)work + i * 4 + 0x1c8) = AddCellOrAnimResObjFromOpenNarc(*(GF_2DGfxResMan **)((u8 *)work + 0x1a4), narc, 0xc, FALSE, 0, GF_GFX_RES_TYPE_CELL, HEAP_ID_FIELD1);
            break;
        }
    }
    if (i >= 4) {
        GF_AssertFail();
    }
    NARC_Delete(narc);
}

WIP_LOCAL void ov02_0224A570(NARC *narc, u32 fileId, NNSG2dPaletteData **a2) {
    void *data = NARC_AllocAndReadWholeMember(narc, fileId, HEAP_ID_FIELD1);
    NNS_G2dGetUnpackedPaletteData(data, a2);
    BG_LoadPlttData(3, *(const void **)((u8 *)(*a2) + 0xc), 0x20, 0x180);
    Heap_Free(data);
}

WIP_LOCAL void ov02_0224A598(BgConfig *bgConfig, NARC *narc, u32 fileId, NNSG2dCharacterData **a3) {
    void *data = NARC_AllocAndReadWholeMember(narc, fileId, HEAP_ID_FIELD1);
    NNS_G2dGetUnpackedCharacterData(data, a3);
    BG_LoadCharTilesData(bgConfig, 3, *(const void **)((u8 *)(*a3) + 0x14), *(u32 *)((u8 *)(*a3) + 0x10), 0);
    Heap_Free(data);
}

WIP_LOCAL void ov02_0224A5D0(BgConfig *bgConfig, NARC *narc, u32 fileId, NNSG2dScreenData **a3) {
    void *data;
    BgSetPosTextAndCommit(bgConfig, 3, BG_POS_OP_SET_X, 0);
    BgSetPosTextAndCommit(bgConfig, 3, BG_POS_OP_SET_Y, 0);
    data = NARC_AllocAndReadWholeMember(narc, fileId, HEAP_ID_FIELD1);
    NNS_G2dGetUnpackedScreenData(data, a3);
    BG_LoadScreenTilemapData(bgConfig, 3, (u8 *)(*a3) + 0xc, *(u32 *)((u8 *)(*a3) + 8));
    BgTilemapRectChangePalette(bgConfig, 3, 0, 0, 0x20, 0x20, 0xc);
    BgCommitTilemapBufferToVram(bgConfig, 3);
    Heap_Free(data);
}

WIP_LOCAL void ov02_0224A63C(BgConfig *bgConfig) {
    BgClearTilemapBufferAndCommit(bgConfig, 3);
}

WIP_LOCAL void ov02_0224A648(void *work) {
    ov02_0224A6A8(work);
    *(int *)((u8 *)work + 0x2c) = 0;
    ov02_0224A674(work);
    ov02_0224A67C(work);
    ov02_0224A66C(work);
    *(int *)((u8 *)work + 0x2c) = 1;
}

WIP_LOCAL void ov02_0224A66C(void *work) {
    *(int *)((u8 *)work + 0x30) = 1;
}

WIP_LOCAL void ov02_0224A674(void *work) {
    *(int *)((u8 *)work + 0x30) = 0;
}

WIP_LOCAL void ov02_0224A67C(void *work) {
    *(int *)((u8 *)work + 0x34) = 0x18;
    *(int *)((u8 *)work + 0x38) = 0;
    *(int *)((u8 *)work + 0x3c) = 0x17;
    *(int *)((u8 *)work + 0x40) = 1;
}

WIP_LOCAL void ov02_0224A690(void *work) {
    *(int *)((u8 *)work + 0x3c) = 0x17;
    *(int *)((u8 *)work + 0x40) = 1;
}

WIP_LOCAL void ov02_0224A69C(void *work, int p1, int p2, int p3, int p4) {
    *(int *)((u8 *)work + 0x44) = p1;
    *(int *)((u8 *)work + 0x48) = p3;
    *(int *)((u8 *)work + 0x4c) = p2;
    *(int *)((u8 *)work + 0x50) = p4;
}

WIP_LOCAL void ov02_0224A6A8(void *work) {
    if (*(SysTask **)((u8 *)work + 0x224) != NULL) {
        GF_AssertFail();
    }
    *(SysTask **)((u8 *)work + 0x224) = SysTask_CreateOnVBlankQueue(ov02_0224A700, work, 0x81);
}

WIP_LOCAL void ov02_0224A6D0(void *work) {
    if (*(SysTask **)((u8 *)work + 0x224) == NULL) {
        GF_AssertFail();
    }
    SysTask_Destroy(*(SysTask **)((u8 *)work + 0x224));
    *(vu32 *)0x4000000 = *(vu32 *)0x4000000 & 0xFFFF1FFF;
}

WIP_LOCAL void ov02_0224A700(SysTask *task, void *data) {
    int winin;
    int winout;

    if (*(int *)((u8 *)data + 0x2c) == 0) {
        return;
    }
    *(vu32 *)0x4000000 = (*(vu32 *)0x4000000 & 0xFFFF1FFF) | (*(int *)((u8 *)data + 0x30) << 13);
    winin = (reg_G2_WININ & ~0x3f) | *(int *)((u8 *)data + 0x34);
    if (*(int *)((u8 *)data + 0x38) != 0) {
        winin |= 0x20;
    }
    reg_G2_WININ = winin;
    winout = (reg_G2_WINOUT & ~0x3f) | *(int *)((u8 *)data + 0x3c);
    if (*(int *)((u8 *)data + 0x40) != 0) {
        winout |= 0x20;
    }
    reg_G2_WINOUT = winout;
    {
        int u0 = *(int *)((u8 *)data + 0x50) / 0x1000;
        int v0 = *(int *)((u8 *)data + 0x4c) / 0x1000;
        reg_G2_WIN0H = (*(int *)((u8 *)data + 0x44) / 0x1000) << 8 & 0xff00 | (u8)(*(int *)((u8 *)data + 0x48) / 0x1000);
        reg_G2_WIN0V = v0 << 8 & 0xff00 | (u8)u0;
    }
}

WIP_LOCAL void ov02_0224A7A8(void *a0, PokepicTemplate *tmpl) {
    GetPokemonSpriteCharAndPlttNarcIds(tmpl, *(Pokemon **)((u8 *)a0 + 0x5c), 2);
}

WIP_LOCAL void *ov02_0224A7B8(Pokemon *mon, void *arg1, enum HeapID heapID) {
    void *buffer = Heap_Alloc(HEAP_ID_FIELD1, 0xc80);
    GF_ASSERT(buffer);
    sub_02014540((NarcId) * (u16 *)arg1, *(u16 *)((u8 *)arg1 + 2), heapID, buffer, GetMonData(mon, MON_DATA_PERSONALITY, NULL), FALSE, 2, *(u16 *)((u8 *)arg1 + 6));
    return buffer;
}

WIP_LOCAL void *ov02_0224A800(u16 *a0, enum HeapID heapID) {
    return sub_02014450((NarcId)a0[0], a0[2], heapID);
}

WIP_LOCAL SpriteResource *ov02_0224A810(void *mgr, NARC *narc) {
    return AddCharResObjFromOpenNarc(*(GF_2DGfxResMan **)((u8 *)mgr + 0x19c), narc, 9, FALSE, 3, 1, HEAP_ID_FIELD1);
}

WIP_LOCAL void ov02_0224A834(void *mgr, void *src) {
    u32 location = NNS_G2dGetImageLocation(SpriteTransfer_GetCharProxy(SpriteResourceCollection_Find(*(GF_2DGfxResMan **)((u8 *)mgr + 0x19c), 3)), NNS_G2D_VRAM_TYPE_2DMAIN);
    DC_FlushRange(src, 0xC80);
    GX_LoadOBJ(src, location, 0xC80);
}

WIP_LOCAL SpriteResource *ov02_0224A868(void *mgr, NARC *narc) {
    return AddPlttResObjFromOpenNarc(*(GF_2DGfxResMan **)((u8 *)mgr + 0x1a0), narc, 6, FALSE, 3, 1, 1, HEAP_ID_FIELD1);
}

WIP_LOCAL void ov02_0224A88C(void *mgr, void *dst) {
    NNSG2dImageProxy *proxy = SpriteTransfer_GetCharProxy(SpriteResourceCollection_Find(*(GF_2DGfxResMan **)((u8 *)mgr + 0x19c), 3));
    u32 location = NNS_G2dGetImagePaletteLocation(SpriteTransfer_GetPaletteProxy(SpriteResourceCollection_Find(*(GF_2DGfxResMan **)((u8 *)mgr + 0x1a0), 3), proxy), NNS_G2D_VRAM_TYPE_2DMAIN);
    DC_FlushRange(dst, 0x20);
    GX_LoadOBJPltt(dst, location, 0x20);
}

WIP_LOCAL void ov02_0224A8D4(void *work) {
    int i;

    {
        SpriteResource *res = SpriteResourceCollection_Find(*(GF_2DGfxResMan **)((u8 *)work + 0x19c), 3);
        SpriteTransfer_DeleteCharTransferTask(res);
        DestroySingle2DGfxResObj(*(GF_2DGfxResMan **)((u8 *)work + 0x19c), res);
        for (i = 0; i < 4; i++) {
            if (((SpriteResource **)work)[0x6b + i] == res) {
                *(SpriteResource **)((u8 *)work + i * 4 + 0x1ac) = NULL;
                break;
            }
        }
        if (i >= 4) {
            GF_AssertFail();
        }
    }
    {
        SpriteResource *res = SpriteResourceCollection_Find(*(GF_2DGfxResMan **)((u8 *)work + 0x1a0), 3);
        SpriteTransfer_DeletePlttTransferTask(res);
        DestroySingle2DGfxResObj(*(GF_2DGfxResMan **)((u8 *)work + 0x1a0), res);
        for (i = 0; i < 3; i++) {
            if (((SpriteResource **)work)[0x6f + i] == res) {
                *(SpriteResource **)((u8 *)work + i * 4 + 0x1bc) = NULL;
                break;
            }
        }
        if (i >= 3) {
            GF_AssertFail();
        }
    }
    {
        SpriteResource *res = SpriteResourceCollection_Find(*(GF_2DGfxResMan **)((u8 *)work + 0x1a4), 3);
        sub_0200A740(res);
        DestroySingle2DGfxResObj(*(GF_2DGfxResMan **)((u8 *)work + 0x1a4), res);
        for (i = 0; i < 4; i++) {
            if (((SpriteResource **)work)[0x72 + i] == res) {
                *(SpriteResource **)((u8 *)work + i * 4 + 0x1c8) = NULL;
                break;
            }
        }
        if (i >= 4) {
            GF_AssertFail();
        }
    }
}

WIP_LOCAL Sprite *ov02_0224A9B8(void *mgr, VecFx32 *pos) {
    return ov02_0224A33C(mgr, pos, 3, 3, 3, -1, 0, 0x81);
}

WIP_LOCAL void ov02_0224A9D8(void *work, int a1) {
    VecFx32 pos;
    VecFx32 vec;
    int i;
    const ov02_A9D8Entry *p = ov02_022535E4;
    *(int *)((u8 *)work + 0x14) = 2;
    for (i = 0; i < 13; i++) {
        u32 arg4;
        void *arg3;
        pos.x = p->unk0;
        pos.y = p->unk4;
        pos.z = 0;
        vec.x = p->unk8;
        vec.y = 0;
        vec.z = 0;
        arg3 = p->unkC;
        arg4 = p->unk10;
        ov02_0224AA44(work, &pos, &vec, arg3, arg4, (void *)a1);
        pos.x += 0x100000;
        ov02_0224AA44(work, &pos, &vec, arg3, arg4, (void *)a1);
        p++;
    }
}

WIP_LOCAL void ov02_0224AA44(void *arg0, VecFx32 *pos, VecFx32 *vec, void *arg3, u32 arg4, void *arg5) {
    struct {
        void *unk0;
        void *unk4;
        void *unk8;
        VecFx32 unkC;
    } a4;
    a4.unk0 = arg3;
    a4.unk4 = arg5;
    a4.unk8 = arg0;
    a4.unkC = *vec;
    sub_02068B0C(*(void **)((u8 *)arg0 + 0x1e0), &ov02_02253468, pos, arg4, &a4, 0x85);
}

WIP_LOCAL BOOL ov02_0224AA80(void *a0, void *work) {
    VecFx32 vec;
    Sprite *sprite;
    *(UnkBlob24 *)((u8 *)work + 0xc) = *(UnkBlob24 *)sub_02068D98(a0);
    *(u32 *)((u8 *)work + 4) = sub_02068D90(a0);
    sub_02068DB8(a0, &vec);
    sprite = ov02_0224A3F0(*(void **)((u8 *)work + 0x14), &vec, *(int *)((u8 *)work + 0xc), *(int *)((u8 *)work + 4));
    *(Sprite **)((u8 *)work + 8) = sprite;
    Sprite_SetDrawFlag(sprite, 0);
    return TRUE;
}

WIP_LOCAL void ov02_0224AAC8(void *a0, void *work) {
    Sprite_Delete(*(Sprite **)((u8 *)work + 8));
}

// ov02_0224AAD4
// clang-format off
asm void ov02_0224AAD4(void *a0, void *a1) {
    push {r3, r4, r5, r6, lr}
    sub sp, #0xc
    add r4, r1, #0
    add r1, sp, #0
    add r5, r0, #0
    bl sub_02068DB8
    ldr r1, [sp, #0]
    ldr r0, [r4, #0x18]
    add r0, r1, r0
    lsr r2, r0, #0x1f
    lsl r1, r0, #0xb
    str r0, [sp, #0]
    sub r1, r1, r2
    mov r0, #0xb
    ror r1, r0
    add r0, r2, r1
    str r0, [sp, #0]
    add r0, r5, #0
    add r1, sp, #0
    bl sub_02068DA8
    ldr r0, [r4, #8]
    add r1, sp, #0
    bl Sprite_SetMatrix
    ldr r0, [r4, #0x10]
    cmp r0, #1
    bne _0224AB4E
    ldr r3, [r4, #0x14]
    ldr r0, [r3, #0x14]
    cmp r0, #2
    bne _0224AB42
    ldr r2, [r3, #0x4c]
    ldr r0, [r3, #0x50]
    mov r3, #2
    ldr r6, [sp, #4]
    lsl r3, r3, #0xc
    sub r5, r6, r3
    mov r1, #0
    cmp r5, r2
    blt _0224AB38
    cmp r5, r0
    bgt _0224AB38
    add r3, r6, r3
    cmp r3, r2
    blt _0224AB38
    cmp r3, r0
    bgt _0224AB38
    mov r1, #1
_0224AB38:
    ldr r0, [r4, #8]
    bl Sprite_SetDrawFlag
    add sp, #0xc
    pop {r3, r4, r5, r6, pc}
_0224AB42:
    cmp r0, #1
    bne _0224AB4E
    ldr r0, [r4, #8]
    mov r1, #0
    bl Sprite_SetDrawFlag
_0224AB4E:
    add sp, #0xc
    pop {r3, r4, r5, r6, pc}
}
// clang-format on

WIP_LOCAL void ov02_0224AB54(void) {
}

WIP_LOCAL void ov02_0224AB58(void *work) {
    VecFx32 pos = { 0, 0, 0 };
    void *a4 = work;
    *(void **)((u8 *)work + 0x1ec) = sub_02068B0C(*(void **)((u8 *)work + 0x1e0), &ov02_0225347C, &pos, 0, &a4, 0x82);
}

WIP_LOCAL u8 ov02_0224AB8C(void *work) {
    return ((u8 *)sub_02068D74(*(void **)((u8 *)work + 0x1ec)))[2];
}

WIP_LOCAL void ov02_0224AB9C(void *work) {
    void *d = sub_02068D74(*(void **)((u8 *)work + 0x1ec));
    int v60 = *(int *)((u8 *)d + 0x60);
    if (v60 != 0) {
        sub_02068B48(v60);
    }
    if (*(SysTask **)((u8 *)d + 0x64) != NULL) {
        ov01_021FCD78(*(SysTask **)((u8 *)d + 0x64));
    }
    sub_02068B48(*(int *)((u8 *)work + 0x1ec));
}

WIP_LOCAL BOOL ov02_0224ABCC(void *a0, void *a1) {
    VecFx32 buf;
    *(void **)((u8 *)a1 + 0x5c) = *(void **)sub_02068D98(a0);
    sub_02068DB8(a0, &buf);
    *(void **)((u8 *)a1 + 0x58) = ov02_0224A468(*(void **)((u8 *)a1 + 0x5c), &buf, 0, 0);
    return TRUE;
}

WIP_LOCAL void ov02_0224ABF8(void *a0, void *work) {
    Sprite_Delete(*(Sprite **)((u8 *)work + 0x58));
}

WIP_LOCAL void ov02_0224AC04(void *a0, u8 *sm) {
    ov02_StateMachineFunc *table = ov02_022533C0[sm[0]];
    while (table[sm[1]](sm) == 1) {
    }
}

WIP_LOCAL void ov02_0224AC24(void) {
}

WIP_LOCAL int ov02_0224AC28(void *work) {
    *(u8 *)((u8 *)work + 2) = 0;
    Sprite_SetDrawFlag(*(Sprite **)((u8 *)work + 0x58), FALSE);
    return 0;
}

WIP_LOCAL void ov02_0224AC38(void *work) {
    VecFx32 local1;
    VecFx32 local2;
    void *handle;
    local1 = ov02_022533E4;
    local2 = ov02_022533F0;
    handle = sub_02068D74(*(void **)((u8 *)work + 0x1ec));
    *(u8 *)handle = 1;
    *(u8 *)((u8 *)handle + 1) = 0;
    *(u8 *)((u8 *)handle + 2) = 0;
    *(VecFx32 *)((u8 *)handle + 8) = local1;
    *(int *)((u8 *)handle + 0x14) = 0;
    *(int *)((u8 *)handle + 0x18) = 0;
    *(int *)((u8 *)handle + 0x1c) = 0;
    *(int *)((u8 *)handle + 0x38) = 0x3c000;
    *(VecFx32 *)((u8 *)handle + 0x2c) = local2;
    *(int *)((u8 *)handle + 0x50) = 0x200;
    *(int *)((u8 *)handle + 0x40) = 0xb4000;
    *(int *)((u8 *)handle + 0x48) = 0;
    *(int *)((u8 *)handle + 0x4c) = 0x2000;
    Sprite_SetMatrix(*(Sprite **)((u8 *)handle + 0x58), &local1);
    Sprite_SetAffineScale(*(Sprite **)((u8 *)handle + 0x58), &local2);
    Sprite_SetAffineZRotation(*(Sprite **)((u8 *)handle + 0x58), GF_DegreeToSinCosIdx((u16)(*(int *)((u8 *)handle + 0x38) / 0x1000)));
    Sprite_SetDrawFlag(*(Sprite **)((u8 *)handle + 0x58), 1);
}

WIP_LOCAL int ov02_0224ACE0(void *work) {
    Sprite *sprite = *(Sprite **)((u8 *)work + 0x58);
    VecFx32 mtx;
    *(int *)((u8 *)work + 0x48) = *(int *)((u8 *)work + 0x48) + *(int *)((u8 *)work + 0x4c);
    if (*(int *)((u8 *)work + 0x4c) < 0x10000) {
        *(int *)((u8 *)work + 0x4c) += 0x4000;
    }
    *(int *)((u8 *)work + 0x14) = GF_CosDeg(0x13B) * (*(int *)((u8 *)work + 0x48) / 0x1000);
    *(int *)((u8 *)work + 0x18) = GF_SinDeg((u16)(*(int *)((u8 *)work + 0x40) / 0x1000)) * (*(int *)((u8 *)work + 0x48) / 0x1000);
    if (*(int *)((u8 *)work + 0x40) / 0x1000 < 0x10E) {
        *(int *)((u8 *)work + 0x40) += 0x4000;
    }
    *(int *)((u8 *)work + 0x2c) = *(int *)((u8 *)work + 0x2c) + *(int *)((u8 *)work + 0x50);
    if (*(int *)((u8 *)work + 0x2c) > 0x1000) {
        *(int *)((u8 *)work + 0x2c) = 0x1000;
    }
    *(int *)((u8 *)work + 0x30) = *(int *)((u8 *)work + 0x30) + *(int *)((u8 *)work + 0x50);
    if (*(int *)((u8 *)work + 0x30) > 0x1000) {
        *(int *)((u8 *)work + 0x30) = 0x1000;
    }
    Sprite_SetAffineScale(sprite, (VecFx32 *)((u8 *)work + 0x2c));
    *(int *)((u8 *)work + 0x38) -= 0x6000;
    if (*(int *)((u8 *)work + 0x38) / 0x1000 < 0) {
        *(int *)((u8 *)work + 0x38) = 0;
    }
    Sprite_SetAffineZRotation(sprite, GF_DegreeToSinCosIdx((u16)(*(int *)((u8 *)work + 0x38) / 0x1000)));
    mtx.x = *(int *)((u8 *)work + 8) + *(int *)((u8 *)work + 0x14);
    mtx.y = *(int *)((u8 *)work + 0xc) + *(int *)((u8 *)work + 0x18);
    Sprite_SetMatrix(sprite, &mtx);
    if (mtx.y < -0x40000) {
        Sprite_SetDrawFlag(sprite, FALSE);
        *(u8 *)((u8 *)work + 2) = 2;
        (*(u8 *)((u8 *)work + 1))++;
    }
    return 0;
}

WIP_LOCAL int ov02_0224ADEC(void) {
    return 0;
}

WIP_LOCAL void ov02_0224ADF0(void *work) {
    VecFx32 v1;
    VecFx32 v2;
    VecFx32 affineMtx;
    VecFx32 affineScale;
    void *handle;
    Sprite *spriteB;
    v1 = ov02_02253354;
    v2 = ov02_0225336C;
    handle = sub_02068D74(*(void **)((u8 *)work + 0x1ec));
    *(u8 *)handle = 2;
    *(u8 *)((u8 *)handle + 1) = 0;
    *(u8 *)((u8 *)handle + 2) = 1;
    *(int *)((u8 *)handle + 4) = 0;
    v1.x += *(int *)((u8 *)work + 0x2ec);
    v1.y += *(int *)((u8 *)work + 0x2f4);
    *(VecFx32 *)((u8 *)handle + 8) = v1;
    *(int *)((u8 *)handle + 0x14) = 0;
    *(int *)((u8 *)handle + 0x18) = 0;
    *(int *)((u8 *)handle + 0x1c) = 0;
    *(int *)((u8 *)handle + 0x38) = 0x13B000;
    *(VecFx32 *)((u8 *)handle + 0x2c) = v2;
    *(int *)((u8 *)handle + 0x50) = 0x100;
    *(int *)((u8 *)handle + 0x40) = 0xe1000;
    *(int *)((u8 *)handle + 0x48) = 0xc0000;
    *(int *)((u8 *)handle + 0x4c) = 0x20000;
    *(int *)((u8 *)handle + 0x14) = GF_CosDeg(0x13B) * (*(int *)((u8 *)handle + 0x48) / 0x1000);
    *(int *)((u8 *)handle + 0x18) = GF_SinDeg((u16)(*(int *)((u8 *)handle + 0x40) / 0x1000)) * (*(int *)((u8 *)handle + 0x48) / 0x1000);
    v1.x = *(int *)((u8 *)handle + 8) + *(int *)((u8 *)handle + 0x14);
    v1.y = *(int *)((u8 *)handle + 0xc) + *(int *)((u8 *)handle + 0x18);
    Sprite_SetMatrix(*(Sprite **)((u8 *)handle + 0x58), &v1);
    Sprite_SetAffineScale(*(Sprite **)((u8 *)handle + 0x58), &v2);
    Sprite_SetAffineZRotation(*(Sprite **)((u8 *)handle + 0x58), GF_DegreeToSinCosIdx((u16)(*(int *)((u8 *)handle + 0x38) / 0x1000)));
    Sprite_SetDrawFlag(*(Sprite **)((u8 *)handle + 0x58), 1);
    *(void **)((u8 *)handle + 0x60) = ov02_0224B298(*(void **)((u8 *)work + 0x1e0), *(void **)((u8 *)work + 0x1e4));
    *(int *)((u8 *)work + 0x1c) = 1;
    *(void **)((u8 *)handle + 0x64) = ov01_021FCD2C(*(FieldSystem **)((u8 *)work + 0x60), 4);
    ov01_021FCD8C(*(void **)((u8 *)handle + 0x64), 1, (fx32)0xFFF88000, 0xc);
    {
        int *p = (int *)&affineMtx;
        p[0] = 0;
        p[1] = 0;
        p[2] = 0;
    }
    affineScale = ov02_02253378;
    spriteB = *(Sprite **)((u8 *)*(void **)((u8 *)handle + 0x5c) + 0x1e4);
    Sprite_SetAffineOverwriteMode(spriteB, 2);
    Sprite_SetAffineMatrix(spriteB, &affineMtx);
    Sprite_SetAffineScale(spriteB, &affineScale);
    Sprite_SetAffineZRotation(spriteB, GF_DegreeToSinCosIdx(0));
}

WIP_LOCAL int ov02_0224AF70(void *work) {
    Sprite *spriteA = *(Sprite **)((u8 *)work + 0x58);
    Sprite *spriteB;
    VecFx32 mtx;
    VecFx32 scale;
    *(int *)((u8 *)work + 0x48) = *(int *)((u8 *)work + 0x48) - *(int *)((u8 *)work + 0x4c);
    if (*(int *)((u8 *)work + 0x48) < 0) {
        *(int *)((u8 *)work + 0x48) = 0;
    }
    if (*(int *)((u8 *)work + 0x4c) > 0x800) {
        *(int *)((u8 *)work + 0x4c) -= 0x1800;
    }
    if (*(int *)((u8 *)work + 0x4c) < 0x1000) {
        *(int *)((u8 *)work + 0x4c) = 0x1000;
    }
    *(int *)((u8 *)work + 0x14) = GF_CosDeg(0x13B) * (*(int *)((u8 *)work + 0x48) / 0x1000);
    *(int *)((u8 *)work + 0x18) = GF_SinDeg((u16)(*(int *)((u8 *)work + 0x40) / 0x1000)) * (*(int *)((u8 *)work + 0x48) / 0x1000);
    if (*(int *)((u8 *)work + 0x40) / 0x1000 < 0x10E) {
        *(int *)((u8 *)work + 0x40) += 0x4000;
    }
    *(int *)((u8 *)work + 0x2c) += *(int *)((u8 *)work + 0x50);
    if (*(int *)((u8 *)work + 0x2c) > 0x1800) {
        *(int *)((u8 *)work + 0x2c) = 0x1800;
    }
    *(int *)((u8 *)work + 0x30) += *(int *)((u8 *)work + 0x50);
    if (*(int *)((u8 *)work + 0x30) > 0x1800) {
        *(int *)((u8 *)work + 0x30) = 0x1800;
    }
    Sprite_SetAffineScale(spriteA, (VecFx32 *)((u8 *)work + 0x2c));
    *(int *)((u8 *)work + 0x38) += 0x8000;
    if (*(int *)((u8 *)work + 0x38) / 0x1000 > 0x168) {
        *(int *)((u8 *)work + 0x38) = 0x168000;
    }
    Sprite_SetAffineZRotation(spriteA, GF_DegreeToSinCosIdx((u16)(*(int *)((u8 *)work + 0x38) / 0x1000)));
    mtx.x = *(int *)((u8 *)work + 8) + *(int *)((u8 *)work + 0x14);
    mtx.y = *(int *)((u8 *)work + 0xc) + *(int *)((u8 *)work + 0x18);
    Sprite_SetMatrix(spriteA, &mtx);
    if (*(int *)((u8 *)work + 0x48) == 0) {
        *(int *)((u8 *)work + 4) = 0;
        (*(u8 *)((u8 *)work + 1))++;
    } else {
        *(int *)((u8 *)work + 4) += 1;
    }
    if (*(int *)((u8 *)work + 4) == 0xc) {
        ov02_0224B2CC(*(void **)((u8 *)work + 0x60));
    }
    spriteB = *(Sprite **)((u8 *)*(void **)((u8 *)work + 0x5c) + 0x1e4);
    scale = *Sprite_GetScalePtr(spriteB);
    scale.x += 0x80;
    if (scale.x > 0x1400) {
        scale.x = 0x1400;
    }
    scale.y += 0x80;
    if (scale.y > 0x1400) {
        scale.y = 0x1400;
    }
    Sprite_SetAffineScale(spriteB, &scale);
    return 0;
}

WIP_LOCAL BOOL ov02_0224B0E0(void *work) {
    Sprite *sprite = *(Sprite **)((u8 *)*(void **)((u8 *)work + 0x5c) + 0x1e4);
    fx32 y;
    Sprite_SetAnimCtrlSeq(sprite, 3);
    Sprite_SetDrawFlag(sprite, 1);
    ov02_0224B6B0(*(void **)((u8 *)work + 0x5c), 1);
    sub_0205F484(*(LocalMapObject **)((u8 *)*(void **)((u8 *)work + 0x5c) + 0x208));
    y = Sprite_GetMatrixPtr(sprite)->y;
    *(int *)((u8 *)work + 0x54) = y - Sprite_GetMatrixPtr(*(Sprite **)((u8 *)work + 0x58))->y;
    ov02_0224B2C0(*(void **)((u8 *)work + 0x60));
    ov01_021FCD8C(*(void **)((u8 *)work + 0x64), 2, 0, 0xc);
    *(int *)((u8 *)work + 0x50) = 0x100;
    *(int *)((u8 *)work + 0x40) = 0x80000;
    *(int *)((u8 *)work + 0x48) = 0;
    *(int *)((u8 *)work + 0x4c) = 0x800;
    *(u8 *)((u8 *)work + 2) = 3;
    *(u8 *)((u8 *)work + 1) = *(u8 *)((u8 *)work + 1) + 1;
    return 1;
}

WIP_LOCAL int ov02_0224B158(void *work) {
    Sprite *spriteA = *(Sprite **)((u8 *)work + 0x58);
    Sprite *spriteB;
    VecFx32 *scalePtr;
    VecFx32 mtx;
    VecFx32 mtx2;
    VecFx32 scale;
    *(int *)((u8 *)work + 0x48) = *(int *)((u8 *)work + 0x48) + *(int *)((u8 *)work + 0x4c);
    *(int *)((u8 *)work + 0x4c) += 0x1000;
    if (*(int *)((u8 *)work + 0x4c) > 0x10000) {
        *(int *)((u8 *)work + 0x4c) = 0x10000;
    }
    *(int *)((u8 *)work + 0x14) = GF_CosDeg((u16)(*(int *)((u8 *)work + 0x40) / 0x1000)) * (*(int *)((u8 *)work + 0x48) / 0x1000);
    *(int *)((u8 *)work + 0x18) = GF_SinDeg(0x80) * (*(int *)((u8 *)work + 0x48) / 0x1000);
    if (*(int *)((u8 *)work + 0x40) < 0x87000) {
        *(int *)((u8 *)work + 0x40) += 0x1000;
    }
    *(int *)((u8 *)work + 0x2c) += *(int *)((u8 *)work + 0x50);
    if (*(int *)((u8 *)work + 0x2c) > 0x2000) {
        *(int *)((u8 *)work + 0x2c) = 0x2000;
    }
    *(int *)((u8 *)work + 0x30) += *(int *)((u8 *)work + 0x50);
    if (*(int *)((u8 *)work + 0x30) > 0x2000) {
        *(int *)((u8 *)work + 0x30) = 0x2000;
    }
    mtx.x = *(int *)((u8 *)work + 8) + *(int *)((u8 *)work + 0x14);
    mtx.y = *(int *)((u8 *)work + 0xc) + *(int *)((u8 *)work + 0x18);
    if (mtx.y / 0x1000 >= 0xe6) {
        *(u8 *)((u8 *)work + 2) = 2;
        (*(u8 *)((u8 *)work + 1))++;
    }
    spriteB = *(Sprite **)((u8 *)*(void **)((u8 *)work + 0x5c) + 0x1e4);
    scalePtr = Sprite_GetScalePtr(spriteB);
    mtx2 = mtx;
    scale = *scalePtr;
    *(int *)((u8 *)work + 0x54) -= 0x1000;
    mtx2.y += *(int *)((u8 *)work + 0x54);
    Sprite_SetMatrix(spriteB, &mtx2);
    scale.x += 0x100;
    if (scale.x > 0x2000) {
        scale.x = 0x2000;
    }
    scale.y += 0x100;
    if (scale.y > 0x2000) {
        scale.y = 0x2000;
    }
    Sprite_SetAffineScale(spriteB, &scale);
    Sprite_SetAffineScale(spriteA, (VecFx32 *)((u8 *)work + 0x2c));
    Sprite_SetMatrix(spriteA, &mtx);
    return 0;
}

WIP_LOCAL int ov02_0224B294(void) {
    return 0;
}

WIP_LOCAL void *ov02_0224B298(void *mgr, void *arg1) {
    VecFx32 pos = { 0, 0, 0 };
    struct {
        void *unk0;
        void *unk4;
    } a4;
    a4.unk4 = arg1;
    return sub_02068B0C(mgr, &ov02_022534A4, &pos, 0, &a4, 0x81);
}

WIP_LOCAL void ov02_0224B2C0(void *work) {
    *(int *)sub_02068D74(work) = 0;
}

WIP_LOCAL void ov02_0224B2CC(void *work) {
    VecFx32 vec;
    u8 *s = (u8 *)sub_02068D74(work);
    *(int *)(s + 0) = 1;
    *(int *)(s + 4) = 0;
    *(int *)(s + 0xc) = 0;
    *(int *)(s + 8) = 0;
    *(int *)(s + 0x10) = 0;
    *(int *)(s + 0x14) = 0;
    *(int *)(s + 0x18) = 0;
    vec = *Sprite_GetMatrixPtr(*(Sprite **)(s + 0x20));
    sub_02068DA8(work, &vec);
    Sprite_SetAnimCtrlSeq(*(Sprite **)(s + 0x20), 5);
}

WIP_LOCAL void ov02_0224B314(void *work) {
    VecFx32 vec;
    u8 *s = (u8 *)sub_02068D74(work);
    *(int *)(s + 0) = 2;
    *(int *)(s + 4) = 0;
    *(int *)(s + 0xc) = 0;
    *(int *)(s + 8) = 0;
    *(int *)(s + 0x10) = 0;
    *(int *)(s + 0x14) = 0;
    *(int *)(s + 0x18) = 0;
    ov02_02248C98(*(Sprite **)(s + 0x20), &vec);
    sub_02068DA8(work, &vec);
    Sprite_SetAnimCtrlSeq(*(Sprite **)(s + 0x20), 4);
}

WIP_LOCAL BOOL ov02_0224B350(void *a0, void *out) {
    int *p = (int *)sub_02068D98(a0);
    *(int *)((u8 *)out + 0x1c) = p[0];
    *(int *)((u8 *)out + 0x20) = p[1];
    return TRUE;
}

WIP_LOCAL void ov02_0224B364(void *a0, void *work) {
    VecFx32 vec;
    if (*(int *)((u8 *)work + 4) == 0) {
        *(fx32 *)((u8 *)work + 0x14) = ov02_02253520[*(int *)((u8 *)work + 0xc)];
        sub_02068DB8(a0, &vec);
        vec.y = vec.y + *(fx32 *)((u8 *)work + 0x14);
        Sprite_SetMatrix(*(Sprite **)((u8 *)work + 0x20), &vec);
        if (++*(int *)((u8 *)work + 0xc) >= 0xc) {
            *(int *)((u8 *)work + 0xc) = 0;
            *(int *)((u8 *)work + 8) = 1;
            (*(int *)((u8 *)work + 4))++;
        }
    }
}

WIP_LOCAL void ov02_0224B3B0(void *a0, void *work) {
    VecFx32 vec;
    if (*(int *)((u8 *)work + 4) == 0) {
        *(fx32 *)((u8 *)work + 0x14) = ov02_02253430[*(int *)((u8 *)work + 0xc)];
        sub_02068DB8(a0, &vec);
        vec.y = vec.y + *(fx32 *)((u8 *)work + 0x14);
        Sprite_SetMatrix(*(Sprite **)((u8 *)work + 0x20), &vec);
        if (++*(int *)((u8 *)work + 0xc) >= 4) {
            *(int *)((u8 *)work + 0xc) = 0;
            *(int *)((u8 *)work + 8) = 1;
            (*(int *)((u8 *)work + 4))++;
        }
    }
}

WIP_LOCAL void ov02_0224B3FC(void *a0, int *a1) {
    switch (*a1) {
    case 1:
        ov02_0224B364(a0, a1);
        break;
    case 2:
        ov02_0224B3B0(a0, a1);
        break;
    }
}

WIP_LOCAL SysTask *ov02_0224B418(FieldSystem *fieldSystem, int gender) {
    void *p = ov02_0224B690(HEAP_ID_FIELD1, 0x17c);
    *(int *)((u8 *)p + 0xc) = gender;
    *(FieldSystem **)((u8 *)p + 0x14) = fieldSystem;
    return SysTask_CreateOnMainQueue(ov02_0224B45C, p, 0x86);
}

WIP_LOCAL BOOL ov02_0224B43C(SysTask *task) {
    return ((int *)SysTask_GetData(task))[1];
}

WIP_LOCAL void ov02_0224B448(SysTask *task) {
    Heap_Free(SysTask_GetData(task));
    SysTask_Destroy(task);
}

WIP_LOCAL void ov02_0224B45C(SysTask *task, void *sm) {
    ov02_StateMachineFunc const *table = ov02_022534B8;
    while (table[*(int *)sm](sm) == 1) {
    }
    if (*(int *)((u8 *)sm + 0x10) != 0) {
        if (*(void **)((u8 *)sm + 0x170) != NULL) {
            sub_02068BAC(*(void **)((u8 *)sm + 0x170));
        }
        if (*(SpriteList **)((u8 *)sm + 0x20) != NULL) {
            SpriteList_RenderAndAnimateSprites(*(SpriteList **)((u8 *)sm + 0x20));
        }
    }
}

WIP_LOCAL int ov02_0224B494(void *work) {
    ov02_02249444(*(FieldSystem **)((u8 *)work + 0x14), TRUE);
    *(int *)work = *(int *)work + 1;
    return 0;
}

WIP_LOCAL int ov02_0224B4AC(void *work) {
    NARC *narc;
    *(void **)((u8 *)work + 0x170) = sub_020689C8(4, 0x20);
    ov02_02248728((u8 *)work + 0x18, 0x20, 2, 2, 2, 1, 4, 4, 4, 2);
    narc = ov02_022493F0();
    ov02_02248980((u8 *)work + 0x18, narc, 0xb, 0);
    ov02_02248A58((u8 *)work + 0x18, narc, 6, 0);
    ov02_02248B30((u8 *)work + 0x18, narc, 0xc, 0);
    ov02_022489F0((u8 *)work + 0x18, 0);
    ov02_02248AC8((u8 *)work + 0x18, 0);
    ov02_02248A24((u8 *)work + 0x18, 0);
    ov02_02248AFC((u8 *)work + 0x18, 0);
    if (*(int *)((u8 *)work + 0xc) == 0) {
        ov02_02248980((u8 *)work + 0x18, narc, 0x11, 2);
        ov02_02248B30((u8 *)work + 0x18, narc, 0x12, 2);
        ov02_02248BA0((u8 *)work + 0x18, narc, 0x13, 1);
        ov02_022489F0((u8 *)work + 0x18, 2);
        ov02_02248A24((u8 *)work + 0x18, 2);
    } else {
        ov02_02248980((u8 *)work + 0x18, narc, 0x14, 2);
        ov02_02248A58((u8 *)work + 0x18, narc, 7, 1);
        ov02_02248B30((u8 *)work + 0x18, narc, 0x15, 2);
        ov02_02248BA0((u8 *)work + 0x18, narc, 0x16, 1);
        ov02_022489F0((u8 *)work + 0x18, 2);
        ov02_02248AC8((u8 *)work + 0x18, 1);
        ov02_02248A24((u8 *)work + 0x18, 2);
        ov02_02248AFC((u8 *)work + 0x18, 1);
    }
    NARC_Delete(narc);
    (*(int *)work)++;
    return 0;
}

WIP_LOCAL int ov02_0224B5F0(void *work) {
    *(Sprite **)((u8 *)work + 0x16c) = ov02_02248D18((u8 *)work + 0x18, *(int *)((u8 *)work + 0xc));
    Sprite_SetDrawFlag(*(Sprite **)((u8 *)work + 0x16c), 1);
    *(void **)((u8 *)work + 0x174) = ov02_02248D58(*(void **)((u8 *)work + 0x14), *(void **)((u8 *)work + 0x170), (u8 *)work + 0x18, *(void **)((u8 *)work + 0x16c));
    ov02_02248E20(*(void **)((u8 *)work + 0x174));
    (*(int *)((u8 *)work))++;
    *(int *)((u8 *)work + 0x10) = 1;
    return 0;
}

WIP_LOCAL int ov02_0224B638(void *work) {
    if (ov02_02248D8C(*(void **)((u8 *)work + 0x174)) != 2) {
        return 0;
    }
    ov02_02248DBC(*(void **)((u8 *)work + 0x174));
    *(int *)work = *(int *)work + 1;
    return 0;
}

WIP_LOCAL int ov02_0224B664(void *work) {
    sub_020689F8(*(void **)((u8 *)work + 0x170));
    ov02_0224886C((u8 *)work + 0x18);
    *(int *)((u8 *)work + 0x10) = 0;
    *(int *)((u8 *)work + 4) = 1;
    (*(int *)work)++;
    return 0;
}

WIP_LOCAL int ov02_0224B68C(void) {
    return 0;
}

WIP_LOCAL void *ov02_0224B690(enum HeapID heapID, u32 size) {
    void *ptr = Heap_AllocAtEnd(heapID, size);
    if (ptr == NULL) {
        GF_AssertFail();
    }
    memset(ptr, 0, size);
    return ptr;
}

WIP_LOCAL void ov02_0224B6B0(void *work, BOOL visible) {
    MapObject_UnpauseMovement(*(LocalMapObject **)((u8 *)work + 0x208));
    MapObject_SetVisible(*(LocalMapObject **)((u8 *)work + 0x208), visible);
}

WIP_LOCAL BOOL ov02_0224B6D0(void *a0, void *out) {
    *(UnkPair8 *)out = *(UnkPair8 *)sub_02068D98(a0);
    return TRUE;
}

WIP_LOCAL void ov02_0224B6E4(void *a0, void *work) {
    fx32 y = Sprite_GetMatrixPtr(*(Sprite **)work)->y;
    void *s = *(void **)((u8 *)work + 4);
    fx32 lo = *(fx32 *)((u8 *)s + 0x4c);
    fx32 hi = *(fx32 *)((u8 *)s + 0x50);
    if (*(int *)((u8 *)s + 0x1c) == 0) {
        if (y - 0x8000 >= lo && y + 0x8000 <= hi) {
            Sprite_SetDrawFlag(*(Sprite **)work, 1);
        } else {
            Sprite_SetDrawFlag(*(Sprite **)work, 0);
        }
    } else {
        Sprite_SetDrawFlag(*(Sprite **)work, 1);
    }
}

WIP_LOCAL void ov02_0224B72C(void *work) {
    VecFx32 pos = { 0, 0, 0 };
    struct {
        void *unk0;
        void *unk4;
    } a4;
    a4.unk0 = *(void **)((u8 *)work + 0x1e4);
    a4.unk4 = work;
    *(void **)((u8 *)work + 0x1f4) = sub_02068B0C(*(void **)((u8 *)work + 0x1e0), &ov02_02253440, &pos, 0, &a4, 0x87);
}

WIP_LOCAL void ov02_0224B768(void *work) {
    int v = *(int *)((u8 *)work + 0x1f4);
    if (v != 0) {
        sub_02068B48(v);
        *(int *)((u8 *)work + 0x1f4) = 0;
    }
}

WIP_LOCAL void ov02_0224B784(void *work) {
    VecFx32 pos = { 0, 0, 0 };
    void *a4 = work;
    ov02_0224B88C(work);
    MapObject_CopyPositionVector(*(LocalMapObject **)((u8 *)work + 0x20c), &pos);
    *(void **)((u8 *)work + 0x1f0) = sub_02068B0C(*(void **)((u8 *)work + 0x1e0), &ov02_02253490, &pos, 0, &a4, 0x83);
}

WIP_LOCAL BOOL ov02_0224B7CC(void *a0, void **out) {
    VecFx32 pos;
    void *p = sub_02068D98(a0);
    u8 *base;
    *out = *(void **)p;
    base = *(u8 **)p + 0x228;
    sub_02068DB8(a0, &pos);
    Field3dObject_SetPos((Field3dObject *)(base + 0x24), &pos);
    Field3dObject_SetActiveFlag((Field3dObject *)(base + 0x24), 0);
    return TRUE;
}

WIP_LOCAL void ov02_0224B804(void) {
}

WIP_LOCAL void ov02_0224B808(void *a0, void *work) {
    u8 *d = *(u8 **)work + 0x228;
    switch (*(int *)((u8 *)work + 4)) {
    case 0:
        *(int *)((u8 *)work + 4) = 1;
        break;
    case 1:
        Field3dObject_SetActiveFlag((Field3dObject *)(d + 0x24), 1);
        Field3dModelAnimation_FrameSet((Field3DModelAnimation *)(d + 0x9c), 0);
        Field3dModelAnimation_FrameSet((Field3DModelAnimation *)(d + 0xb0), 0);
        *(int *)((u8 *)work + 4) = 2;
        /* fallthrough */
    case 2:
        Field3dModelAnimation_FrameAdvanceAndCheck((Field3DModelAnimation *)(d + 0x9c), 0x1000);
        if (Field3dModelAnimation_FrameAdvanceAndCheck((Field3DModelAnimation *)(d + 0xb0), 0x1000)) {
            *(int *)((u8 *)work + 8) = 1;
            *(int *)((u8 *)work + 4) = 3;
        }
        break;
    case 3:
        break;
    }
}

WIP_LOCAL void ov02_0224B87C(void *a0, void *a1) {
    Field3dObject_Draw((Field3dObject *)((u8 *)*(void **)a1 + 0x24c));
}

WIP_LOCAL void ov02_0224B88C(void *work) {
    u8 *d = (u8 *)work + 0x228;
    HeapExp_FndInitAllocator((NNSFndAllocator *)d, HEAP_ID_FIELD1, 0x20);
    *(void **)(d + 0x10) = AllocAtEndAndReadWholeNarcMemberByIdPair((NarcId)0x67, 0x83, HEAP_ID_FIELD1);
    ov01_021FBD38((Field3dModel *)(d + 0x14), *(void **)(d + 0x10));
    Field3dObject_InitFromModel((Field3dObject *)(d + 0x24), (Field3dModel *)(d + 0x14));
    Field3dModelAnimation_LoadFromFilesystem((Field3DModelAnimation *)(d + 0x9c), (Field3dModel *)(d + 0x14), (NarcId)0x67, 0xa7, HEAP_ID_FIELD1, (NNSFndAllocator *)d);
    Field3dModelAnimation_LoadFromFilesystem((Field3DModelAnimation *)(d + 0xb0), (Field3dModel *)(d + 0x14), (NarcId)0x67, 0xa5, HEAP_ID_FIELD1, (NNSFndAllocator *)d);
    Field3dObject_AddAnimation((Field3dObject *)(d + 0x24), (Field3DModelAnimation *)(d + 0x9c));
    Field3dObject_AddAnimation((Field3dObject *)(d + 0x24), (Field3DModelAnimation *)(d + 0xb0));
}

WIP_LOCAL void ov02_0224B90C(void *work) {
    u8 *d = (u8 *)work + 0x228;
    ov01_021FBDFC((Field3dModel *)(d + 0x14));
    ov01_021F1448(*(void **)(d + 0x10));
    Field3dModelAnimation_Unload((Field3DModelAnimation *)(d + 0x9c), (NNSFndAllocator *)d);
    Field3dModelAnimation_Unload((Field3DModelAnimation *)(d + 0xb0), (NNSFndAllocator *)d);
}

WIP_LOCAL int ov02_0224B938(void *work) {
    MapObject_SetVisible(*(LocalMapObject **)((u8 *)work + 0x20c), TRUE);
    sub_0205F484(*(LocalMapObject **)((u8 *)work + 0x20c));
    ov02_0224B784(work);
    *(int *)work = *(int *)work + 1;
    return 1;
}

WIP_LOCAL int ov02_0224B964(void *work) {
    if (*(int *)((u8 *)sub_02068D74(*(void **)((u8 *)work + 0x1f0)) + 8) == 1) {
        sub_02068B48(*(int *)((u8 *)work + 0x1f0));
        ov02_0224B90C(work);
        *(int *)work = *(int *)work + 1;
        return 0;
    }
    return 0;
}

void ov02_BattleExit_HandleRoamerAction(FieldSystem *fieldSystem, BattleSetup *setup) {
    Roamer *roamer;
    int roamerIdx;
    Pokemon *mon = Party_GetMonByIndex(*(Party **)((u8 *)setup + 8), 0);
    RoamerSaveData *roamerSave = Save_Roamers_Get(fieldSystem->saveData);
    int species = GetMonData(mon, MON_DATA_SPECIES, NULL);
    roamer = ov02_0224BAA8(roamerSave, species);
    if (roamer != NULL) {
        u16 hp;
        u8 status;
        int action;
        roamerIdx = SpeciesToRoamerIdx((u16)species);
        hp = GetMonData(mon, 0xa3, NULL);
        status = GetMonData(mon, 0xa0, NULL);
        action = *(int *)((u8 *)setup + 0x14);
        if (action == 1 && hp == 0) {
            RoamerMon_Init(&roamer);
            sub_02066BE8(Save_VarsFlags_Get(fieldSystem->saveData), roamerIdx, 2);
        } else if (action == 4) {
            RoamerMon_Init(&roamer);
            sub_02066BE8(Save_VarsFlags_Get(fieldSystem->saveData), roamerIdx, 1);
        } else {
            SetRoamerData(roamer, 5, hp);
            SetRoamerData(roamer, 7, status);
        }
        ov02_RepelActiveRoamersFromMapNo(roamerSave, fieldSystem->location->mapId);
    } else if ((u16)(LCRandom() % 0x64) < 0x1e) {
        ov02_RepelActiveRoamersFromMapNo(roamerSave, fieldSystem->location->mapId);
    }
}

WIP_LOCAL void ov02_RepelActiveRoamersFromMapNo(RoamerSaveData *roamerSave, u32 mapNo) {
    u8 i;
    for (i = 0; i < 4; i++) {
        if (GetRoamerIsActiveByIndex(roamerSave, i)) {
            if (mapNo == GetRoamMapByLocationIdx(Roamer_GetLocation(roamerSave, i))) {
                RoamerLocationUpdateRand(roamerSave, i);
            }
        }
    }
}

WIP_LOCAL Roamer *ov02_0224BAA8(RoamerSaveData *roamerSave, int a1) {
    u8 i;
    for (i = 0; i < 4; i++) {
        if (GetRoamerIsActiveByIndex(roamerSave, i)) {
            Roamer *stats = Roamers_GetRoamMonStats(roamerSave, i);
            if (a1 == GetRoamerData(stats, 4)) {
                return stats;
            }
        }
    }
    return NULL;
}

WIP_LOCAL BOOL PlayerStepEvent_RepelCounterDecrement(SaveData *saveData, FieldSystem *fieldSystem) {
    u8 *repel = RoamerSave_GetRepelAddr(Save_Roamers_Get(saveData));
    if (*repel != 0) {
        *repel = *repel - 1;
        if (*repel == 0) {
            StartMapSceneScript(fieldSystem, std_repel_wore_off, NULL);
            return TRUE;
        }
    }
    return FALSE;
}

void PokecenterAnimCreate(FieldSystem *fieldSystem, u8 kind) {
    int outObj;
    void *outHandle;
    VecFx32 tileCenter;
    VecFx32 local;
    void *data;
    if (sub_02054C20(fieldSystem, 0x24, &outObj, &outHandle)) {
        data = Heap_AllocAtEnd(HEAP_ID_FIELD1, 0x18);
        *(u8 *)((u8 *)data + 0xc) = kind;
        *(u8 *)((u8 *)data + 0xd) = 0;
        *(u8 *)((u8 *)data + 0xe) = 0;
        *(u8 *)((u8 *)data + 0xf) = 0;
        sub_02054DC8((int)outHandle, MapMatrix_GetWidth(fieldSystem->mapMatrix), &tileCenter);
        ov01_021F3B0C(&local, (void *)outObj);
        *(VecFx32 *)data = local;
        ((VecFx32 *)data)->x += tileCenter.x;
        ((VecFx32 *)data)->z += tileCenter.z;
        TaskManager_Call(fieldSystem->taskman, PokecenterAnimRun, data);
    } else {
        GF_AssertFail();
    }
}

WIP_LOCAL BOOL PokecenterAnimRun(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    void *env = TaskManager_GetEnvironment(taskManager);

    switch (*(u8 *)((u8 *)env + 0xf)) {
    case 0: {
        int outObj;
        void *h1 = ov01_021FB90C(0x6b, *(void **)((u8 *)fieldSystem + 0x34));
        void *h2 = ov01_021FB90C(0x25, *(void **)((u8 *)fieldSystem + 0x34));
        NNSG3dResMdl *mdl1 = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*(NNSG3dResFileHeader **)h1), 0);
        NNSG3dResMdl *mdl2 = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*(NNSG3dResFileHeader **)h2), 0);
        void *v;
        void *v5;
        v = ov01_021FB9E0(*(void **)((u8 *)fieldSystem + 0x34));
        ov01_021E8DE8(*(void **)((u8 *)fieldSystem + 0x54), *(void **)((u8 *)fieldSystem + 0x58), 0x10, (void *)0x6b, NULL, mdl1, v, 1, 1, 0);
        if (sub_02054C20(fieldSystem, 0x25, &outObj, NULL) == 0) {
            GF_AssertFail();
        }
        v5 = ov01_021F3B38((void *)outObj);
        v = ov01_021FB9E0(*(void **)((u8 *)fieldSystem + 0x34));
        ov01_021E8DE8(*(void **)((u8 *)fieldSystem + 0x54), *(void **)((u8 *)fieldSystem + 0x58), 0x20, (void *)0x25, v5, mdl2, v, 1, 1, 0);
        (*(u8 *)((u8 *)env + 0xf))++;
        break;
    }
    case 1: {
        VecFx32 vec28;
        VecFx32 vec18;
        int *p = (int *)&vec18;
        p[0] = 0;
        p[1] = 0;
        p[2] = 0;
        vec28.x = ((VecFx32 *)env)->x + ov02_02253D90[*(u8 *)((u8 *)env + 0xd)].x;
        vec28.y = ((VecFx32 *)env)->y + ov02_02253D90[*(u8 *)((u8 *)env + 0xd)].y;
        vec28.z = ((VecFx32 *)env)->z + ov02_02253D90[*(u8 *)((u8 *)env + 0xd)].z;
        PlaySE(SEQ_SE_DP_BOWA);
        *(u8 *)((u8 *)env + *(u8 *)((u8 *)env + 0xd) + 0x10) = ov01_021F3C0C(*(void **)((u8 *)fieldSystem + 0x9c), 0x6b, &vec28, &vec18, *(void **)((u8 *)fieldSystem + 0x54));
        (*(u8 *)((u8 *)env + 0xf))++;
        break;
    }
    case 2:
        if (*(u8 *)((u8 *)env + 0xe) < 0xc) {
            (*(u8 *)((u8 *)env + 0xe))++;
        } else {
            *(u8 *)((u8 *)env + 0xe) = 0;
            (*(u8 *)((u8 *)env + 0xd))++;
            if (*(u8 *)((u8 *)env + 0xd) < *(u8 *)((u8 *)env + 0xc)) {
                *(u8 *)((u8 *)env + 0xf) = 1;
            } else {
                ov01_021E8E40(*(void **)((u8 *)fieldSystem + 0x58), 0x10, 0, ov01_021F3B38(ov01_021F3B60(*(void **)((u8 *)fieldSystem + 0x9c), *(u8 *)((u8 *)env + 0x10))));
                (*(u8 *)((u8 *)env + 0xf))++;
            }
        }
        break;
    case 3:
        ov01_021E8E70(*(void **)((u8 *)fieldSystem + 0x58), 0x10, 0);
        ov01_021E8E70(*(void **)((u8 *)fieldSystem + 0x58), 0x20, 0);
        PlayFanfare(SEQ_ME_ASA);
        (*(u8 *)((u8 *)env + 0xf))++;
        break;
    case 4:
        if (ov01_021E8F10(*(void **)((u8 *)fieldSystem + 0x58), 0x10) && ov01_021E8F10(*(void **)((u8 *)fieldSystem + 0x58), 0x20) && !IsFanfarePlaying()) {
            u8 i;
            ov01_021E8ED0(*(void **)((u8 *)fieldSystem + 0x54), *(void **)((u8 *)fieldSystem + 0x58), 0x20);
            ov01_021E8ED0(*(void **)((u8 *)fieldSystem + 0x54), *(void **)((u8 *)fieldSystem + 0x58), 0x10);
            for (i = 0; i < *(u8 *)((u8 *)env + 0xc); i++) {
                ov01_021F36DC(*(u8 *)((u8 *)env + i + 0x10), *(void **)((u8 *)fieldSystem + 0x9c));
            }
            (*(u8 *)((u8 *)env + 0xf))++;
        }
        break;
    case 5:
        Heap_Free(env);
        return TRUE;
    }
    return FALSE;
}

WIP_LOCAL void ov02_0224BDE8(FieldSystem *fieldSystem, u8 direction, u8 length) {
    if (sub_02054C20(fieldSystem, 0xd0, NULL, NULL) != 0) {
        u8 *env = Heap_AllocAtEnd(HEAP_ID_FIELD1, 4);
        env[0] = length;
        env[1] = direction;
        env[2] = 0;
        TaskManager_Call(fieldSystem->taskman, ov02_0224BE24, env);
    } else {
        GF_AssertFail();
    }
}

WIP_LOCAL BOOL ov02_0224BE24(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    void *env = TaskManager_GetEnvironment(taskManager);

    switch (*(u8 *)((u8 *)env + 2)) {
    case 0: {
        int outObj;
        NNSG3dResMdlSet *mdlSet = NNS_G3dGetMdlSet(*(NNSG3dResFileHeader **)ov01_021FB90C(0xd0, *(void **)((u8 *)fieldSystem + 0x34)));
        NNSG3dResMdl *mdl = NNS_G3dGetMdlByIdx(mdlSet, 0);
        void *v5;
        void *v6;
        if (sub_02054C20(fieldSystem, 0xd0, &outObj, NULL) == 0) {
            GF_AssertFail();
        }
        v5 = ov01_021F3B38((void *)outObj);
        v6 = ov01_021FB9E0(*(void **)((u8 *)fieldSystem + 0x34));
        ov01_021E8DE8(*(void **)((u8 *)fieldSystem + 0x54), *(void **)((u8 *)fieldSystem + 0x58), 1, (void *)0xd0, v5, mdl, v6, 2, *(u8 *)env, 0);
        (*(u8 *)((u8 *)env + 2))++;
        break;
    }
    case 1:
        GF_ASSERT(*(u8 *)((u8 *)env + 1) == 0 || *(u8 *)((u8 *)env + 1) == 1);
        ov01_021E8E70(*(void **)((u8 *)fieldSystem + 0x58), 1, *(u8 *)((u8 *)env + 1));
        PlaySE(SEQ_SE_DP_ELEBETA2);
        (*(u8 *)((u8 *)env + 2))++;
        break;
    case 2:
        if (ov01_021E8F10(*(void **)((u8 *)fieldSystem + 0x58), 1)) {
            StopSE(SEQ_SE_DP_ELEBETA2, 0);
            PlaySE(SEQ_SE_DP_PINPON);
            ov01_021E8ED0(*(void **)((u8 *)fieldSystem + 0x54), *(void **)((u8 *)fieldSystem + 0x58), 1);
            (*(u8 *)((u8 *)env + 2))++;
        }
        break;
    case 3:
        if (!IsSEPlaying(SEQ_SE_DP_PINPON)) {
            (*(u8 *)((u8 *)env + 2))++;
        }
        break;
    case 4:
        Heap_Free(env);
        return TRUE;
    }
    return FALSE;
}

// clang-format off
asm void ov02_0224BF58(FieldSystem *fieldSystem, u8 a1) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x28
    ldr r2, =sRodata+0x3F0
    add r7, r1, #0
    ldr r3, [r2, #0]
    ldr r2, [r2, #4]
    str r3, [sp, #0x18]
    str r2, [sp, #0x1c]
    add r2, sp, #0x20
    str r2, [sp, #0]
    add r1, sp, #0x18
    mov r2, #2
    add r3, sp, #0x24
    add r5, r0, #0
    bl sub_02054C90
    cmp r0, #0
    beq _0224BFB4
    ldr r0, [r5, #0x34]
    bl ov01_021FB9E0
    add r6, r0, #0
    ldr r0, [sp, #0x24]
    bl ov01_021F3B38
    add r4, r0, #0
    ldr r0, [sp, #0x24]
    bl ov01_021F3B3C
    str r4, [sp, #0]
    str r0, [sp, #4]
    str r6, [sp, #8]
    mov r0, #2
    str r0, [sp, #0xc]
    mov r0, #1
    str r0, [sp, #0x10]
    mov r0, #0
    str r0, [sp, #0x14]
    ldr r0, [r5, #0x54]
    ldr r1, [r5, #0x58]
    ldr r3, [sp, #0x20]
    add r2, r7, #0
    bl ov01_021E8DE8
    add sp, #0x28
    pop {r3, r4, r5, r6, r7, pc}
_0224BFB4:
    bl GF_AssertFail
    add sp, #0x28
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

WIP_LOCAL void ov02_0224BFC0(FieldSystem *fieldSystem, u8 a1) {
    ov01_021E8E70(*(void **)((u8 *)fieldSystem + 0x58), a1, 0);
}

WIP_LOCAL void ov02_0224BFCC(FieldSystem *fieldSystem, u8 a1) {
    ov01_021E8E70(*(void **)((u8 *)fieldSystem + 0x58), a1, 1);
}

struct FieldMoveTaskEnvironment *CreateFieldEscapeRopeTaskEnv(FieldSystem *fieldSystem, enum HeapID heapID) {
    struct FieldMoveTaskEnvironment *env = ov02_0224C660(heapID, 0x30);
    *(int *)((u8 *)env + 0xc) = 0;
    *(FieldSystem **)((u8 *)env + 0x24) = fieldSystem;
    *(LocalMapObject **)((u8 *)env + 0x20) = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);
    if ((u32)(PlayerAvatar_GetState(fieldSystem->playerAvatar) - 1) <= 1) {
        *(int *)((u8 *)env + 8) = 0;
    } else if (FollowMon_IsActive(fieldSystem)) {
        *(int *)((u8 *)env + 8) = 1;
    } else {
        *(int *)((u8 *)env + 8) = 0;
    }
    return env;
}

WIP_LOCAL BOOL Task_FieldEscapeRope(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    int r;
    void *env = TaskManager_GetEnvironment(taskManager);
    ov02_FieldTaskFunc const *table = ov02_02253700;
    do {
        r = table[*(int *)env](taskManager, fieldSystem, env);
        if (r == 2) {
            Heap_Free(env);
        }
    } while (r == 1);
    return 0;
}

WIP_LOCAL int ov02_0224C05C(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    void *p = ov01_021FCD2C(fieldSystem, 4);
    *(void **)((u8 *)work + 0x1c) = p;
    ov01_021FCD8C(p, 1, 0xFFF6A000, 0xf);
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), ov02_02253820);
    if (*(int *)((u8 *)work + 8)) {
        *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), ov02_02253820);
    }
    (*(int *)((u8 *)work))++;
    PlaySE(SEQ_SE_DP_KAIDAN2);
    return 0;
}

WIP_LOCAL int ov02_0224C0B0(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (!EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10))) {
        return 0;
    }
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), ov02_02253794);
    if (*(int *)((u8 *)work + 8)) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
        *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), ov02_02253794);
    }
    if (++*(int *)((u8 *)work + 4) < 8) {
        return 0;
    }
    if (*(int *)((u8 *)work + 0xc) == 2) {
        BeginNormalPaletteFade(0, 0, 0, 0, 6, 1, HEAP_ID_FIELD1);
    } else {
        BeginNormalPaletteFade(0, 0, 0, 0x7fff, 6, 1, HEAP_ID_FIELD1);
    }
    (*(int *)((u8 *)work))++;
    return 0;
}

WIP_LOCAL int ov02_0224C14C(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10)) == 1) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
        *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), ov02_02253794);
        if (*(int *)((u8 *)work + 8)) {
            EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
            *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), ov02_02253794);
        }
    }
    if (!IsPaletteFadeFinished()) {
        return 0;
    }
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
    if (*(int *)((u8 *)work + 8)) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
    }
    ov01_021FCD78(*(SysTask **)((u8 *)work + 0x1c));
    (*(int *)((u8 *)work))++;
    return 1;
}

WIP_LOCAL int ov02_0224C1B8(TaskManager *taskManager, void *a1, void *a2) {
    LocalFieldData *ldfd = Save_LocalFieldData_Get(*(SaveData **)((u8 *)a1 + 0xc));
    Location *warp = LocalFieldData_GetSpecialSpawnWarpPtr(ldfd);
    sub_02053B04(taskManager, warp, *(int *)((u8 *)a2 + 0xc));
    return 2;
}

WIP_LOCAL void *ov02_0224C1D8(FieldSystem *fieldSystem, int a1, int a2) {
    void *p = ov02_0224C660((enum HeapID)a1, 0x30);
    *(int *)((u8 *)p + 0xc) = a2;
    *(FieldSystem **)((u8 *)p + 0x24) = fieldSystem;
    *(LocalMapObject **)((u8 *)p + 0x20) = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);
    return p;
}

WIP_LOCAL BOOL ov02_0224C1F8(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    void *env = TaskManager_GetEnvironment(taskManager);
    int r;
    ov02_FieldTaskFunc const *table = ov02_022536F0;
    do {
        r = table[*(int *)env](taskManager, fieldSystem, env);
        if (r == 2) {
            Heap_Free(env);
            return TRUE;
        }
    } while (r == 1);
    return FALSE;
}

WIP_LOCAL int ov02_0224C234(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    void *p;
    if (*(int *)((u8 *)work + 0xc) == 2) {
        BeginNormalPaletteFade(0, 1, 1, 0, 6, 1, HEAP_ID_FIELD1);
    } else {
        BeginNormalPaletteFade(0, 1, 1, 0x7fff, 6, 1, HEAP_ID_FIELD1);
    }
    p = ov01_021FCD2C(fieldSystem, 4);
    *(void **)((u8 *)work + 0x1c) = p;
    ov01_021FCD8C(p, 1, 0xFFF6A000, 1);
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), ov02_02253794);
    (*(int *)((u8 *)work))++;
    return 0;
}

WIP_LOCAL int ov02_0224C2A8(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10)) == 1) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
        *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), ov02_02253794);
    }
    if (!IsPaletteFadeFinished()) {
        return 0;
    }
    ov01_021FCD8C(*(void **)((u8 *)work + 0x1c), 2, 0, 0x3c);
    (*(int *)((u8 *)work))++;
    return 1;
}

WIP_LOCAL int ov02_0224C2EC(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (!EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10))) {
        return 0;
    }
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
    if (++*(int *)((u8 *)work + 4) < 4) {
        *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), ov02_02253794);
        return 0;
    }
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), ov02_02253884);
    (*(int *)((u8 *)work))++;
    return 0;
}

WIP_LOCAL int ov02_0224C338(void *a0, void *a1, void *work) {
    if (!EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10))) {
        return 0;
    }
    if (!ov01_021FCD6C(*(SysTask **)((u8 *)work + 0x1c))) {
        return 0;
    }
    ov01_021FCD78(*(SysTask **)((u8 *)work + 0x1c));
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
    return 2;
}

struct FieldMoveTaskEnvironment *FieldMoveTask_CreateDigEnvironment(FieldSystem *fieldSystem, Pokemon *mon, u8 slotno, enum HeapID heapID) {
    struct FieldMoveTaskEnvironment *env = ov02_0224C660(heapID, 0x30);
    *(int *)((u8 *)env + 0xc) = 1;
    *(FieldSystem **)((u8 *)env + 0x24) = fieldSystem;
    *(LocalMapObject **)((u8 *)env + 0x20) = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);
    *(Pokemon **)((u8 *)env + 0x28) = mon;
    if (ov01_02206268(fieldSystem) && slotno == ov01_022062CC(fieldSystem)) {
        *(int *)((u8 *)env + 8) = 1;
    } else {
        *(int *)((u8 *)env + 8) = 0;
    }
    return env;
}

// clang-format off
asm BOOL Task_FieldDig(TaskManager *taskManager) {
    push {r3, r4, r5, r6, r7, lr}
    add r7, r0, #0
    bl TaskManager_GetFieldSystem
    add r6, r0, #0
    add r0, r7, #0
    bl TaskManager_GetEnvironment
    add r4, r0, #0
    add r0, r7, #0
    bl TaskManager_GetStatePtr
    add r5, r0, #0
    ldr r0, [r5, #0]
    cmp r0, #3
    bhi _0224C4A2
    add r1, r0, r0
    add r1, pc
    ldrh r1, [r1, #6]
    lsl r1, r1, #0x10
    asr r1, r1, #0x10
    add pc, r1
    lsl r6, r0, #0
    lsl r6, r3, #0
    lsl r0, r2, #1
    lsl r2, r0, #2
_0224C3E0:
    ldr r0, [r4, #8]
    cmp r0, #0
    beq _0224C3F0
    ldr r1, =ov01_02205A60
    add r0, r7, #0
    mov r2, #0
    bl TaskManager_Call
_0224C3F0:
    ldr r0, [r5, #0]
    add r0, r0, #1
    str r0, [r5, #0]
    b _0224C4A2
_0224C3F8:
    add r0, r0, #1
    str r0, [r5, #0]
    ldr r0, [r4, #8]
    cmp r0, #0
    beq _0224C42A
    add r0, r6, #0
    mov r1, #4
    bl ov02_02250780
    cmp r0, #0
    beq _0224C41E
    mov r0, #0x42
    lsl r0, r0, #2
    ldr r0, [r6, r0]
    mov r1, #1
    mov r4, #2
    bl FieldSystem_UnkSub108_AddMonMood
    b _0224C420
_0224C41E:
    mov r4, #1
_0224C420:
    add r0, r6, #0
    add r1, r4, #0
    bl ov02_022507B4
    b _0224C4A2
_0224C42A:
    ldr r0, [r4, #8]
    cmp r0, #0
    beq _0224C456
    ldr r0, [r4, #0x28]
    mov r1, #5
    mov r2, #0
    bl GetMonData
    str r0, [sp, #0]
    ldr r0, [r4, #0x28]
    mov r1, #0x70
    mov r2, #0
    bl GetMonData
    add r1, r0, #0
    ldr r0, [sp, #0]
    lsl r1, r1, #0x18
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    lsr r1, r1, #0x18
    bl PlayCry
_0224C456:
    ldr r0, [r5, #0]
    add r0, r0, #1
    str r0, [r5, #0]
_0224C45C:
    ldr r0, [r4, #8]
    cmp r0, #0
    beq _0224C482
    bl IsCryFinished
    cmp r0, #0
    beq _0224C46E
    mov r5, #0
    b _0224C494
_0224C46E:
    ldr r3, [r4, #0]
    add r0, r7, #0
    lsl r5, r3, #2
    ldr r3, =sRodata+0x418
    add r1, r6, #0
    ldr r3, [r3, r5]
    add r2, r4, #0
    blx r3
    add r5, r0, #0
    b _0224C494
_0224C482:
    ldr r3, [r4, #0]
    add r0, r7, #0
    lsl r5, r3, #2
    ldr r3, =sRodata+0x45C
    add r1, r6, #0
    ldr r3, [r3, r5]
    add r2, r4, #0
    blx r3
    add r5, r0, #0
_0224C494:
    cmp r5, #2
    bne _0224C49E
    add r0, r4, #0
    bl Heap_Free
_0224C49E:
    cmp r5, #1
    beq _0224C45C
_0224C4A2:
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
    nop
}
// clang-format on

WIP_LOCAL int ov02_0224C4B4(void *a0, FieldSystem *fieldSystem, void *work) {
    u32 gender = PlayerAvatar_GetGender(fieldSystem->playerAvatar);
    *(void **)((u8 *)work + 0x18) = ov02_02249458(fieldSystem, 0, *(Pokemon **)((u8 *)work + 0x28), gender);
    *(int *)work = *(int *)work + 1;
    return 0;
}

WIP_LOCAL int ov02_0224C4D8(void *a0, void *a1, void *work) {
    if (!ov02_0224953C(*(void **)((u8 *)work + 0x18))) {
        return 0;
    }
    ov02_02249548(*(void **)((u8 *)work + 0x18));
    ov01_02205D68(*(FieldSystem **)((u8 *)work + 0x24));
    *(int *)work = *(int *)work + 1;
    return 0;
}

struct FieldMoveTaskEnvironment *FieldMoveTask_CreateTeleportEnvironment(FieldSystem *fieldSystem, Pokemon *mon, u8 slotno, enum HeapID heapID) {
    struct FieldMoveTaskEnvironment *env = ov02_0224C660(heapID, 0x30);
    *(int *)((u8 *)env + 0xc) = 2;
    *(FieldSystem **)((u8 *)env + 0x24) = fieldSystem;
    *(LocalMapObject **)((u8 *)env + 0x20) = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);
    *(Pokemon **)((u8 *)env + 0x28) = mon;
    if ((u32)(PlayerAvatar_GetState(fieldSystem->playerAvatar) - 1) <= 1) {
        *(int *)((u8 *)env + 8) = 0;
    } else if (ov01_02206268(fieldSystem) && slotno == ov01_022062CC(fieldSystem)) {
        *(int *)((u8 *)env + 8) = 1;
    } else {
        *(int *)((u8 *)env + 8) = 0;
    }
    return env;
}

// clang-format off
asm BOOL Task_FieldTeleport(TaskManager *taskManager) {
    push {r3, r4, r5, r6, r7, lr}
    add r7, r0, #0
    bl TaskManager_GetFieldSystem
    add r6, r0, #0
    add r0, r7, #0
    bl TaskManager_GetEnvironment
    add r4, r0, #0
    add r0, r7, #0
    bl TaskManager_GetStatePtr
    add r5, r0, #0
    ldr r0, [r5, #0]
    cmp r0, #3
    bhi _0224C64E
    add r1, r0, r0
    add r1, pc
    ldrh r1, [r1, #6]
    lsl r1, r1, #0x10
    asr r1, r1, #0x10
    add pc, r1
    lsl r6, r0, #0
    lsl r6, r3, #0
    lsl r0, r2, #1
    lsl r2, r0, #2
_0224C58C:
    ldr r0, [r4, #8]
    cmp r0, #0
    beq _0224C59C
    ldr r1, =ov01_02205A60
    add r0, r7, #0
    mov r2, #0
    bl TaskManager_Call
_0224C59C:
    ldr r0, [r5, #0]
    add r0, r0, #1
    str r0, [r5, #0]
    b _0224C64E
_0224C5A4:
    add r0, r0, #1
    str r0, [r5, #0]
    ldr r0, [r4, #8]
    cmp r0, #0
    beq _0224C5D6
    add r0, r6, #0
    mov r1, #0xe
    bl ov02_02250780
    cmp r0, #0
    beq _0224C5CA
    mov r0, #0x42
    lsl r0, r0, #2
    ldr r0, [r6, r0]
    mov r1, #1
    mov r4, #2
    bl FieldSystem_UnkSub108_AddMonMood
    b _0224C5CC
_0224C5CA:
    mov r4, #1
_0224C5CC:
    add r0, r6, #0
    add r1, r4, #0
    bl ov02_022507B4
    b _0224C64E
_0224C5D6:
    ldr r0, [r4, #8]
    cmp r0, #0
    beq _0224C602
    ldr r0, [r4, #0x28]
    mov r1, #5
    mov r2, #0
    bl GetMonData
    str r0, [sp, #0]
    ldr r0, [r4, #0x28]
    mov r1, #0x70
    mov r2, #0
    bl GetMonData
    add r1, r0, #0
    ldr r0, [sp, #0]
    lsl r1, r1, #0x18
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    lsr r1, r1, #0x18
    bl PlayCry
_0224C602:
    ldr r0, [r5, #0]
    add r0, r0, #1
    str r0, [r5, #0]
_0224C608:
    ldr r0, [r4, #8]
    cmp r0, #0
    beq _0224C62E
    bl IsCryFinished
    cmp r0, #0
    beq _0224C61A
    mov r5, #0
    b _0224C640
_0224C61A:
    ldr r3, [r4, #0]
    add r0, r7, #0
    lsl r5, r3, #2
    ldr r3, =sRodata+0x444
    add r1, r6, #0
    ldr r3, [r3, r5]
    add r2, r4, #0
    blx r3
    add r5, r0, #0
    b _0224C640
_0224C62E:
    ldr r3, [r4, #0]
    add r0, r7, #0
    lsl r5, r3, #2
    ldr r3, =sRodata+0x42C
    add r1, r6, #0
    ldr r3, [r3, r5]
    add r2, r4, #0
    blx r3
    add r5, r0, #0
_0224C640:
    cmp r5, #2
    bne _0224C64A
    add r0, r4, #0
    bl Heap_Free
_0224C64A:
    cmp r5, #1
    beq _0224C608
_0224C64E:
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
    nop
}
// clang-format on

WIP_LOCAL void *ov02_0224C660(enum HeapID heapID, u32 size) {
    void *ptr = Heap_AllocAtEnd(heapID, size);
    if (ptr == NULL) {
        GF_AssertFail();
    }
    memset(ptr, 0, size);
    return ptr;
}

WIP_LOCAL int ov02_0224C680(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov01_022060B8(fieldSystem, 2, 1);
    *(int *)data = *(int *)data + 1;
    return 0;
}

WIP_LOCAL int ov02_0224C698(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    void *p = ov01_021FCD2C(fieldSystem, 4);
    *(void **)((u8 *)work + 0x1c) = p;
    ov01_021FCD8C(p, 1, 0xFFF6A000, 0xf);
    *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), ov02_02253770);
    (*(int *)((u8 *)work))++;
    PlaySE(SEQ_SE_DP_TELE);
    return 0;
}

WIP_LOCAL int ov02_0224C6DC(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (!EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x14))) {
        return 0;
    }
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), ov02_02253820);
    *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), ov02_02253820);
    (*(int *)((u8 *)work))++;
    return 0;
}

WIP_LOCAL int ov02_0224C71C(void *a0, FieldSystem *fieldSystem, void *work) {
    void *sysTask = ov01_021FCD2C(fieldSystem, 4);
    *(void **)((u8 *)work + 0x1c) = sysTask;
    ov01_021FCD8C(sysTask, 1, 0xFFF6A000, 0xf);
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), ov02_02253820);
    *(int *)work = *(int *)work + 1;
    PlaySE(SEQ_SE_DP_TELE);
    return 0;
}

WIP_LOCAL int ov02_0224C75C(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (!EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10))) {
        return 0;
    }
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), ov02_02253794);
    if (*(int *)((u8 *)work + 8)) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
        *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), ov02_02253794);
    }
    if (++*(int *)((u8 *)work + 4) < 8) {
        return 0;
    }
    BeginNormalPaletteFade(0, 0, 0, 0, 6, 1, HEAP_ID_FIELD1);
    (*(int *)((u8 *)work))++;
    return 0;
}

WIP_LOCAL int ov02_0224C7D4(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10)) == 1) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
        *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), ov02_02253794);
        if (*(int *)((u8 *)work + 8)) {
            EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
            *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), ov02_02253794);
        }
    }
    if (!IsPaletteFadeFinished()) {
        return 0;
    }
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
    if (*(int *)((u8 *)work + 8)) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
    }
    ov01_021FCD78(*(SysTask **)((u8 *)work + 0x1c));
    (*(int *)((u8 *)work))++;
    return 1;
}

WIP_LOCAL int ov02_0224C840(TaskManager *taskManager, void *a1, void *a2) {
    Location loc;
    LocalFieldData *save = Save_LocalFieldData_Get(*(SaveData **)((u8 *)a1 + 0xc));
    u16 blackoutSpawn = LocalFieldData_GetBlackoutSpawn(save);
    GetFlyWarpData(blackoutSpawn, &loc);
    GetSpecialSpawnWarpData(blackoutSpawn, LocalFieldData_GetSpecialSpawnWarpPtr(save));
    sub_02053B04(taskManager, &loc, *(int *)((u8 *)a2 + 0xc));
    return 2;
}

WIP_LOCAL int ov02_0224C87C(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    void *p = ov01_021FCD2C(fieldSystem, 4);
    *(void **)((u8 *)work + 0x1c) = p;
    ov01_021FCD8C(p, 1, 0xFFF6A000, 0xf);
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), ov02_022537DC);
    if (*(int *)((u8 *)work + 8)) {
        *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), ov02_022537DC);
    }
    (*(int *)((u8 *)work))++;
    PlaySE(SEQ_SE_DP_KAIDAN2);
    return 0;
}

WIP_LOCAL int ov02_0224C8D0(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (!EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10))) {
        return 0;
    }
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), ov02_022537B8);
    if (*(int *)((u8 *)work + 8)) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
        *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), ov02_022537B8);
    }
    if (PlayerAvatar_GetState(fieldSystem->playerAvatar) != 2) {
        if (*(int *)((u8 *)work + 8)) {
            *(Field3dObjectTask **)((u8 *)work + 0x2c) = ov02_0224DDF4(*(FieldSystem **)((u8 *)work + 0x24));
        } else {
            *(Field3dObjectTask **)((u8 *)work + 0x2c) = ov02_0224DDE0(*(FieldSystem **)((u8 *)work + 0x24));
        }
    }
    (*(int *)((u8 *)work))++;
    return 0;
}

WIP_LOCAL int ov02_0224C93C(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (!EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10))) {
        return 0;
    }
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), ov02_02253794);
    if (*(int *)((u8 *)work + 8)) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
        *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), ov02_02253794);
    }
    if (++*(int *)((u8 *)work + 4) < 8) {
        return 0;
    }
    BeginNormalPaletteFade(0, 0, 0, 0x7fff, 6, 1, HEAP_ID_FIELD1);
    (*(int *)((u8 *)work))++;
    return 0;
}

WIP_LOCAL int ov02_0224C9B8(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10)) == 1) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
        *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), ov02_02253794);
        if (*(int *)((u8 *)work + 8)) {
            EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
            *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), ov02_02253794);
        }
    }
    if (!IsPaletteFadeFinished()) {
        return 0;
    }
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
    if (PlayerAvatar_GetState(fieldSystem->playerAvatar) != 2) {
        ov02_0224DE08(*(Field3dObjectTask **)((u8 *)work + 0x2c));
        *(Field3dObjectTask **)((u8 *)work + 0x2c) = NULL;
    }
    if (*(int *)((u8 *)work + 8)) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
    }
    ov01_021FCD78(*(SysTask **)((u8 *)work + 0x1c));
    (*(int *)((u8 *)work))++;
    return 1;
}

WIP_LOCAL int ov02_0224CA38(TaskManager *taskManager, void *a1, void *a2) {
    LocalFieldData *ldfd = Save_LocalFieldData_Get(*(SaveData **)((u8 *)a1 + 0xc));
    Location *warp = LocalFieldData_GetSpecialSpawnWarpPtr(ldfd);
    sub_02053B04(taskManager, warp, *(int *)((u8 *)a2 + 0xc));
    return 2;
}

// ov02_0224CA58
// clang-format off
asm void ov02_0224CA58(u8 *arr, int n, u8 val) {
    push {r4, r5, r6, r7}
    add r3, r0, #0
    add r0, r2, #0
    sub r0, r0, #1
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r2, #0
    beq _0224CAB4
    add r6, r3, r1
    sub r7, r1, #1
_0224CA6C:
    sub r1, r6, #1
    ldrb r2, [r1, #0]
    mov r1, #1
    add r5, r7, #0
    and r1, r2
    lsl r1, r1, #0x18
    lsr r4, r1, #0x18
    cmp r7, #0
    ble _0224CA9A
_0224CA7E:
    ldrb r1, [r3, r5]
    add r2, r3, r5
    sub r2, r2, #1
    asr r1, r1, #1
    strb r1, [r3, r5]
    ldrb r2, [r2, #0]
    ldrb r1, [r3, r5]
    lsl r2, r2, #0x1f
    lsr r2, r2, #0x18
    orr r1, r2
    strb r1, [r3, r5]
    sub r5, r5, #1
    cmp r5, #0
    bgt _0224CA7E
_0224CA9A:
    ldrb r1, [r3, r5]
    asr r1, r1, #1
    strb r1, [r3, r5]
    ldrb r2, [r3, r5]
    lsl r1, r4, #7
    orr r1, r2
    strb r1, [r3, r5]
    add r1, r0, #0
    sub r0, r0, #1
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r1, #0
    bne _0224CA6C
_0224CAB4:
    pop {r4, r5, r6, r7}
    bx lr
}
// clang-format on

WIP_LOCAL int ov02_0224CAB8(WallpaperPasswordBank *bank, u16 trainerId, u16 a, u16 b, u16 c, u16 d) {
    s16 idx[4];
    u8 out[4];
    int count;
    int k;
    int val;
    int combined;

    count = WallpaperPasswordBank_GetCount(bank);
    idx[0] = WallpaperPasswordBank_GetIndexOfWord(bank, a);
    idx[1] = WallpaperPasswordBank_GetIndexOfWord(bank, b);
    idx[2] = WallpaperPasswordBank_GetIndexOfWord(bank, c);
    idx[3] = WallpaperPasswordBank_GetIndexOfWord(bank, d);

    for (k = 0; k < 4; k++) {
        if (idx[k] < 0) {
            return -1;
        }
        if (k > 0) {
            if (idx[k] >= idx[k - 1]) {
                int v = idx[k] - idx[k - 1];
                if (v > 0xff) {
                    return -1;
                }
                out[k] = v;
            } else {
                int v = count - (idx[k - 1] - idx[k]);
                if (v > 0xff) {
                    return -1;
                }
                out[k] = v;
            }
        } else {
            if (idx[0] > 0xff) {
                return -1;
            }
            out[0] = idx[0];
        }
    }

    ov02_0224CA58(out, 4, 5);

    for (k = 0; k < 3; k++) {
        out[k] ^= (out[3] >> 4) | (out[3] & 0xf0);
    }

    ov02_0224CA58(out, 3, out[3] & 0xf);

    val = out[0] & 0xf;
    if (val >= 8) {
        return -1;
    }
    out[1] ^= out[0];
    out[2] ^= out[0];
    combined = (out[1] << 8) | out[2];
    if (trainerId == combined && ((out[0] & 0xf0) >> 4) == 6 && out[3] == (u8)((out[0] + out[1]) * out[2])) {
        return val;
    }
    return -1;
}

WIP_LOCAL int ov02_0224CBF8(WallpaperPasswordBank *bank, u16 trainerId, u16 a, u16 b, u16 c, u16 d) {
    s16 idx[4];
    u8 out[4];
    int count;
    int k;
    int val;
    int combined;

    count = WallpaperPasswordBank_GetCount(bank);
    idx[0] = WallpaperPasswordBank_GetIndexOfWord(bank, a);
    idx[1] = WallpaperPasswordBank_GetIndexOfWord(bank, b);
    idx[2] = WallpaperPasswordBank_GetIndexOfWord(bank, c);
    idx[3] = WallpaperPasswordBank_GetIndexOfWord(bank, d);

    for (k = 0; k < 4; k++) {
        if (idx[k] < 0) {
            return -1;
        }
        if (k > 0) {
            if (idx[k] >= idx[k - 1]) {
                int v = idx[k] - idx[k - 1];
                if (v > 0xff) {
                    return -1;
                }
                out[k] = v;
            } else {
                int v = count - (idx[k - 1] - idx[k]);
                if (v > 0xff) {
                    return -1;
                }
                out[k] = v;
            }
        } else {
            if (idx[0] > 0xff) {
                return -1;
            }
            out[0] = idx[0];
        }
    }

    ov02_0224CA58(out, 4, 5);

    for (k = 0; k < 3; k++) {
        out[k] ^= (out[3] >> 4) | (out[3] & 0xf0);
    }

    ov02_0224CA58(out, 3, out[3] & 0xf);

    val = out[0] & 0xf;
    if ((u8)val < 8 || (u8)val >= 0xb) {
        return -1;
    }
    out[1] ^= out[0];
    out[2] ^= out[0];
    combined = (out[1] << 8) | out[2];
    if (trainerId == combined && ((out[0] & 0xf0) >> 4) == 6 && out[3] == (u8)((out[0] + out[1]) * out[2])) {
        return val;
    }
    return -1;
}

WIP_LOCAL int ov02_0224CD38(PlayerProfile *profile, u16 a, u16 b, u16 c, u16 d, enum HeapID heapID) {
    int ret;
    WallpaperPasswordBank *bank = WallpaperPasswordBank_Create(heapID);
    ret = ov02_0224CAB8(bank, PlayerProfile_GetTrainerID_VisibleHalf(profile), a, b, c, d);
    WallpaperPasswordBank_Delete(bank);
    return ret;
}

WIP_LOCAL int ov02_0224CD74(PlayerProfile *profile, u16 a, u16 b, u16 c, u16 d, enum HeapID heapID) {
    int ret;
    WallpaperPasswordBank *bank = WallpaperPasswordBank_Create(heapID);
    ret = ov02_0224CBF8(bank, PlayerProfile_GetTrainerID_VisibleHalf(profile), a, b, c, d);
    WallpaperPasswordBank_Delete(bank);
    return ret;
}

void ov02_0224CDB0(FieldSystem *fieldSystem, u8 a1) {
    int outObj;
    void *outHandle;
    VecFx32 tileCenter;
    VecFx32 local;
    void *data;
    if (sub_02054C20(fieldSystem, 0x26, &outObj, &outHandle)) {
        data = Heap_AllocAtEnd(HEAP_ID_FIELD1, 0x18);
        *(u8 *)((u8 *)data + 0xc) = a1;
        *(u8 *)((u8 *)data + 0xd) = 0;
        *(u8 *)((u8 *)data + 0xe) = 0;
        *(u8 *)((u8 *)data + 0xf) = 0;
        sub_02054DC8((int)outHandle, MapMatrix_GetWidth(fieldSystem->mapMatrix), &tileCenter);
        ov01_021F3B0C(&local, (void *)outObj);
        *(VecFx32 *)data = local;
        ((VecFx32 *)data)->x += tileCenter.x;
        ((VecFx32 *)data)->z += tileCenter.z;
        TaskManager_Call(fieldSystem->taskman, ov02_0224CE28, data);
    } else {
        GF_AssertFail();
    }
}

WIP_LOCAL BOOL ov02_0224CE28(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    void *env = TaskManager_GetEnvironment(taskManager);

    switch (*(u8 *)((u8 *)env + 0xf)) {
    case 0: {
        NNSG3dResMdlSet *mdlSet = NNS_G3dGetMdlSet(*(NNSG3dResFileHeader **)ov01_021FB90C(0x6b, *(void **)((u8 *)fieldSystem + 0x34)));
        NNSG3dResMdl *mdl = NNS_G3dGetMdlByIdx(mdlSet, 0);
        void *v = ov01_021FB9E0(*(void **)((u8 *)fieldSystem + 0x34));
        ov01_021E8DE8(*(void **)((u8 *)fieldSystem + 0x54), *(void **)((u8 *)fieldSystem + 0x58), 0x10, (void *)0x6b, NULL, mdl, v, 1, 1, 0);
        (*(u8 *)((u8 *)env + 0xf))++;
        break;
    }
    case 1: {
        VecFx32 vec24;
        VecFx32 vec18;
        int *p = (int *)&vec18;
        p[0] = 0;
        p[1] = 0;
        p[2] = 0;
        vec24.x = ((VecFx32 *)env)->x + ov02_02253DD8[*(u8 *)((u8 *)env + 0xd)].x;
        vec24.y = ((VecFx32 *)env)->y + ov02_02253DD8[*(u8 *)((u8 *)env + 0xd)].y;
        vec24.z = ((VecFx32 *)env)->z + ov02_02253DD8[*(u8 *)((u8 *)env + 0xd)].z;
        PlaySE(SEQ_SE_DP_BOWA);
        *(u8 *)((u8 *)env + *(u8 *)((u8 *)env + 0xd) + 0x10) = ov01_021F3C0C(*(void **)((u8 *)fieldSystem + 0x9c), 0x6b, &vec24, &vec18, *(void **)((u8 *)fieldSystem + 0x54));
        (*(u8 *)((u8 *)env + 0xf))++;
        break;
    }
    case 2:
        if (*(u8 *)((u8 *)env + 0xe) < 0xf) {
            (*(u8 *)((u8 *)env + 0xe))++;
        } else {
            *(u8 *)((u8 *)env + 0xe) = 0;
            (*(u8 *)((u8 *)env + 0xd))++;
            if (*(u8 *)((u8 *)env + 0xd) < *(u8 *)((u8 *)env + 0xc)) {
                *(u8 *)((u8 *)env + 0xf) = 1;
            } else {
                ov01_021E8E40(*(void **)((u8 *)fieldSystem + 0x58), 0x10, 0, ov01_021F3B38(ov01_021F3B60(*(void **)((u8 *)fieldSystem + 0x9c), *(u8 *)((u8 *)env + 0x10))));
                (*(u8 *)((u8 *)env + 0xf))++;
            }
        }
        break;
    case 3:
        ov01_021E8E70(*(void **)((u8 *)fieldSystem + 0x58), 0x10, 0);
        (*(u8 *)((u8 *)env + 0xf))++;
        break;
    case 4:
        if (ov01_021E8F10(*(void **)((u8 *)fieldSystem + 0x58), 0x10)) {
            u8 i;
            ov01_021E8ED0(*(void **)((u8 *)fieldSystem + 0x54), *(void **)((u8 *)fieldSystem + 0x58), 0x10);
            for (i = 0; i < *(u8 *)((u8 *)env + 0xc); i++) {
                ov01_021F36DC(*(u8 *)((u8 *)env + i + 0x10), *(void **)((u8 *)fieldSystem + 0x9c));
            }
            (*(u8 *)((u8 *)env + 0xf))++;
        }
        break;
    case 5:
        Heap_Free(env);
        return TRUE;
    }
    return FALSE;
}

WIP_LOCAL void ov02_0224CFD8(void *a0, int a1, void *data) {
    VecFx32 vec;
    LocalMapObject *obj = MapObjectManager_GetFirstActiveObjectByID(a0, a1);
    u32 x;
    u32 z;
    MapObject_CopyPositionVector(obj, &vec);
    x = MapObject_GetXCoord(obj);
    z = MapObject_GetZCoord(obj);
    switch (MapObject_GetFacingDirection(obj)) {
    case 0:
        z--;
        break;
    case 1:
        z++;
        break;
    case 2:
        x--;
        break;
    case 3:
        x++;
        break;
    default:
        GF_AssertFail();
        break;
    }
    Field3dObject_SetPosEx(data, (x << 0x10) + 0x8000, vec.y, (z << 0x10) + 0x8000);
}

WIP_LOCAL void ov02_0224D044(void *a0, void *data) {
    VecFx32 vec;
    u32 x;
    u32 z;
    PlayerAvatar_CopyPositionVector(a0, &vec);
    x = PlayerAvatar_GetXCoord(a0);
    z = PlayerAvatar_GetZCoord(a0);
    switch (PlayerAvatar_GetFacingDirection(a0)) {
    case 0:
        z--;
        break;
    case 1:
        z++;
        break;
    case 2:
        x--;
        break;
    case 3:
        x++;
        break;
    default:
        GF_AssertFail();
        break;
    }
    Field3dObject_SetPosEx(data, (x << 0x10) + 0x8000, vec.y, (z << 0x10) + 0x8000);
}

WIP_LOCAL void ov02_0224D0AC(void *playerAvatar, void *obj) {
    VecFx32 pos;
    PlayerAvatar_CopyPositionVector(playerAvatar, &pos);
    Field3dObject_SetPosEx((Field3dObject *)obj, pos.x, pos.y, pos.z);
}

WIP_LOCAL void ov02_0224D0C8(void *data, int a1, int a2, int a3, void *a4) {
    int i;
    u8 *anim;
    memset(data, 0, 0xdc);
    Field3dModel_LoadFromFilesystem((Field3dModel *)((u8 *)data + 0x78), NARC_a_1_3_4, a1, HEAP_ID_FIELD1);
    Field3dObject_InitFromModel((Field3dObject *)data, (Field3dModel *)((u8 *)data + 0x78));
    *(int *)((u8 *)data + 0xd8) = a3;
    i = 0;
    if ((u32)i < *(u32 *)((u8 *)data + 0xd8)) {
        anim = (u8 *)data + 0x88;
        do {
            Field3dModelAnimation_LoadFromFilesystem((Field3DModelAnimation *)anim, (Field3dModel *)((u8 *)data + 0x78), NARC_a_1_3_4, a2 + i, HEAP_ID_FIELD1, a4);
            Field3dObject_AddAnimation((Field3dObject *)data, (Field3DModelAnimation *)anim);
            i++;
            anim += 0x14;
        } while (i < *(u32 *)((u8 *)data + 0xd8));
    }
}

WIP_LOCAL void ov02_0224D144(void *obj, void *alloc) {
    u32 i;
    Field3dModel_Unload((Field3dModel *)((u8 *)obj + 0x78));
    for (i = 0; i < *(u32 *)((u8 *)obj + 0xd8); i++) {
        Field3dModelAnimation_Unload((Field3DModelAnimation *)((u8 *)obj + 0x88 + i * 0x14), (NNSFndAllocator *)alloc);
    }
}

WIP_LOCAL BOOL ov02_0224D178(void *obj) {
    BOOL result = TRUE;
    u32 i;
    for (i = 0; i < *(u32 *)((u8 *)obj + 0xd8); i++) {
        result &= Field3dModelAnimation_FrameAdvanceAndCheck((Field3DModelAnimation *)((u8 *)obj + 0x88 + i * 0x14), FX32_ONE);
    }
    return result;
}

WIP_LOCAL void ov02_0224D1AC(void *data) {
    u32 i;
    for (i = 0; i < *(u32 *)((u8 *)data + 0xd8); i++) {
        Field3dModelAnimation_FrameAdvanceAndLoop((Field3DModelAnimation *)((u8 *)data + 0x88 + i * 0x14), FX32_ONE);
    }
}

WIP_LOCAL void ov02_0224D1DC(Field3dObject *object) {
    Field3dObject_Draw(object);
}

WIP_LOCAL void ov02_0224D1E4(void *a0, void *a1, void *data) {
    memset(data, 0, 0xf0);
    HeapExp_FndInitAllocator((NNSFndAllocator *)((u8 *)data + 0xdc), HEAP_ID_FIELD1, 0x20);
    ov02_0224D0C8(data, 3, 0, 3, (u8 *)data + 0xdc);
    ov02_0224D044(*(void **)((u8 *)a1 + 0x40), data);
    PlaySE(SEQ_SE_DP_FW015);
    *(int *)((u8 *)data + 0xec) = 0;
}

WIP_LOCAL void ov02_0224D22C(void *a0, void *a1, void *data) {
    memset(data, 0, 0xf0);
    HeapExp_FndInitAllocator((NNSFndAllocator *)((u8 *)data + 0xdc), HEAP_ID_FIELD1, 0x20);
    ov02_0224D0C8(data, 3, 0, 3, (u8 *)data + 0xdc);
    ov02_0224CFD8(*(void **)((u8 *)a1 + 0x3c), 0xfd, data);
    PlaySE(SEQ_SE_DP_FW015);
    *(int *)((u8 *)data + 0xec) = 0;
}

WIP_LOCAL void ov02_0224D278(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D144(data, (u8 *)data + 0xdc);
}

WIP_LOCAL void ov02_0224D288(Field3dObjectTask *task, FieldSystem *fieldSystem, Field3dObject *obj) {
    switch (*(int *)((u8 *)obj + 0xec)) {
    case 0:
        if (ov02_0224D178(obj) == 1) {
            Field3dObject_SetActiveFlag(obj, 0);
            (*(int *)((u8 *)obj + 0xec))++;
        }
        break;
    case 1:
        break;
    }
}

WIP_LOCAL void ov02_0224D2BC(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D1DC(data);
}

// Field3dObject task "create" wrappers (table ov02_02253A1C etc.), each invoked
// with a0 = fieldSystem by ov02_0224E074. Templates are deferred rodata (extern).
WIP_LOCAL Field3dObjectTask *ov02_0224D2C8(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_02253974);
}

WIP_LOCAL Field3dObjectTask *ov02_0224D2DC(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_022539BC);
}

WIP_LOCAL void ov02_0224D2F0(Field3dObjectTask *task) {
    Field3dObjectTask_Delete(task);
}

WIP_LOCAL BOOL ov02_0224D2F8(Field3dObjectTask *task) {
    return *(int *)((u8 *)Field3dObjectTask_GetData(task) + 0xec) == 1;
}

WIP_LOCAL void ov02_0224D310(void *a0, void *a1, void *data) {
    memset(data, 0, 0xf0);
    HeapExp_FndInitAllocator((NNSFndAllocator *)((u8 *)data + 0xdc), HEAP_ID_FIELD1, 0x20);
    ov02_0224D0C8(data, 8, 4, 4, (u8 *)data + 0xdc);
    ov02_0224D044(*(void **)((u8 *)a1 + 0x40), data);
    PlaySE(SEQ_SE_DP_FW088);
    *(int *)((u8 *)data + 0xec) = 0;
}

WIP_LOCAL void ov02_0224D358(void *a0, void *a1, void *data) {
    memset(data, 0, 0xf0);
    HeapExp_FndInitAllocator((NNSFndAllocator *)((u8 *)data + 0xdc), HEAP_ID_FIELD1, 0x20);
    ov02_0224D0C8(data, 8, 4, 4, (u8 *)data + 0xdc);
    ov02_0224CFD8(*(void **)((u8 *)a1 + 0x3c), 0xfd, data);
    PlaySE(SEQ_SE_DP_FW088);
    *(int *)((u8 *)data + 0xec) = 0;
}

WIP_LOCAL void ov02_0224D3A4(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D144(data, (u8 *)data + 0xdc);
}

WIP_LOCAL void ov02_0224D3B4(Field3dObjectTask *task, FieldSystem *fieldSystem, Field3dObject *obj) {
    switch (*(int *)((u8 *)obj + 0xec)) {
    case 0:
        if (ov02_0224D178(obj) == 1) {
            Field3dObject_SetActiveFlag(obj, 0);
            (*(int *)((u8 *)obj + 0xec))++;
        }
        break;
    case 1:
        break;
    }
}

WIP_LOCAL void ov02_0224D3E8(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D1DC(data);
}

WIP_LOCAL Field3dObjectTask *ov02_0224D3F4(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_022538FC);
}

WIP_LOCAL Field3dObjectTask *ov02_0224D408(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_0225398C);
}

WIP_LOCAL void ov02_0224D41C(Field3dObjectTask *task) {
    Field3dObjectTask_Delete(task);
}

WIP_LOCAL BOOL ov02_0224D424(Field3dObjectTask *task) {
    return *(int *)((u8 *)Field3dObjectTask_GetData(task) + 0xec) == 1;
}

WIP_LOCAL void ov02_0224D43C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    memset(data, 0, 0x1cc);
    HeapExp_FndInitAllocator((NNSFndAllocator *)((u8 *)data + 0x1b8), HEAP_ID_FIELD1, 0x20);
    *(u16 *)((u8 *)data + 0x1ca) = 0;
}

WIP_LOCAL void ov02_0224D468(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    int i;
    u8 *p = data;
    u8 *q;
    for (i = 0, q = (u8 *)data + 0x1b8; i < 2; i++, p += 0xdc) {
        ov02_0224D144(p, q);
    }
}

// ov02_0224D488
// clang-format off
asm void ov02_0224D488(void *a0, void *a1, void *a2) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #8
    ldr r7, =0x000001CA
    add r4, r2, #0
    ldrh r0, [r4, r7]
    add r5, r1, #0
    cmp r0, #3
    bhi _0224D570
    add r0, r0, r0
    add r0, pc
    ldrh r0, [r0, #6]
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    add pc, r0
    lsl r6, r0, #0
    lsl r4, r4, #1
    lsl r4, r7, #1
    lsl r0, r7, #2
_0224D4AC:
    ldr r2, =sRodata+0x5F4
    add r1, sp, #4
    ldrb r3, [r2, #2]
    add r0, sp, #4
    add r1, #2
    strb r3, [r0, #2]
    ldrb r3, [r2, #3]
    strb r3, [r0, #3]
    ldrb r6, [r2, #4]
    add r3, sp, #4
    strb r6, [r0, #0]
    ldrb r2, [r2, #5]
    strb r2, [r0, #1]
    sub r0, r7, #2
    ldrh r0, [r4, r0]
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    mov r0, #0xdc
    add r6, r2, #0
    mul r6, r0
    add r0, #0xdc
    add r0, r4, r0
    str r0, [sp, #0]
    ldrb r1, [r1, r2]
    ldrb r2, [r3, r2]
    add r0, r4, r6
    mov r3, #2
    bl ov02_0224D0C8
    ldr r0, [r5, #0x40]
    add r1, r4, r6
    bl ov02_0224D0AC
    sub r1, r7, #2
    ldrh r0, [r4, r1]
    add r0, r0, #1
    strh r0, [r4, r1]
    ldrh r0, [r4, r1]
    cmp r0, #2
    blo _0224D570
    add r0, r1, #2
    ldrh r0, [r4, r0]
    add sp, #8
    add r2, r0, #1
    add r0, r1, #2
    strh r2, [r4, r0]
    pop {r3, r4, r5, r6, r7, pc}
_0224D50A:
    add r0, r4, #0
    add r0, #0xdc
    mov r1, #0
    bl Field3dObject_SetActiveFlag
    ldr r0, =SEQ_SE_DP_FW463
    bl PlaySE
    add r0, r7, #0
    ldrh r1, [r4, r0]
    add r1, r1, #1
    strh r1, [r4, r0]
_0224D522:
    add r0, r4, #0
    bl ov02_0224D178
    add r6, r0, #0
    ldr r0, [r5, #0x40]
    add r1, r4, #0
    bl ov02_0224D0AC
    cmp r6, #1
    bne _0224D570
    add r0, r4, #0
    add r0, #0xdc
    mov r1, #1
    bl Field3dObject_SetActiveFlag
    add r0, r4, #0
    mov r1, #0
    bl Field3dObject_SetActiveFlag
    add r1, r4, #0
    ldr r0, [r5, #0x40]
    add r1, #0xdc
    bl ov02_0224D0AC
    ldr r0, =0x000001CA
    add sp, #8
    ldrh r1, [r4, r0]
    add r1, r1, #1
    strh r1, [r4, r0]
    pop {r3, r4, r5, r6, r7, pc}
_0224D55E:
    add r0, r4, #0
    add r0, #0xdc
    bl ov02_0224D1AC
    add r4, #0xdc
    ldr r0, [r5, #0x40]
    add r1, r4, #0
    bl ov02_0224D0AC
_0224D570:
    add sp, #8
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

WIP_LOCAL void ov02_0224D580(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    int i;
    u8 *p = data;
    for (i = 0; i < 2; i++) {
        ov02_0224D1DC((Field3dObject *)p);
        p += 0xdc;
    }
}

WIP_LOCAL Field3dObjectTask *ov02_0224D598(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_02253944);
}

WIP_LOCAL void ov02_0224D5AC(Field3dObjectTask *task) {
    Field3dObjectTask_Delete(task);
}

// ov02_0224D5B4
// clang-format off
asm void ov02_0224D5B4(void *a0, void *a1, void *a2) {
    push {r4, r5, r6, lr}
    sub sp, #0x10
    add r5, r1, #0
    ldr r1, =sRodata+0x5F4
    add r4, r2, #0
    ldrb r2, [r1, #0]
    add r0, sp, #4
    strb r2, [r0, #1]
    ldrb r2, [r1, #1]
    strb r2, [r0, #0]
    ldrh r2, [r1, #6]
    strh r2, [r0, #2]
    ldrh r2, [r1, #8]
    strh r2, [r0, #4]
    ldrh r2, [r1, #0xa]
    strh r2, [r0, #6]
    ldrh r1, [r1, #0xc]
    mov r2, #0xf0
    strh r1, [r0, #8]
    add r0, r4, #0
    mov r1, #0
    bl memset
    add r0, r4, #0
    add r0, #0xdc
    mov r1, #4
    mov r2, #0x20
    bl HeapExp_FndInitAllocator
    ldr r0, [r5, #0x40]
    bl PlayerAvatar_GetFacingDirection
    add r6, r0, #0
    add r0, r4, #0
    add r0, #0xdc
    str r0, [sp, #0]
    add r2, sp, #4
    ldrb r1, [r2, #1]
    ldrb r2, [r2, #0]
    add r0, r4, #0
    mov r3, #1
    bl ov02_0224D0C8
    add r0, r4, #0
    bl ov02_0224D1AC
    ldr r0, [r5, #0x40]
    add r1, r4, #0
    bl ov02_0224D0AC
    add r0, sp, #4
    lsl r1, r6, #1
    add r0, #2
    ldrh r0, [r0, r1]
    bl GF_DegreeToSinCosIdxNoWrap
    add r1, r0, #0
    add r0, r4, #0
    mov r2, #1
    bl Field3dObject_SetXRotation
    ldr r0, =SEQ_SE_DP_FW463
    bl PlaySE
    mov r0, #0
    add r4, #0xec
    strh r0, [r4, #0]
    add sp, #0x10
    pop {r4, r5, r6, pc}
    nop
}
// clang-format on

WIP_LOCAL void ov02_0224D648(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D144(data, (u8 *)data + 0xdc);
}

WIP_LOCAL void ov02_0224D658(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D1AC(data);
    ov02_0224D0AC(fieldSystem->playerAvatar, data);
}

WIP_LOCAL void ov02_0224D670(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D1DC(data);
}

WIP_LOCAL Field3dObjectTask *ov02_0224D67C(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_02253914);
}

WIP_LOCAL void ov02_0224D690(Field3dObjectTask *task) {
    Field3dObjectTask_Delete(task);
}

WIP_LOCAL void ov02_0224D698(Field3dObject *obj, PlayerAvatar *playerAvatar, fx32 arg2, fx32 arg3) {
    VecFx32 vec;
    int i;
    u8 *anim;
    GF_ASSERT(*(int *)((u8 *)obj + 0xc8) == 0);
    PlayerAvatar_CopyPositionVector(playerAvatar, &vec);
    Field3dObject_SetPosEx(obj, vec.x, vec.y + arg2, vec.z + arg3);
    *(int *)((u8 *)obj + 0xc8) = 1;
    for (i = 0, anim = (u8 *)obj + 0x78; i < 4; i++, anim += 0x14) {
        Field3dModelAnimation_FrameSet((Field3DModelAnimation *)anim, 0);
    }
    Field3dObject_SetActiveFlag(obj, 1);
    PlaySE(SEQ_SE_DP_UG_023);
}

WIP_LOCAL void ov02_0224D700(void *obj) {
    if (*(int *)((u8 *)obj + 0xc8) != 0) {
        BOOL acc = TRUE;
        int i = 0;
        Field3DModelAnimation *anim = (Field3DModelAnimation *)((u8 *)obj + 0x78);
        for (; i < 4; i++) {
            acc &= Field3dModelAnimation_FrameAdvanceAndCheck(anim, FX32_ONE);
            anim = (Field3DModelAnimation *)((u8 *)anim + 0x14);
        }
        if (acc == 1) {
            *(int *)((u8 *)obj + 0xc8) = 0;
            Field3dObject_SetActiveFlag((Field3dObject *)obj, 0);
        }
    }
}

WIP_LOCAL void ov02_0224D73C(Field3dObject *obj, Field3dModel *model, NNSFndAllocator *allocator, void **anmResources) {
    u8 *anim;
    int i;
    memset(obj, 0, 0xcc);
    Field3dObject_InitFromModel(obj, model);
    for (i = 0, anim = (u8 *)obj + 0x78; i < 4; i++, anim += 0x14) {
        ov01_021FBE70((Field3DModelAnimation *)anim, model, anmResources[i], allocator);
        Field3dObject_AddAnimation(obj, (Field3DModelAnimation *)anim);
    }
    Field3dObject_SetActiveFlag(obj, 0);
}

WIP_LOCAL void ov02_0224D788(void *obj, NNSFndAllocator *alloc) {
    int i;
    u8 *p;
    for (i = 0, p = (u8 *)obj + 0x78; i < 4; i++, p += 0x14) {
        Field3dModelAnimation_Unload((Field3DModelAnimation *)p, alloc);
    }
    memset(obj, 0, 0xcc);
}

WIP_LOCAL void ov02_0224D7B0(void *data) {
    VecFx32 vec;
    PlayerAvatar_CopyPositionVector(*(PlayerAvatar **)((u8 *)*(void **)((u8 *)data + 0xce0) + 0x40), &vec);
    if (vec.x - *(fx32 *)((u8 *)data + 0xcf0) == 0 && vec.y < *(fx32 *)((u8 *)data + 0xcf4) && vec.z > *(fx32 *)((u8 *)data + 0xcf8)) {
        *(fx32 *)((u8 *)data + 0xce8) = 0;
        *(fx32 *)((u8 *)data + 0xcec) = 0x20000;
    } else {
        *(fx32 *)((u8 *)data + 0xce8) = 0x20000;
        *(fx32 *)((u8 *)data + 0xcec) = 0x10000;
    }
    *(VecFx32 *)((u8 *)data + 0xcf0) = vec;
}

WIP_LOCAL void ov02_0224D820(void *data) {
    int i;
    u8 *p;
    ov02_0224D7B0(data);
    for (i = 0, p = (u8 *)data; i < 0x10; i++, p += 0xcc) {
        if (*(int *)(p + 0xd8) == 0) {
            ov02_0224D698((Field3dObject *)((u8 *)data + 0x10 + i * 0xcc),
                *(PlayerAvatar **)((u8 *)*(void **)((u8 *)data + 0xce0) + 0x40),
                *(fx32 *)((u8 *)data + 0xce8),
                *(fx32 *)((u8 *)data + 0xcec));
            return;
        }
    }
    GF_AssertFail();
}

WIP_LOCAL void ov02_0224D868(void *data) {
    int i;
    u8 *p;
    for (i = 0, p = (u8 *)data + 0x10; i < 0x10; i++, p += 0xcc) {
        ov02_0224D700(p);
    }
}

WIP_LOCAL void ov02_0224D880(void *a0, FieldSystem *fieldSystem, void *work) {
    int i;
    u8 *p;
    memset(work, 0, 0xd10);
    HeapExp_FndInitAllocator((NNSFndAllocator *)((u8 *)work + 0xcfc), HEAP_ID_FIELD1, 0x20);
    Field3dModel_LoadFromFilesystem((Field3dModel *)work, (NarcId)0x86, 8, HEAP_ID_FIELD1);
    for (i = 0, p = (u8 *)work; i < 4; i++, p += 4) {
        *(void **)(p + 0xcd0) = GfGfxLoader_LoadFromNarc((NarcId)0x86, i + 4, FALSE, HEAP_ID_FIELD1, FALSE);
    }
    for (i = 0, p = (u8 *)work + 0x10; i < 0x10; i++, p += 0xcc) {
        ov02_0224D73C((Field3dObject *)p, (Field3dModel *)work, (NNSFndAllocator *)((u8 *)work + 0xcfc), (void **)((u8 *)work + 0xcd0));
    }
    *(FieldSystem **)((u8 *)work + 0xce0) = fieldSystem;
    PlayerAvatar_CopyPositionVector(*(PlayerAvatar **)((u8 *)*(void **)((u8 *)work + 0xce0) + 0x40), (VecFx32 *)((u8 *)work + 0xcf0));
    *(int *)((u8 *)work + 0xd0c) = 0;
}

WIP_LOCAL void ov02_0224D914(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    int i;
    u8 *p;
    for (i = 0, p = (u8 *)data + 0x10; i < 0x10; i++, p += 0xcc) {
        ov02_0224D788(p, (NNSFndAllocator *)((u8 *)data + 0xCFC));
    }
    Field3dModel_Unload((Field3dModel *)data);
    for (i = 0; i < 4; i++) {
        Heap_Free(*(void **)((u8 *)data + 0xCD0));
        data = (u8 *)data + 4;
    }
}

WIP_LOCAL void ov02_0224D950(void *a0, void *a1, void *data) {
    if (*(u32 *)((u8 *)data + 0xD0C) == 0) {
        *(int *)((u8 *)data + 0xCE4) = *(int *)((u8 *)data + 0xCE4) - 1;
        if (*(int *)((u8 *)data + 0xCE4) < 0) {
            *(int *)((u8 *)data + 0xCE4) = 4;
            ov02_0224D820(data);
        }
        ov02_0224D868(data);
    }
}

WIP_LOCAL void ov02_0224D98C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    int i;
    u8 *p;
    for (i = 0, p = (u8 *)data + 0x10; i < 0x10; i++, p += 0xcc) {
        Field3dObject_Draw((Field3dObject *)p);
    }
}

WIP_LOCAL Field3dObjectTask *ov02_0224D9A4(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_0225395C);
}

WIP_LOCAL void ov02_0224D9B8(Field3dObjectTask *task) {
    Field3dObjectTask_Delete(task);
}

WIP_LOCAL void ov02_0224D9C0(void *a0, void *a1, void *data) {
    VecFx32 offset;
    VecFx32 target;
    VecFx32 pos;
    memset(data, 0, 0x114);
    HeapExp_FndInitAllocator((NNSFndAllocator *)((u8 *)data + 0xdc), HEAP_ID_FIELD1, 0x20);
    ov02_0224D0C8(data, 0x13, 0x11, 2, (u8 *)data + 0xdc);
    ov02_0224D044(*(void **)((u8 *)a1 + 0x40), data);
    target = Camera_GetLookAtCamTarget(*(Camera **)((u8 *)a1 + 0x24));
    *(VecFx32 *)((u8 *)data + 0xf8) = target;
    pos = Camera_GetLookAtCamPos(*(Camera **)((u8 *)a1 + 0x24));
    *(VecFx32 *)((u8 *)data + 0xec) = pos;
    {
        int *p = (int *)&offset;
        p[0] = 0;
        p[1] = 0;
        p[2] = 0;
    }
    switch (PlayerAvatar_GetFacingDirection(*(PlayerAvatar **)((u8 *)a1 + 0x40))) {
    case 0:
        offset.z -= 0x8000;
        break;
    case 1:
        offset.z += 0x8000;
        break;
    case 2:
        offset.x -= 0x8000;
        break;
    case 3:
        offset.x += 0x8000;
        break;
    }
    *(VecFx32 *)((u8 *)data + 0x104) = offset;
    PlaySE(SEQ_SE_GS_ZUTUKI);
    *(u8 *)((u8 *)data + 0x113) = 0;
}

WIP_LOCAL void ov02_0224DAA4(void *a0, void *a1, void *data) {
    VecFx32 offset;
    VecFx32 target;
    VecFx32 pos;
    memset(data, 0, 0x114);
    HeapExp_FndInitAllocator((NNSFndAllocator *)((u8 *)data + 0xdc), HEAP_ID_FIELD1, 0x20);
    ov02_0224D0C8(data, 0x13, 0x11, 2, (u8 *)data + 0xdc);
    ov02_0224CFD8(*(void **)((u8 *)a1 + 0x3c), 0xfd, data);
    target = Camera_GetLookAtCamTarget(*(Camera **)((u8 *)a1 + 0x24));
    *(VecFx32 *)((u8 *)data + 0xf8) = target;
    pos = Camera_GetLookAtCamPos(*(Camera **)((u8 *)a1 + 0x24));
    *(VecFx32 *)((u8 *)data + 0xec) = pos;
    {
        int *p = (int *)&offset;
        p[0] = 0;
        p[1] = 0;
        p[2] = 0;
    }
    switch (PlayerAvatar_GetFacingDirection(*(PlayerAvatar **)((u8 *)a1 + 0x40))) {
    case 0:
        offset.z -= 0x8000;
        break;
    case 1:
        offset.z += 0x8000;
        break;
    case 2:
        offset.x -= 0x8000;
        break;
    case 3:
        offset.x += 0x8000;
        break;
    }
    *(VecFx32 *)((u8 *)data + 0x104) = offset;
    PlaySE(SEQ_SE_GS_ZUTUKI);
    *(u8 *)((u8 *)data + 0x113) = 0;
}

WIP_LOCAL void ov02_0224DB8C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D144(data, (u8 *)data + 0xdc);
}

// ov02_0224DB9C
// clang-format off
asm int ov02_0224DB9C(void *a0, void *a1, void *a2) {
    push {r3, r4, r5, lr}
    add r5, r1, #0
    ldr r1, =0x00000113
    add r4, r2, #0
    ldrb r0, [r4, r1]
    cmp r0, #0
    beq _0224DBB0
    cmp r0, #1
    beq _0224DC38
    pop {r3, r4, r5, pc}
_0224DBB0:
    sub r0, r1, #1
    ldrb r0, [r4, r0]
    cmp r0, #2
    bhs _0224DC1C
    sub r0, r1, #3
    ldrsb r0, [r4, r0]
    cmp r0, #0
    bgt _0224DC12
    mov r2, #1
    sub r0, r1, #3
    strb r2, [r4, r0]
    sub r0, r1, #2
    ldrb r0, [r4, r0]
    add r0, r0, #1
    lsr r2, r0, #0x1f
    lsl r1, r0, #0x1f
    sub r1, r1, r2
    mov r0, #0x1f
    ror r1, r0
    add r2, r2, r1
    add r1, r0, #0
    add r1, #0xf2
    strb r2, [r4, r1]
    add r1, r0, #0
    add r1, #0xf2
    ldrb r1, [r4, r1]
    cmp r1, #0
    beq _0224DBF4
    add r0, #0xe5
    ldr r1, [r5, #0x24]
    add r0, r4, r0
    bl Camera_OffsetLookAtPosAndTarget
    b _0224DC1C
_0224DBF4:
    add r0, r4, #0
    ldr r1, [r5, #0x24]
    add r0, #0xf8
    bl Camera_SetLookAtCamTarget
    add r0, r4, #0
    ldr r1, [r5, #0x24]
    add r0, #0xec
    bl Camera_SetLookAtCamPos
    ldr r0, =0x00000112
    ldrb r1, [r4, r0]
    add r1, r1, #1
    strb r1, [r4, r0]
    b _0224DC1C
_0224DC12:
    sub r0, r1, #3
    ldrsb r0, [r4, r0]
    sub r2, r0, #1
    sub r0, r1, #3
    strb r2, [r4, r0]
_0224DC1C:
    add r0, r4, #0
    bl ov02_0224D178
    cmp r0, #1
    bne _0224DC4C
    add r0, r4, #0
    mov r1, #0
    bl Field3dObject_SetActiveFlag
    ldr r0, =0x00000113
    ldrb r1, [r4, r0]
    add r1, r1, #1
    strb r1, [r4, r0]
    pop {r3, r4, r5, pc}
_0224DC38:
    add r0, r4, #0
    ldr r1, [r5, #0x24]
    add r0, #0xf8
    bl Camera_SetLookAtCamTarget
    add r4, #0xec
    ldr r1, [r5, #0x24]
    add r0, r4, #0
    bl Camera_SetLookAtCamPos
_0224DC4C:
    pop {r3, r4, r5, pc}
    nop
}
// clang-format on

WIP_LOCAL void ov02_0224DC58(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D1DC(data);
}

WIP_LOCAL Field3dObjectTask *ov02_0224DC64(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_022539A4);
}

WIP_LOCAL Field3dObjectTask *ov02_0224DC78(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_0225392C);
}

WIP_LOCAL void ov02_0224DC8C(Field3dObjectTask *task) {
    Field3dObjectTask_Delete(task);
}

WIP_LOCAL BOOL ov02_0224DC94(Field3dObjectTask *task) {
    return *((u8 *)Field3dObjectTask_GetData(task) + 0x113) == 1;
}

WIP_LOCAL void ov02_0224DCB0(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    int i;
    int j;
    u8 *p;
    u8 *q;
    memset(data, 0, 0xe9c);
    HeapExp_FndInitAllocator((NNSFndAllocator *)((u8 *)data + 0xe88), HEAP_ID_FIELD1, 0x20);
    Field3dModel_LoadFromFilesystem((Field3dModel *)data, NARC_a_1_3_4, 8, HEAP_ID_FIELD1);
    for (i = 0, p = (u8 *)data; i < 4; i++, p += 4) {
        *(void **)(p + 0xe68) = GfGfxLoader_LoadFromNarc(NARC_a_1_3_4, i + 4, FALSE, HEAP_ID_FIELD1, FALSE);
    }
    for (j = 0, q = (u8 *)data + 0x10; j < 0x12; j++, q += 0xcc) {
        ov02_0224DEA8((Field3dObject *)q, (Field3dModel *)data, (NNSFndAllocator *)((u8 *)data + 0xe88), (void **)((u8 *)data + 0xe68));
    }
    *(FieldSystem **)((u8 *)data + 0xe78) = fieldSystem;
    *(u16 *)((u8 *)data + 0xe98) = 0;
}

WIP_LOCAL void ov02_0224DD38(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224DCB0(task, fieldSystem, data);
    *(u16 *)((u8 *)data + 0xE9A) = 1;
}

WIP_LOCAL void ov02_0224DD4C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    int i;
    u8 *p;
    for (i = 0, p = (u8 *)data + 0x10; i < 0x12; i++, p += 0xcc) {
        ov02_0224DEF4(p, (NNSFndAllocator *)((u8 *)data + 0xE88));
    }
    Field3dModel_Unload((Field3dModel *)data);
    for (i = 0; i < 4; i++) {
        Heap_Free(*(void **)((u8 *)data + 0xE68));
        data = (u8 *)data + 4;
    }
}

WIP_LOCAL void ov02_0224DD8C(void *a0, void *a1, void *data) {
    if (*(u16 *)((u8 *)data + 0xE98) == 0) {
        *(int *)((u8 *)data + 0xE7C) = *(int *)((u8 *)data + 0xE7C) - 1;
        if (*(int *)((u8 *)data + 0xE7C) < 0) {
            *(int *)((u8 *)data + 0xE7C) = 4;
            ov02_0224DF1C(data);
        }
        ov02_0224E008(data);
    }
}

WIP_LOCAL void ov02_0224DDC8(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    int i;
    u8 *p;
    for (i = 0, p = (u8 *)data + 0x10; i < 0x12; i++, p += 0xcc) {
        Field3dObject_Draw((Field3dObject *)p);
    }
}

WIP_LOCAL Field3dObjectTask *ov02_0224DDE0(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_022539D4);
}

WIP_LOCAL Field3dObjectTask *ov02_0224DDF4(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_022539EC);
}

WIP_LOCAL void ov02_0224DE08(Field3dObjectTask *task) {
    Field3dObjectTask_Delete(task);
}

WIP_LOCAL void ov02_0224DE10(Field3dObject *obj, VecFx32 *arg1, fx32 arg2, fx32 arg3) {
    int i;
    u8 *anim;
    GF_ASSERT(*(int *)((u8 *)obj + 0xc8) == 0);
    Field3dObject_SetPosEx(obj, arg1->x, arg1->y + arg2, arg1->z + arg3);
    *(int *)((u8 *)obj + 0xc8) = 1;
    for (i = 0, anim = (u8 *)obj + 0x78; i < 4; i++, anim += 0x14) {
        Field3dModelAnimation_FrameSet((Field3DModelAnimation *)anim, 0);
    }
    Field3dObject_SetActiveFlag(obj, 1);
    PlaySE(SEQ_SE_DP_UG_023);
}

WIP_LOCAL void ov02_0224DE6C(void *obj) {
    if (*(int *)((u8 *)obj + 0xc8) != 0) {
        BOOL acc = TRUE;
        int i = 0;
        Field3DModelAnimation *anim = (Field3DModelAnimation *)((u8 *)obj + 0x78);
        for (; i < 4; i++) {
            acc &= Field3dModelAnimation_FrameAdvanceAndCheck(anim, FX32_ONE);
            anim = (Field3DModelAnimation *)((u8 *)anim + 0x14);
        }
        if (acc == 1) {
            *(int *)((u8 *)obj + 0xc8) = 0;
            Field3dObject_SetActiveFlag((Field3dObject *)obj, 0);
        }
    }
}

WIP_LOCAL void ov02_0224DEA8(Field3dObject *obj, Field3dModel *model, NNSFndAllocator *allocator, void **anmResources) {
    u8 *anim;
    int i;
    memset(obj, 0, 0xcc);
    Field3dObject_InitFromModel(obj, model);
    for (i = 0, anim = (u8 *)obj + 0x78; i < 4; i++, anim += 0x14) {
        ov01_021FBE70((Field3DModelAnimation *)anim, model, anmResources[i], allocator);
        Field3dObject_AddAnimation(obj, (Field3DModelAnimation *)anim);
    }
    Field3dObject_SetActiveFlag(obj, 0);
}

WIP_LOCAL void ov02_0224DEF4(void *obj, NNSFndAllocator *alloc) {
    int i;
    u8 *p;
    for (i = 0, p = (u8 *)obj + 0x78; i < 4; i++, p += 0x14) {
        Field3dModelAnimation_Unload((Field3DModelAnimation *)p, alloc);
    }
    memset(obj, 0, 0xcc);
}

WIP_LOCAL void ov02_0224DF1C(void *work) {
    VecFx32 pos1;
    VecFx32 pos2;
    int i;
    *(fx32 *)((u8 *)work + 0xe80) = 0x1000;
    *(fx32 *)((u8 *)work + 0xe84) = 0x3000;
    PlayerAvatar_CopyPositionVector(((FieldSystem *)*(void **)((u8 *)work + 0xe78))->playerAvatar, &pos1);
    if (*(u16 *)((u8 *)work + 0xe9a) != 0) {
        MapObject_CopyPositionVector(FollowMon_GetMapObject(*(FieldSystem **)((u8 *)work + 0xe78)), &pos2);
        {
            u8 *p;
            for (i = 0, p = (u8 *)work; i < 0x12; i++, p += 0xcc) {
                if (*(int *)(p + 0xd8) == 0) {
                    ov02_0224DE10((Field3dObject *)((u8 *)work + 0x10 + i * 0xcc), &pos1, *(fx32 *)((u8 *)work + 0xe80), *(fx32 *)((u8 *)work + 0xe84));
                    break;
                }
            }
        }
        if (i == 0x12) {
            GF_AssertFail();
        }
        {
            u8 *p;
            for (i = 0, p = (u8 *)work; i < 0x12; i++, p += 0xcc) {
                if (*(int *)(p + 0xd8) == 0) {
                    ov02_0224DE10((Field3dObject *)((u8 *)work + 0x10 + i * 0xcc), &pos2, *(fx32 *)((u8 *)work + 0xe80), *(fx32 *)((u8 *)work + 0xe84));
                    return;
                }
            }
        }
    } else {
        u8 *p;
        for (i = 0, p = (u8 *)work; i < 0x12; i++, p += 0xcc) {
            if (*(int *)(p + 0xd8) == 0) {
                ov02_0224DE10((Field3dObject *)((u8 *)work + 0x10 + i * 0xcc), &pos1, *(fx32 *)((u8 *)work + 0xe80), *(fx32 *)((u8 *)work + 0xe84));
                return;
            }
        }
    }
    GF_AssertFail();
}

WIP_LOCAL void ov02_0224E008(void *data) {
    int i;
    u8 *p;
    for (i = 0, p = (u8 *)data + 0x10; i < 0x12; i++, p += 0xcc) {
        ov02_0224DE6C(p);
    }
}

WIP_LOCAL void ov02_0224E020(SysTask *task, void *data) {
    switch (*(int *)((u8 *)data + 8)) {
    case 0:
        if (ov02_02253A34[*(int *)((u8 *)data + 0xc)](*(void **)data) == 1) {
            (*(int *)((u8 *)data + 8))++;
        }
        break;
    case 1:
        ov02_02253A04[*(int *)((u8 *)data + 0xc)](*(void **)data);
        *(u16 *)*(void **)((u8 *)data + 4) = 1;
        Heap_Free(data);
        SysTask_Destroy(task);
        break;
    }
}

WIP_LOCAL void ov02_0224E074(FieldSystem *fieldSystem, u16 *p_ret, int type, enum HeapID heapID) {
    void *data = Heap_Alloc(heapID, 0x10);
    memset(data, 0, 0x10);
    *(Field3dObjectTask **)data = ov02_02253A1C[type](fieldSystem);
    *(u16 **)((u8 *)data + 4) = p_ret;
    *(int *)((u8 *)data + 0xc) = type;
    *p_ret = 0;
    SysTask_CreateOnMainQueue(ov02_0224E020, data, 0);
}

WIP_LOCAL void ov02_0224E0BC(LocalMapObject *obj1, LocalMapObject *obj2, TaskManager *taskManager) {
    void *env = ov02_0224E0D4(obj1, obj2);
    TaskManager_Call(taskManager, ov02_0224E0EC, env);
}

WIP_LOCAL void *ov02_0224E0D4(LocalMapObject *obj1, LocalMapObject *obj2) {
    void *env = Heap_AllocAtEnd(HEAP_ID_FIELD1, 0x20);
    *(int *)env = 0;
    *(LocalMapObject **)((u8 *)env + 4) = obj1;
    *(LocalMapObject **)((u8 *)env + 8) = obj2;
    return env;
}

WIP_LOCAL BOOL ov02_0224E0EC(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    void *env = TaskManager_GetEnvironment(taskManager);
    BOOL ret = FALSE;
    switch (*(int *)env) {
    case 0:
        MapObject_UnpauseMovement(FollowMon_GetMapObject(fieldSystem));
        (*(int *)env)++;
        // fall through
    case 1:
        if (MapObject_AreBitsSetForMovementScriptInit(*(LocalMapObject **)((u8 *)env + 4)) == 0) {
            break;
        }
        if (MapObject_AreBitsSetForMovementScriptInit(*(LocalMapObject **)((u8 *)env + 8)) == 0) {
            break;
        }
        MapObject_PauseMovement(FollowMon_GetMapObject(fieldSystem));
        (*(int *)env)++;
        break;
    case 2:
        *(int *)((u8 *)env + 0xc) = MapObject_GetXCoord(*(LocalMapObject **)((u8 *)env + 4));
        *(int *)((u8 *)env + 0x10) = MapObject_GetZCoord(*(LocalMapObject **)((u8 *)env + 4));
        *(int *)((u8 *)env + 0x14) = MapObject_GetFacingDirection(*(LocalMapObject **)((u8 *)env + 4));
        *(int *)((u8 *)env + 0x18) = MapObject_GetXCoord(*(LocalMapObject **)((u8 *)env + 8));
        *(int *)((u8 *)env + 0x1c) = MapObject_GetZCoord(*(LocalMapObject **)((u8 *)env + 8));
        {
            int mv = ov02_0224E224((u8 *)env + 0xc, (u8 *)env + 0x18);
            MapObject_SetHeldMovement(*(LocalMapObject **)((u8 *)env + 4), mv);
            MapObject_SetHeldMovement(*(LocalMapObject **)((u8 *)env + 8), ov02_0224E2D4(mv));
        }
        (*(int *)env)++;
        break;
    case 3:
        if (MapObject_AreBitsSetForMovementScriptInit(*(LocalMapObject **)((u8 *)env + 4)) == 0) {
            break;
        }
        if (MapObject_AreBitsSetForMovementScriptInit(*(LocalMapObject **)((u8 *)env + 8)) == 0) {
            break;
        }
        (*(int *)env)++;
        break;
    case 4:
        MapObject_SetHeldMovement(*(LocalMapObject **)((u8 *)env + 4), ov02_0224E2A0((u8)MapObject_GetFacingDirection(*(LocalMapObject **)((u8 *)env + 4))));
        MapObject_SetHeldMovement(*(LocalMapObject **)((u8 *)env + 8), ov02_0224E26C((u8) * (int *)((u8 *)env + 0x14)));
        (*(int *)env)++;
        break;
    case 5:
        if (MapObject_AreBitsSetForMovementScriptInit(*(LocalMapObject **)((u8 *)env + 4)) == 0) {
            break;
        }
        if (MapObject_AreBitsSetForMovementScriptInit(*(LocalMapObject **)((u8 *)env + 8)) == 0) {
            break;
        }
        MapObject_ClearHeldMovementIfActive(*(LocalMapObject **)((u8 *)env + 4));
        MapObject_ClearHeldMovementIfActive(*(LocalMapObject **)((u8 *)env + 8));
        ret = TRUE;
        Heap_Free(env);
        break;
    }
    return ret;
}

WIP_LOCAL int ov02_0224E224(void *a, void *b) {
    int bx = *(int *)b;
    int ax = *(int *)a;
    int result = 0xd;
    if (ax == bx) {
        if (*(int *)((u8 *)a + 4) > *(int *)((u8 *)b + 4)) {
            result = 0xc;
        } else if (*(int *)((u8 *)a + 4) < *(int *)((u8 *)b + 4)) {
            ;
        } else {
            GF_AssertFail();
        }
    } else if (*(int *)((u8 *)a + 4) == *(int *)((u8 *)b + 4)) {
        if (ax > bx) {
            result = 0xe;
        } else if (ax < bx) {
            result = 0xf;
        } else {
            GF_AssertFail();
        }
    } else {
        GF_AssertFail();
    }
    return result;
}

WIP_LOCAL int ov02_0224E26C(int a0) {
    switch (a0) {
    case 0:
        return 0;
    case 1:
        return 1;
    case 2:
        return 2;
    case 3:
        return 3;
    default:
        GF_AssertFail();
        return 0;
    }
}

WIP_LOCAL int ov02_0224E2A0(int a0) {
    switch (a0) {
    case 0:
        return 1;
    case 1:
        return 0;
    case 2:
        return 3;
    case 3:
        return 2;
    default:
        GF_AssertFail();
        return 0;
    }
}

WIP_LOCAL int ov02_0224E2D4(int a0) {
    switch (a0 - 0xc) {
    case 0:
        return 0xd;
    case 1:
        return 0xc;
    case 2:
        return 0xf;
    case 3:
        return 0xe;
    default:
        GF_AssertFail();
        return 0;
    }
}

WIP_LOCAL BOOL ov02_0224E308(int a0) {
    return a0 == 0x165;
}

WIP_LOCAL int ov02_0224E31C(u32 x, u32 z) {
    s32 xi = (s32)(x - 0x20) / 0x20;
    s32 zi = (s32)(z - 0x20) / 0x20;
    s32 idx = xi + zi * 3;
    if (idx < 0 || idx >= 6) {
        return 0;
    }
    return idx;
}

WIP_LOCAL int ov02_0224E340(FieldSystem *fieldSystem) {
    u32 x = PlayerAvatar_GetXCoord(fieldSystem->playerAvatar);
    u32 z = PlayerAvatar_GetZCoord(fieldSystem->playerAvatar);
    return ov02_0224E31C(x, z);
}

WIP_LOCAL BOOL ov02_0224E35C(FieldSystem *fieldSystem) {
    void *varsFlags = Save_VarsFlags_Get(*(SaveData **)((u8 *)fieldSystem + 0xc));
    void *safariZone;
    int facing;
    int x;
    int z;
    int newX;
    int newZ;
    VecFx32 pos;
    u8 sel;
    fx32 h1;
    fx32 h2;
    f32 fx;
    f32 fz;
    int vx;
    int vz;

    LocalFieldData_GetCurrentPosition(Save_LocalFieldData_Get(*(SaveData **)((u8 *)fieldSystem + 0xc)));
    safariZone = Save_SafariZone_Get(*(SaveData **)((u8 *)fieldSystem + 0xc));
    if (ov02_0224E308(**(int **)((u8 *)fieldSystem + 0x20)) == 0) {
        return FALSE;
    }
    if (Save_VarsFlags_CheckSafariSysFlag(varsFlags) == 0) {
        return FALSE;
    }
    if (sub_0202F620(safariZone) != 0) {
        return FALSE;
    }
    if (SafariZone_GetObjectUnlockLevel(safariZone) == 0) {
        return FALSE;
    }
    facing = PlayerAvatar_GetFacingDirection(*(PlayerAvatar **)((u8 *)fieldSystem + 0x40));
    x = PlayerAvatar_GetXCoord(*(PlayerAvatar **)((u8 *)fieldSystem + 0x40));
    z = PlayerAvatar_GetZCoord(*(PlayerAvatar **)((u8 *)fieldSystem + 0x40));
    newX = x + GetDeltaXByFacingDirection(facing);
    newZ = z + GetDeltaYByFacingDirection(facing);
    if (newX < 0x20 || newX >= 0x80 || newZ < 0x20 || newZ >= 0x60) {
        return FALSE;
    }
    if (newX < 0x20 || newX >= 0x80 || newZ < 0x20 || newZ >= 0x60) {
        return FALSE;
    }
    PlayerAvatar_CopyPositionVector(*(PlayerAvatar **)((u8 *)fieldSystem + 0x40), &pos);
    h1 = sub_02054774(fieldSystem, pos.y, pos.x, pos.z, &sel);
    if (sel != 1) {
        return FALSE;
    }
    vz = (newZ << 4) + 8;
    if (vz > 0) {
        fz = (f32)(vz << 12) + 0.5f;
    } else {
        fz = (f32)(vz << 12) - 0.5f;
    }
    vx = (newX << 4) + 8;
    if (vx > 0) {
        fx = (f32)(vx << 12) + 0.5f;
    } else {
        fx = (f32)(vx << 12) - 0.5f;
    }
    h2 = sub_02054774(fieldSystem, pos.y, (s32)fx, (s32)fz, &sel);
    if (sel != 1) {
        return FALSE;
    }
    return h1 == h2;
}

WIP_LOCAL BOOL ov02_0224E4CC(u8 tile, int flag) {
    if (flag != 0) {
        return FALSE;
    }
    return sub_0205BAD0(tile);
}

WIP_LOCAL BOOL ov02_0224E4DC(u8 tile, int flag) {
    if (flag != 0) {
        return FALSE;
    }
    return MetatileBehavior_IsSurfableWater_thunk(tile);
}

// SafariDecoration_CreateArgs
// clang-format off
asm SafariDecorationArgs *SafariDecoration_CreateArgs(FieldSystem *fieldSystem, enum HeapID heapID) {
    push {r4, r5, r6, r7, lr}
    sub sp, #0x2c
    add r5, r0, #0
    add r0, r1, #0
    mov r1, #0x24
    bl Heap_AllocAtEnd
    mov r1, #0
    mov r2, #0x24
    add r4, r0, #0
    bl MI_CpuFill8
    add r0, r5, #0
    bl FieldSystem_GetSaveData
    str r0, [r4, #0]
    mov r0, #0x43
    lsl r0, r0, #2
    add r1, r5, r0
    add r0, r0, #5
    str r1, [r4, #4]
    add r0, r5, r0
    str r0, [r4, #0x20]
    ldr r0, [r5, #0x40]
    bl PlayerAvatar_GetState
    cmp r0, #2
    bne _0224E528
    mov r0, #1
    b _0224E52A
_0224E528:
    mov r0, #0
_0224E52A:
    lsl r0, r0, #0x18
    lsr r6, r0, #0x18
    strb r6, [r4, #0x18]
    ldr r0, [r5, #0x40]
    bl PlayerAvatar_GetFacingDirection
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp, #0x10]
    ldr r0, [r5, #0x40]
    bl PlayerAvatar_GetXCoord
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    str r0, [sp, #0x14]
    ldr r0, [r5, #0x40]
    bl PlayerAvatar_GetZCoord
    lsl r0, r0, #0x10
    asr r7, r0, #0x10
    ldr r0, [r5, #0x40]
    add r1, sp, #0x20
    bl PlayerAvatar_CopyPositionVector
    ldr r0, [sp, #0x14]
    add r1, r7, #0
    bl ov02_0224E31C
    strb r0, [r4, #0x19]
    add r0, sp, #0x18
    str r0, [sp, #0]
    ldr r1, [sp, #0x24]
    ldr r2, [sp, #0x20]
    ldr r3, [sp, #0x28]
    add r0, r5, #0
    bl sub_02054774
    str r0, [sp, #0x24]
    add r1, sp, #0x18
    ldrb r1, [r1, #0]
    cmp r1, #1
    beq _0224E584
    add sp, #0x2c
    add r0, r4, #0
    pop {r4, r5, r6, r7, pc}
_0224E584:
    asr r0, r0, #0xc
    strb r0, [r4, #0x1a]
    ldr r0, [sp, #0x10]
    bl GetDeltaXByFacingDirection
    ldr r1, [sp, #0x14]
    add r0, r1, r0
    strb r0, [r4, #9]
    ldr r0, [sp, #0x10]
    bl GetDeltaYByFacingDirection
    add r0, r7, r0
    strb r0, [r4, #0xb]
    mov r0, #1
    strb r0, [r4, #8]
    ldr r0, [sp, #0x24]
    add r2, r7, #0
    str r0, [sp, #0]
    add r0, sp, #0x1c
    str r0, [sp, #4]
    add r0, sp, #0x18
    add r0, #2
    str r0, [sp, #8]
    str r6, [sp, #0xc]
    ldr r1, [sp, #0x14]
    ldr r3, [sp, #0x10]
    add r0, r5, #0
    bl ov02_0224E828
    cmp r0, #0
    beq _0224E5D4
    add r1, sp, #0x18
    mov r0, #4
    ldrsh r0, [r1, r0]
    strb r0, [r4, #0xd]
    mov r0, #2
    ldrsh r0, [r1, r0]
    strb r0, [r4, #0xf]
    mov r0, #1
    strb r0, [r4, #0xc]
_0224E5D4:
    ldr r0, [sp, #0x24]
    add r2, r7, #0
    str r0, [sp, #0]
    add r0, sp, #0x1c
    str r0, [sp, #4]
    add r0, sp, #0x18
    add r0, #2
    str r0, [sp, #8]
    str r6, [sp, #0xc]
    ldr r1, [sp, #0x14]
    ldr r3, [sp, #0x10]
    add r0, r5, #0
    bl ov02_0224EB48
    cmp r0, #0
    beq _0224E606
    add r1, sp, #0x18
    mov r0, #4
    ldrsh r0, [r1, r0]
    strb r0, [r4, #0x11]
    mov r0, #2
    ldrsh r0, [r1, r0]
    strb r0, [r4, #0x13]
    mov r0, #1
    strb r0, [r4, #0x10]
_0224E606:
    ldr r0, [sp, #0x24]
    add r2, r7, #0
    str r0, [sp, #0]
    add r0, sp, #0x1c
    str r0, [sp, #4]
    add r0, sp, #0x18
    add r0, #2
    str r0, [sp, #8]
    str r6, [sp, #0xc]
    ldr r1, [sp, #0x14]
    ldr r3, [sp, #0x10]
    add r0, r5, #0
    bl ov02_0224EE4C
    cmp r0, #0
    beq _0224E638
    add r1, sp, #0x18
    mov r0, #4
    ldrsh r0, [r1, r0]
    strb r0, [r4, #0x15]
    mov r0, #2
    ldrsh r0, [r1, r0]
    strb r0, [r4, #0x17]
    mov r0, #1
    strb r0, [r4, #0x14]
_0224E638:
    add r0, r4, #0
    add sp, #0x2c
    pop {r4, r5, r6, r7, pc}
}
// clang-format on

WIP_LOCAL BOOL ov02_0224E640(SaveData *saveData) {
    u32 trainerId = PlayerProfile_GetTrainerID(Save_PlayerData_GetProfile(saveData));
    int unlockLevel = SafariZone_GetObjectUnlockLevel(Save_SafariZone_Get(saveData));
    u8 m = (u8)(trainerId % 10);
    int v;
    if (m < 6) {
        v = m / 3;
    } else {
        v = (m - 6) / 2 + 2;
    }
    if (unlockLevel >= (u8)(3 - (u8)v) + 1) {
        return TRUE;
    }
    return FALSE;
}

WIP_LOCAL int ov02_0224E698(void *work) {
    u8 facing = (u8)PlayerAvatar_GetFacingDirection(*(PlayerAvatar **)((u8 *)work + 0x40));
    s16 x = (s16)PlayerAvatar_GetXCoord(*(PlayerAvatar **)((u8 *)work + 0x40));
    s16 z = (s16)PlayerAvatar_GetZCoord(*(PlayerAvatar **)((u8 *)work + 0x40));
    u16 buf[2];
    VecFx32 pos;
    void *areaSet;
    PlayerAvatar_CopyPositionVector(*(PlayerAvatar **)((u8 *)work + 0x40), &pos);
    areaSet = SafariZone_GetAreaSet(Save_SafariZone_Get(*(SaveData **)((u8 *)work + 0xc)), 0);
    if (*(u8 *)((u8 *)areaSet + (u8)((x - 0x20) / 0x20 + (z - 0x20) / 0x20 * 3) * 0x7a + 1) >= 0x1e) {
        return 1;
    }
    if (PlayerAvatar_GetState(*(PlayerAvatar **)((u8 *)work + 0x40)) != 2) {
        return 0;
    }
    if (ov02_0224E640(*(SaveData **)((u8 *)work + 0xc)) == 0) {
        return 2;
    }
    if (ov02_0224EE4C(work, x, z, facing, pos.y, &buf[1], &buf[0], 1) != 0) {
        return 0;
    }
    return 3;
}

WIP_LOCAL int ov02_0224E754(void *work, u16 *out) {
    ov02_SafariObjCfg cfg;
    int facing = PlayerAvatar_GetFacingDirection(*(PlayerAvatar **)((u8 *)work + 0x40));
    int x = PlayerAvatar_GetXCoord(*(PlayerAvatar **)((u8 *)work + 0x40)) + GetDeltaXByFacingDirection(facing);
    int z = PlayerAvatar_GetZCoord(*(PlayerAvatar **)((u8 *)work + 0x40)) + GetDeltaYByFacingDirection(facing);
    int cellIdx;
    int i;
    u8 *entry;
    u8 *obj;
    int gender = (u8)PlayerProfile_GetTrainerGender(Save_PlayerData_GetProfile(*(SaveData **)((u8 *)work + 0xc)));
    cellIdx = ov02_0224E31C(x, z);
    x = x % 0x20;
    z = z % 0x20;
    entry = (u8 *)SafariZone_GetAreaSet(Save_SafariZone_Get(*(SaveData **)((u8 *)work + 0xc)), 0) + cellIdx * 0x7a;
    i = 0;
    if (i < entry[1]) {
        obj = entry + 2;
        do {
            GetSafariObjectConfig(&cfg, obj[0], gender);
            if (x >= obj[1] && z <= obj[3] && x < obj[1] + cfg.width && z > obj[3] - cfg.height) {
                if (out != NULL) {
                    *out = i;
                }
                return obj[0];
            }
            i++;
            obj += 4;
        } while (i < entry[1]);
    }
    *out = 0;
    return 0xff;
}

// ov02_0224E828
// clang-format off
asm int ov02_0224E828(void *a0, int a1, int a2, int a3, fx32 a4, u16 *a5, u16 *a6, int a7) {
    push {r4, r5, r6, r7, lr}
    sub sp, #0x6c
    add r4, r0, #0
    add r5, r1, #0
    ldr r0, [sp, #0x84]
    str r2, [sp, #4]
    ldr r1, =sRodata+0x754
    str r0, [sp, #0x84]
    ldr r0, [sp, #0x88]
    ldrb r2, [r1, #2]
    str r0, [sp, #0x88]
    ldrb r1, [r1, #3]
    str r3, [sp, #8]
    add r0, sp, #0x68
    strb r2, [r0, #1]
    strb r1, [r0, #2]
    ldr r1, [sp, #0x84]
    ldr r6, [sp, #0x80]
    strh r5, [r1, #0]
    ldr r2, [sp, #4]
    ldr r1, [sp, #0x88]
    strh r2, [r1, #0]
    ldr r1, [sp, #8]
    cmp r1, #3
    bls _0224E85C
    b _0224EB3E
_0224E85C:
    add r1, r1, r1
    add r1, pc
    ldrh r1, [r1, #6]
    lsl r1, r1, #0x10
    asr r1, r1, #0x10
    add pc, r1
    lsl r6, r0, #0
    lsl r6, r0, #0
    lsl r0, r5, #4
    lsl r0, r5, #4
_0224E870:
    mov r0, #0
    str r0, [sp, #0x50]
    ldr r0, [sp, #8]
    cmp r0, #0
    beq _0224E87E
    mov r0, #1
    b _0224E880
_0224E87E:
    ldr r0, [sp, #0x50]
_0224E880:
    lsl r0, r0, #0x18
    lsr r1, r0, #0x18
    mov r0, #0
    str r0, [sp, #0x54]
    add r0, sp, #0x68
    add r0, #1
    ldrsb r0, [r0, r1]
    ldr r7, [sp, #0x54]
    str r0, [sp, #0x38]
    add r0, sp, #0x70
    ldrb r0, [r0, #0x1c]
    str r0, [sp, #0x48]
    lsl r0, r5, #4
    str r0, [sp, #0x44]
    add r0, #8
    str r0, [sp, #0x44]
    lsl r0, r0, #0xc
    str r0, [sp, #0x40]
_0224E8A4:
    ldr r0, [sp, #0x38]
    add r1, r7, r0
    ldr r0, [sp, #4]
    add r0, r0, r1
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    str r0, [sp, #0x3c]
    ldr r2, [sp, #0x3c]
    add r0, r4, #0
    add r1, r5, #0
    bl GetMetatileBehavior
    str r0, [sp, #0x58]
    ldr r2, [sp, #0x3c]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_020548C0
    add r1, r0, #0
    ldr r0, [sp, #0x58]
    ldr r2, [sp, #0x48]
    bl ov02_0224EF6C
    cmp r0, #0
    beq _0224E95C
    ldr r0, [sp, #0x3c]
    lsl r0, r0, #4
    add r0, #8
    cmp r0, #0
    ble _0224E8F4
    lsl r0, r0, #0xc
    bl _fflt
    add r1, r0, #0
    mov r0, #0x3f
    lsl r0, r0, #0x18
    bl _fadd
    str r0, [sp, #0x14]
    b _0224E904
_0224E8F4:
    lsl r0, r0, #0xc
    bl _fflt
    mov r1, #0x3f
    lsl r1, r1, #0x18
    bl _fsub
    str r0, [sp, #0x14]
_0224E904:
    ldr r0, [sp, #0x44]
    cmp r0, #0
    ble _0224E91C
    ldr r0, [sp, #0x40]
    bl _fflt
    add r1, r0, #0
    mov r0, #0x3f
    lsl r0, r0, #0x18
    bl _fadd
    b _0224E92A
_0224E91C:
    ldr r0, [sp, #0x40]
    bl _fflt
    mov r1, #0x3f
    lsl r1, r1, #0x18
    bl _fsub
_0224E92A:
    bl _ffix
    str r0, [sp, #0x5c]
    ldr r0, [sp, #0x14]
    bl _ffix
    add r3, r0, #0
    add r0, sp, #0x68
    str r0, [sp, #0]
    ldr r2, [sp, #0x5c]
    add r0, r4, #0
    add r1, r6, #0
    bl sub_02054774
    add r1, sp, #0x68
    ldrb r1, [r1, #0]
    cmp r1, #1
    bne _0224E95C
    cmp r0, r6
    bne _0224E95C
    ldr r0, [sp, #0x50]
    add r0, r0, #1
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp, #0x50]
_0224E95C:
    ldr r0, [sp, #0x38]
    add r7, r7, r0
    ldr r0, [sp, #0x54]
    add r0, r0, #1
    str r0, [sp, #0x54]
    cmp r0, #2
    blt _0224E8A4
    ldr r0, [sp, #0x50]
    cmp r0, #2
    beq _0224E972
    b _0224EB3E
_0224E972:
    ldr r0, [sp, #0x84]
    strh r5, [r0, #0]
    ldr r0, [sp, #8]
    cmp r0, #0
    bne _0224E984
    ldr r0, [sp, #4]
    sub r1, r0, #1
    ldr r0, [sp, #0x88]
    b _0224E98A
_0224E984:
    ldr r0, [sp, #4]
    add r1, r0, #2
    ldr r0, [sp, #0x88]
_0224E98A:
    strh r1, [r0, #0]
    add sp, #0x6c
    mov r0, #1
    pop {r4, r5, r6, r7, pc}
_0224E992:
    ldr r1, [sp, #8]
    cmp r1, #2
    bne _0224E99C
    mov r1, #1
    b _0224E99E
_0224E99C:
    mov r1, #2
_0224E99E:
    ldrsb r0, [r0, r1]
    ldr r2, [sp, #4]
    add r0, r5, r0
    lsl r0, r0, #0x10
    asr r5, r0, #0x10
    add r0, r4, #0
    add r1, r5, #0
    bl GetMetatileBehavior
    str r0, [sp, #0x20]
    ldr r2, [sp, #4]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_020548C0
    str r0, [sp, #0x18]
    ldr r0, [sp, #4]
    lsl r0, r0, #4
    add r0, #8
    cmp r0, #0
    ble _0224E9DC
    lsl r0, r0, #0xc
    bl _fflt
    add r1, r0, #0
    mov r0, #0x3f
    lsl r0, r0, #0x18
    bl _fadd
    str r0, [sp, #0x10]
    b _0224E9EC
_0224E9DC:
    lsl r0, r0, #0xc
    bl _fflt
    mov r1, #0x3f
    lsl r1, r1, #0x18
    bl _fsub
    str r0, [sp, #0x10]
_0224E9EC:
    lsl r0, r5, #4
    str r0, [sp, #0x2c]
    add r0, #8
    str r0, [sp, #0x2c]
    cmp r0, #0
    ble _0224EA0A
    lsl r0, r0, #0xc
    bl _fflt
    add r1, r0, #0
    mov r0, #0x3f
    lsl r0, r0, #0x18
    bl _fadd
    b _0224EA18
_0224EA0A:
    lsl r0, r0, #0xc
    bl _fflt
    mov r1, #0x3f
    lsl r1, r1, #0x18
    bl _fsub
_0224EA18:
    bl _ffix
    add r7, r0, #0
    ldr r0, [sp, #0x10]
    bl _ffix
    add r3, r0, #0
    add r0, sp, #0x68
    str r0, [sp, #0]
    add r0, r4, #0
    add r1, r6, #0
    add r2, r7, #0
    bl sub_02054774
    add r7, r0, #0
    add r0, sp, #0x70
    ldrb r0, [r0, #0x1c]
    ldr r1, [sp, #0x18]
    str r0, [sp, #0x34]
    ldr r0, [sp, #0x20]
    ldr r2, [sp, #0x34]
    bl ov02_0224EF6C
    cmp r0, #0
    beq _0224EA56
    add r0, sp, #0x68
    ldrb r0, [r0, #0]
    cmp r0, #1
    bne _0224EA56
    cmp r7, r6
    beq _0224EA5C
_0224EA56:
    add sp, #0x6c
    mov r0, #0
    pop {r4, r5, r6, r7, pc}
_0224EA5C:
    mov r0, #0
    str r0, [sp, #0x28]
    ldr r0, [sp, #0x2c]
    add r7, sp, #0x68
    lsl r0, r0, #0xc
    add r7, #1
    str r0, [sp, #0x4c]
_0224EA6A:
    mov r0, #0
    ldrsb r1, [r7, r0]
    ldr r0, [sp, #4]
    add r0, r0, r1
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    str r0, [sp, #0x30]
    ldr r2, [sp, #0x30]
    add r0, r4, #0
    add r1, r5, #0
    bl GetMetatileBehavior
    str r0, [sp, #0x24]
    ldr r2, [sp, #0x30]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_020548C0
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x30]
    lsl r0, r0, #4
    add r0, #8
    cmp r0, #0
    ble _0224EAAE
    lsl r0, r0, #0xc
    bl _fflt
    add r1, r0, #0
    mov r0, #0x3f
    lsl r0, r0, #0x18
    bl _fadd
    str r0, [sp, #0xc]
    b _0224EABE
_0224EAAE:
    lsl r0, r0, #0xc
    bl _fflt
    mov r1, #0x3f
    lsl r1, r1, #0x18
    bl _fsub
    str r0, [sp, #0xc]
_0224EABE:
    ldr r0, [sp, #0x2c]
    cmp r0, #0
    ble _0224EAD6
    ldr r0, [sp, #0x4c]
    bl _fflt
    add r1, r0, #0
    mov r0, #0x3f
    lsl r0, r0, #0x18
    bl _fadd
    b _0224EAE4
_0224EAD6:
    ldr r0, [sp, #0x4c]
    bl _fflt
    mov r1, #0x3f
    lsl r1, r1, #0x18
    bl _fsub
_0224EAE4:
    bl _ffix
    str r0, [sp, #0x60]
    ldr r0, [sp, #0xc]
    bl _ffix
    add r3, r0, #0
    add r0, sp, #0x68
    str r0, [sp, #0]
    ldr r2, [sp, #0x60]
    add r0, r4, #0
    add r1, r6, #0
    bl sub_02054774
    str r0, [sp, #0x64]
    ldr r0, [sp, #0x24]
    ldr r1, [sp, #0x1c]
    ldr r2, [sp, #0x34]
    bl ov02_0224EF6C
    cmp r0, #0
    beq _0224EB32
    add r0, sp, #0x68
    ldrb r0, [r0, #0]
    cmp r0, #1
    bne _0224EB32
    ldr r0, [sp, #0x64]
    cmp r0, r6
    bne _0224EB32
    ldr r0, [sp, #0x84]
    strh r5, [r0, #0]
    ldr r1, [sp, #4]
    ldr r0, [sp, #0x28]
    add r1, r1, r0
    ldr r0, [sp, #0x88]
    add sp, #0x6c
    strh r1, [r0, #0]
    mov r0, #1
    pop {r4, r5, r6, r7, pc}
_0224EB32:
    ldr r0, [sp, #0x28]
    add r7, r7, #1
    add r0, r0, #1
    str r0, [sp, #0x28]
    cmp r0, #2
    blt _0224EA6A
_0224EB3E:
    mov r0, #0
    add sp, #0x6c
    pop {r4, r5, r6, r7, pc}
}
// clang-format on

// ov02_0224EB48
// clang-format off
asm int ov02_0224EB48(void *a0, int a1, int a2, int a3, fx32 a4, u16 *a5, u16 *a6, int a7) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x68
    add r4, r0, #0
    ldr r0, [sp, #0x84]
    str r1, [sp, #4]
    str r0, [sp, #0x84]
    ldr r0, [sp, #0x88]
    ldr r1, =sRodata+0x754
    str r0, [sp, #0x88]
    add r5, r2, #0
    add r2, r3, #0
    ldrb r0, [r1, #0]
    add r3, sp, #0x64
    ldr r6, [sp, #0x80]
    strb r0, [r3, #1]
    ldrb r0, [r1, #1]
    cmp r2, #3
    strb r0, [r3, #2]
    ldr r1, [sp, #4]
    ldr r0, [sp, #0x84]
    strh r1, [r0, #0]
    ldr r0, [sp, #0x88]
    strh r5, [r0, #0]
    bls _0224EB7A
    b _0224EE42
_0224EB7A:
    add r0, r2, r2
    add r0, pc
    ldrh r0, [r0, #6]
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    add pc, r0
    lsl r6, r0, #0
    lsl r6, r0, #0
    lsl r2, r6, #6
    lsl r2, r6, #6
_0224EB8E:
    cmp r2, #0
    bne _0224EB96
    mov r0, #1
    b _0224EB98
_0224EB96:
    mov r0, #2
_0224EB98:
    ldrsb r0, [r3, r0]
    ldr r1, [sp, #4]
    add r0, r5, r0
    lsl r0, r0, #0x10
    asr r5, r0, #0x10
    add r0, r4, #0
    add r2, r5, #0
    bl GetMetatileBehavior
    str r0, [sp, #0x50]
    ldr r1, [sp, #4]
    add r0, r4, #0
    add r2, r5, #0
    bl sub_020548C0
    str r0, [sp, #0x4c]
    lsl r0, r5, #4
    str r0, [sp, #0x24]
    add r0, #8
    str r0, [sp, #0x24]
    cmp r0, #0
    ble _0224EBD8
    lsl r0, r0, #0xc
    bl _fflt
    add r1, r0, #0
    mov r0, #0x3f
    lsl r0, r0, #0x18
    bl _fadd
    str r0, [sp, #0x14]
    b _0224EBE8
_0224EBD8:
    lsl r0, r0, #0xc
    bl _fflt
    mov r1, #0x3f
    lsl r1, r1, #0x18
    bl _fsub
    str r0, [sp, #0x14]
_0224EBE8:
    ldr r0, [sp, #4]
    lsl r0, r0, #4
    add r0, #8
    cmp r0, #0
    ble _0224EC04
    lsl r0, r0, #0xc
    bl _fflt
    add r1, r0, #0
    mov r0, #0x3f
    lsl r0, r0, #0x18
    bl _fadd
    b _0224EC12
_0224EC04:
    lsl r0, r0, #0xc
    bl _fflt
    mov r1, #0x3f
    lsl r1, r1, #0x18
    bl _fsub
_0224EC12:
    bl _ffix
    add r7, r0, #0
    ldr r0, [sp, #0x14]
    bl _ffix
    add r3, r0, #0
    add r0, sp, #0x64
    str r0, [sp, #0]
    add r0, r4, #0
    add r1, r6, #0
    add r2, r7, #0
    bl sub_02054774
    add r7, r0, #0
    add r0, sp, #0x70
    ldrb r0, [r0, #0x1c]
    ldr r1, [sp, #0x4c]
    str r0, [sp, #0x30]
    ldr r0, [sp, #0x50]
    ldr r2, [sp, #0x30]
    bl ov02_0224EF6C
    cmp r0, #0
    beq _0224EC50
    add r0, sp, #0x64
    ldrb r0, [r0, #0]
    cmp r0, #1
    bne _0224EC50
    cmp r7, r6
    beq _0224EC56
_0224EC50:
    add sp, #0x68
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224EC56:
    mov r0, #0
    str r0, [sp, #0x48]
    ldr r0, [sp, #0x24]
    add r7, sp, #0x64
    lsl r0, r0, #0xc
    add r7, #1
    str r0, [sp, #0x34]
_0224EC64:
    mov r0, #0
    ldrsb r1, [r7, r0]
    ldr r0, [sp, #4]
    add r2, r5, #0
    sub r0, r0, r1
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    str r0, [sp, #0x2c]
    ldr r1, [sp, #0x2c]
    add r0, r4, #0
    bl GetMetatileBehavior
    str r0, [sp, #0x20]
    ldr r1, [sp, #0x2c]
    add r0, r4, #0
    add r2, r5, #0
    bl sub_020548C0
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x24]
    cmp r0, #0
    ble _0224ECA4
    ldr r0, [sp, #0x34]
    bl _fflt
    add r1, r0, #0
    mov r0, #0x3f
    lsl r0, r0, #0x18
    bl _fadd
    str r0, [sp, #0x10]
    b _0224ECB4
_0224ECA4:
    ldr r0, [sp, #0x34]
    bl _fflt
    mov r1, #0x3f
    lsl r1, r1, #0x18
    bl _fsub
    str r0, [sp, #0x10]
_0224ECB4:
    ldr r0, [sp, #0x2c]
    lsl r0, r0, #4
    add r0, #8
    cmp r0, #0
    ble _0224ECD0
    lsl r0, r0, #0xc
    bl _fflt
    add r1, r0, #0
    mov r0, #0x3f
    lsl r0, r0, #0x18
    bl _fadd
    b _0224ECDE
_0224ECD0:
    lsl r0, r0, #0xc
    bl _fflt
    mov r1, #0x3f
    lsl r1, r1, #0x18
    bl _fsub
_0224ECDE:
    bl _ffix
    str r0, [sp, #0x54]
    ldr r0, [sp, #0x10]
    bl _ffix
    add r3, r0, #0
    add r0, sp, #0x64
    str r0, [sp, #0]
    ldr r2, [sp, #0x54]
    add r0, r4, #0
    add r1, r6, #0
    bl sub_02054774
    str r0, [sp, #0x58]
    ldr r0, [sp, #0x20]
    ldr r1, [sp, #0x1c]
    ldr r2, [sp, #0x30]
    bl ov02_0224EF6C
    cmp r0, #0
    beq _0224ED2C
    add r0, sp, #0x64
    ldrb r0, [r0, #0]
    cmp r0, #1
    bne _0224ED2C
    ldr r0, [sp, #0x58]
    cmp r0, r6
    bne _0224ED2C
    ldr r1, [sp, #4]
    ldr r0, [sp, #0x48]
    sub r1, r1, r0
    ldr r0, [sp, #0x84]
    strh r1, [r0, #0]
    ldr r0, [sp, #0x88]
    add sp, #0x68
    strh r5, [r0, #0]
    mov r0, #1
    pop {r3, r4, r5, r6, r7, pc}
_0224ED2C:
    ldr r0, [sp, #0x48]
    add r7, r7, #1
    add r0, r0, #1
    str r0, [sp, #0x48]
    cmp r0, #2
    blt _0224EC64
    b _0224EE42
_0224ED3A:
    mov r0, #0
    str r0, [sp, #0x44]
    cmp r2, #2
    bne _0224ED4E
    ldr r0, [sp, #4]
    sub r0, r0, #2
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    str r0, [sp, #0xc]
    b _0224ED58
_0224ED4E:
    ldr r0, [sp, #4]
    add r0, r0, #1
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    str r0, [sp, #0xc]
_0224ED58:
    mov r0, #0
    str r0, [sp, #0x18]
    add r0, sp, #0x70
    ldrb r0, [r0, #0x1c]
    ldr r7, [sp, #0xc]
    str r0, [sp, #0x40]
    lsl r0, r5, #4
    str r0, [sp, #0x3c]
    add r0, #8
    str r0, [sp, #0x3c]
    lsl r0, r0, #0xc
    str r0, [sp, #0x38]
_0224ED70:
    lsl r0, r7, #0x10
    asr r0, r0, #0x10
    str r0, [sp, #0x28]
    ldr r1, [sp, #0x28]
    add r0, r4, #0
    add r2, r5, #0
    bl GetMetatileBehavior
    str r0, [sp, #0x5c]
    ldr r1, [sp, #0x28]
    add r0, r4, #0
    add r2, r5, #0
    bl sub_020548C0
    add r1, r0, #0
    ldr r0, [sp, #0x5c]
    ldr r2, [sp, #0x40]
    bl ov02_0224EF6C
    cmp r0, #0
    beq _0224EE20
    ldr r0, [sp, #0x3c]
    cmp r0, #0
    ble _0224EDB4
    ldr r0, [sp, #0x38]
    bl _fflt
    add r1, r0, #0
    mov r0, #0x3f
    lsl r0, r0, #0x18
    bl _fadd
    str r0, [sp, #8]
    b _0224EDC4
_0224EDB4:
    ldr r0, [sp, #0x38]
    bl _fflt
    mov r1, #0x3f
    lsl r1, r1, #0x18
    bl _fsub
    str r0, [sp, #8]
_0224EDC4:
    ldr r0, [sp, #0x28]
    lsl r0, r0, #4
    add r0, #8
    cmp r0, #0
    ble _0224EDE0
    lsl r0, r0, #0xc
    bl _fflt
    add r1, r0, #0
    mov r0, #0x3f
    lsl r0, r0, #0x18
    bl _fadd
    b _0224EDEE
_0224EDE0:
    lsl r0, r0, #0xc
    bl _fflt
    mov r1, #0x3f
    lsl r1, r1, #0x18
    bl _fsub
_0224EDEE:
    bl _ffix
    str r0, [sp, #0x60]
    ldr r0, [sp, #8]
    bl _ffix
    add r3, r0, #0
    add r0, sp, #0x64
    str r0, [sp, #0]
    ldr r2, [sp, #0x60]
    add r0, r4, #0
    add r1, r6, #0
    bl sub_02054774
    add r1, sp, #0x64
    ldrb r1, [r1, #0]
    cmp r1, #1
    bne _0224EE20
    cmp r0, r6
    bne _0224EE20
    ldr r0, [sp, #0x44]
    add r0, r0, #1
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp, #0x44]
_0224EE20:
    ldr r0, [sp, #0x18]
    add r7, r7, #1
    add r0, r0, #1
    str r0, [sp, #0x18]
    cmp r0, #2
    blt _0224ED70
    ldr r0, [sp, #0x44]
    cmp r0, #2
    bne _0224EE42
    ldr r1, [sp, #0xc]
    ldr r0, [sp, #0x84]
    strh r1, [r0, #0]
    ldr r0, [sp, #0x88]
    add sp, #0x68
    strh r5, [r0, #0]
    mov r0, #1
    pop {r3, r4, r5, r6, r7, pc}
_0224EE42:
    mov r0, #0
    add sp, #0x68
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

// ov02_0224EE4C
// clang-format off
asm int ov02_0224EE4C(void *a0, int a1, int a2, int a3, fx32 a4, u16 *a5, u16 *a6, int a7) {
    push {r4, r5, r6, r7, lr}
    sub sp, #0x24
    str r1, [sp, #0x14]
    str r2, [sp, #0x18]
    ldr r4, [sp, #0x38]
    str r3, [sp, #0x1c]
    str r4, [sp, #0x38]
    ldr r4, [sp, #0x44]
    ldr r6, [sp, #0x3c]
    str r4, [sp, #0x44]
    ldr r4, =sRodata+0x754
    ldr r7, [sp, #0x40]
    ldrb r5, [r4, #4]
    add r4, sp, #0x20
    str r0, [sp, #0x10]
    strb r5, [r4, #0]
    ldr r4, =sRodata+0x754
    ldrb r5, [r4, #5]
    add r4, sp, #0x20
    strb r5, [r4, #1]
    ldr r4, [sp, #0x14]
    strh r4, [r6, #0]
    ldr r4, [sp, #0x18]
    strh r4, [r7, #0]
    ldr r4, [sp, #0x1c]
    cmp r4, #3
    bhi _0224EF60
    add r4, r4, r4
    add r4, pc
    ldrh r4, [r4, #6]
    lsl r4, r4, #0x10
    asr r4, r4, #0x10
    add pc, r4
    lsl r6, r0, #0
    lsl r6, r0, #0
    lsl r4, r5, #1
    lsl r4, r5, #1
_0224EE96:
    ldr r4, [sp, #0x38]
    str r4, [sp, #0]
    str r6, [sp, #4]
    str r7, [sp, #8]
    ldr r4, [sp, #0x44]
    str r4, [sp, #0xc]
    bl ov02_0224E828
    cmp r0, #0
    beq _0224EF60
    mov r4, #0
    add r5, sp, #0x20
_0224EEAE:
    ldr r0, [sp, #0x38]
    mov r1, #0
    str r0, [sp, #0]
    str r6, [sp, #4]
    str r7, [sp, #8]
    ldr r0, [sp, #0x44]
    str r0, [sp, #0xc]
    ldrsb r2, [r5, r1]
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x10]
    add r1, r1, r2
    lsl r1, r1, #0x10
    ldr r2, [sp, #0x18]
    ldr r3, [sp, #0x1c]
    asr r1, r1, #0x10
    bl ov02_0224E828
    cmp r0, #0
    beq _0224EEF2
    ldr r0, [sp, #0x14]
    sub r0, r0, r4
    strh r0, [r6, #0]
    ldr r0, [sp, #0x1c]
    cmp r0, #0
    bne _0224EEE6
    ldr r0, [sp, #0x18]
    sub r0, r0, #1
    b _0224EEEA
_0224EEE6:
    ldr r0, [sp, #0x18]
    add r0, r0, #2
_0224EEEA:
    add sp, #0x24
    strh r0, [r7, #0]
    mov r0, #1
    pop {r4, r5, r6, r7, pc}
_0224EEF2:
    add r4, r4, #1
    add r5, r5, #1
    cmp r4, #2
    blt _0224EEAE
    b _0224EF60
_0224EEFC:
    ldr r4, [sp, #0x38]
    str r4, [sp, #0]
    str r6, [sp, #4]
    str r7, [sp, #8]
    ldr r4, [sp, #0x44]
    str r4, [sp, #0xc]
    bl ov02_0224EB48
    cmp r0, #0
    beq _0224EF60
    mov r5, #0
    add r4, sp, #0x20
_0224EF14:
    ldr r0, [sp, #0x38]
    mov r2, #0
    str r0, [sp, #0]
    str r6, [sp, #4]
    str r7, [sp, #8]
    ldr r0, [sp, #0x44]
    str r0, [sp, #0xc]
    ldrsb r3, [r4, r2]
    ldr r2, [sp, #0x18]
    ldr r0, [sp, #0x10]
    sub r2, r2, r3
    lsl r2, r2, #0x10
    ldr r1, [sp, #0x14]
    ldr r3, [sp, #0x1c]
    asr r2, r2, #0x10
    bl ov02_0224EB48
    cmp r0, #0
    beq _0224EF58
    ldr r0, [sp, #0x1c]
    cmp r0, #2
    bne _0224EF46
    ldr r0, [sp, #0x14]
    sub r0, r0, #2
    b _0224EF4A
_0224EF46:
    ldr r0, [sp, #0x14]
    add r0, r0, #1
_0224EF4A:
    strh r0, [r6, #0]
    ldr r0, [sp, #0x18]
    add sp, #0x24
    add r0, r0, r5
    strh r0, [r7, #0]
    mov r0, #1
    pop {r4, r5, r6, r7, pc}
_0224EF58:
    add r5, r5, #1
    add r4, r4, #1
    cmp r5, #2
    blt _0224EF14
_0224EF60:
    mov r0, #0
    add sp, #0x24
    pop {r4, r5, r6, r7, pc}
    nop
}
// clang-format on

WIP_LOCAL BOOL ov02_0224EF6C(u8 tile, int flag, int sel) {
    if (sel == 0) {
        return ov02_0224E4CC(tile, flag);
    }
    return ov02_0224E4DC(tile, flag);
}

WIP_LOCAL void FieldSystem_FollowMonInteract(FieldSystem *fieldSystem) {
    TaskManager_Call(fieldSystem->taskman, Task_FollowMonInteract, NULL);
}

// ov02_0224EF94
// clang-format off
asm int ov02_0224EF94(FieldSystem *fieldSystem) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x1b0
    add r7, r0, #0
    ldr r0, [r7, #0x20]
    ldr r0, [r0, #0]
    bl MapHeader_GetMapSec
    add r2, r0, #0
    mov r0, #0x12
    lsl r0, r0, #4
    ldr r0, [r7, r0]
    mov r1, #0xde
    add r0, #0x14
    add r2, r2, #1
    bl ReadWholeNarcMemberByIdPair
    mov r0, #0x12
    lsl r0, r0, #4
    ldr r1, [r7, r0]
    mov r0, #0x9b
    lsl r0, r0, #2
    add r0, r1, r0
    mov r1, #0xde
    mov r2, #0
    bl ReadWholeNarcMemberByIdPair
    add r0, r7, #0
    add r1, sp, #4
    bl ov02_0224F058
    mov r0, #0x12
    lsl r0, r0, #4
    ldr r0, [r7, r0]
    add r3, sp, #0x20
    str r0, [sp, #0]
    add r0, #0x14
    str r0, [sp, #0]
    mov r0, #0
    add r2, r0, #0
_0224EFE2:
    add r1, r2, #0
    add r1, #0x1e
    add r2, r2, #1
    add r0, r0, #1
    stmia r3!, {r1}
    cmp r2, #0xc
    blt _0224EFE2
    add r2, sp, #0x20
    lsl r1, r0, #2
    mov r3, #0
    add r1, r2, r1
_0224EFF8:
    stmia r1!, {r3}
    add r3, r3, #1
    add r0, r0, #1
    cmp r3, #0x1e
    blt _0224EFF8
    add r2, sp, #0x20
    lsl r1, r0, #2
    mov r3, #0x2a
    add r1, r2, r1
_0224F00A:
    stmia r1!, {r3}
    add r3, r3, #1
    add r0, r0, #1
    cmp r3, #0x64
    blt _0224F00A
    mov r5, #0
    add r4, sp, #0x20
_0224F018:
    ldr r1, [r4, #0]
    mov r0, #0x14
    add r2, r1, #0
    mul r2, r0
    ldr r0, [sp, #0]
    add r6, r0, r2
    ldrh r0, [r6, #0xa]
    lsl r0, r0, #0x10
    lsr r0, r0, #0x16
    beq _0224F044
    add r0, r7, #0
    add r1, r6, #0
    add r2, sp, #4
    bl ov02_0224F108
    cmp r0, #0
    beq _0224F044
    ldrh r0, [r6, #0xa]
    add sp, #0x1b0
    lsl r0, r0, #0x10
    lsr r0, r0, #0x16
    pop {r3, r4, r5, r6, r7, pc}
_0224F044:
    add r5, r5, #1
    add r4, r4, #4
    cmp r5, #0x64
    blt _0224F018
    bl GF_AssertFail
    mov r0, #0
    add sp, #0x1b0
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

WIP_LOCAL void ov02_0224F058(FieldSystem *fieldSystem, void *work) {
    Pokemon *mon = GetFirstAliveMonInParty_CrashIfNone(SaveArray_Party_Get(*(SaveData **)((u8 *)fieldSystem + 0xc)));
    *(u16 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x87e) = GetMonData(mon, MON_DATA_SPECIES, NULL);
    *(u8 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x87d) = GetMonData(mon, MON_DATA_FORM, NULL);
    ov02_0224F324(mon, work);
    ov02_0224F4BC(fieldSystem, work);
    ov02_0224F580(fieldSystem, work);
    ov02_0224F5D0(fieldSystem, work);
    ov02_0224F5FC(fieldSystem, work);
    ov02_0224F644(fieldSystem, work);
    ov02_0224F64C(fieldSystem, work);
    ov02_0224F698(fieldSystem, work);
    ov02_0224F6AC(fieldSystem, *(u16 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x87e), *(u8 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x87d), work);
    ov02_0224F728(fieldSystem, work);
    ov02_0224F76C(*(u16 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x87e), work);
}

// ov02_0224F108
// clang-format off
asm int ov02_0224F108(void *a0, void *a1, void *a2) {
    push {r3, r4, r5, r6, r7, lr}
    add r6, r0, #0
    add r5, r1, #0
    add r4, r2, #0
    bl LCRandom
    mov r1, #0x64
    bl _s32_div_f
    ldrb r0, [r5, #0x11]
    cmp r1, r0
    blt _0224F124
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F124:
    ldrh r7, [r5, #0x12]
    cmp r7, #0
    beq _0224F13E
    ldr r0, [r6, #0xc]
    bl Save_VarsFlags_Get
    add r1, r7, #0
    bl Save_VarsFlags_CheckFlagInArray
    cmp r0, #0
    bne _0224F13E
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F13E:
    ldrb r0, [r5, #3]
    lsl r0, r0, #0x1b
    lsr r1, r0, #0x1b
    beq _0224F15E
    cmp r1, #9
    bne _0224F154
    ldrb r0, [r4, #0]
    cmp r0, #0
    bne _0224F15E
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F154:
    ldrb r0, [r4, #1]
    cmp r1, r0
    beq _0224F15E
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F15E:
    ldrb r1, [r5, #0]
    cmp r1, #0
    beq _0224F16E
    ldrb r0, [r4, #2]
    cmp r1, r0
    beq _0224F16E
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F16E:
    ldrb r0, [r5, #2]
    lsl r0, r0, #0x18
    lsr r1, r0, #0x1d
    beq _0224F19C
    cmp r1, #7
    ldrb r0, [r4, #3]
    bne _0224F194
    cmp r0, #2
    beq _0224F19C
    cmp r0, #3
    beq _0224F19C
    cmp r0, #4
    beq _0224F19C
    cmp r0, #5
    beq _0224F19C
    cmp r0, #8
    beq _0224F19C
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F194:
    cmp r1, r0
    beq _0224F19C
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F19C:
    ldrh r0, [r5, #0xa]
    lsl r0, r0, #0x1d
    lsr r1, r0, #0x1d
    beq _0224F1BA
    cmp r1, #5
    ldrb r0, [r4, #0xc]
    bne _0224F1B2
    cmp r0, #5
    bhs _0224F1BA
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F1B2:
    cmp r1, r0
    beq _0224F1BA
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F1BA:
    ldrb r0, [r5, #0x10]
    lsl r0, r0, #0x18
    lsr r1, r0, #0x1d
    beq _0224F1D8
    cmp r1, #4
    ldrb r0, [r4, #0xd]
    bne _0224F1D0
    cmp r0, #4
    bhs _0224F1D8
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F1D0:
    cmp r1, r0
    beq _0224F1D8
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F1D8:
    ldrb r0, [r5, #0x10]
    lsl r0, r0, #0x1d
    lsr r1, r0, #0x1e
    beq _0224F1EA
    ldrb r0, [r4, #4]
    cmp r1, r0
    beq _0224F1EA
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F1EA:
    ldrb r0, [r5, #0x10]
    lsl r0, r0, #0x1b
    lsr r1, r0, #0x1e
    beq _0224F212
    cmp r1, #3
    bne _0224F200
    ldrb r0, [r4, #0xe]
    cmp r0, #0
    bne _0224F200
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F200:
    cmp r1, #1
    bne _0224F20E
    ldrb r0, [r4, #0xf]
    cmp r0, #0
    bne _0224F20E
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F20E:
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F212:
    ldrb r0, [r5, #4]
    lsl r0, r0, #0x1b
    lsr r1, r0, #0x1b
    beq _0224F22A
    ldrb r0, [r4, #5]
    cmp r1, r0
    beq _0224F22A
    ldrb r0, [r4, #6]
    cmp r1, r0
    beq _0224F22A
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F22A:
    ldrh r0, [r5, #8]
    lsl r0, r0, #0x1d
    lsr r1, r0, #0x1d
    beq _0224F23C
    ldrb r0, [r4, #0x11]
    cmp r1, r0
    beq _0224F23C
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F23C:
    ldrh r1, [r5, #0xe]
    cmp r1, #0
    beq _0224F24C
    ldrb r0, [r4, #0x12]
    cmp r1, r0
    beq _0224F24C
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F24C:
    ldrb r1, [r5, #5]
    cmp r1, #0
    beq _0224F25C
    ldrb r0, [r4, #0x13]
    cmp r1, r0
    beq _0224F25C
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F25C:
    ldrh r0, [r5, #0xc]
    cmp r0, #0
    beq _0224F26E
    sub r1, r0, #1
    ldrh r0, [r4, #0x1a]
    cmp r1, r0
    beq _0224F26E
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F26E:
    ldrh r0, [r5, #0xa]
    lsl r0, r0, #0x1a
    lsr r1, r0, #0x1d
    beq _0224F280
    ldrb r0, [r4, #0x14]
    cmp r1, r0
    beq _0224F280
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F280:
    ldrb r0, [r5, #1]
    lsl r0, r0, #0x1c
    lsr r0, r0, #0x1c
    beq _0224F298
    mov r1, #0x15
    ldrsb r1, [r4, r1]
    bl ov02_02250628
    cmp r0, #0
    bne _0224F298
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F298:
    ldrb r0, [r5, #4]
    lsl r0, r0, #0x18
    lsr r1, r0, #0x1d
    beq _0224F2AA
    ldrb r0, [r4, #0x16]
    cmp r1, r0
    beq _0224F2AA
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F2AA:
    ldrb r0, [r5, #1]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x1c
    beq _0224F2C0
    ldrb r1, [r4, #7]
    bl ov02_02250594
    cmp r0, #0
    bne _0224F2C0
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F2C0:
    ldrb r0, [r5, #2]
    lsl r0, r0, #0x1d
    lsr r1, r0, #0x1d
    beq _0224F2D2
    ldrb r0, [r4, #8]
    cmp r1, r0
    beq _0224F2D2
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F2D2:
    ldrb r0, [r5, #6]
    cmp r0, #0
    beq _0224F2E6
    ldrb r1, [r4, #0xa]
    bl ov02_022506D4
    cmp r0, #0
    bne _0224F2E6
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F2E6:
    ldrb r0, [r5, #7]
    cmp r0, #0
    beq _0224F2FA
    ldrb r1, [r4, #0xb]
    bl ov02_02250738
    cmp r0, #0
    bne _0224F2FA
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F2FA:
    ldrb r0, [r5, #2]
    lsl r0, r0, #0x1b
    lsr r1, r0, #0x1e
    beq _0224F30C
    ldrb r0, [r4, #9]
    cmp r1, r0
    beq _0224F30C
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F30C:
    ldrh r0, [r5, #8]
    lsl r0, r0, #0x10
    lsr r1, r0, #0x1d
    beq _0224F31E
    ldrb r0, [r4, #0x17]
    cmp r1, r0
    beq _0224F31E
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0224F31E:
    mov r0, #1
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

WIP_LOCAL void ov02_0224F324(Pokemon *mon, void *work) {
    ov02_FieldList5 fields;
    int item;
    int hp_cur;
    int hp_max;
    int pct;
    int status;
    int level;
    int v1;
    int v2;
    int i;

    item = GetMonData(mon, 6, NULL);
    if (item != 0) {
        *(u8 *)work = 1;
        *(u8 *)((u8 *)work + 1) = ov02_0224F820(GetItemAttr((u16)item, 5, HEAP_ID_FIELD2));
    } else {
        *(u8 *)work = 0;
        *(u8 *)((u8 *)work + 1) = 8;
    }

    hp_cur = GetMonData(mon, 0xa3, NULL);
    hp_max = GetMonData(mon, 0xa4, NULL);
    pct = 100 * hp_cur / hp_max;
    if (pct == 100) {
        *(u8 *)((u8 *)work + 2) = 1;
    } else if (pct >= 75) {
        *(u8 *)((u8 *)work + 2) = 2;
    } else if (pct >= 50) {
        *(u8 *)((u8 *)work + 2) = 3;
    } else if (pct >= 25) {
        *(u8 *)((u8 *)work + 2) = 4;
    } else {
        *(u8 *)((u8 *)work + 2) = 5;
    }

    status = GetMonData(mon, 0xa0, NULL);
    if (status & 0x88) {
        *(u8 *)((u8 *)work + 3) = 5;
    } else if (status & 7) {
        *(u8 *)((u8 *)work + 3) = 8;
    } else if (status & 0x10) {
        *(u8 *)((u8 *)work + 3) = 2;
    } else if (status & 0x20) {
        *(u8 *)((u8 *)work + 3) = 3;
    } else if (status & 0x40) {
        *(u8 *)((u8 *)work + 3) = 4;
    } else if (status == 0) {
        *(u8 *)((u8 *)work + 3) = 1;
    } else {
        GF_AssertFail();
        *(u8 *)((u8 *)work + 3) = 1;
    }

    level = GetMonData(mon, 0xa1, NULL);
    if (level + 2 >= 50) {
        *(u8 *)((u8 *)work + 4) = 4;
    } else if (level - 2 <= 50) {
        *(u8 *)((u8 *)work + 4) = 6;
    } else {
        *(u8 *)((u8 *)work + 4) = 5;
    }

    v1 = GetMonData(mon, 0xb1, NULL);
    v2 = GetMonData(mon, 0xb2, NULL);
    *(u8 *)((u8 *)work + 5) = ov02_0224F79C(v1);
    *(u8 *)((u8 *)work + 6) = ov02_0224F79C(v2);
    *(u8 *)((u8 *)work + 7) = GetMonData(mon, 9, NULL);
    *(u8 *)((u8 *)work + 8) = ov02_02253AC0[GetMonNature(mon)];
    *(u8 *)((u8 *)work + 9) = (GetMonData(mon, 0x6f, NULL) == 0) ? 1 : 2;

    fields = ov02_02253A5C;
    *(u8 *)((u8 *)work + 0xb) = 0;
    for (i = 0; i < 5; i++) {
        *(u8 *)((u8 *)work + 0xb) |= (u8)GetMonData(mon, fields.v[i], NULL) << i;
    }
}

WIP_LOCAL void ov02_0224F4BC(FieldSystem *fieldSystem, void *work) {
    LocalMapObject *objArray;
    int i;
    int count;
    int playerX;
    int playerZ;
    u8 *counter;
    *(u8 *)((u8 *)work + 0xc) = 0;
    *(u8 *)((u8 *)work + 0xe) = 0;
    *(u8 *)((u8 *)work + 0xf) = 0;
    *(u8 *)((u8 *)work + 0x10) = 0;
    playerX = PlayerAvatar_GetXCoord(fieldSystem->playerAvatar);
    playerZ = PlayerAvatar_GetZCoord(fieldSystem->playerAvatar);
    count = MapObjectManager_GetObjectCount(fieldSystem->mapObjectManager);
    objArray = MapObjectManager_GetObjects(fieldSystem->mapObjectManager);
    i = 0;
    if (count > 0) {
        counter = (u8 *)work + 0xc;
        do {
            if (MapObject_CheckActive(objArray) == 1) {
                int objX = MapObject_GetXCoord(objArray);
                int objZ = MapObject_GetZCoord(objArray);
                int dx = playerX - objX;
                int dz = playerZ - objZ;
                u32 spriteID = MapObject_GetSpriteID(objArray);
                if (spriteID == 0x54) {
                    *(u8 *)((u8 *)work + 0xf) = 1;
                } else if (spriteID == 0x55) {
                    *(u8 *)((u8 *)work + 0xe) = 1;
                } else if (spriteID == 0x56) {
                    *(u8 *)((u8 *)work + 0x10) = 1;
                } else if (dx >= -1 && dx <= 1 && dz >= -1 && dz <= 1) {
                    u32 id = MapObject_GetID(objArray);
                    if (id != 0xfd && id != 0xff) {
                        (*counter)++;
                    }
                }
            }
            MapObjectArray_NextObject2(&objArray);
            i++;
        } while (i < count);
    }
}

WIP_LOCAL void ov02_0224F580(FieldSystem *fieldSystem, void *out) {
    int count = 0;
    u8 *events = Field_GetBgEvents(fieldSystem);
    int num = Field_GetNumBgEvents(fieldSystem);
    if (num != 0 && events != NULL) {
        int i;
        for (i = 0; i < num; i++) {
            if (*(u16 *)(events + 2) == 2 && !FieldSystem_FlagCheck(fieldSystem, HiddenItemScriptNoToFlagId(*(u16 *)events))) {
                count++;
            }
            events += 0x14;
        }
    }
    *(u8 *)((u8 *)out + 0xd) = count;
}

WIP_LOCAL void ov02_0224F5D0(FieldSystem *fieldSystem, void *out) {
    LocalFieldData *ldfd = Save_LocalFieldData_Get(fieldSystem->saveData);
    switch (LocalFieldData_GetWeatherType(ldfd)) {
    case 0:
        *(u8 *)((u8 *)out + 0x11) = 1;
        break;
    case 1:
        *(u8 *)((u8 *)out + 0x11) = 3;
        break;
    default:
        *(u8 *)((u8 *)out + 0x11) = 0;
        break;
    }
}

WIP_LOCAL void ov02_0224F5FC(FieldSystem *fieldSystem, void *work) {
    int x = MapObject_GetXCoord(FollowMon_GetMapObject(fieldSystem));
    int z = MapObject_GetZCoord(FollowMon_GetMapObject(fieldSystem));
    u8 behavior = GetMetatileBehavior(fieldSystem, x, z);
    *(u8 *)((u8 *)work + 0x12) = behavior;
    *(u16 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x882) = behavior;
    if (MetatileBehavior_CanGenerateWalkingEncounters(behavior)) {
        *(u8 *)((u8 *)work + 0x13) = 1;
    } else {
        *(u8 *)((u8 *)work + 0x13) = 2;
    }
}

WIP_LOCAL void ov02_0224F644(void *a, void *b) {
    *(u16 *)((u8 *)b + 0x1a) = (u16) * *(u32 **)((u8 *)a + 0x20);
}

WIP_LOCAL void ov02_0224F64C(FieldSystem *fieldSystem, void *arg1) {
    switch (Field_GetTimeOfDay(fieldSystem)) {
    case 0:
        *(u8 *)((u8 *)arg1 + 0x14) = 1;
        break;
    case 1:
        *(u8 *)((u8 *)arg1 + 0x14) = 2;
        break;
    case 2:
        *(u8 *)((u8 *)arg1 + 0x14) = 3;
        break;
    case 3:
        *(u8 *)((u8 *)arg1 + 0x14) = 4;
        break;
    case 4:
        *(u8 *)((u8 *)arg1 + 0x14) = 5;
        break;
    default:
        GF_AssertFail();
        *(u8 *)((u8 *)arg1 + 0x14) = 0;
        break;
    }
}

WIP_LOCAL void ov02_0224F698(FieldSystem *fieldSystem, void *out) {
    *(s8 *)((u8 *)out + 0x15) = FieldSystem_UnkSub108_GetMonMood(*(FieldSystemUnk108 **)((u8 *)fieldSystem + 0x108));
}

WIP_LOCAL void ov02_0224F6AC(FieldSystem *fieldSystem, int a1, int a2, void *work) {
    PartyExtraSub aprijuice;
    struct PokeathlonPerformanceStars stars;
    int code;
    u32 best;
    Party *party = SaveArray_Party_Get(*(SaveData **)((u8 *)fieldSystem + 0xc));
    int idx = GetIdxOfFirstAliveMonInParty_CrashIfNone(party);
    Party_GetMonAprijuiceModifiers(party, &aprijuice, idx);
    CalcMonPokeathlonStars(&stars, Party_GetMonByIndex(party, idx), (s8 *)&aprijuice, HEAP_ID_FIELD2);
    best = ((struct ov02_PokeathlonStarBits *)&stars.stars)->s0;
    code = 1;
    if (best < ((struct ov02_PokeathlonStarBits *)&stars.stars)->s4) {
        best = ((struct ov02_PokeathlonStarBits *)&stars.stars)->s4;
        code = 2;
    }
    if (best < ((struct ov02_PokeathlonStarBits *)&stars.stars)->s3) {
        best = ((struct ov02_PokeathlonStarBits *)&stars.stars)->s3;
        code = 4;
    }
    if (best < ((struct ov02_PokeathlonStarBits *)&stars.stars)->s1) {
        best = ((struct ov02_PokeathlonStarBits *)&stars.stars)->s1;
        code = 3;
    }
    if (best < ((struct ov02_PokeathlonStarBits *)&stars.stars)->s2) {
        code = 5;
    }
    *(u8 *)((u8 *)work + 0x16) = code;
}

WIP_LOCAL void ov02_0224F728(FieldSystem *fieldSystem, void *arg1) {
    switch (MapObject_GetFacingDirection(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4))) {
    case 0:
        *(u8 *)((u8 *)arg1 + 0x17) = 3;
        break;
    case 1:
        *(u8 *)((u8 *)arg1 + 0x17) = 4;
        break;
    case 2:
        *(u8 *)((u8 *)arg1 + 0x17) = 2;
        break;
    case 3:
        *(u8 *)((u8 *)arg1 + 0x17) = 1;
        break;
    default:
        *(u8 *)((u8 *)arg1 + 0x17) = 0;
        break;
    }
}

WIP_LOCAL void ov02_0224F76C(int a0, void *out) {
    void *narc;
    if (a0 <= 0 || a0 > 0x1ed) {
        GF_AssertFail();
        return;
    }
    narc = AllocAtEndAndReadWholeNarcMemberByIdPair((NarcId)0xe9, 0, HEAP_ID_FIELD2);
    *(u8 *)((u8 *)out + 0xa) = ((u8 *)narc)[a0 - 1];
    Heap_Free(narc);
}

WIP_LOCAL int ov02_0224F79C(int a0) {
    switch (a0) {
    case 0:
        return 1;
    case 1:
        return 7;
    case 2:
        return 0xa;
    case 3:
        return 8;
    case 4:
        return 9;
    case 5:
        return 0xd;
    case 6:
        return 0xc;
    case 7:
        return 0xe;
    case 8:
        return 0x11;
    case 10:
        return 2;
    case 11:
        return 3;
    case 12:
        return 5;
    case 13:
        return 4;
    case 14:
        return 0xb;
    case 15:
        return 6;
    case 16:
        return 0xf;
    case 17:
        return 0x10;
    }
    GF_AssertFail();
    return 0;
}

WIP_LOCAL int ov02_0224F820(int a0) {
    switch (a0) {
    case 0:
        return 4;
    case 1:
        return 2;
    case 2:
        return 1;
    case 3:
        return 7;
    case 4:
        return 6;
    case 5:
        return 5;
    case 6:
        return 3;
    default:
        GF_AssertFail();
        return 8;
    }
}

WIP_LOCAL void *ov02_0224F864(enum HeapID heapID) {
    void *ptr = Heap_Alloc(heapID, 0x884);
    MI_CpuFill8(ptr, 0, 0x884);
    return ptr;
}

WIP_LOCAL void ov02_0224F880(void *a0, int a1) {
    int i;
    u8 *p;
    ReadWholeNarcMemberByIdPair((u8 *)a0 + 0x7e4, (NarcId)0xdf, a1 - 1);
    *(u8 *)((u8 *)a0 + 0x868) = 0;
    *(u8 *)((u8 *)a0 + 0x869) = 0;
    *(u8 *)((u8 *)a0 + 0x86b) = 0;
    ((ov02_FollowMonStep *)((u8 *)a0 + 0x86c))->idx = 0;
    *(u8 *)((u8 *)a0 + 0x86a) = 0;
    *(u8 *)((u8 *)a0 + 0x86d) = 0;
    *(u16 *)((u8 *)a0 + 0x86e) = 0;
    for (i = 0, p = (u8 *)a0; i < 5; i++, p += 8) {
        if (*(u16 *)(p + 0x7e4) == 0xFFFF) {
            break;
        }
    }
    ((ov02_FollowMonStep *)((u8 *)a0 + 0x86c))->hi = i;
}

WIP_LOCAL void ov02_0224F8F4(void *ptr) {
    Heap_Free(ptr);
}

// ov02_0224F8FC
// clang-format off
asm int ov02_0224F8FC(FieldSystem *fieldSystem, void *a1) {
    push {r3, r4, r5, r6, r7, lr}
    ldr r2, =0x0000086C
    add r4, r1, #0
    ldrb r3, [r4, r2]
    add r5, r0, #0
    lsl r2, r3, #0x1c
    lsr r2, r2, #0x1c
    mov ip, r2
    cmp r2, #5
    blo _0224F93E
    bl ov02_02250504
    ldr r1, =0x0000080C
    ldr r0, [r4, r1]
    cmp r0, #0
    beq _0224F920
    mov r0, #2
    pop {r3, r4, r5, r6, r7, pc}
_0224F920:
    add r0, r1, #0
    add r0, #0xa
    ldrb r0, [r4, r0]
    cmp r0, #0
    beq _0224F92E
    mov r0, #3
    pop {r3, r4, r5, r6, r7, pc}
_0224F92E:
    add r1, #0xb
    ldrb r0, [r4, r1]
    cmp r0, #0
    beq _0224F93A
    mov r0, #4
    pop {r3, r4, r5, r6, r7, pc}
_0224F93A:
    mov r0, #1
    pop {r3, r4, r5, r6, r7, pc}
_0224F93E:
    ldr r2, =0x0000086C
    sub r2, #0x88
    add r7, r4, r2
    mov r2, ip
    lsl r2, r2, #3
    add r6, r7, r2
    ldrh r7, [r7, r2]
    ldr r2, =0x0000FFFF
    cmp r7, r2
    bne _0224F980
    bl ov02_02250504
    ldr r1, =0x0000080C
    ldr r0, [r4, r1]
    cmp r0, #0
    beq _0224F962
    mov r0, #2
    pop {r3, r4, r5, r6, r7, pc}
_0224F962:
    add r0, r1, #0
    add r0, #0xa
    ldrb r0, [r4, r0]
    cmp r0, #0
    beq _0224F970
    mov r0, #3
    pop {r3, r4, r5, r6, r7, pc}
_0224F970:
    add r1, #0xb
    ldrb r0, [r4, r1]
    cmp r0, #0
    beq _0224F97C
    mov r0, #4
    pop {r3, r4, r5, r6, r7, pc}
_0224F97C:
    mov r0, #1
    pop {r3, r4, r5, r6, r7, pc}
_0224F980:
    ldr r2, =0x0000086C
    sub r2, r2, #3
    ldrb r2, [r4, r2]
    cmp r2, #7
    bls _0224F98C
    b _0224FB28
_0224F98C:
    add r2, r2, r2
    add r2, pc
    ldrh r2, [r2, #6]
    lsl r2, r2, #0x10
    asr r2, r2, #0x10
    add pc, r2
    lsl r6, r1, #0
    lsl r0, r6, #0
    lsl r6, r1, #1
    lsl r4, r5, #1
    lsl r0, r0, #2
    lsl r4, r4, #2
    lsl r6, r6, #2
    lsl r4, r2, #5
_0224F9A8:
    add r0, r4, #0
    add r1, r6, #0
    bl ov02_0224FB44
    cmp r0, #0
    beq _0224F9CA
    add r5, #0xe4
    ldr r0, [r5, #0]
    bl MapObject_UnpauseMovement
    ldr r0, =0x00000868
    mov r1, #0
    strb r1, [r4, r0]
    mov r1, #5
    add r0, r0, #1
    strb r1, [r4, r0]
    b _0224FB28
_0224F9CA:
    add r0, r5, #0
    add r1, r4, #0
    add r2, r6, #0
    bl ov02_0224FB54
    cmp r0, #0
    beq _0224F9E8
    add r5, #0xe4
    ldr r0, [r5, #0]
    bl MapObject_UnpauseMovement
    ldr r0, =0x00000869
    mov r1, #2
    strb r1, [r4, r0]
    b _0224FB28
_0224F9E8:
    add r0, r5, #0
    add r1, r4, #0
    add r2, r6, #0
    bl FollowMon_TryPrintInteractionMessage
    cmp r0, #0
    beq _0224FA06
    add r5, #0xe4
    ldr r0, [r5, #0]
    bl MapObject_PauseMovement
    ldr r0, =0x00000869
    mov r1, #6
    strb r1, [r4, r0]
    b _0224FB28
_0224FA06:
    add r0, r4, #0
    add r1, r6, #0
    bl ov02_0224FC74
    cmp r0, #0
    beq _0224FA1A
    ldr r0, =0x00000869
    mov r1, #7
    strb r1, [r4, r0]
    b _0224FB28
_0224FA1A:
    ldr r2, =0x0000086C
    mov r1, #0xf
    ldrb r3, [r4, r2]
    add r0, r3, #0
    bic r0, r1
    lsl r1, r3, #0x1c
    lsr r1, r1, #0x1c
    add r1, r1, #1
    lsl r1, r1, #0x18
    lsr r3, r1, #0x18
    mov r1, #0xf
    and r1, r3
    orr r0, r1
    strb r0, [r4, r2]
    mov r1, #0
    sub r0, r2, #3
    strb r1, [r4, r0]
    b _0224FB28
_0224FA3E:
    add r2, r7, #0
    bl ov02_02250004
    cmp r0, #0
    beq _0224FB28
    ldr r0, =0x00000869
    mov r1, #1
    strb r1, [r4, r0]
    b _0224FB28
_0224FA50:
    ldr r0, =0x0000086C
    add r0, r0, #2
    ldrh r0, [r4, r0]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    bl IsPrintFinished
    cmp r0, #1
    bne _0224FB28
    ldr r1, =0x0000086C
    ldrb r2, [r4, r1]
    lsl r0, r2, #0x18
    lsl r2, r2, #0x1c
    lsr r2, r2, #0x1c
    lsr r0, r0, #0x1c
    add r2, r2, #1
    cmp r0, r2
    ble _0224FAA8
    ldr r0, =gSystem
    ldr r1, [r0, #0x48]
    mov r0, #3
    tst r0, r1
    beq _0224FB28
    add r0, r4, #0
    mov r1, #0
    bl ClearFrameAndWindow2
    add r0, r4, #0
    bl RemoveWindow
    ldr r0, [r4, #0x10]
    bl String_Delete
    add r0, r5, #0
    add r0, #0xd2
    ldrb r1, [r0, #0]
    mov r0, #0x40
    add r5, #0xd2
    bic r1, r0
    strb r1, [r5, #0]
    ldr r0, =0x00000869
    mov r1, #3
    strb r1, [r4, r0]
    b _0224FB28
_0224FAA8:
    add r0, r1, #0
    sub r0, #0x60
    ldr r0, [r4, r0]
    cmp r0, #0
    beq _0224FABA
    mov r2, #3
    sub r0, r1, #3
    strb r2, [r4, r0]
    b _0224FB28
_0224FABA:
    ldr r0, =gSystem
    ldr r1, [r0, #0x48]
    mov r0, #3
    tst r0, r1
    beq _0224FB28
    add r0, r4, #0
    mov r1, #0
    bl ClearFrameAndWindow2
    add r0, r4, #0
    bl RemoveWindow
    ldr r0, [r4, #0x10]
    bl String_Delete
    add r0, r5, #0
    add r0, #0xd2
    ldrb r1, [r0, #0]
    mov r0, #0x40
    add r5, #0xd2
    bic r1, r0
    strb r1, [r5, #0]
    ldr r0, =0x00000869
    mov r1, #3
    strb r1, [r4, r0]
    b _0224FB28
_0224FAEE:
    ldr r0, =0x0000086C
    add r0, r0, #1
    ldrb r1, [r4, r0]
    ldrb r0, [r6, #7]
    cmp r1, r0
    blo _0224FB1A
    mov r0, #0xf
    bic r3, r0
    mov r0, ip
    add r0, r0, #1
    lsl r0, r0, #0x18
    lsr r1, r0, #0x18
    mov r0, #0xf
    and r0, r1
    add r1, r3, #0
    orr r1, r0
    ldr r0, =0x0000086C
    strb r1, [r4, r0]
    mov r1, #0
    sub r0, r0, #3
    strb r1, [r4, r0]
    b _0224FB28
_0224FB1A:
    ldr r0, =0x0000086C
    add r0, r0, #1
    ldrb r0, [r4, r0]
    add r1, r0, #1
    ldr r0, =0x0000086C
    add r0, r0, #1
    strb r1, [r4, r0]
_0224FB28:
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

WIP_LOCAL BOOL ov02_0224FB44(void *a0, u16 *a1) {
    return *a1 != 0;
}

WIP_LOCAL BOOL ov02_0224FB54(FieldSystem *fieldSystem, void *a1, void *arg2) {
    u8 v;
    if (sub_0205BB04((u8) * (u16 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x882)) != 0) {
        return FALSE;
    }
    v = *(u8 *)((u8 *)arg2 + 6);
    if (v != 0) {
        if (v > 0xe) {
            return FALSE;
        }
        ov01_02203AB4(fieldSystem, *(LocalMapObject **)((u8 *)fieldSystem + 0xe4), v - 1);
        return TRUE;
    }
    return FALSE;
}

WIP_LOCAL BOOL FollowMon_TryPrintInteractionMessage(void *work, void *window, void *arg2) {
    void *options;
    if (*(u16 *)((u8 *)arg2 + 2) != 0) {
        *(String **)((u8 *)window + 0x10) = String_New(0x400, HEAP_ID_FIELD2);
        sub_0205B514(*(BgConfig **)((u8 *)work + 8), window, 3);
        FollowMon_ExpandInteractionMessage(work, *(String **)((u8 *)window + 0x10), HEAP_ID_FIELD2, *(u16 *)((u8 *)arg2 + 2) - 1);
        options = Save_PlayerData_GetOptionsAddr(*(SaveData **)((u8 *)work + 0xc));
        sub_0205B564(window, options);
        *(u16 *)((u8 *)window + 0x86e) = sub_0205B5B4(window, *(String **)((u8 *)window + 0x10), options, 1);
        *(u8 *)((u8 *)work + 0xd2) |= 0x40;
        return TRUE;
    }
    return FALSE;
}

WIP_LOCAL void ov02_0224FC08(void *work, void *window, int arg2) {
    void *options;
    *(String **)((u8 *)window + 0x10) = String_New(0x400, HEAP_ID_FIELD2);
    sub_0205B514(*(BgConfig **)((u8 *)work + 8), window, 3);
    ov02_0224FCE0(work, *(String **)((u8 *)window + 0x10), HEAP_ID_FIELD2, arg2, *(u8 *)((u8 *)window + 0x816));
    options = Save_PlayerData_GetOptionsAddr(*(SaveData **)((u8 *)work + 0xc));
    sub_0205B564(window, options);
    *(u16 *)((u8 *)window + 0x86e) = sub_0205B5B4(window, *(String **)((u8 *)window + 0x10), options, 1);
    *(u8 *)((u8 *)work + 0xd2) |= 0x40;
}

WIP_LOCAL BOOL ov02_0224FC74(void *a0, void *a1) {
    *(u8 *)((u8 *)a0 + 0x86D) = 0;
    return *((u8 *)a1 + 7) != 0;
}

WIP_LOCAL void FollowMon_ExpandInteractionMessage(void *work, void *dest, enum HeapID heapID, int strno) {
    MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, 265 /* NARC_msg_msg_0265_bin */, heapID);
    MessageFormat *messageFormat = MessageFormat_New(heapID);
    String *str;
    FollowMon_PlaceholdersSet(work, messageFormat);
    str = NewString_ReadMsgData(msgData, strno);
    StringExpandPlaceholders(messageFormat, dest, str);
    String_Delete(str);
    MessageFormat_Delete(messageFormat);
    DestroyMsgData(msgData);
}

WIP_LOCAL void ov02_0224FCE0(void *work, String *dest, enum HeapID heapID, int flags, u8 a5) {
    MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, 40 /* NARC_msg_msg_0040_bin */, heapID);
    MessageFormat *messageFormat = MessageFormat_New(heapID);
    String *str;
    int strno;
    if (flags & 2) {
        BufferPlayersName(messageFormat, 0, Save_PlayerData_GetProfile(*(SaveData **)((u8 *)work + 0xc)));
        if (flags & 1) {
            BufferFashionName(messageFormat, 1, a5 - 1);
            strno = 0x20;
        } else {
            BufferFashionNameWithArticle(messageFormat, 1, a5 - 1);
            strno = 0x5f;
        }
    } else {
        BoxPokemon *boxMon = Mon_GetBoxMon(GetFirstAliveMonInParty_CrashIfNone(SaveArray_Party_Get(*(SaveData **)((u8 *)work + 0xc))));
        BufferPlayersName(messageFormat, 0, Save_PlayerData_GetProfile(*(SaveData **)((u8 *)work + 0xc)));
        BufferBoxMonNickname(messageFormat, 1, boxMon);
        if (flags & 1) {
            strno = 0x61;
        } else {
            strno = 0x62;
        }
    }
    str = NewString_ReadMsgData(msgData, strno);
    StringExpandPlaceholders(messageFormat, dest, str);
    String_Delete(str);
    MessageFormat_Delete(messageFormat);
    DestroyMsgData(msgData);
}

WIP_LOCAL void ov02_0224FD9C(void *arg0, LocalMapObject *mapObject) {
    VecFx32 vec;
    MapObject_CopyPositionVector(mapObject, &vec);
    if (*(s8 *)((u8 *)arg0 + 2) != 0) {
        vec.x = vec.x + (*(s8 *)((u8 *)arg0 + 2) << 0xc);
    }
    if (*(s8 *)((u8 *)arg0 + 3) != 0) {
        int species = FollowMon_GetSpecies(mapObject);
        if (species != 0x32 && species != 0x33) {
            ov01_021F8F74(mapObject, *(s8 *)((u8 *)arg0 + 3));
        }
    }
    if (*(s8 *)((u8 *)arg0 + 4) != 0) {
        vec.z = vec.z + (*(s8 *)((u8 *)arg0 + 4) << 0xc);
    }
    MapObject_SetPositionVector(mapObject, &vec);
}

WIP_LOCAL void ov02_0224FDF8(void *arg0, u16 arg1, int arg2, int arg3) {
    int species;
    if (*(u8 *)((u8 *)arg0 + 5) == 0 || arg1 == 0) {
        return;
    }
    if (arg1 > SEQ_SE_END) {
        species = (arg1 == SEQ_SE_END + 1) ? 0 : 0xb;
        PlayCryEx(species, arg2, 0x1ff, 0x1ff, 0x1ff, arg3);
        return;
    }
    PlaySE(arg1);
}

WIP_LOCAL void ov02_0224FE40(void *a0, u8 *a1, LocalMapObject *obj) {
    u8 dir;
    if (a1[0] != 0) {
        dir = MapObject_GetFacingDirection(obj);
        MapObject_SetFacingDirectionDirect(obj, a1[0] - 1);
        ov02_0224FE70(a0, obj, dir);
    }
}

WIP_LOCAL void ov02_0224FE70(void *a0, LocalMapObject *obj, u8 dir) {
    u32 x, z;
    if (ov01_022055DC(obj) == 0) {
        return;
    }
    if (dir == (u8)MapObject_GetFacingDirection(obj)) {
        return;
    }
    switch (*(u8 *)((u8 *)a0 + 0x87c)) {
    case 2:
    case 3: {
        FieldSystem *fieldSystem = MapObject_GetFieldSystem(obj);
        int behavior;
        ov02_0224FF04(obj, *(u8 *)((u8 *)a0 + 0x87c), &x, &z);
        behavior = GetMetatileBehavior(fieldSystem, x, z);
        if (MetatileBehavior_IsTallGrass(behavior) == 1) {
            ov01_021FF0E4(obj, 0, x, z, 1);
        } else if (MetatileBehavior_IsVeryTallGrass(behavior) == 1) {
            ov01_021FF964(obj, 0, x, z, 1);
        }
        break;
    }
    }
}

WIP_LOCAL void ov02_0224FF04(LocalMapObject *mapObject, int dir, u32 *outX, u32 *outZ) {
    *outX = MapObject_GetXCoord(mapObject);
    *outZ = MapObject_GetZCoord(mapObject);
    switch (dir) {
    case 0:
        (*outZ)++;
        break;
    case 1:
        (*outZ)--;
        break;
    case 2:
        (*outX)++;
        break;
    case 3:
        (*outX)--;
        break;
    default:
        GF_AssertFail();
        break;
    }
}

WIP_LOCAL int ov02_0224FF5C(void *a0, LocalMapObject *a1) {
    u8 *entry = (u8 *)a0 + 0x818 + *(u8 *)((u8 *)a0 + 0x86b) * 8;
    if (*(u8 *)((u8 *)a0 + 0x86a) == 0) {
        ov02_0224FD9C(entry, a1);
        ov02_0224FDF8(entry,
            *(u16 *)((u8 *)a0 + ((ov02_FollowMonStep *)((u8 *)a0 + 0x86c))->idx * 8 + 0x7e8),
            *(u16 *)((u8 *)a0 + 0x87e),
            *(u8 *)((u8 *)a0 + 0x87d));
        ov02_0224FE40(a0, entry, a1);
    }
    (*(u8 *)((u8 *)a0 + 0x86a))++;
    if (*(u8 *)((u8 *)a0 + 0x86a) >= entry[1]) {
        (*(u8 *)((u8 *)a0 + 0x86b))++;
        return 1;
    }
    return 0;
}

WIP_LOCAL BOOL ov02_0224FFD8(void *p) {
    u8 idx = *((u8 *)p + 0x86B);
    if (idx >= 0xa) {
        return FALSE;
    }
    if (*((u8 *)p + idx * 8 + 0x818) == 0xff) {
        return FALSE;
    }
    *((u8 *)p + 0x86A) = 0;
    return TRUE;
}

WIP_LOCAL int ov02_02250004(FieldSystem *fieldSystem, void *a1, int a2) {
    if (a2 == 0) {
        GF_AssertFail();
        return 1;
    }
    switch (*(u8 *)((u8 *)a1 + 0x868)) {
    case 0:
        ReadWholeNarcMemberByIdPair((u8 *)a1 + 0x818, (NarcId)0xe0, a2 - 1);
        /* fallthrough */
    case 1:
        MapObject_CopyPositionVector(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), (VecFx32 *)((u8 *)a1 + 0x870));
        *(u8 *)((u8 *)a1 + 0x87c) = MapObject_GetFacingDirection(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4));
        ov01_021F8F68(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), 0);
        ov01_021F8F08(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), 1);
        *(u8 *)((u8 *)a1 + 0x868) = 2;
        *(u8 *)((u8 *)a1 + 0x86b) = 0;
        break;
    case 2:
        if (ov02_0224FFD8(a1) == 0) {
            *(u8 *)((u8 *)a1 + 0x868) = 4;
            break;
        }
        *(u8 *)((u8 *)a1 + 0x868) = 3;
        /* fallthrough */
    case 3:
        if (ov02_0224FF5C(a1, *(LocalMapObject **)((u8 *)fieldSystem + 0xe4)) != 0) {
            *(u8 *)((u8 *)a1 + 0x868) = 2;
        }
        break;
    case 4: {
        u8 dir = MapObject_GetFacingDirection(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4));
        ov01_021F8F68(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), 0);
        ov01_021F8F08(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), 0);
        MapObject_SetPositionVector(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), (VecFx32 *)((u8 *)a1 + 0x870));
        MapObject_SetFacingDirectionDirect(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), *(u8 *)((u8 *)a1 + 0x87c));
        ov02_0224FE70(a1, *(LocalMapObject **)((u8 *)fieldSystem + 0xe4), dir);
        return 1;
    }
    }
    return 0;
}

// ===========================================================================
// HANDOFF — overlay_02_02248728 WIP (329/364 byte-match, objdiff-verified)
//
// NOTE: several functions contain an inline 4-entry jump table (dense switch:
// ov02_0224CFD8/D044 facing-dir coord; ov02_0224E26C/E2A0/E2D4 dir remaps;
// ov02_0224FF04 facing-dir out-params; ov02_0224B808 anim-settle state machine,
// 2-mod-4 body). Reminder: MWCC emits the add-pc table ONLY when every dense case
// 0..K is an EXPLICIT case label — incl. the case whose body equals the bhi
// default (B808 needed `case 3: break;` or it fell back to a cmp/beq chain).
// objdiff.py reports false "SIZE
// mismatch" for these because it drops the 8-byte data-in-text table (marked by
// a $d mapping symbol) from the asm side. They are byte-identical — verified via
// `arm-none-eabi-nm --print-size` + a normalized objdump diff (dispatch, the
// four .short table entries, case bodies, and default all match). Do NOT rely on
// objdiff --summary for jump-table funcs.
//   * CFD8/D044/E2D4 have 4-aligned bodies => equal symbol sizes (clean).
//   * E26C/E2A0/FF04 have 2-mod-4 bodies => the asm symbol additionally includes
//     a 2-byte `.balign 4,0` trailing pad that the per-function src `.text`
//     section does not; the linker restores it between these (middle) functions'
//     4-aligned sections. Bodies are byte-identical; recheck at flip-to-src.
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
// MATCHED (42, all OK):
//   batch 1 (15 no-struct): ov02_022493EC/F0/FC, ov02_02249420/444, ov02_0224957C,
//     ov02_0224A074/A63C, ov02_0224AB54/AC24/ADEC, ov02_0224B294/B68C/B804, ov02_0224F8F4.
//   batch 2 (Field3dObject task wrappers, 27): all create wrappers ov02_0224D2C8/
//     D2DC/D3F4/D408/D598/D67C/D9A4/DC64/DC78/DDE0/DDF4 (= CreateTask(fieldSystem->
//     unk4->field3dObjectTaskManager, &template)); delete tails ov02_0224D2F0/D41C/
//     D5AC/D690/D9B8/DC8C/DE08 (= Field3dObjectTask_Delete); draw ov02_0224D1DC;
//     render dispatch ov02_0224D2BC/D3E8/D670/DC58 (= ov02_0224D1DC(data)); destroy
//     dispatch ov02_0224D278/D3A4/D648/DB8C (= ov02_0224D144(data, (u8*)data+0xdc)).
//   NOTE: the create wrappers are currently grouped in a block, not strict address
//   order — file needs ONE address-sort of all funcs before the flip-to-src.
//
// EASY NEXT TARGETS (tiny ≤6-insn, mostly tail-call wrappers):
//   * SysTask_GetData getters returning [data+4]: ov02_0224953C, ov02_0224B43C
//     (.public, BOOL per overlay_02.h).
//   * sub_02068D74 getters: ov02_02248D8C -> (u8)[ret+2]; ov02_0224B2C0 -> *ret=0.
//   * Sprite_Delete(field) wrappers: ov02_02248DE4 (work->0x68), ov02_0224AAC8
//     (a1->0x8), ov02_0224ABF8 (a1->0x58).  Need the owning struct's field typed.
//   * const-return / empty stubs remaining: ov02_0224E308 (return a0 == 0x165),
//     ov02_0224FB44 (return *(u16*)a1 != 0).
//   * ov02_0224B87C = Field3dObject_Draw((Field3dObject*)((void**)a1)[0] + 0x24c?).
//
// NEXT MEDIUM TARGET — ov02_0224D144 (Field3dObject task-data cleanup, ~14 insn):
//   void ov02_0224D144(TaskData *d, NNSFndAllocator *alloc) {
//     Field3dModel_Unload(&d->model@0x78);
//     for (i=0; i < d->count@0xd8; i++) Field3dModelAnimation_Unload(&d->anims@0x88[i], alloc);
//   }  // anims stride 0x14. Defining TaskData unlocks the init/update callbacks
//   (ov02_0224D1E4, D288, D310, D358, ... — the real per-anim logic). Task data is
//   allocated by Field3dObjectTaskManager_CreateTask with dataSize from the template
//   (0xF0 / 0x114 / 0x1CC / 0xD10 / 0xE9C / 0xE9C for the various anim types).
//   Templates are file-local rodata (declared extern at top, deferred to rodata pass).
//   Create wrappers are dispatched by ov02_0224E074(fieldSystem, u16 *p_ret, int type,
//   heapID) via tables ov02_02253A04 (delete) / A1C (create) / A34 indexed by type.
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

WIP_LOCAL BOOL Task_FollowMonInteract(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    u32 *state = TaskManager_GetStatePtr(taskManager);

    switch (*state) {
    case 0:
        ov02_0224F880(*(void **)((u8 *)fieldSystem + 0x120), ov02_0224EF94(fieldSystem));
        (*state)++;
        break;
    case 1: {
        int r = ov02_0224F8FC(fieldSystem, *(void **)((u8 *)fieldSystem + 0x120));
        if (r == 1) {
            MapObject_PauseMovement(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4));
            return TRUE;
        }
        if (r == 2) {
            *(u8 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x869) = 0xa;
            *state = 2;
        } else if (r == 3) {
            *state = 3;
        } else if (r == 4) {
            *state = 4;
        }
        break;
    }
    case 2:
        switch (*(u8 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x869) - 0xa) {
        case 0:
            ov01_021F6A9C(fieldSystem, 3, NULL);
            *(u8 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x869) = 0xb;
            break;
        case 1: {
            int v0 = ov01_021F6B00(fieldSystem);
            int v1 = ov01_021F6B10(fieldSystem);
            if (v0 == 3 && v1 == 1) {
                ov01_021F6ABC(fieldSystem, 3, 3, (u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x880);
                *(u8 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x869) = 0xc;
            }
            break;
        }
        case 2: {
            int v0 = ov01_021F6B00(fieldSystem);
            int v1 = ov01_021F6AEC(fieldSystem);
            if (v0 == 3 && v1 == 6) {
                ov01_021F6A9C(fieldSystem, 0, NULL);
                *(u8 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x869) = 0xd;
            }
            break;
        }
        case 3: {
            int v0 = ov01_021F6B00(fieldSystem);
            int v1 = ov01_021F6B10(fieldSystem);
            if (v0 == 0 && v1 == 1) {
                switch (*(u16 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x880)) {
                case 0: {
                    int val;
                    ClearFrameAndWindow2(*(void **)((u8 *)fieldSystem + 0x120), 0);
                    RemoveWindow(*(void **)((u8 *)fieldSystem + 0x120));
                    String_Delete(*(String **)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x10));
                    *(u8 *)((u8 *)fieldSystem + 0xd2) &= ~0x40;
                    val = *(u16 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x810);
                    if (val == 0) {
                        MapObject_PauseMovement(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4));
                        return TRUE;
                    }
                    ov02_0224F880(*(void **)((u8 *)fieldSystem + 0x120), val);
                    *state = 1;
                    break;
                }
                case 1: {
                    int val;
                    ClearFrameAndWindow2(*(void **)((u8 *)fieldSystem + 0x120), 0);
                    RemoveWindow(*(void **)((u8 *)fieldSystem + 0x120));
                    String_Delete(*(String **)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x10));
                    *(u8 *)((u8 *)fieldSystem + 0xd2) &= ~0x40;
                    val = *(u16 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x812);
                    if (val == 0) {
                        MapObject_PauseMovement(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4));
                        return TRUE;
                    }
                    ov02_0224F880(*(void **)((u8 *)fieldSystem + 0x120), val);
                    *state = 1;
                    break;
                }
                }
            }
            break;
        }
        }
        break;
    case 3: {
        void *fashionCase = Save_FashionData_GetFashionCase(Save_FashionData_Get(fieldSystem->saveData));
        int idx = *(u8 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x816) - 1;
        if (idx < 0 || idx >= 0x64) {
            GF_AssertFail();
        }
        if (sub_0202BA2C(fashionCase, idx, 1) != 0) {
            FashionCase_GiveFashionItem(fashionCase, idx, 1);
            ov02_0224FC08(fieldSystem, *(void **)((u8 *)fieldSystem + 0x120), 3);
            PlayFanfare(SEQ_ME_ACCE);
        } else {
            ov02_0224FC08(fieldSystem, *(void **)((u8 *)fieldSystem + 0x120), 2);
        }
        *state = 5;
        break;
    }
    case 4: {
        int leaf;
        switch (*(u8 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x817)) {
        case 1:
            leaf = MON_DATA_SHINY_LEAF_A;
            break;
        case 2:
            leaf = MON_DATA_SHINY_LEAF_B;
            break;
        case 3:
            leaf = MON_DATA_SHINY_LEAF_C;
            break;
        case 4:
            leaf = MON_DATA_SHINY_LEAF_D;
            break;
        case 5:
            leaf = MON_DATA_SHINY_LEAF_E;
            break;
        case 0:
        default:
            GF_AssertFail();
            return TRUE;
        }
        {
            Pokemon *mon = GetFirstAliveMonInParty_CrashIfNone(SaveArray_Party_Get(fieldSystem->saveData));
            if ((u8)GetMonData(mon, leaf, NULL) == 0) {
                u8 buf;
                SetFlag99C(Save_VarsFlags_Get(fieldSystem->saveData));
                buf = 1;
                SetMonData(mon, leaf, &buf);
                ov02_0224FC08(fieldSystem, *(void **)((u8 *)fieldSystem + 0x120), 1);
                PlayFanfare(SEQ_ME_ACCE);
            } else {
                ov02_0224FC08(fieldSystem, *(void **)((u8 *)fieldSystem + 0x120), 0);
            }
            *state = 5;
        }
        break;
    }
    case 5:
        if (IsPrintFinished((u8) * (u16 *)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x86e)) == 1 && !IsFanfarePlaying() && (gSystem.newKeys & 3)) {
            ClearFrameAndWindow2(*(void **)((u8 *)fieldSystem + 0x120), 0);
            RemoveWindow(*(void **)((u8 *)fieldSystem + 0x120));
            String_Delete(*(String **)((u8 *)*(void **)((u8 *)fieldSystem + 0x120) + 0x10));
            *(u8 *)((u8 *)fieldSystem + 0xd2) &= ~0x40;
            MapObject_PauseMovement(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4));
            return TRUE;
        }
        break;
    }
    return FALSE;
}

WIP_LOCAL void FollowMon_PlaceholdersSet(void *work, void *messageFormat) {
    Pokemon *mon = GetFirstAliveMonInParty_CrashIfNone(SaveArray_Party_Get(*(SaveData **)((u8 *)work + 0xc)));
    BoxPokemon *boxMon = Mon_GetBoxMon(mon);
    BufferBoxMonNickname(messageFormat, 0, boxMon);
    BufferBoxMonSpeciesName(messageFormat, 1, boxMon);
    BufferPlayersName(messageFormat, 2, Save_PlayerData_GetProfile(*(SaveData **)((u8 *)work + 0xc)));
    BufferLocationName(messageFormat, 3, MapHeader_GetMapSec(**(u32 **)((u8 *)work + 0x20)));
    BufferItemName(messageFormat, 4, GetMonData(mon, MON_DATA_HELD_ITEM, NULL));
}

WIP_LOCAL void ov02_02250504(void *work) {
    Pokemon *mon = GetFirstAliveMonInParty_CrashIfNone(SaveArray_Party_Get(*(SaveData **)((u8 *)work + 0xc)));
    int val;
    val = FieldSystem_UnkSub108_GetMonMood(*(FieldSystemUnk108 **)((u8 *)work + 0x108));
    val += *(s8 *)((u8 *)*(void **)((u8 *)work + 0x120) + 0x815);
    if (val > 0x7f) {
        val = 0x7f;
    } else if (val < -127) {
        val = -127;
    }
    FieldSystem_UnkSub108_SetMonMood(*(FieldSystemUnk108 **)((u8 *)work + 0x108), val);
    val = GetMonData(mon, MON_DATA_FRIENDSHIP, NULL);
    val += *(s8 *)((u8 *)*(void **)((u8 *)work + 0x120) + 0x814);
    if (val > 0xff) {
        val = 0xff;
    } else if (val < 0) {
        val = 0;
    }
    SetMonData(mon, MON_DATA_FRIENDSHIP, &val);
}

WIP_LOCAL int ov02_02250594(int a0, int a1) {
    switch (a0) {
    case 1:
        if (a1 == 0xff) {
            return 1;
        }
        break;
    case 2:
        if (a1 >= 0xc8 && a1 < 0xff) {
            return 1;
        }
        break;
    case 3:
        if (a1 >= 0x96 && a1 < 0xc8) {
            return 1;
        }
        break;
    case 4:
        if (a1 >= 0x5a && a1 < 0x96) {
            return 1;
        }
        break;
    case 5:
        if (a1 >= 0x3c && a1 < 0x5a) {
            return 1;
        }
        break;
    case 6:
        if (a1 >= 0x1e && a1 < 0x3c) {
            return 1;
        }
        break;
    case 7:
        if (a1 >= 1 && a1 < 0x1e) {
            return 1;
        }
        break;
    case 8:
        if (a1 == 0) {
            return 1;
        }
        break;
    case 9:
        if (a1 >= 0x5a) {
            return 1;
        }
        break;
    case 10:
        if (a1 < 0x3c) {
            return 1;
        }
        break;
    }
    return 0;
}

WIP_LOCAL int ov02_02250628(int a0, int a1) {
    switch (a0) {
    case 1:
        if (a1 == 0x7f) {
            return 1;
        }
        break;
    case 2:
        if (a1 >= 0x64 && a1 < 0x7f) {
            return 1;
        }
        break;
    case 3:
        if (a1 >= 0x32 && a1 < 0x64) {
            return 1;
        }
        break;
    case 4:
        if (a1 >= 0x1e && a1 < 0x32) {
            return 1;
        }
        break;
    case 5:
        if (a1 > -0x1e && a1 < 0x1e) {
            return 1;
        }
        break;
    case 6:
        if (a1 > -0x32 && a1 <= -0x1e) {
            return 1;
        }
        break;
    case 7:
        if (a1 > -0x7f && a1 <= -0x32) {
            return 1;
        }
        break;
    case 8:
        if (a1 == -0x7f) {
            return 1;
        }
        break;
    case 9:
        if (a1 >= 0) {
            return 1;
        }
        break;
    case 10:
        if (a1 <= -1) {
            return 1;
        }
        break;
    }
    return 0;
}

WIP_LOCAL BOOL ov02_022506D4(u32 a0, u32 a1) {
    if (a0 <= 0xf9) {
        if (a0 == a1) {
            return TRUE;
        }
    } else {
        switch (a0 - 0xfa) {
        case 0:
            if (a1 <= 0x13) {
                return TRUE;
            }
            break;
        case 1:
            if (a1 <= 0x82) {
                return TRUE;
            }
            break;
        case 2:
            if (a1 >= 0x8c && a1 <= 0x95) {
                return TRUE;
            }
            break;
        case 3:
            if (a1 >= 0xa0) {
                return TRUE;
            }
            break;
        case 4:
            if (a1 >= 0xdc) {
                return TRUE;
            }
            break;
        default:
            GF_AssertFail();
            return FALSE;
        }
    }
    return FALSE;
}

// clang-format off
asm BOOL ov02_02250738(u32 a0, u32 a1) {
    push {r4, r5}
    sub sp, #8
    ldr r4, =sRodata+0x75C
    add r2, sp, #0
    ldrb r5, [r4, #0]
    add r3, sp, #0
    add r0, r2, r0
    strb r5, [r3, #0]
    ldrb r5, [r4, #1]
    sub r0, r0, #1
    strb r5, [r3, #1]
    ldrb r5, [r4, #2]
    strb r5, [r3, #2]
    ldrb r5, [r4, #3]
    ldrb r4, [r4, #4]
    strb r5, [r3, #3]
    strb r4, [r3, #4]
    ldrb r0, [r0, #0]
    mov r3, #0
    and r0, r1
_02250760:
    cmp r0, #0
    bne _0225076C
    add sp, #8
    mov r0, #1
    pop {r4, r5}
    bx lr
_0225076C:
    add r3, r3, #1
    cmp r3, #5
    blt _02250760
    mov r0, #0
    add sp, #8
    pop {r4, r5}
    bx lr
    nop
}
// clang-format on

WIP_LOCAL BOOL ov02_02250780(FieldSystem *fieldSystem, u8 a1) {
    Pokemon *mon = GetFirstAliveMonInParty_CrashIfNone(SaveArray_Party_Get(fieldSystem->saveData));
    int v1 = GetMonData(mon, 0xb1, NULL);
    int v2 = GetMonData(mon, 0xb2, NULL);
    if (v1 == a1 || v2 == a1) {
        return TRUE;
    }
    return FALSE;
}

WIP_LOCAL void ov02_022507B4(FieldSystem *fieldSystem, u8 a1) {
    u16 *env;
    int species = FollowMon_GetSpecies(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4));
    if ((u32)(species - 0x32) <= 1) {
        return;
    }
    env = Heap_AllocAtEnd(HEAP_ID_FIELD2, 8);
    env[0] = a1;
    env[1] = 0;
    TaskManager_Call(fieldSystem->taskman, ov02_022507E8, env);
}

WIP_LOCAL BOOL ov02_022507E8(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    void *env = TaskManager_GetEnvironment(taskManager);
    u32 *state = TaskManager_GetStatePtr(taskManager);
    switch (*state) {
    case 0:
        MapObject_UnpauseMovement(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4));
        (*state)++;
        /* fallthrough */
    case 1:
        if (MapObject_AreBitsSetForMovementScriptInit(FollowMon_GetMapObject(fieldSystem))) {
            MapObject_PauseMovement(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4));
            (*state)++;
        }
        break;
    case 2: {
        u8 dir = MapObject_GetFacingDirection(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4));
        *(EventObjectMovementMan **)((u8 *)env + 4) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), ov02_02253A70[dir]);
        (*state)++;
        break;
    }
    case 3:
        if (EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)env + 4)) == 1) {
            EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)env + 4));
            *(u16 *)((u8 *)env + 2) = *(u16 *)((u8 *)env + 2) + 1;
            if (*(u16 *)((u8 *)env + 2) >= *(u16 *)((u8 *)env)) {
                (*state)++;
            } else {
                *state = 0;
            }
        }
        break;
    case 4:
        Heap_Free(env);
        return TRUE;
    }
    return FALSE;
}

// ===========================================================================
// NONMATCHING finalization block — functions that MWCC cannot emit byte-exact
// from C (register-allocation / instruction-scheduling ties, plus soft-float
// coloring grinds). Each is transcribed verbatim from asm/overlay_02_02248728.s
// as an `asm` function so the flipped-to-src overlay is byte-identical to
// retail. The near-miss C and the exact tie diagnosis for each live in
// tools/decomp_harness/attempts_log.jsonl. (Generated via
// tools/decomp_harness/transcribe_nonmatching.py.)
// ===========================================================================

// ov02_022508B4: returns TRUE (mov r0,#1) but the frozen include/overlay_02.h
// declares it `void` (called from scrcmd_c.c). Transcribing as `asm void`
// reproduces the exact bytes incl. the r0=1 without touching the header, so no
// IPA cascade into the other includers.
#ifdef NONMATCHING
void ov02_022508B4(FieldSystem *fieldSystem) {
    void *env = Heap_AllocAtEnd(HEAP_ID_FIELD2, 4);
    *(u16 *)env = 0;
    *(u16 *)((u8 *)env + 2) = 0;
    TaskManager_Call(*(TaskManager **)((u8 *)fieldSystem + 0x10), ov02_022508D8, env);
    /* retail returns TRUE here; header is frozen at void */
}
#else
// clang-format off
asm void ov02_022508B4(FieldSystem *fieldSystem) {
    push {r4, lr}
    add r4, r0, #0
    mov r0, #0xb
    mov r1, #4
    bl Heap_AllocAtEnd
    add r2, r0, #0
    mov r0, #0
    strh r0, [r2, #0]
    strh r0, [r2, #2]
    ldr r0, [r4, #0x10]
    ldr r1, =ov02_022508D8
    bl TaskManager_Call
    mov r0, #1
    pop {r4, pc}
}
// clang-format on
#endif

WIP_LOCAL BOOL ov02_022508D8(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    u32 *state = TaskManager_GetStatePtr(taskManager);
    void *env = TaskManager_GetEnvironment(taskManager);

    switch (*state) {
    case 0: {
        VecFx32 v;
        v = ov02_02253B24;
        (*(u16 *)((u8 *)env + 2))++;
        v.x = (s32)((double)*(u16 *)((u8 *)env + 2) * 2048.0 / 10.0 + 4096.0);
        v.y = (s32)((double)*(u16 *)((u8 *)env + 2) * 2048.0 / 10.0 + 4096.0);
        sub_02023E78(ov01_021F771C(*(void **)((u8 *)fieldSystem + 0x3c)), &v);
        if (*(u16 *)((u8 *)env + 2) >= 10) {
            *(u16 *)((u8 *)env + 2) = 0;
            *(u16 *)env = 0;
            (*state)++;
        }
        break;
    }
    case 1:
        (*(u16 *)env)++;
        if (*(u16 *)env >= 10) {
            (*state)++;
        }
        break;
    case 2: {
        VecFx32 v;
        v = ov02_02253B30;
        (*(u16 *)((u8 *)env + 2))++;
        if (*(u16 *)((u8 *)env + 2) >= 10) {
            (*state)++;
        } else {
            v.x = (s32)((double)(10 - *(u16 *)((u8 *)env + 2)) * 2048.0 / 10.0 + 4096.0);
            v.y = (s32)((double)(10 - *(u16 *)((u8 *)env + 2)) * 2048.0 / 10.0 + 4096.0);
        }
        sub_02023E78(ov01_021F771C(*(void **)((u8 *)fieldSystem + 0x3c)), &v);
        break;
    }
    case 3:
        Heap_Free(env);
        return TRUE;
    }
    return FALSE;
}
