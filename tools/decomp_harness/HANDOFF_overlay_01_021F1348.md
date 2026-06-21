# Handoff: `asm/overlay_01_021F1348.s` (camera / 3D-effect cluster HEAD, 61 functions)

**Status:** drafted (3 parallel decomp-drafter passes), NOT yet integrated/built/matched.
Deferred from the autonomous `/decomp-loop` because it is a 61-function foundational
cluster head needing a dedicated focused session. This doc captures all the analysis so
that session can go straight to integrate → build → objdiff → NONMATCHING-holdouts.

## What this file is
The GF3dGfxRawResMan-based 3D resource manager that the rest of the camera / 3D-effect
family (`overlay_01_021FE780.c`, `overlay_01_021FEE64`, `overlay_01_02203E40`, etc.)
calls via **local externs** to `ov01_021F1430 / _1448 / _1450 / _1468 / _146C / _1620 /
_1640 / _19F4` and friends. It contains **two manager families**:

1. **Outer resource manager** `Unk021F1348` (0x24 bytes), created by `ov01_021F1348`.
   Holds a slot array (id→effect-object), a NARC, a particle/sprite sub-manager
   (`unk1c`, from `sub_020689C8`), and a 3D-model sub-manager (`unk20`).
2. **Inner 3D-model manager** (0x24 bytes, `unk20` of the outer), created by
   `ov01_021F1648`. Holds two GF3dGfxRawResMan tex managers (`ov01_021FC4C4`), a
   `GF3dGfxRawResMan` (`unk18`), a scene/anim manager (`unkC`, `sub_020237EC`), and an
   8-byte inner-slot array (`unk1c`) backing a 0x28-byte anim-key array (`unk20`).

