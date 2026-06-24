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
#include "constants/sndseq.h"
#include "constants/std_script.h"

#include "field/overlay_01_021E66E4.h"
#include "field/overlay_01_021FB878.h"

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
#include "sys_task_api.h"
#include "task.h"
#include "unk_02005D10.h"
#include "unk_02009D48.h"
#include "unk_0200A090.h"
#include "unk_0200ACF0.h"
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
extern ov02_StateMachineFunc *const ov02_02253320[];
extern ov02_StateMachineFunc *const ov02_022533C0[];
extern ov02_StateMachineFunc const ov02_02253550[]; // single-level table
extern ov02_StateMachineFunc const ov02_02253588[];
extern ov02_StateMachineFunc const ov02_022534F0[];
extern ov02_StateMachineFunc const ov02_022534B8[];

// Field-move task state tables: func(taskManager, fieldSystem, env) -> 1=loop, 2=free.
typedef int (*ov02_FieldTaskFunc)(TaskManager *taskManager, FieldSystem *fieldSystem, void *env);
extern ov02_FieldTaskFunc const ov02_02253700[];
extern ov02_FieldTaskFunc const ov02_022536F0[];
extern void sub_02068BAC(void *a0);                                                                                         // unk_020689C8.h
extern void ov01_021FCD78(SysTask *task);                                                                                   // no header included here
extern BOOL ov01_021FCD6C(SysTask *task);                                                                                   // no header included here
extern void ov01_021FBD38(Field3dModel *model, void *narcData);                                                             // no header included here
extern void ov01_021FBDFC(Field3dModel *model);                                                                             // no header included here
extern void ov01_021FBE70(Field3DModelAnimation *anim, Field3dModel *model, void *anmResource, NNSFndAllocator *allocator); // no header included here
extern void ov01_021F1448(void *a0);                                                                                        // no header included here
extern void *ov01_021FCD2C(FieldSystem *fieldSystem, int a1);                                                               // no header included here
extern void ov01_021FCD8C(void *a0, int a1, fx32 a2, int a3);                                                               // no header included here
extern BOOL ov01_02206268(FieldSystem *fieldSystem);                                                                        // overlay_01.h, not included
extern int ov01_022062CC(FieldSystem *fieldSystem);                                                                         // overlay_01.h, not included
extern void PlayCryEx(int, int, int, int, int, int);                                                                        // sound_02004A44.h, not included
extern void PlayCry(u16 species, u8 form);                                                                                  // sound_chatot.h, not included
extern int Field_GetTimeOfDay(FieldSystem *fieldSystem);                                                                    // unk_02055418.h, not included (TIMEOFDAY as int)
extern void GfGfx_EngineATogglePlanes(u8 planeMask, u8 enable);                                                             // gf_gfx_planes.h, not included
extern void *GfGfxLoader_LoadFromNarc(NarcId narcId, s32 fileId, BOOL isCompressed, enum HeapID heapID, BOOL atEnd);        // gf_gfx_loader.h, not included
extern void sub_0205B4EC(int a0, int a1);                                                                                   // text_0205B4EC.h, not included
extern void *sub_020689C8(int a0, int a1);                                                                                  // unk_020689C8.h, not included
extern u16 GF_DegreeToSinCosIdx(u16 deg);                                                                                   // math_util.h, not included
extern const VecFx32 ov02_02253360;                                                                                         // rodata, defined later (affine scale)
extern const VecFx32 ov02_02253390;                                                                                         // rodata, defined later (affine scale)
extern const VecFx32 ov02_02253348;                                                                                         // rodata, defined later (sprite spawn offset)
extern void ov01_021F8F74(LocalMapObject *mapObject, int a1);                                                               // no header included here
extern BOOL ov01_022055DC(LocalMapObject *mapObject);                                                                       // no header included here
extern void ov01_021FF0E4(LocalMapObject *mapObject, int a1, u32 x, u32 z, int a4);                                         // no header included here
extern void ov01_021FF964(LocalMapObject *mapObject, int a1, u32 x, u32 z, int a4);                                         // no header included here
extern BOOL sub_0205B6F4(u8 tile);                                                                                          // no header included here
extern const VecFx32 ov02_02253408;                                                                                         // rodata, defined later (sprite offset pair)
extern const VecFx32 ov02_02253384;                                                                                         // rodata, defined later (sprite offset pair)
extern const VecFx32 ov02_022533FC;                                                                                         // rodata, defined later (sprite offset pair)
extern const VecFx32 ov02_02253414;                                                                                         // rodata, defined later (sprite offset pair)
WIP_LOCAL void ov02_0224A9D8(void *work, int a1);                                                                           // still in asm; forward decl for callers

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
extern const MovementScriptCommand ov02_022537DC;                                       // rodata, defined later
extern const MovementScriptCommand ov02_022537B8;                                       // rodata, defined later

