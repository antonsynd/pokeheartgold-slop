# Handoff: decomp `asm/overlay_01_02203A18.s` → matching `src/overlay_01_02203A18.c`

**Goal:** byte-for-byte match (objdiff per-function **and** `chiri pkg -- compare` SHA1).
13 functions, ~464 insn, 156 rodata. Overlay (overlay_80? no — **overlay_01**, field-effect family). It's a sparkle/beam field-effect that streams a texture animation via VRAM transfers. main.lsf line 558: flip `asm/overlay_01_02203A18.o` → `src/overlay_01_02203A18.o`.

## Setup
```bash
cd /Users/anton/Documents/github/pokeheartgold-slop
pkill -f 'make.*heartgold\|mwccarm\|mwldarm\|mwasmarm' 2>/dev/null; sleep 1
cp build/heartgold.us/overlay_01/overlay_01_02203A18.o /tmp/ov_asm.o   # reference
# write src/overlay_01_02203A18.c, flip main.lsf, then:
chiri pkg -- build --target main --no-compare   # timeout 1200000; kill stale mwcc first
python3 tools/decomp_harness/objdiff.py /tmp/ov_asm.o build/heartgold.us/src/overlay_01_02203A18.o
chiri pkg -- compare   # AUTHORITATIVE
```
This is the SAME field-effect family as the matched `src/overlay_01_021FF854.c`, `021FF464.c`, `021FFC0C.c`, `022051EC.c` — **read one of those first** as the template (manager/spawner/template/callback shape, MapObjectFlagBits cast, the `sub_02023F70()/0x1000` idiom, etc.).

## Manager struct (8 bytes)
`ov01_021F1430(a0, 8, 0, 0)` → `{void *unk0; int unk4;}`. Ctor sets `unk0=a0; unk4=0`.

## Work struct (~0x68, the per-instance, template size field = 0x68)
Derive precisely from accesses; provisional layout:
```
0x00 int    unk0    // Cb2 FSM state (jump table 0..3)
0x04 int    unk4    // counter (Cb2 case 2: ++ then ==2)
0x08 u32    unk8    // MapObject_GetID
0x0C u32    unkC    // MapObject_GetMapID
0x10 int    unk10   // (Cb2 DC0 reads ==1 guard)
0x14 u32    unk14   // set to 1 (Cb2 case 2)
0x18 fx32   unk18   // offset x  (DC0 adds to pos)
0x1C fx32   unk1C   // offset y/z (case0 += unk28; DC0)
0x20 fx32   unk20   // offset z  (DC0)
0x24 u16    unk24   // anim frame counter (DF8)
0x26 u16    unk26   // anim row index   (DF8)
0x28 fx32   unk28   // = 6<<0xc; decremented case0
0x30 ...     // Data copied here (0xc bytes) from sub_02068D98: {renderer@0x30, ?@0x34, MapObject@0x38}
0x38 void*  unk38   // MapObject (Data+8)
0x3C Sprite* unk3C  // ov01_02203B98 effect handle
0x40 ...     // anim sub-struct, sub_02026E18(&work->unk40) inits it; used by DF8
0x50 void*  unk50   // NNS_G3dGetTex result
0x54 void*  unk54   // ov01_021F14B4 resource  (freed in CA0)
0x58 void*  unk58   // ov01_021F14B4 resource  (freed in CA0)
0x5C u32    unk5C   // vram key (sub_02020910)
0x60 u32    unk60   // vram key (sub_020209AC)
0x64 u16    unk64   // =0
0x66 u16    unk66   // =0
```
VERIFY every offset against the asm `ldr/str [r4,#off]` — this is provisional.