## Header / IPA strategy
The frozen `include/overlay_01_021F1348.h` (included by field_take_photo.c,
unk_02069660.h, unk_0206979C.h, overlay_01_021FFECC.h) provides the PUBLIC structs
`UnkOv01_021FFECC` (per-effect render manager), `UnkOv01_021FFECC_sub`,
`UnkOv01_021FFFCD` (work), `UnkOv01_02209280` (template), `UnkOv01_021FFF5C` (data) and
the 8 public signatures. The cluster-head `.c` **must `#include "overlay_01_021F1348.h"`**
and match those 8 signatures EXACTLY:
```
UnkOv01_021FFECC *ov01_021F1430(void *a0, int a1, int a2, int a3);
void ov01_021F1448(UnkOv01_021FFECC *a0);
UnkOv01_021FFECC *ov01_021F1450(FieldSystem *fieldSystem, int a1);
TaskManager *ov01_021F1468(FieldSystem *fieldSystem);
FieldSystem *ov01_021F146C(LocalMapObject *mapObject);
void *ov01_021F1620(FieldSystem*, const UnkOv01_02209280*, VecFx32*, int, UnkOv01_021FFF5C*, int);  // hdr says void return
void ov01_021F19F4(void *a0, UnkOv01_021FFECC_sub *a1, int a2, int a3, int a4);
void ov01_021F1640(int a0);
```
The other 53 `.public` functions are NOT in this header — define them non-static (or
static where `.inc` omits them: `ov01_021F141C`, `ov01_021F1478` are NOT in `.public` →
static) and declare locally as needed. The outer/inner manager structs below are LOCAL
to the .c (the header's structs are different, public types).

## Reconciled struct definitions (use these; resolve the 3 drafters' disagreements)
```c
// outer resource manager (0x24) — created by ov01_021F1348
typedef struct Unk021F1348 {
    HeapID unk0;                 // heapID
    int unk4;                    // slot count
    int unk8;                    // particle-mgr count param (set by ov01_021F1384)
    int unkC;
    void *unk10;                 // TaskManager-ish (the a0 arg to ov01_021F1348); ov01_021F1468 returns it
    Unk021F1348_slot *unk14;     // outer slots
    NARC *unk18;
    void *unk1c;                 // particle/sprite sub-manager (sub_020689C8)
    Unk021F1648_obj *unk20;      // 3D-model sub-manager (ov01_021F1648)
} Unk021F1348;

typedef struct { int id; void *obj; } Unk021F1348_slot;   // 8 bytes; obj = ctor result; empty id = 0x17
typedef struct {
    int id;
    void *(*ctor)(Unk021F1348 *);  // @4, called in ov01_021F14F4
    void (*dtor)(void *);          // @8, called in ov01_021F151C
} Unk021F1348_tmpl;                // table = extern const ov01_02208C5C[]; terminator id == 0x17

// inner 3D-model manager (0x24) — created by ov01_021F1648, lives at outer->unk20
typedef struct {
    int unk0;                    // heapID
    u16 unk4;                    // count
    u16 unk6;                    // a3
    u16 unk8;                    // a4
    u16 unkA;                    // a5
    void *unkC;                  // sub_020237EC scene/anim manager
    void *unk10;                 // ov01_021FC4C4 tex resource mgr #1 (child id 0x44)
    void *unk14;                 // ov01_021FC4C4 tex resource mgr #2 (child id 0x45)
    GF_3DGfxRawResMan *unk18;    // GF3dGfxRawResMan_Create
    Unk021F1648_InnerSlot *unk1c;// 8-byte entries {id, ptr-into-unk20}; empty id = 0xf
    void *unk20;                 // 0x28-byte backing array (anim-key objects filled by ov01_021F1824)
} Unk021F1648_obj;
typedef struct { int id; void *obj; } Unk021F1648_InnerSlot;  // 8 bytes
```
rodata: `ov01_02206988` = `const VecFx32 { FX32_ONE, FX32_ONE, FX32_ONE }` (default scale,
used by `ov01_021F16EC`). `ov01_02208C5C` = the `Unk021F1348_tmpl[]` table (extern const,
defined in a still-asm sibling — declare extern).

## Integration plan (focused session)
1. `cp build/heartgold.us/asm/overlay_01_021F1348.o /tmp/overlay_01_021F1348_asm.o` (asm ref).
2. Create `src/field/overlay_01_021F1348.c` from the drafts below; normalize ALL outer-struct
   field refs to the `unkN` names above (drafter A/C used `heapID/count/slots/narc`; map
   heapID→unk0, count→unk4, slots→unk14, narc→unk18).
3. Flip `main.lsf`: `asm/overlay_01_021F1348.o` → `src/field/overlay_01_021F1348.o`.
   (It is in the overlay_01 / OVY_... region; this is a big shared module — watch for IPA on
   the 4 header includers, but the header is FROZEN so don't touch it.)
4. `chiri pkg -- build --target main --no-compare`; fix compile errors (likely: include
   `<nitro/fx.h>`/`<nitro/g3d.h>` for fx32/NNS types, `gf_3d_loader.h`, `filesystem.h`,
   `assert.h`; GF_3DGfxRawResMan / GF_3DGfxRawResObj type names; SysTask).
5. `python3 tools/decomp_harness/objdiff.py /tmp/overlay_01_021F1348_asm.o build/heartgold.us/src/field/overlay_01_021F1348.o`.
6. Apply insights (reverse-decl stack slots, do-while for `if(count>0)` loops, single-return,
   block-copy cb1 = struct assignment). NONMATCHING the holdouts liberally (the largest /
   3D-heavy fns `ov01_021F1824`, `ov01_021F1648`, `ov01_021F1758`, `ov01_021F1A48` are the
   most likely to need verbatim asm). Then `chiri pkg -- compare` (authoritative).

## Least-confident functions (per drafters)
- `ov01_021F1824` (largest, 7-arg, two-loop slot allocator + 0x28-byte fill w/ ldmia/stmia pair copy).
- `ov01_021F1648` (inner-manager ctor; local var order for scene_count/heapID).
- `ov01_021F1758` (7-arg; local var order; return type — asm returns r4 but callers treat void).
- `ov01_021F1A48` (relies on NNS_G3dGetMdlByIdx inlining; dict traversal).
- `ov01_021F15C4` (template-table search loop shape).
- `ov01_021F1468` (drafter A cast arg directly to Unk021F1348*; verify it's not fieldSystem->unk_44).
- `ov01_021F18D4/_1908` (stack store of FALSE before other args — call-setup order).

## DRAFT 1 — functions ov01_021F1348 .. ov01_021F14F4 (drafter A)
(struct: drafter A invented `Unk021F1348` w/ heapID/count/unk8/unkC/unk10/slots/narc/unk1c/unk20;
slots = {int id; UnkOv01_021FFECC *obj}. Reconcile to the unified structs above.)
```c
Unk021F1348 *ov01_021F1348(void *a0, int a1, HeapID heapID) {
    Unk021F1348 *ctx = Heap_Alloc(heapID, 0x24);
    memset(ctx, 0, 0x24);
    ctx->unk0 = heapID; ctx->unk4 = a1; ctx->unk10 = a0;
    ctx->unk14 = Heap_Alloc(heapID, a1 * 8);
    ov01_021F14DC(ctx);   // init slots to empty
    ov01_021F147C(ctx);   // open NARC
    return ctx;
}
void ov01_021F1384(Unk021F1348 *a0, int a1) { a0->unk8 = a1; ov01_021F15EC(a0); }
// ov01_021F1390 -> ov01_021F1648(a0, a1..a8)  (thin wrapper; 9 args)
void ov01_021F1390(Unk021F1348 *a0, FieldSystem *a1, int a2,int a3,int a4,int a5,int a6,int a7,int a8) { ov01_021F1648(a0,a1,a2,a3,a4,a5,a6,a7,a8); }
void ov01_021F13B0(Unk021F1348 *a0, int a1) { if (ov01_021F1588(a0,a1)!=NULL){GF_AssertFail();return;} ov01_021F14F4(a0,a1); }
void ov01_021F13D0(Unk021F1348 *a0, int *a1) { int id=*a1; if(id==0x17)return; do{ov01_021F13B0(a0,id);a1++;id=*a1;}while(id!=0x17); }
void ov01_021F13EC(Unk021F1348 *a0) { ov01_021F1610(a0); }
void ov01_021F13F4(Unk021F1348 *a0) { ov01_021F15FC(a0); ov01_021F1538(a0); ov01_021F16B8(a0); ov01_021F1490(a0); Heap_Free(a0->unk14); Heap_Free(a0); }
static void *ov01_021F141C(Unk021F1348 *a0, u32 a1, int a2) { HeapID h=a0->unk0; return a2==0?Heap_Alloc(h,a1):Heap_AllocAtEnd(h,a1); }
UnkOv01_021FFECC *ov01_021F1430(void *a0,int a1,int a2,int a3){ UnkOv01_021FFECC *p=ov01_021F141C(a0,a1,a2); memset(p,a3,a1); return p; }
void ov01_021F1448(UnkOv01_021FFECC *a0){ Heap_Free(a0); }
UnkOv01_021FFECC *ov01_021F1450(FieldSystem *fs,int a1){ Unk021F1348_slot *s=ov01_021F1588((Unk021F1348*)fs,a1); if(!s){GF_AssertFail();return NULL;} return s->obj; }
TaskManager *ov01_021F1468(FieldSystem *fs){ return (TaskManager*)((Unk021F1348*)fs)->unk10; }  // VERIFY arg
FieldSystem *ov01_021F146C(LocalMapObject *mo){ FieldSystem *fs=MapObject_GetFieldSystem(mo); return (FieldSystem*)fs->unk_44; }
static HeapID ov01_021F1478(Unk021F1348 *a0){ return a0->unk0; }
static void ov01_021F147C(Unk021F1348 *a0){ a0->unk18 = NARC_New(NARC_a_1_0_3, ov01_021F1478(a0)); }  // VERIFY narc id
static void ov01_021F1490(Unk021F1348 *a0){ NARC_Delete(a0->unk18); }
u32 ov01_021F149C(void *a0,int a1){ return NARC_GetMemberSize(((Unk021F1348*)a0)->unk18,a1); }
void ov01_021F14A8(void *a0,int a1,void *a2){ NARC_ReadWholeMember(((Unk021F1348*)a0)->unk18,a1,a2); }
void *ov01_021F14B4(void *a0,int a1,int a2){ Unk021F1348 *c=a0; u32 sz=NARC_GetMemberSize(c->unk18,a1); void *b=ov01_021F141C(c,sz,a2); NARC_ReadWholeMember(c->unk18,a1,b); return b; }
static void ov01_021F14DC(Unk021F1348 *a0){ int n=a0->unk4; Unk021F1348_slot *s=a0->unk14; while(n--){ov01_021F15A0(s);s++;} }
static void ov01_021F14F4(Unk021F1348 *a0,int a1){ Unk021F1348_tmpl *t=ov01_021F15C4(a1); UnkOv01_021FFECC *o=t->ctor(a0); Unk021F1348_slot *s=ov01_021F1560(a0); ov01_021F15AC(s,a1,o); }
```

## DRAFT 2 — functions ov01_021F151C .. ov01_021F17F0 (drafter B)
See drafter B output; key bodies (reconcile field names to unified struct):
```c
static void ov01_021F151C(Unk021F1348 *a0, Unk021F1348_slot *a1){ const Unk021F1348_tmpl *e=ov01_021F15C4(a1->id); e->dtor(a1->obj); ov01_021F15A0(a1); }
static void ov01_021F1538(Unk021F1348 *a0){ int n=a0->unk4; Unk021F1348_slot *s=a0->unk14; if(!n)return; do{ if(!ov01_021F15B4(s)) ov01_021F151C(a0,s); s++; }while(--n); }
static Unk021F1348_slot *ov01_021F1560(Unk021F1348 *a0){ int n=a0->unk4; Unk021F1348_slot *s=a0->unk14; if(!n){GF_AssertFail();return NULL;} do{ if(ov01_021F15B4(s)==1)return s; s++; }while(--n); GF_AssertFail(); return NULL; }
static Unk021F1348_slot *ov01_021F1588(Unk021F1348 *a0,int id){ int n=a0->unk4; Unk021F1348_slot *s=a0->unk14; if(!n)return NULL; do{ if(s->id==id)return s; s++; }while(--n); return NULL; }
static void ov01_021F15A0(Unk021F1348_slot *s){ s->id=0x17; s->obj=NULL; }
static void ov01_021F15AC(Unk021F1348_slot *s,int id,void *o){ s->id=id; s->obj=o; }
static int ov01_021F15B4(Unk021F1348_slot *s){ return s->id==0x17?1:0; }
static const Unk021F1348_tmpl *ov01_021F15C4(int id){ const Unk021F1348_tmpl *e=ov01_02208C5C; u32 c=e->id; if(c==0x17){GF_AssertFail();return NULL;} while(1){ if(c==(u32)id)return e; e++; c=e->id; if(c==0x17)break; } GF_AssertFail(); return NULL; }
static void ov01_021F15EC(Unk021F1348 *a0){ a0->unk1c=sub_020689C8(a0->unk0,a0->unk8); }
static void ov01_021F15FC(Unk021F1348 *a0){ if(a0->unk1c){sub_020689F8(a0->unk1c);a0->unk1c=NULL;} }
static void ov01_021F1610(Unk021F1348 *a0){ if(a0->unk1c)sub_02068BAC(a0->unk1c); }
void *ov01_021F1620(FieldSystem *fs,const UnkOv01_02209280 *a1,VecFx32 *a2,int a3,UnkOv01_021FFF5C *a4,int a5){ void *r=sub_02068B0C(((Unk021F1348*)fs)->unk1c,a1,a2,a3,a4,a5); GF_ASSERT(r); return r; }  // hdr return is void; verify
void ov01_021F1640(int a0){ sub_02068B48(a0); }
static void ov01_021F1648(Unk021F1348 *a0,int heapID,u16 count,u16 a3,u16 a4,u16 a5,u32 ex0,u32 ex1){ Unk021F1648_obj *obj=(Unk021F1648_obj*)ov01_021F1430(a0,0x24,0,0); a0->unk20=obj; obj->unk0=heapID; obj->unk4=count; obj->unk6=a3; obj->unk8=a4; obj->unkA=a5; obj->unk10=ov01_021FC4C4(heapID,0x44,ex0,a3); obj->unk14=ov01_021FC4C4(heapID,0x45,ex1,a4); obj->unk18=GF3dGfxRawResMan_Create(a5,heapID); ov01_021F17BC(a0,obj,count); /*scene*/ int sc=count; ov01_021F1478(a0); obj->unkC=sub_020237EC(&sc); }  // NOTE: arg packing of ov01_021F1648 (u16s + 2 u32s) needs asm verification
static void ov01_021F16B8(Unk021F1348 *a0){ Unk021F1648_obj *o=a0->unk20; if(!o)return; sub_02023874(o->unkC); ov01_021F17F0(o); ov01_021FC520(o->unk10); ov01_021FC520(o->unk14); GF3dGfxRawResMan_Destroy(o->unk18); ov01_021F1448((UnkOv01_021FFECC*)o); a0->unk20=NULL; }
void *ov01_021F16EC(Unk021F1348 *a0,int a1,VecFx32 *a2){ struct{void *unkC;int unk4;VecFx32 pos;VecFx32 scale;}p; p.unkC=a0->unk20->unkC; p.unk4=a1; p.pos=*a2; p.scale=ov01_02206988; void *r=sub_02023D44(&p); GF_ASSERT(r); if(r){ NNS_G3dMdlSetMdlFogEnableFlagAll(sub_02023F90(r),1); ov01_021EA3B0(sub_02023F90(r)); } return r; }
void *ov01_021F1740(Unk021F1348 *a0,int a1,VecFx32 *a2){ int slot=(int)ov01_021F18A8(a0->unk20,a1); return ov01_021F16EC(a0,slot,a2); }
void *ov01_021F1758(Unk021F1348 *a0,int a1,int a2,int a3,int a4,int a5,const void *a6){ void *anim[4]; const void *a6c; GF_3DGfxRawResObj *resObj; NNSG3dResTex *tex; Unk021F1648_obj *o=a0->unk20; void *t1=ov01_021FC5A4(o->unk10,a2); void *t2=ov01_021FC5A4(o->unk14,a3); void *r; sub_02026E18(t2,anim); resObj=GF3dGfxRawResMan_GetObjById(o->unk18,a4); GF_ASSERT(resObj); tex=GF3dGfxRawResObj_GetTex(resObj); if(a5==1)resObj=NULL; a6c=a6; r=ov01_021F1824(o,a1,t1,anim,tex,resObj,a6c); GF_ASSERT(r); return r; }  // local-var order: anim[4] first (highest sp), then a6c, resObj, tex
static void ov01_021F17BC(Unk021F1348 *a0,Unk021F1648_obj *obj,int count){ /*0x28 backing*/ void *slots=ov01_021F141C(a0,count*0x28,0); obj->unk20=slots; Unk021F1648_InnerSlot *idx=ov01_021F141C(a0,count*8,0); obj->unk1c=idx; while(count--){ idx->id=0xf; idx->obj=slots; idx++; slots=(u8*)slots+0x28; } }
static void ov01_021F17F0(Unk021F1648_obj *obj){ ov01_021F1448(obj->unk1c); ov01_021F1448(obj->unk20); }
```

## DRAFT 3 — functions ov01_021F1804 .. ov01_021F1AD4 (drafter C)
See drafter C output; key bodies (reconcile `Unk021F1348_State`→`Unk021F1648_obj`):
```c
static void ov01_021F1804(Unk021F1648_obj *o,int id){ u16 n=o->unk4; Unk021F1648_InnerSlot *s=o->unk1c; while(n--){ if(s->id==id){s->id=0xf;return;} s++; } GF_AssertFail(); }
static void *ov01_021F1824(Unk021F1648_obj *o,int id,void *a2,void *a3,NNSG3dResTex *a4,GF_3DGfxRawResObj *a5,void *a6){
    u16 n=o->unk4; Unk021F1648_InnerSlot *slots=o->unk1c, *s; void *obj; n_find: s=slots; while(n--){ if(s->id==id)return s->obj; s++; }
    obj=NULL; s=slots; n=o->unk4; while(n--){ if(s->id==0xf){s->id=id; obj=s->obj; break;} s++; } GF_ASSERT(obj);
    memset(obj,0,0x28); *(void**)obj=a2; { u32 *src=a3,*dst=(u32*)((u8*)obj+0xc); *dst++=*src++; *dst=*src; } *(NNSG3dResTex**)((u8*)obj+4)=a4;
    if(a5){ *(u32*)((u8*)obj+0x1c)=GF3dGfxRawResObj_GetTexKey(a5); *(u32*)((u8*)obj+0x20)=GF3dGfxRawResObj_GetTex4x4Key(a5); *(u32*)((u8*)obj+0x24)=GF3dGfxRawResObj_GetPlttKey(a5); }
    *(void**)((u8*)obj+8)=a6; return obj; }  // two count vars (n + reload); ldmia/stmia pair copy at +0xc
static void *ov01_021F18A8(Unk021F1648_obj *o,int id){ u16 n=o->unk4; Unk021F1648_InnerSlot *s=o->unk1c; while(n--){ if(s->id==id)return s->obj; s++; } GF_AssertFail(); return NULL; }
void ov01_021F18C8(Unk021F1348 *a0,int a1){ ov01_021F1804(a0->unk20,a1); }
void ov01_021F18D4(Unk021F1348 *a0,int a1,int a2){ ov01_021FC5CC(a0->unk20->unk10,a1,a0->unk18,a2,FALSE); }
void *ov01_021F18F0(Unk021F1348 *a0,int a1){ return ov01_021FC5A4(a0->unk20->unk10,a1); }
void ov01_021F18FC(Unk021F1348 *a0,int a1){ ov01_021FC588(a0->unk20->unk10,a1); }
void ov01_021F1908(Unk021F1348 *a0,int a1,int a2){ ov01_021FC5CC(a0->unk20->unk14,a1,a0->unk18,a2,FALSE); }
void ov01_021F1924(Unk021F1348 *a0,int a1){ ov01_021FC588(a0->unk20->unk14,a1); }
void ov01_021F1930(Unk021F1348 *a0,int a1,int a2,BOOL a3){ Unk021F1648_obj *st=a0->unk20; void *d=ov01_021F14B4(a0,a2,TRUE); GF_ASSERT(GF3dGfxRawResMan_AllocObjAndKeys(st->unk18,d,a1,a3,*(HeapID*)a0)); ov01_021F197C(a0,a1,st->unk18); }
void ov01_021F1970(Unk021F1348 *a0,int a1){ GF3dGfxRawResMan_FreeObjById(a0->unk20->unk18,a1); }
static void ov01_021F197C(Unk021F1348 *a0,int a1,GF_3DGfxRawResMan *a2){ struct{int unk0;int id;GF_3DGfxRawResMan*man;}*w=ov01_021F141C(a0,0xc,TRUE); w->unk0=1; w->id=a1; w->man=a2; GF_ASSERT(SysTask_CreateOnVBlankQueue(ov01_021F19B4,w,0xff)); SysTask_CreateOnVWaitQueue(ov01_021F19D0,w,0xff); }
static void ov01_021F19B4(SysTask *t,void *d){ /*work*/ GF3dGfxRawResMan_LoadObjTexById(((work*)d)->man,((work*)d)->id); ((work*)d)->unk0=1; SysTask_Destroy(t); }
static void ov01_021F19D0(SysTask *t,void *d){ if(((work*)d)->unk0==1){ GF3dGfxRawResMan_FreeObjVramAndSecondaryHeaderById(((work*)d)->man,((work*)d)->id); ov01_021F1448((UnkOv01_021FFECC*)d); SysTask_Destroy(t); } }
void ov01_021F19F4(void *a0,UnkOv01_021FFECC_sub *a1,int a2,int a3,int a4){ Unk021F1348 *o=a0; sub_020696C4(a1,a2,o->unk18,a3,o->unk0,a4); sub_02069714(a1); }
void ov01_021F1A18(void *a0,void *a1,int a2,int a3,BOOL a4){ Unk021F1348 *o=a0; sub_020697DC(a1,a2,o->unk18,a3,o->unk0,a4); }
void ov01_021F1A34(void *a0,void *a1,void *a2,void *a3,void *a4){ sub_02069894(a1,a2,a3,a4,*(HeapID*)a0); }
void ov01_021F1A48(void *a0,NNSG3dRenderObj *a1,NNSG3dResMdl **a2,NNSG3dResFileHeader **a3){ NNSG3dResTex *tex=NNS_G3dGetTex(*a3); if(tex&&!GF3dRender_ResTexIsLoaded(tex)){ DC_FlushRange(*a3,(*a3)->fileSize); GF_ASSERT(NNS_G3dResDefaultSetup(*a3)); } *a2=NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*a3),0); GF_ASSERT(a2); NNS_G3dRenderObjInit(a1,*a2); }
void ov01_021F1AB8(void *a0,int a1,int a2,NNSG3dRenderObj *a3,NNSG3dResMdl **a4,NNSG3dResFileHeader **a5){ *a5=(NNSG3dResFileHeader*)ov01_021F14B4(a0,a1,a2); ov01_021F1A48(a0,a3,a4,a5); }
NNSG3dResTex *ov01_021F1AD4(Unk021F1348 *a0,int a1){ GF_3DGfxRawResObj *o=GF3dGfxRawResMan_GetObjById(a0->unk20->unk18,a1); GF_ASSERT(o); NNSG3dResTex *tex=NULL; if(o)tex=GF3dGfxRawResObj_GetTex(o); return tex; }
```

## Deduped forward-decl / extern list (union across drafters; verify return types vs use)
```c
// imports (declare extern; correct types by use)
NARC_New/_Delete/_ReadWholeMember/_GetMemberSize; Heap_Alloc/_AllocAtEnd/_Free; memset; GF_AssertFail;
MapObject_GetFieldSystem; DC_FlushRange;
sub_020237EC/_02023874/_02023D44/_02023F90/_02026E18; ov01_021EA3B0;
sub_020689C8/_020689F8/_02068B0C/_02068B48/_02068BAC; sub_020696C4/_02069714/_020697DC/_02069894;
GF3dGfxRawResMan_Create/_Destroy/_AllocObjAndKeys/_FreeObjById/_GetObjById/_LoadObjTexById/_FreeObjVramAndSecondaryHeaderById;
GF3dGfxRawResObj_GetTex/_GetTexKey/_GetTex4x4Key/_GetPlttKey; GF3dRender_ResTexIsLoaded;
ov01_021FC4C4/_021FC520/_021FC588/_021FC5A4/_021FC5CC (sibling cluster, still asm — local extern);
NNS_G3dRenderObjInit/_ResDefaultSetup/_MdlSetMdlFogEnableFlagAll/_GetMdlSet/_GetTex/_GetMdlByIdx;
SysTask_CreateOnVBlankQueue/_CreateOnVWaitQueue/_Destroy;
extern const VecFx32 ov01_02206988; extern const Unk021F1348_tmpl ov01_02208C5C[];
```