// ov02_0224E020 dispatch tables (rodata, still in asm; defined later). Indexed by
// data[0xc]: A34 update funcs return int (1 => advance state); A04 delete funcs
// (result ignored). Declared int(*)(void*) to match the blx call sites.
typedef int (*ov02_AnimDispatchFunc)(void *data);
extern ov02_AnimDispatchFunc const ov02_02253A34[];
extern ov02_AnimDispatchFunc const ov02_02253A04[];
// ov02_0224E074 create-dispatch table (rodata, defined later): each entry builds a
// Field3dObjectTask from the fieldSystem. Indexed by the anim type.
typedef Field3dObjectTask *(*ov02_CreateDispatchFunc)(FieldSystem *fieldSystem);
extern ov02_CreateDispatchFunc const ov02_02253A1C[];
extern const MovementScriptCommand ov02_02253820;                                                  // rodata, defined later
extern const MovementScriptCommand ov02_02253794;                                                  // rodata, defined later
extern const MovementScriptCommand ov02_02253770;                                                  // rodata, defined later
extern BOOL sub_02054C20(FieldSystem *fieldSystem, int targetType, int *outObj, void **outHandle); // unk_02054648.h, not included
extern u8 GetMetatileBehavior(FieldSystem *fieldSystem, int x, int z);                             // unk_02054648.h, not included
extern void ov01_02203AB4(FieldSystem *fieldSystem, LocalMapObject *partnerPokeObj, int a2);       // overlay_01.h, not included
extern const fx32 ov02_02253520[];                                                                 // rodata, defined later
extern const fx32 ov02_02253430[];                                                                 // rodata, defined later
extern const MovementScriptCommand ov02_02253884;                                                  // rodata, defined later
extern u16 PlayerProfile_GetTrainerID_VisibleHalf(PlayerProfile *profile);                         // player_data.h, not included
typedef struct WallpaperPasswordBank WallpaperPasswordBank;                                        // opaque; easy_chat.h not included
extern WallpaperPasswordBank *WallpaperPasswordBank_Create(enum HeapID heapID);
extern void WallpaperPasswordBank_Delete(WallpaperPasswordBank *bank);
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
extern const ov02_LaunchTemplate ov02_02253440;
extern const ov02_LaunchTemplate ov02_022534A4;
extern const ov02_LaunchTemplate ov02_02253454;
extern const ov02_LaunchTemplate ov02_0225347C;
extern const ov02_LaunchTemplate ov02_02253468;
extern const ov02_LaunchTemplate ov02_02253490;

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
WIP_LOCAL void ov02_0224B298(void *mgr, void *arg1);
WIP_LOCAL void *ov02_02248D58(void *arg0, void *arg1, void *arg2, void *arg3);
WIP_LOCAL void ov02_0224AA44(void *arg0, VecFx32 *pos, VecFx32 *vec, void *arg3, u32 arg4, void *arg5);
WIP_LOCAL void ov02_0224DE6C(void *obj);
WIP_LOCAL void ov02_0224D950(void *a0, void *a1, void *data);
WIP_LOCAL void ov02_0224DD8C(void *a0, void *a1, void *data);
WIP_LOCAL int ov02_02249690(void *work);
WIP_LOCAL void ov02_0224D310(void *a0, void *a1, void *data);
WIP_LOCAL int ov02_0224C840(TaskManager *taskManager, void *a1, void *a2);
WIP_LOCAL void ov02_0224D820(void *data);
WIP_LOCAL void ov02_0224D7B0(void *data);
WIP_LOCAL void ov02_0224D73C(Field3dObject *obj, Field3dModel *model, NNSFndAllocator *allocator, void **anmResources);
WIP_LOCAL void ov02_0224D880(void *a0, FieldSystem *fieldSystem, void *work);
WIP_LOCAL void ov02_0224DF1C(void *data);
WIP_LOCAL BOOL ov02_0224BE24(TaskManager *taskManager);
WIP_LOCAL int ov02_0224CAB8(WallpaperPasswordBank *bank, u16 trainerId, u16 a, u16 b, u16 c, u16 d);
WIP_LOCAL int ov02_0224CBF8(WallpaperPasswordBank *bank, u16 trainerId, u16 a, u16 b, u16 c, u16 d);
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
extern const Field3dObjectTaskTemplate ov02_022538FC;
extern const Field3dObjectTaskTemplate ov02_02253914;
extern const Field3dObjectTaskTemplate ov02_0225392C;
extern const Field3dObjectTaskTemplate ov02_02253944;
extern const Field3dObjectTaskTemplate ov02_0225395C;
extern const Field3dObjectTaskTemplate ov02_02253974;
extern const Field3dObjectTaskTemplate ov02_0225398C;
extern const Field3dObjectTaskTemplate ov02_022539A4;
extern const Field3dObjectTaskTemplate ov02_022539BC;
extern const Field3dObjectTaskTemplate ov02_022539D4;
extern const Field3dObjectTaskTemplate ov02_022539EC;

WIP_LOCAL int ov02_022493EC(void) {
    return 0;
}

// --- cast-based getters/setters/deleters (struct names TBD) ---
WIP_LOCAL u8 ov02_02248D8C(void *work) {
    return ((u8 *)sub_02068D74(work))[2];
}

WIP_LOCAL void ov02_02248DE4(void *a0, void *work) {
    Sprite_Delete(*(Sprite **)((u8 *)work + 0x68));
}

WIP_LOCAL BOOL ov02_0224953C(void *work) {
    return ((int *)SysTask_GetData(work))[1];
}

WIP_LOCAL int ov02_0224997C(void *work) {
    *(int *)((u8 *)work + 4) = 1;
    return 0;
}

WIP_LOCAL void ov02_0224A66C(void *work) {
    *(int *)((u8 *)work + 0x30) = 1;
}

WIP_LOCAL void ov02_0224A674(void *work) {
    *(int *)((u8 *)work + 0x30) = 0;
}

WIP_LOCAL void ov02_0224A690(void *work) {
    *(int *)((u8 *)work + 0x3c) = 0x17;
    *(int *)((u8 *)work + 0x40) = 1;
}

WIP_LOCAL void ov02_0224AAC8(void *a0, void *work) {
    Sprite_Delete(*(Sprite **)((u8 *)work + 8));
}

WIP_LOCAL void ov02_0224ABF8(void *a0, void *work) {
    Sprite_Delete(*(Sprite **)((u8 *)work + 0x58));
}