## Callee signatures
Available in headers (include directly or local-extern):
- `void *ov01_021F1430(void*,int,int,int)`, `void ov01_021F1448(void*)`, `<mgr>* ov01_021F1450(FieldSystem*,int)`, `FieldSystem* ov01_021F146C(LocalMapObject*)`, `void* ov01_021F1620(FieldSystem*, const Template*, VecFx32*, int, Data*, int)`, `void ov01_021F1640(void*)`, `void* ov01_021F1740(FieldSystem*,int,VecFx32*)`, `void ov01_021F1758(void*,int,int,int,int,int,const void*)`, `ov01_021F18C8/18D4/18FC/1908/1924/1930/1970` (same as siblings).
- `void VEC_Add(const VecFx32*,const VecFx32*,VecFx32*)`, `u32 MapObject_GetPriority(LocalMapObject*)`, `MapObject_GetID/GetMapID`, `MapObject_CopyPositionVector/CopyFacingVector`.
- `void TaskManager_Call(TaskManager*, TaskFunc, void*)`, `u32* TaskManager_GetStatePtr(TaskManager*)`, `void* TaskManager_GetEnvironment(TaskManager*)`.
- `u32 sub_020209AC(void*model,u8)`, `u32 sub_02020910(void*,u8)`, `void* sub_02020838(void*,u8)`, `void* sub_02020888(void*,u8)`, `BOOL GF_CreateNewVramTransferTask(NNS_GFD_DST_TYPE,u32,void*,u32)`, `void sub_0205F990(LocalMapObject*,VecFx32*)`, `void sub_0205F9B0(LocalMapObject*,VecFx32*)`, `BOOL sub_0205F0A8(LocalMapObject*,u32,u32)`, `sub_02068D90/D98/DA8/DB8`, `sub_02023DA4/E50/EA4`, `PlaySE(u16)`.
NEEDS local extern (infer from usage):
- `void* ov01_021F14B4(void* a0, int a1, int a2)`  // a0=work->unk30, a1=id from table, a2=1
- `void* ov01_021F1AD4(void* a0, int a1)`           // (work->unk30, 0xd) → r5 (a model/node)
- `void* sub_02023F90(void* a0)`                    // (effect) → model
- `void sub_02026E18(void* a0)`                     // init anim substruct &work->unk40
- `void NNS_G3dMdlSetMdlFogEnableFlagAll(void* mdl, int flag)`

## Functions (13) — order must match asm
1. `ov01_02203A18(void*)` ctor: mgr=1F1430(a0,8,0,0); mgr->unk0=a0; mgr->unk4=0; ov01_02203B28(mgr); return mgr. **PUBLIC**
2. `ov01_02203A38(mgr)` dtor: ov01_02203B70(mgr); ov01_021F1448(mgr). **PUBLIC**
3. `ov01_02203A48(LocalMapObject*, int a1)` static: fs=146C; mgr=1450(fs,0x12); if(mgr->unk4) return 0; mgr->unk4=1; CopyPositionVector(&pos@sp+0x14); CopyFacingVector(&facing@sp+8); VEC_Add(&pos,&facing,&pos); data@sp+0x20={fs, mgr, mapObject}; return ov01_021F1620(fs, &ov01_02209518, &pos, a1, &data, MapObject_GetPriority(mapObject)+1). NOTE pos.y zeroed (sp+0xc=0) before VEC_Add — verify.
4. `ov01_02203AB4(FieldSystem*, a1, a2)` **PUBLIC** spawner: env=Heap_AllocAtEnd(4,8); env->unk0=a2; env->unk4=a1; TaskManager_Call(fs->[0x10], ov01_02203AD8, env).  (fs->[0x10] is a TaskManager* field — model fs as opaque or use the real FieldSystem accessor.)
5. `ov01_02203AD8(TaskManager*)` static task: state=GetStatePtr, env=GetEnvironment; switch(*state){ 0: ov01_02203A48(env->unk4, env->unk0); (*state)++; break; 1: if(ov01_021F146C(env->unk4)→1450(0x12)->unk4==0){Heap_Free(env); return 1;} } return 0.
6. `ov01_02203B28(mgr)` static setup: 18D4(unk0,0xc,0x82); 1908(unk0,0xc,0x8c); 1930(unk0,0xd,0x1c,1); 1758(unk0,0xe,0xc,0xc,0xd,0, ov01_0220952C).
7. `ov01_02203B70(mgr)` static teardown: 18FC(unk0,0xc); 1924(unk0,0xc); 1970(unk0,0xd); 18C8(unk0,0xe).
8. `ov01_02203B98(void* a0, VecFx32* a1)` static: e=ov01_021F1740(a0,0xe,a1); NNS_G3dMdlSetMdlFogEnableFlagAll(sub_02023F90(e),0); return e.
9. `ov01_02203BB4(void* param0, Work* work)` **Cb1 init** — THE BIG ONE (~50 lines):
   - work->unk30..0x3c = *sub_02068D98(param0) (copy 0xc bytes); work->unk8=GetID(work->unk38); work->unkC=GetMapID(work->unk38); work->unk28=6<<0xc;
   - i = sub_02068D90(param0)<<3 (byte index into ov01_02209544 id-pair table);
   - work->unk58 = ov01_021F14B4(work->unk30, ov01_02209544[i+0], 1); work->unk54 = ov01_021F14B4(work->unk30, ov01_02209544[i+1], 1);
   - sub_02026E18(&work->unk40); work->unk50 = NNS_G3dGetTex(work->unk58); work->unk64=0; work->unk66=0;
   - node = ov01_021F1AD4(work->unk30, 0xd); work->unk60 = sub_020209AC(node,0); work->unk5C = sub_02020910(node,0);
   - GF_CreateNewVramTransferTask(0, work->unk5C, sub_02020838(work->unk50,0), 0x...) ; second GF_CreateNewVramTransferTask(1, (node->[0x2c]<<0x10>>0xd), sub_02020888(work->unk50,0), 0x20) — RE-READ asm lines ~289-307 for exact args;
   - sub_02068DB8(param0,&vec@sp); work->unk3c=ov01_02203B98(work->unk30, &vec); sub_02023EA4(work->unk3c, 0); PlaySE(SEQ_SE_DP_DECIDE); return 1.
