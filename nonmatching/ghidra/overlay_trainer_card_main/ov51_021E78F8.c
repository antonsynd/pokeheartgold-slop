typedef unsigned char undefined;
typedef unsigned char undefined1;
typedef unsigned short undefined2;
typedef unsigned int undefined3;
typedef unsigned int undefined4;
typedef unsigned long long undefined8;
typedef unsigned char byte;
typedef signed char sbyte;
typedef unsigned short ushort;
typedef unsigned short word;
typedef unsigned int uint;
typedef unsigned int dword;
typedef unsigned int ulong;
typedef unsigned long long ulonglong;
typedef unsigned long long qword;
typedef long long longlong;
typedef unsigned char bool;
typedef int code();
typedef void *pointer;
typedef unsigned short wchar16;
#define true 1
#define false 0
#define CONCAT11(a, b) ((unsigned short)(((unsigned)(a) << 8) | (unsigned char)(b)))
#define CONCAT12(a, b) (((unsigned)(unsigned char)(a) << 16) | (unsigned short)(b))
#define CONCAT13(a, b) (((unsigned)(unsigned char)(a) << 24) | ((unsigned)(b) & 0xffffff))
#define CONCAT21(a, b) (((unsigned)(unsigned short)(a) << 8) | (unsigned char)(b))
#define CONCAT22(a, b) (((unsigned)(unsigned short)(a) << 16) | (unsigned short)(b))
#define CONCAT31(a, b) (((unsigned)(a) << 8) | (unsigned char)(b))
#define CONCAT44(a, b) (((unsigned long long)(unsigned)(a) << 32) | (unsigned)(b))
#define SUB41(x, n) ((unsigned char)((unsigned)(x) >> ((n) * 8)))
#define SUB42(x, n) ((unsigned short)((unsigned)(x) >> ((n) * 8)))
#define SUB81(x, n) ((unsigned char)((unsigned long long)(x) >> ((n) * 8)))
#define SUB84(x, n) ((unsigned)((unsigned long long)(x) >> ((n) * 8)))
#define ZEXT14(x) ((unsigned)(unsigned char)(x))
#define ZEXT24(x) ((unsigned)(unsigned short)(x))
#define ZEXT48(x) ((unsigned long long)(unsigned)(x))
#define SEXT14(x) ((int)(signed char)(x))
#define SEXT24(x) ((int)(short)(x))
#define SEXT48(x) ((long long)(int)(x))
#define CARRY4(a, b) ((unsigned)(a) + (unsigned)(b) < (unsigned)(a))
#define SCARRY4(a, b) ((((int)(a) + (int)(b)) < (int)(a)) != ((int)(b) < 0))
#define SBORROW4(a, b) ((((int)(a) - (int)(b)) > (int)(a)) != ((int)(b) < 0))
#define POPCOUNT(x) __builtin_popcount(x)
#define LZCOUNT(x) ((x) ? __builtin_clz(x) : 32)
undefined4 G2dRenderer_SetSubSurfaceCoords();
undefined4 SpriteTransfer_CreateExtPlttTransferTask();
undefined4 Create2DGfxResObjMan();
undefined4 NARC_New();
undefined4 G2dRenderer_Init();
undefined4 AddCellOrAnimResObjFromNarc();
undefined4 func_0x0200b150() __asm__("sub_0200B150");
undefined4 func_0x0200acf0() __asm__("sub_0200ACF0");
undefined4 func_0x020b78d4() __asm__("sub_020B78D4");
undefined4 AddCharResObjFromNarc();
undefined4 AddPlttResObjFromNarc();
undefined4 ov51_021E7D68();
extern uint uRam04000000 __asm__("sub_04000000");
extern undefined ov51_021E7FB8;
extern uint uRam04001000 __asm__("sub_04001000");
extern undefined ov51_021E7FC4;
extern undefined ov51_021E7FDC;
undefined4 GF_AssertFail();
undefined4 NARC_AllocAndReadWholeMember();
undefined4 func_0x020b7140() __asm__("sub_020B7140");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 Heap_Free();
undefined4 NARC_Delete();
undefined4 GfGfx_EngineBTogglePlanes();