WIP_LOCAL void ov02_0224B2C0(void *work) {
    *(int *)sub_02068D74(work) = 0;
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

WIP_LOCAL BOOL ov02_0224B43C(SysTask *task) {
    return ((int *)SysTask_GetData(task))[1];
}

WIP_LOCAL BOOL ov02_0224E308(int a0) {
    return a0 == 0x165;
}

WIP_LOCAL BOOL ov02_0224FB44(void *a0, u16 *a1) {
    return *a1 != 0;
}

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

WIP_LOCAL void ov02_0224B45C(SysTask *task, void *sm) {
    while (ov02_022534B8[*(int *)sm](sm) == 1) {
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

WIP_LOCAL Sprite *ov02_0224A9B8(void *mgr, VecFx32 *pos) {
    return ov02_0224A33C(mgr, pos, 3, 3, 3, -1, 0, 0x81);
}

WIP_LOCAL void ov02_0224A570(NARC *narc, u32 fileId, NNSG2dPaletteData **a2) {
    void *data = NARC_AllocAndReadWholeMember(narc, fileId, HEAP_ID_FIELD1);
    NNS_G2dGetUnpackedPaletteData(data, a2);
    BG_LoadPlttData(3, *(const void **)((u8 *)(*a2) + 0xc), 0x20, 0x180);
    Heap_Free(data);
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

WIP_LOCAL BOOL ov02_02250780(FieldSystem *fieldSystem, u8 a1) {
    Pokemon *mon = GetFirstAliveMonInParty_CrashIfNone(SaveArray_Party_Get(fieldSystem->saveData));
    int v1 = GetMonData(mon, 0xb1, NULL);
    int v2 = GetMonData(mon, 0xb2, NULL);
    if (v1 == a1 || v2 == a1) {
        return TRUE;
    }
    return FALSE;
}

WIP_LOCAL void ov02_02249E90(SysTask *task, void *work) {
    SpriteResource *res = SpriteResourceCollection_Find(*(GF_2DGfxResMan **)((u8 *)work + 0x19c), 0);
    if (*(int *)((u8 *)work + 0x210) == 1) {
        sub_0200A740(res);
        *(int *)((u8 *)work + 0x214) = 1;
        SysTask_Destroy(task);
    }
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

WIP_LOCAL int ov02_0224C71C(void *a0, FieldSystem *fieldSystem, void *work) {
    void *sysTask = ov01_021FCD2C(fieldSystem, 4);
    *(void **)((u8 *)work + 0x1c) = sysTask;
    ov01_021FCD8C(sysTask, 1, 0xFFF6A000, 0xf);
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), &ov02_02253820);
    *(int *)work = *(int *)work + 1;
    PlaySE(SEQ_SE_DP_TELE);
    return 0;
}

WIP_LOCAL BOOL ov02_0224ABCC(void *a0, void *a1) {
    VecFx32 buf;
    *(void **)((u8 *)a1 + 0x5c) = *(void **)sub_02068D98(a0);
    sub_02068DB8(a0, &buf);
    *(void **)((u8 *)a1 + 0x58) = ov02_0224A468(*(void **)((u8 *)a1 + 0x5c), &buf, 0, 0);
    return TRUE;
}

WIP_LOCAL void ov02_0224A6D0(void *work) {
    if (*(SysTask **)((u8 *)work + 0x224) == NULL) {
        GF_AssertFail();
    }
    SysTask_Destroy(*(SysTask **)((u8 *)work + 0x224));
    *(vu32 *)0x4000000 = *(vu32 *)0x4000000 & 0xFFFF1FFF;
}

WIP_LOCAL BOOL Task_FieldEscapeRope(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    int r;
    void *env = TaskManager_GetEnvironment(taskManager);
    do {
        r = ov02_02253700[*(int *)env](taskManager, fieldSystem, env);
        if (r == 2) {
            Heap_Free(env);
        }
    } while (r == 1);
    return 0;
}

WIP_LOCAL BOOL ov02_0224C1F8(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    void *env = TaskManager_GetEnvironment(taskManager);
    int r;
    do {
        r = ov02_022536F0[*(int *)env](taskManager, fieldSystem, env);
        if (r == 2) {
            Heap_Free(env);
            return TRUE;
        }
    } while (r == 1);
    return FALSE;
}

WIP_LOCAL void ov02_0224D1AC(void *data) {
    u32 i;
    for (i = 0; i < *(u32 *)((u8 *)data + 0xd8); i++) {
        Field3dModelAnimation_FrameAdvanceAndLoop((Field3DModelAnimation *)((u8 *)data + 0x88 + i * 0x14), FX32_ONE);
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

WIP_LOCAL void ov02_02249E58(SysTask *task, void *work) {
    SpriteResource *res = SpriteResourceCollection_Find(*(GF_2DGfxResMan **)((u8 *)work + 0x19c), 0);
    if (*(int *)((u8 *)work + 0x210) == 0) {
        sub_0200ADA4(res);
        SysTask_CreateOnVWaitQueue(ov02_02249E90, work, 0x80);
        *(int *)((u8 *)work + 0x210) = *(int *)((u8 *)work + 0x210) + 1;
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

WIP_LOCAL void ov02_0224A598(BgConfig *bgConfig, NARC *narc, u32 fileId, NNSG2dCharacterData **a3) {
    void *data = NARC_AllocAndReadWholeMember(narc, fileId, HEAP_ID_FIELD1);
    NNS_G2dGetUnpackedCharacterData(data, a3);
    BG_LoadCharTilesData(bgConfig, 3, *(const void **)((u8 *)(*a3) + 0x14), *(u32 *)((u8 *)(*a3) + 0x10), 0);
    Heap_Free(data);
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

WIP_LOCAL BOOL ov02_02248D98(void *a0, void *obj) {
    *(UnkBlob16 *)((u8 *)obj + 0x58) = *(UnkBlob16 *)sub_02068D98(a0);
    *(Sprite **)((u8 *)obj + 0x68) = ov02_02248CAC(*(void **)((u8 *)obj + 0x64));
    return TRUE;
}

WIP_LOCAL void ov02_0224A834(void *mgr, void *src) {
    u32 location = NNS_G2dGetImageLocation(sub_0200AF00(SpriteResourceCollection_Find(*(GF_2DGfxResMan **)((u8 *)mgr + 0x19c), 3)), NNS_G2D_VRAM_TYPE_2DMAIN);
    DC_FlushRange(src, 0xC80);
    GX_LoadOBJ(src, location, 0xC80);
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

WIP_LOCAL void ov02_0224AB58(void *work) {
    VecFx32 pos = { 0, 0, 0 };
    void *a4 = work;
    *(void **)((u8 *)work + 0x1ec) = sub_02068B0C(*(void **)((u8 *)work + 0x1e0), &ov02_0225347C, &pos, 0, &a4, 0x82);
}

WIP_LOCAL void ov02_0224B298(void *mgr, void *arg1) {
    VecFx32 pos = { 0, 0, 0 };
    struct {
        void *unk0;
        void *unk4;
    } a4;
    a4.unk4 = arg1;
    sub_02068B0C(mgr, &ov02_022534A4, &pos, 0, &a4, 0x81);
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

WIP_LOCAL void ov02_0224D310(void *a0, void *a1, void *data) {
    memset(data, 0, 0xf0);
    HeapExp_FndInitAllocator((NNSFndAllocator *)((u8 *)data + 0xdc), HEAP_ID_FIELD1, 0x20);
    ov02_0224D0C8(data, 8, 4, 4, (u8 *)data + 0xdc);
    ov02_0224D044(*(void **)((u8 *)a1 + 0x40), data);
    PlaySE(SEQ_SE_DP_FW088);
    *(int *)((u8 *)data + 0xec) = 0;
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

WIP_LOCAL int ov02_0224C6DC(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (!EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x14))) {
        return 0;
    }
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), &ov02_02253820);
    *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), &ov02_02253820);
    (*(int *)((u8 *)work))++;
    return 0;
}

WIP_LOCAL int ov02_0224C2A8(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10)) == 1) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
        *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), &ov02_02253794);
    }
    if (!IsPaletteFadeFinished()) {
        return 0;
    }
    ov01_021FCD8C(*(void **)((u8 *)work + 0x1c), 2, 0, 0x3c);
    (*(int *)((u8 *)work))++;
    return 1;
}

WIP_LOCAL int ov02_0224C698(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    void *p = ov01_021FCD2C(fieldSystem, 4);
    *(void **)((u8 *)work + 0x1c) = p;
    ov01_021FCD8C(p, 1, 0xFFF6A000, 0xf);
    *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), &ov02_02253770);
    (*(int *)((u8 *)work))++;
    PlaySE(SEQ_SE_DP_TELE);
    return 0;
}

WIP_LOCAL void *ov02_0224A7B8(Pokemon *mon, void *arg1, enum HeapID heapID) {
    void *buffer = Heap_Alloc(HEAP_ID_FIELD1, 0xc80);
    GF_ASSERT(buffer);
    sub_02014540((NarcId) * (u16 *)arg1, *(u16 *)((u8 *)arg1 + 2), heapID, buffer, GetMonData(mon, MON_DATA_PERSONALITY, NULL), FALSE, 2, *(u16 *)((u8 *)arg1 + 6));
    return buffer;
}