10. `ov01_02203CA0(param0, work)` Cb1: sub_02023DA4(work->unk3c); Heap_Free(work->unk54); Heap_Free(work->unk58).
11. `ov01_02203CB8(param0, work)` **Cb2** (~70 lines): sub_0205F0A8(work->unk38, work->unk8, work->unkC) assert; CopyPositionVector(&p@sp+0x24); CopyFacingVector(&f@sp+0x18); sub_0205F990(&a@sp+0xc); sub_0205F9B0(&b@sp); result@sp+0x30 = p+f+a+b componentwise, z gets +2<<0x10 then +(that>>5) — TRANSCRIBE lines 368-396 carefully; 4-state jump table @work->unk0 (case0: sub_02023EA4(unk3c,1) + unk1c+=unk28 countdown; case1: ov01_02203DF8(&work->unk40); case2: unk4++ ==2; case3: work->unk34->[4]=0 + ov01_021F1640(param0) return); sub_02068DA8(param0, &result).
12. `ov01_02203DC0(param0, work)` Cb2: if(work->unk10!=1){ sub_02068DB8(param0,&vec@sp); vec.x+=unk18; vec.y+=unk1c; vec.z+=unk20; sub_02023E50(work->unk3c,&vec); }.
13. `ov01_02203DF8(void* anim)` static: anim frame stepper — unk24/unk26 (u16) vs a short table at work->unk0[] and work->unkC; sub_02020838 + GF_CreateNewVramTransferTask. RE-READ lines 506-544.

## rodata (declaration order; all `static const`, used → no dead-data issue)
```c
static const Template ov01_02209518 = { 0x68, ov01_02203BB4, ov01_02203CA0, ov01_02203CB8, ov01_02203DC0 };
static const u32 ov01_0220952C[] = { 0, 1, 0, 0, 0, 2 };   // a6 arg to ov01_021F1758
static const u32 ov01_02209544[] = { 2,0x96, 3,0x97, 4,0x98, 5,0x99, 6,0x9A, 7,0x9B, 8,0x9C,
                                     9,0x9D, 0xA,0x9E, 0xB,0x9F, 0xC,0xA0, 0xD,0xA1, 0xE,0xA2, 0xF,0xA3 };
```

## Gotchas (from this session's patterns — see tools/decomp_harness/insights.md)
- `VecFx32 vec = { 0, 0, 0 };` (brace init) for base-register zeroing; field-by-field gives sp-direct (off by 2 bytes).
- Two callee-saved locals: **later-declared gets the lower register** — swap decl order to fix r6/r7 swaps.
- u8 loop counters narrow on `++`; match the asm's `lsls#18/lsrs#18`.
- `sub_02023F70(x)/0x1000` is the signed-div-by-0x1000 idiom (`asr#0xb; lsr#0x14; add; asr#0xc`).
- Overlay trailing `.balign 4,0` pad is benign (objdiff `.text -N`); only `chiri pkg -- compare` is authoritative.
- If a flag/enum-typed param (e.g. MapObjectFlagBits) takes a literal, cast it: `(MapObjectFlagBits)(2<<8)`.

## On success
Update `progress.json` (move from failed→matched), `patterns.py add` any new trick, `triage.py --rebuild --top 0`, `./tools/build_attestation.sh`, then commit `src/...c` + `main.lsf` + harness + `build_attestation.json` (commit msg footer per CLAUDE.md). Remove the `overlay_01_02203A18.s` entry from progress.json `failed`.