void ov51_021E78F8(undefined4 *param_1)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 *puVar4;
  undefined *puVar5;
  undefined4 *puVar6;
  uint uVar7;
  undefined4 *puVar8;
  int iVar9;
  int iVar10;
  undefined1 auStack_64 [8];
  undefined4 auStack_5c [18];
  
  uRam04000000 = uRam04000000 & 0xffcfffef | 0x200010;
  uRam04001000 = uRam04001000 & 0xffcfffef | 0x10;
  ov51_021E7D68();
  func_0x020b78d4();
  func_0x0200b150(0,0x80,0,0x20,0,0x80,0,0x20,0x19);
  uVar2 = G2dRenderer_Init(0x21,param_1 + 1,0x19);
  *param_1 = uVar2;
  G2dRenderer_SetSubSurfaceCoords(param_1 + 1,0,0xe0000);
  puVar5 = &ov51_021E7FB8;
  iVar10 = 0;
  puVar8 = param_1;
  do {
    uVar2 = Create2DGfxResObjMan(*puVar5,iVar10,0x19);
    puVar8[0x4b] = uVar2;
    uVar2 = Create2DGfxResObjMan(*puVar5,iVar10,0x19);
    puVar8[0x4f] = uVar2;
    iVar10 = iVar10 + 1;
    puVar5 = puVar5 + 1;
    puVar8 = puVar8 + 1;
  } while (iVar10 < 4);
  puVar5 = &ov51_021E7FC4;
  auStack_5c[0] = 1;
  iVar9 = 0;
  auStack_5c[1] = 2;
  puVar4 = auStack_64;
  iVar10 = 8;
  do {
    uVar1 = *puVar5;
    puVar5 = puVar5 + 1;
    *puVar4 = uVar1;
    puVar4 = puVar4 + 1;
    iVar10 = iVar10 + -1;
  } while (iVar10 != 0);
  puVar8 = auStack_5c;
  puVar4 = auStack_64;
  puVar6 = param_1;
  do {
    uVar2 = AddCharResObjFromNarc(puVar6[0x4b],0x31,*puVar4,0,iVar9,*puVar8,0x19);
    puVar6[0x53] = uVar2;
    uVar2 = AddPlttResObjFromNarc(puVar6[0x4c],0x31,puVar4[1],0,iVar9,*puVar8,0x10,0x19);
    puVar6[0x54] = uVar2;
    uVar2 = AddCellOrAnimResObjFromNarc(puVar6[0x4d],0x31,puVar4[2],0,iVar9,2,0x19);
    puVar6[0x55] = uVar2;
    uVar2 = AddCellOrAnimResObjFromNarc(puVar6[0x4e],0x31,puVar4[3],0,iVar9,3,0x19);
    puVar6[0x56] = uVar2;
    func_0x0200acf0(puVar6[0x53]);
    SpriteTransfer_CreateExtPlttTransferTask(puVar6[0x54]);
    iVar9 = iVar9 + 1;
    puVar8 = puVar8 + 1;
    puVar4 = puVar4 + 4;
    puVar6 = puVar6 + 4;
  } while (iVar9 < 2);
  puVar6 = (undefined4 *)&ov51_021E7FDC;
  puVar8 = auStack_5c;
  iVar10 = 8;
  do {
    puVar8 = puVar8 + 2;
    uVar2 = *puVar6;
    uVar3 = puVar6[1];
    puVar6 = puVar6 + 2;
    *puVar8 = uVar2;
    puVar8[1] = uVar3;
    iVar10 = iVar10 + -1;
  } while (iVar10 != 0);
  uVar2 = NARC_New(0x31,0x19);
  uVar7 = 0;
  do {
    uVar3 = NARC_AllocAndReadWholeMember(uVar2,auStack_5c[uVar7 + 2],0x19);
    param_1[uVar7 + 0x7e] = uVar3;
    if (param_1[uVar7 + 0x7e] == 0) {
      GF_AssertFail();
    }
    else {
      iVar10 = func_0x020b7140(param_1[uVar7 + 0x7e],param_1 + uVar7 + 0x8e);
      if (iVar10 == 0) {
        Heap_Free(param_1[uVar7 + 0x8e]);
        GF_AssertFail();
      }
    }
    uVar7 = uVar7 + 1 & 0xff;
  } while (uVar7 < 0x10);
  NARC_Delete(uVar2);
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  return;
}