WIP_LOCAL void ov02_0224A88C(void *mgr, void *dst) {
    NNSG2dImageProxy *proxy = sub_0200AF00(SpriteResourceCollection_Find(*(GF_2DGfxResMan **)((u8 *)mgr + 0x19c), 3));
    u32 location = NNS_G2dGetImagePaletteLocation(SpriteTransfer_GetPaletteProxy(SpriteResourceCollection_Find(*(GF_2DGfxResMan **)((u8 *)mgr + 0x1a0), 3), proxy), NNS_G2D_VRAM_TYPE_2DMAIN);
    DC_FlushRange(dst, 0x20);
    GX_LoadOBJPltt(dst, location, 0x20);
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

WIP_LOCAL int ov02_0224B5F0(void *work) {
    *(Sprite **)((u8 *)work + 0x16c) = ov02_02248D18((u8 *)work + 0x18, *(int *)((u8 *)work + 0xc));
    Sprite_SetDrawFlag(*(Sprite **)((u8 *)work + 0x16c), 1);
    *(void **)((u8 *)work + 0x174) = ov02_02248D58(*(void **)((u8 *)work + 0x14), *(void **)((u8 *)work + 0x170), (u8 *)work + 0x18, *(void **)((u8 *)work + 0x16c));
    ov02_02248E20(*(void **)((u8 *)work + 0x174));
    (*(int *)((u8 *)work))++;
    *(int *)((u8 *)work + 0x10) = 1;
    return 0;
}

WIP_LOCAL void ov02_0224D1E4(void *a0, void *a1, void *data) {
    memset(data, 0, 0xf0);
    HeapExp_FndInitAllocator((NNSFndAllocator *)((u8 *)data + 0xdc), HEAP_ID_FIELD1, 0x20);
    ov02_0224D0C8(data, 3, 0, 3, (u8 *)data + 0xdc);
    ov02_0224D044(*(void **)((u8 *)a1 + 0x40), data);
    PlaySE(SEQ_SE_DP_FW015);
    *(int *)((u8 *)data + 0xec) = 0;
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

struct ov02_PokeathlonStarBits {
    u16 s0 : 3;
    u16 s1 : 3;
    u16 s2 : 3;
    u16 s3 : 3;
    u16 s4 : 3;
};

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

WIP_LOCAL void ov02_0224B784(void *work) {
    VecFx32 pos = { 0, 0, 0 };
    void *a4 = work;
    ov02_0224B88C(work);
    MapObject_CopyPositionVector(*(LocalMapObject **)((u8 *)work + 0x20c), &pos);
    *(void **)((u8 *)work + 0x1f0) = sub_02068B0C(*(void **)((u8 *)work + 0x1e0), &ov02_02253490, &pos, 0, &a4, 0x83);
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

WIP_LOCAL int ov02_0224C2EC(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (!EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10))) {
        return 0;
    }
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
    if (++*(int *)((u8 *)work + 4) < 4) {
        *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), &ov02_02253794);
        return 0;
    }
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), &ov02_02253884);
    (*(int *)((u8 *)work))++;
    return 0;
}

WIP_LOCAL void ov02_0224D22C(void *a0, void *a1, void *data) {
    memset(data, 0, 0xf0);
    HeapExp_FndInitAllocator((NNSFndAllocator *)((u8 *)data + 0xdc), HEAP_ID_FIELD1, 0x20);
    ov02_0224D0C8(data, 3, 0, 3, (u8 *)data + 0xdc);
    ov02_0224CFD8(*(void **)((u8 *)a1 + 0x3c), 0xfd, data);
    PlaySE(SEQ_SE_DP_FW015);
    *(int *)((u8 *)data + 0xec) = 0;
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

WIP_LOCAL void ov02_0224D358(void *a0, void *a1, void *data) {
    memset(data, 0, 0xf0);
    HeapExp_FndInitAllocator((NNSFndAllocator *)((u8 *)data + 0xdc), HEAP_ID_FIELD1, 0x20);
    ov02_0224D0C8(data, 8, 4, 4, (u8 *)data + 0xdc);
    ov02_0224CFD8(*(void **)((u8 *)a1 + 0x3c), 0xfd, data);
    PlaySE(SEQ_SE_DP_FW088);
    *(int *)((u8 *)data + 0xec) = 0;
}

WIP_LOCAL void ov02_0224D144(void *obj, void *alloc) {
    u32 i;
    Field3dModel_Unload((Field3dModel *)((u8 *)obj + 0x78));
    for (i = 0; i < *(u32 *)((u8 *)obj + 0xd8); i++) {
        Field3dModelAnimation_Unload((Field3DModelAnimation *)((u8 *)obj + 0x88 + i * 0x14), (NNSFndAllocator *)alloc);
    }
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

WIP_LOCAL BOOL ov02_022489F0(void *mgr, int a1) {
    int i;
    int count = *(u8 *)mgr;
    for (i = 0; i < count; i++) {
        if (a1 == (*(AnimResEntry **)((u8 *)mgr + 0x144))[i].id) {
            return sub_0200ADA4((*(AnimResEntry **)((u8 *)mgr + 0x144))[i].res);
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

WIP_LOCAL BOOL ov02_02248AC8(void *mgr, int a1) {
    int i;
    int count = *((u8 *)mgr + 1);
    for (i = 0; i < count; i++) {
        if (a1 == (*(AnimResEntry **)((u8 *)mgr + 0x148))[i].id) {
            return sub_0200B00C((*(AnimResEntry **)((u8 *)mgr + 0x148))[i].res);
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
        if (MetatileBehavior_IsEncounterGrass(behavior) == 1) {
            ov01_021FF0E4(obj, 0, x, z, 1);
        } else if (sub_0205B6F4(behavior) == 1) {
            ov01_021FF964(obj, 0, x, z, 1);
        }
        break;
    }
    }
}

WIP_LOCAL Sprite *ov02_0224A3F0(void *mgr, VecFx32 *pos, int drawPriority, int seq) {
    Sprite *sprite = ov02_0224A33C(mgr, pos, 1, 0, 1, 0, 0, drawPriority);
    Sprite_SetAnimCtrlSeq(sprite, seq);
    return sprite;
}

WIP_LOCAL void ov02_02248C98(Sprite *sprite, VecFx32 *out) {
    *out = *Sprite_GetMatrixPtr(sprite);
}

WIP_LOCAL int ov02_02248E10(void *work) {
    *(u8 *)((u8 *)work + 2) = 0;
    Sprite_SetDrawFlag(*(Sprite **)((u8 *)work + 0x68), FALSE);
    return 0;
}

WIP_LOCAL void ov02_0224A69C(void *work, int p1, int p2, int p3, int p4) {
    *(int *)((u8 *)work + 0x44) = p1;
    *(int *)((u8 *)work + 0x48) = p3;
    *(int *)((u8 *)work + 0x4c) = p2;
    *(int *)((u8 *)work + 0x50) = p4;
}

WIP_LOCAL void *ov02_0224A800(u16 *a0, enum HeapID heapID) {
    return sub_02014450((NarcId)a0[0], a0[2], heapID);
}

WIP_LOCAL u8 ov02_0224AB8C(void *work) {
    return ((u8 *)sub_02068D74(*(void **)((u8 *)work + 0x1ec)))[2];
}

WIP_LOCAL int ov02_0224AC28(void *work) {
    *(u8 *)((u8 *)work + 2) = 0;
    Sprite_SetDrawFlag(*(Sprite **)((u8 *)work + 0x58), FALSE);
    return 0;
}

WIP_LOCAL void ov02_0224B87C(void *a0, void *a1) {
    Field3dObject_Draw((Field3dObject *)((u8 *)*(void **)a1 + 0x24c));
}

WIP_LOCAL void ov02_0224BFC0(FieldSystem *fieldSystem, u8 a1) {
    ov01_021E8E70(*(void **)((u8 *)fieldSystem + 0x58), a1, 0);
}

WIP_LOCAL void ov02_0224BFCC(FieldSystem *fieldSystem, u8 a1) {
    ov01_021E8E70(*(void **)((u8 *)fieldSystem + 0x58), a1, 1);
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
    return sub_0205BAE4(tile);
}

WIP_LOCAL BOOL ov02_0224EF6C(u8 tile, int flag, int sel) {
    if (sel == 0) {
        return ov02_0224E4CC(tile, flag);
    }
    return ov02_0224E4DC(tile, flag);
}

WIP_LOCAL void ov02_0224F644(void *a, void *b) {
    *(u16 *)((u8 *)b + 0x1a) = (u16) * *(u32 **)((u8 *)a + 0x20);
}

WIP_LOCAL void FieldSystem_FollowMonInteract(FieldSystem *fieldSystem) {
    TaskManager_Call(fieldSystem->taskman, Task_FollowMonInteract, NULL);
}

WIP_LOCAL void ov02_0224A32C(void *mgr) {
    SpriteList *spriteList = *(SpriteList **)((u8 *)mgr + 0x70);
    if (spriteList != NULL) {
        SpriteList_RenderAndAnimateSprites(spriteList);
    }
}

WIP_LOCAL void ov02_02249548(void *work) {
    ov02_0224957C(SysTask_GetData(work));
    SysTask_Destroy(work);
}

WIP_LOCAL void ov02_0224B448(SysTask *task) {
    Heap_Free(SysTask_GetData(task));
    SysTask_Destroy(task);
}

WIP_LOCAL void ov02_0224DD38(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224DCB0(task, fieldSystem, data);
    *(u16 *)((u8 *)data + 0xE9A) = 1;
}

WIP_LOCAL BOOL ov02_0224D2F8(Field3dObjectTask *task) {
    return *(int *)((u8 *)Field3dObjectTask_GetData(task) + 0xec) == 1;
}

WIP_LOCAL BOOL ov02_0224D424(Field3dObjectTask *task) {
    return *(int *)((u8 *)Field3dObjectTask_GetData(task) + 0xec) == 1;
}

WIP_LOCAL BOOL ov02_0224DC94(Field3dObjectTask *task) {
    return *((u8 *)Field3dObjectTask_GetData(task) + 0x113) == 1;
}

WIP_LOCAL void ov02_0224D580(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    int i;
    u8 *p = data;
    for (i = 0; i < 2; i++) {
        ov02_0224D1DC((Field3dObject *)p);
        p += 0xdc;
    }
}

WIP_LOCAL void ov02_0224F698(FieldSystem *fieldSystem, void *out) {
    *(s8 *)((u8 *)out + 0x15) = FieldSystem_UnkSub108_GetMonMood(*(FieldSystemUnk108 **)((u8 *)fieldSystem + 0x108));
}

WIP_LOCAL int ov02_02249CD8(int *work) {
    if (IsPaletteFadeFinished()) {
        *work = *work + 1;
    }
    return 0;
}

WIP_LOCAL void ov02_0224A450(Sprite *sprite) {
    Sprite_SetAnimActiveFlag(sprite, TRUE);
    Sprite_SetAnimSpeed(sprite, FX32_ONE);
}

WIP_LOCAL BOOL ov02_0224B350(void *a0, void *out) {
    int *p = (int *)sub_02068D98(a0);
    *(int *)((u8 *)out + 0x1c) = p[0];
    *(int *)((u8 *)out + 0x20) = p[1];
    return TRUE;
}

WIP_LOCAL void *ov02_0224E0D4(LocalMapObject *obj1, LocalMapObject *obj2) {
    void *env = Heap_AllocAtEnd(HEAP_ID_FIELD1, 0x20);
    *(int *)env = 0;
    *(LocalMapObject **)((u8 *)env + 4) = obj1;
    *(LocalMapObject **)((u8 *)env + 8) = obj2;
    return env;
}

WIP_LOCAL void ov02_0224E0BC(LocalMapObject *obj1, LocalMapObject *obj2, TaskManager *taskManager) {
    void *env = ov02_0224E0D4(obj1, obj2);
    TaskManager_Call(taskManager, ov02_0224E0EC, env);
}

WIP_LOCAL int ov02_0224E340(FieldSystem *fieldSystem) {
    u32 x = PlayerAvatar_GetXCoord(fieldSystem->playerAvatar);
    u32 z = PlayerAvatar_GetZCoord(fieldSystem->playerAvatar);
    return ov02_0224E31C(x, z);
}

WIP_LOCAL void ov02_0224D0AC(void *playerAvatar, void *obj) {
    VecFx32 pos;
    PlayerAvatar_CopyPositionVector(playerAvatar, &pos);
    Field3dObject_SetPosEx((Field3dObject *)obj, pos.x, pos.y, pos.z);
}

WIP_LOCAL void ov02_0224B6B0(void *work, BOOL visible) {
    MapObject_UnpauseMovement(*(LocalMapObject **)((u8 *)work + 0x208));
    MapObject_SetVisible(*(LocalMapObject **)((u8 *)work + 0x208), visible);
}

WIP_LOCAL int ov02_0224C680(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov01_022060B8(fieldSystem, 2, 1);
    *(int *)data = *(int *)data + 1;
    return 0;
}

WIP_LOCAL void ov02_0224B768(void *work) {
    int v = *(int *)((u8 *)work + 0x1f4);
    if (v != 0) {
        sub_02068B48(v);
        *(int *)((u8 *)work + 0x1f4) = 0;
    }
}

WIP_LOCAL void ov02_02249D40(void *work) {
    SysTask *task = *(SysTask **)((u8 *)work + 0x220);
    if (task != NULL) {
        SysTask_Destroy(task);
        *(SysTask **)((u8 *)work + 0x220) = NULL;
    }
}

WIP_LOCAL void ov02_0224D468(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    int i;
    u8 *p = data;
    u8 *q;
    for (i = 0, q = (u8 *)data + 0x1b8; i < 2; i++, p += 0xdc) {
        ov02_0224D144(p, q);
    }
}

WIP_LOCAL void ov02_0224D868(void *data) {
    int i;
    u8 *p;
    for (i = 0, p = (u8 *)data + 0x10; i < 0x10; i++, p += 0xcc) {
        ov02_0224D700(p);
    }
}

WIP_LOCAL void ov02_0224E008(void *data) {
    int i;
    u8 *p;
    for (i = 0, p = (u8 *)data + 0x10; i < 0x12; i++, p += 0xcc) {
        ov02_0224DE6C(p);
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

WIP_LOCAL int ov02_02249AD8(void *work) {
    ov02_0224A4D0(work);
    ov02_02249D18(work);
    *(int *)work = *(int *)work + 1;
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

WIP_LOCAL void *ov02_0224955C(void *a0) {
    void *ptr = Heap_AllocAtEnd(HEAP_ID_FIELD1, 0x2f8);
    memset(ptr, 0, 0x2f8);
    *(void **)((u8 *)ptr + 0x60) = a0;
    return ptr;
}

WIP_LOCAL BOOL ov02_02249AF0(void *work) {
    if (*(int *)((u8 *)work + 0x214) == 0) {
        return FALSE;
    }
    ov02_02249D40(work);
    *(int *)work = *(int *)work + 1;
    return TRUE;
}

WIP_LOCAL void ov02_0224A648(void *work) {
    ov02_0224A6A8(work);
    *(int *)((u8 *)work + 0x2c) = 0;
    ov02_0224A674(work);
    ov02_0224A67C(work);
    ov02_0224A66C(work);
    *(int *)((u8 *)work + 0x2c) = 1;
}

WIP_LOCAL SysTask *ov02_0224B418(FieldSystem *fieldSystem, int gender) {
    void *p = ov02_0224B690(HEAP_ID_FIELD1, 0x17c);
    *(int *)((u8 *)p + 0xc) = gender;
    *(FieldSystem **)((u8 *)p + 0x14) = fieldSystem;
    return SysTask_CreateOnMainQueue(ov02_0224B45C, p, 0x86);
}

WIP_LOCAL void *ov02_0224C1D8(FieldSystem *fieldSystem, int a1, int a2) {
    void *p = ov02_0224C660((enum HeapID)a1, 0x30);
    *(int *)((u8 *)p + 0xc) = a2;
    *(FieldSystem **)((u8 *)p + 0x24) = fieldSystem;
    *(LocalMapObject **)((u8 *)p + 0x20) = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);
    return p;
}

WIP_LOCAL int ov02_022491A8(void *work) {
    Sprite_SetDrawFlag(*(Sprite **)((u8 *)work + 0x68), FALSE);
    Sprite_SetAnimCtrlSeq(*(Sprite **)((u8 *)work + 0x60), 1);
    *(int *)((u8 *)work + 4) = 0;
    *(u8 *)((u8 *)work + 1) = *(u8 *)((u8 *)work + 1) + 1;
    return 1;
}

WIP_LOCAL void ov02_0224A7A8(void *a0, PokepicTemplate *tmpl) {
    GetPokemonSpriteCharAndPlttNarcIds(tmpl, *(Pokemon **)((u8 *)a0 + 0x5c), 2);
}

WIP_LOCAL int ov02_0224C1B8(TaskManager *taskManager, void *a1, void *a2) {
    LocalFieldData *ldfd = Save_LocalFieldData_Get(*(SaveData **)((u8 *)a1 + 0xc));
    Location *warp = LocalFieldData_GetSpecialSpawnWarpPtr(ldfd);
    sub_02053B04(taskManager, warp, *(int *)((u8 *)a2 + 0xc));
    return 2;
}

WIP_LOCAL int ov02_0224CA38(TaskManager *taskManager, void *a1, void *a2) {
    LocalFieldData *ldfd = Save_LocalFieldData_Get(*(SaveData **)((u8 *)a1 + 0xc));
    Location *warp = LocalFieldData_GetSpecialSpawnWarpPtr(ldfd);
    sub_02053B04(taskManager, warp, *(int *)((u8 *)a2 + 0xc));
    return 2;
}

WIP_LOCAL void ov02_02248DF0(void *a0, u8 *sm) {
    ov02_StateMachineFunc *table = ov02_02253320[sm[0]];
    while (table[sm[1]](sm) == 1) {
    }
}

WIP_LOCAL void ov02_0224AC04(void *a0, u8 *sm) {
    ov02_StateMachineFunc *table = ov02_022533C0[sm[0]];
    while (table[sm[1]](sm) == 1) {
    }
}

WIP_LOCAL void ov02_02249584(SysTask *task, void *sm) {
    while (ov02_02253550[*(int *)sm](sm) == 1) {
    }
    if (*(int *)((u8 *)sm + 0x10) == 1) {
        if (*(void **)((u8 *)sm + 0x1e0) != NULL) {
            sub_02068BAC(*(void **)((u8 *)sm + 0x1e0));
        }
        ov02_0224A32C(sm);
    }
}

WIP_LOCAL void ov02_02249984(SysTask *task, void *sm) {
    while (ov02_02253588[*(int *)sm](sm) == 1) {
    }
    if (*(int *)((u8 *)sm + 0x10) == 1) {
        if (*(void **)((u8 *)sm + 0x1e0) != NULL) {
            sub_02068BAC(*(void **)((u8 *)sm + 0x1e0));
        }
        ov02_0224A32C(sm);
    }
}

WIP_LOCAL void ov02_022499B8(SysTask *task, void *sm) {
    while (ov02_022534F0[*(int *)sm](sm) == 1) {
    }
    if (*(int *)((u8 *)sm + 0x10) == 1) {
        if (*(void **)((u8 *)sm + 0x1e0) != NULL) {
            sub_02068BAC(*(void **)((u8 *)sm + 0x1e0));
        }
        ov02_0224A32C(sm);
    }
}

WIP_LOCAL void ov02_0224D43C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    memset(data, 0, 0x1cc);
    HeapExp_FndInitAllocator((NNSFndAllocator *)((u8 *)data + 0x1b8), HEAP_ID_FIELD1, 0x20);
    *(u16 *)((u8 *)data + 0x1ca) = 0;
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

WIP_LOCAL int ov02_0224B638(void *work) {
    if (ov02_02248D8C(*(void **)((u8 *)work + 0x174)) != 2) {
        return 0;
    }
    ov02_02248DBC(*(void **)((u8 *)work + 0x174));
    *(int *)work = *(int *)work + 1;
    return 0;
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

WIP_LOCAL int ov02_02249B10(void *work) {
    ov02_0224AB58(work);
    ov02_0224AC38(work);
    ov02_0224A690(work);
    ov02_0224B6B0(work, TRUE);
    *(int *)work = *(int *)work + 1;
    return 0;
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

WIP_LOCAL SpriteResource *ov02_0224A868(void *mgr, NARC *narc) {
    return AddPlttResObjFromOpenNarc(*(GF_2DGfxResMan **)((u8 *)mgr + 0x1a0), narc, 6, FALSE, 3, 1, 1, HEAP_ID_FIELD1);
}

WIP_LOCAL void ov02_0224D788(void *obj, NNSFndAllocator *alloc) {
    int i;
    u8 *p;
    for (i = 0, p = (u8 *)obj + 0x78; i < 4; i++, p += 0x14) {
        Field3dModelAnimation_Unload((Field3DModelAnimation *)p, alloc);
    }
    memset(obj, 0, 0xcc);
}

WIP_LOCAL void ov02_0224DEF4(void *obj, NNSFndAllocator *alloc) {
    int i;
    u8 *p;
    for (i = 0, p = (u8 *)obj + 0x78; i < 4; i++, p += 0x14) {
        Field3dModelAnimation_Unload((Field3DModelAnimation *)p, alloc);
    }
    memset(obj, 0, 0xcc);
}

WIP_LOCAL void ov02_0224A6A8(void *work) {
    if (*(SysTask **)((u8 *)work + 0x224) != NULL) {
        GF_AssertFail();
    }
    *(SysTask **)((u8 *)work + 0x224) = SysTask_CreateOnVBlankQueue(ov02_0224A700, work, 0x81);
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

WIP_LOCAL int ov02_0224E31C(u32 x, u32 z) {
    s32 xi = (s32)(x - 0x20) / 0x20;
    s32 zi = (s32)(z - 0x20) / 0x20;
    s32 idx = xi + zi * 3;
    if (idx < 0 || idx >= 6) {
        return 0;
    }
    return idx;
}

WIP_LOCAL int ov02_02249B38(void *work) {
    if (ov02_0224AB8C(work) != 2) {
        return 0;
    }
    Sprite_SetAnimCtrlSeq(*(Sprite **)((u8 *)work + 0x1e4), 1);
    *(int *)work = *(int *)work + 1;
    return 0;
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

WIP_LOCAL SpriteResource *ov02_0224A810(void *mgr, NARC *narc) {
    return AddCharResObjFromOpenNarc(*(GF_2DGfxResMan **)((u8 *)mgr + 0x19c), narc, 9, FALSE, 3, 1, HEAP_ID_FIELD1);
}

WIP_LOCAL void ov02_0224D98C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    int i;
    u8 *p;
    for (i = 0, p = (u8 *)data + 0x10; i < 0x10; i++, p += 0xcc) {
        Field3dObject_Draw((Field3dObject *)p);
    }
}

WIP_LOCAL void ov02_0224DDC8(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    int i;
    u8 *p;
    for (i = 0, p = (u8 *)data + 0x10; i < 0x12; i++, p += 0xcc) {
        Field3dObject_Draw((Field3dObject *)p);
    }
}

WIP_LOCAL void *ov02_0224B690(enum HeapID heapID, u32 size) {
    void *ptr = Heap_AllocAtEnd(heapID, size);
    if (ptr == NULL) {
        GF_AssertFail();
    }
    memset(ptr, 0, size);
    return ptr;
}

WIP_LOCAL void *ov02_0224C660(enum HeapID heapID, u32 size) {
    void *ptr = Heap_AllocAtEnd(heapID, size);
    if (ptr == NULL) {
        GF_AssertFail();
    }
    memset(ptr, 0, size);
    return ptr;
}

WIP_LOCAL void *ov02_0224F864(enum HeapID heapID) {
    void *ptr = Heap_Alloc(heapID, 0x884);
    MI_CpuFill8(ptr, 0, 0x884);
    return ptr;
}

WIP_LOCAL void ov02_0224A67C(void *work) {
    *(int *)((u8 *)work + 0x34) = 0x18;
    *(int *)((u8 *)work + 0x38) = 0;
    *(int *)((u8 *)work + 0x3c) = 0x17;
    *(int *)((u8 *)work + 0x40) = 1;
}

WIP_LOCAL int ov02_02249968(void *work) {
    ov02_0224A6D0(work);
    *(int *)work = *(int *)work + 1;
    return 0;
}

WIP_LOCAL int ov02_02249AC4(void *work) {
    ov02_0224A8D4(work);
    *(int *)work = *(int *)work + 1;
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

WIP_LOCAL BOOL ov02_0224B6D0(void *a0, void *out) {
    *(UnkPair8 *)out = *(UnkPair8 *)sub_02068D98(a0);
    return TRUE;
}

WIP_LOCAL int ov02_0224B494(void *work) {
    ov02_02249444(*(FieldSystem **)((u8 *)work + 0x14), TRUE);
    *(int *)work = *(int *)work + 1;
    return 0;
}

WIP_LOCAL void ov02_0224D658(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D1AC(data);
    ov02_0224D0AC(fieldSystem->playerAvatar, data);
}

WIP_LOCAL BOOL ov02_0224FC74(void *a0, void *a1) {
    *(u8 *)((u8 *)a0 + 0x86D) = 0;
    return *((u8 *)a1 + 7) != 0;
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

WIP_LOCAL void ov02_0224D1DC(Field3dObject *object) {
    Field3dObject_Draw(object);
}

WIP_LOCAL void ov02_0224D278(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D144(data, (u8 *)data + 0xdc);
}

WIP_LOCAL void ov02_0224D2BC(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D1DC(data);
}

WIP_LOCAL void ov02_0224D2F0(Field3dObjectTask *task) {
    Field3dObjectTask_Delete(task);
}

WIP_LOCAL void ov02_0224D3A4(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D144(data, (u8 *)data + 0xdc);
}

WIP_LOCAL void ov02_0224D3E8(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D1DC(data);
}

WIP_LOCAL void ov02_0224D41C(Field3dObjectTask *task) {
    Field3dObjectTask_Delete(task);
}

WIP_LOCAL void ov02_0224D5AC(Field3dObjectTask *task) {
    Field3dObjectTask_Delete(task);
}

WIP_LOCAL void ov02_0224D648(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D144(data, (u8 *)data + 0xdc);
}

WIP_LOCAL void ov02_0224D670(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D1DC(data);
}

WIP_LOCAL void ov02_0224D690(Field3dObjectTask *task) {
    Field3dObjectTask_Delete(task);
}

WIP_LOCAL void ov02_0224D9B8(Field3dObjectTask *task) {
    Field3dObjectTask_Delete(task);
}

WIP_LOCAL void ov02_0224DB8C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D144(data, (u8 *)data + 0xdc);
}

WIP_LOCAL void ov02_0224DC58(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    ov02_0224D1DC(data);
}

WIP_LOCAL void ov02_0224DC8C(Field3dObjectTask *task) {
    Field3dObjectTask_Delete(task);
}

WIP_LOCAL void ov02_0224DE08(Field3dObjectTask *task) {
    Field3dObjectTask_Delete(task);
}

// Field3dObject task "create" wrappers (table ov02_02253A1C etc.), each invoked
// with a0 = fieldSystem by ov02_0224E074. Templates are deferred rodata (extern).
WIP_LOCAL Field3dObjectTask *ov02_0224D2C8(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_02253974);
}

WIP_LOCAL Field3dObjectTask *ov02_0224D2DC(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_022539BC);
}

WIP_LOCAL Field3dObjectTask *ov02_0224D3F4(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_022538FC);
}

WIP_LOCAL Field3dObjectTask *ov02_0224D408(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_0225398C);
}

WIP_LOCAL Field3dObjectTask *ov02_0224D598(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_02253944);
}

WIP_LOCAL Field3dObjectTask *ov02_0224D67C(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_02253914);
}

WIP_LOCAL Field3dObjectTask *ov02_0224D9A4(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_0225395C);
}

WIP_LOCAL Field3dObjectTask *ov02_0224DC64(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_022539A4);
}

WIP_LOCAL Field3dObjectTask *ov02_0224DC78(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_0225392C);
}

WIP_LOCAL Field3dObjectTask *ov02_0224DDE0(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_022539D4);
}

WIP_LOCAL Field3dObjectTask *ov02_0224DDF4(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov02_022539EC);
}

WIP_LOCAL void ov02_0224F8F4(void *ptr) {
    Heap_Free(ptr);
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

WIP_LOCAL int ov02_0224C05C(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    void *p = ov01_021FCD2C(fieldSystem, 4);
    *(void **)((u8 *)work + 0x1c) = p;
    ov01_021FCD8C(p, 1, 0xFFF6A000, 0xf);
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), &ov02_02253820);
    if (*(int *)((u8 *)work + 8)) {
        *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), &ov02_02253820);
    }
    (*(int *)((u8 *)work))++;
    PlaySE(SEQ_SE_DP_KAIDAN2);
    return 0;
}

WIP_LOCAL int ov02_0224C87C(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    void *p = ov01_021FCD2C(fieldSystem, 4);
    *(void **)((u8 *)work + 0x1c) = p;
    ov01_021FCD8C(p, 1, 0xFFF6A000, 0xf);
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), &ov02_022537DC);
    if (*(int *)((u8 *)work + 8)) {
        *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), &ov02_022537DC);
    }
    (*(int *)((u8 *)work))++;
    PlaySE(SEQ_SE_DP_KAIDAN2);
    return 0;
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

WIP_LOCAL int ov02_0224C14C(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10)) == 1) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
        *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), &ov02_02253794);
        if (*(int *)((u8 *)work + 8)) {
            EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
            *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), &ov02_02253794);
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

WIP_LOCAL void FollowMon_PlaceholdersSet(void *work, void *messageFormat) {
    Pokemon *mon = GetFirstAliveMonInParty_CrashIfNone(SaveArray_Party_Get(*(SaveData **)((u8 *)work + 0xc)));
    BoxPokemon *boxMon = Mon_GetBoxMon(mon);
    BufferBoxMonNickname(messageFormat, 0, boxMon);
    BufferBoxMonSpeciesName(messageFormat, 1, boxMon);
    BufferPlayersName(messageFormat, 2, Save_PlayerData_GetProfile(*(SaveData **)((u8 *)work + 0xc)));
    BufferLocationName(messageFormat, 3, MapHeader_GetMapSec(**(u32 **)((u8 *)work + 0x20)));
    BufferItemName(messageFormat, 4, GetMonData(mon, MON_DATA_HELD_ITEM, NULL));
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

WIP_LOCAL int ov02_0224C7D4(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10)) == 1) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
        *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), &ov02_02253794);
        if (*(int *)((u8 *)work + 8)) {
            EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
            *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), &ov02_02253794);
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

WIP_LOCAL int ov02_0224C8D0(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (!EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10))) {
        return 0;
    }
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), &ov02_022537B8);
    if (*(int *)((u8 *)work + 8)) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
        *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), &ov02_022537B8);
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
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), &ov02_02253794);
    (*(int *)((u8 *)work))++;
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

WIP_LOCAL BOOL ov02_02250738(u32 a0, u32 a1) {
    int i;
    u8 masks[] = { 0x01, 0x02, 0x04, 0x08, 0x10 };
    for (i = 0; i < 5; i++) {
        if ((masks[a0 - 1] & a1) == 0) {
            return TRUE;
        }
    }
    return FALSE;
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

WIP_LOCAL int ov02_0224C0B0(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (!EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10))) {
        return 0;
    }
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), &ov02_02253794);
    if (*(int *)((u8 *)work + 8)) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
        *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), &ov02_02253794);
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

WIP_LOCAL int ov02_0224C75C(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (!EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10))) {
        return 0;
    }
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), &ov02_02253794);
    if (*(int *)((u8 *)work + 8)) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
        *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), &ov02_02253794);
    }
    if (++*(int *)((u8 *)work + 4) < 8) {
        return 0;
    }
    BeginNormalPaletteFade(0, 0, 0, 0, 6, 1, HEAP_ID_FIELD1);
    (*(int *)((u8 *)work))++;
    return 0;
}

WIP_LOCAL int ov02_0224C93C(TaskManager *taskManager, FieldSystem *fieldSystem, void *work) {
    if (!EventObjectMovementMan_IsFinish(*(EventObjectMovementMan **)((u8 *)work + 0x10))) {
        return 0;
    }
    EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x10));
    *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), &ov02_02253794);
    if (*(int *)((u8 *)work + 8)) {
        EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
        *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), &ov02_02253794);
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
        *(EventObjectMovementMan **)((u8 *)work + 0x10) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)work + 0x20), &ov02_02253794);
        if (*(int *)((u8 *)work + 8)) {
            EventObjectMovementMan_Delete(*(EventObjectMovementMan **)((u8 *)work + 0x14));
            *(EventObjectMovementMan **)((u8 *)work + 0x14) = EventObjectMovementMan_Create(*(LocalMapObject **)((u8 *)fieldSystem + 0xe4), &ov02_02253794);
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

WIP_LOCAL int ov02_0224B664(void *work) {
    sub_020689F8(*(void **)((u8 *)work + 0x170));
    ov02_0224886C((u8 *)work + 0x18);
    *(int *)((u8 *)work + 0x10) = 0;
    *(int *)((u8 *)work + 4) = 1;
    (*(int *)work)++;
    return 0;
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

WIP_LOCAL void ov02_0224A028(void *work) {
    GfGfx_EngineATogglePlanes(8, 0);
    sub_020689F8(*(void **)((u8 *)work + 0x1e0));
    ov02_0224A288(work);
    reg_G2_BG0CNT = (reg_G2_BG0CNT & ~3) | *(u16 *)((u8 *)work + 0x24);
    reg_G2_BG3CNT = (reg_G2_BG3CNT & ~3) | *(u16 *)((u8 *)work + 0x26);
    sub_0205B4EC(0, 1);
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

// ===========================================================================
// HANDOFF — overlay_02_02248728 WIP (289/364 byte-match, objdiff-verified)
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
