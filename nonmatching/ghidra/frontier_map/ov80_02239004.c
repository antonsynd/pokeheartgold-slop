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
undefined4 ov80_0222A7EC();
undefined4 ov80_0222ACA0();
undefined4 func_0x02007c48() __asm__("sub_02007C48");
undefined4 func_0x02229394() __asm__("sub_02229394");
undefined4 func_0x02228f24() __asm__("sub_02228F24");
undefined4 func_0x02227f48() __asm__("sub_02227F48");
undefined4 PaletteData_LoadNarc();
undefined4 func_0x02228010() __asm__("sub_02228010");
undefined4 func_0x02227ee0() __asm__("sub_02227EE0");
undefined4 func_0x0200e2b0() __asm__("sub_0200E2B0");
undefined4 func_0x02229a40() __asm__("sub_02229A40");
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 func_0x02229974() __asm__("sub_02229974");
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 func_0x0200cf6c() __asm__("sub_0200CF6C");
undefined4 NARC_New();
undefined4 func_0x022293b8() __asm__("sub_022293B8");
undefined4 func_0x02003d5c() __asm__("sub_02003D5C");
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 func_0x020d0524() __asm__("sub_020D0524");
undefined4 func_0x020d0634() __asm__("sub_020D0634");
undefined4 func_0x020d05c4() __asm__("sub_020D05C4");
undefined4 NARC_Delete();
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 Heap_Free();

void ov80_02239004(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  undefined1 *puVar7;
  undefined1 *puVar8;
  int iStack_28;
  int iStack_24;
  undefined1 auStack_20 [6];
  undefined1 uStack_1a;
  undefined1 uStack_18;
  undefined1 uStack_17;

  uVar2 = func_0x02228010(0x20,0x65);
  param_1[5] = uVar2;
  uVar2 = func_0x02227ee0(0x10,0x10,0x65);
  param_1[6] = uVar2;
  func_0x02229394(param_1 + 7);
  uVar2 = func_0x0200e2b0(param_1[0xe]);
  uVar3 = ov80_0222A7EC(param_3);
  uVar2 = func_0x02228f24(uVar2,param_1[1],0x20,uVar3,0,1,0x65);
  puVar8 = (undefined1 *)0x223d554;
  param_1[8] = uVar2;
  puVar7 = auStack_20;
  iVar6 = 0xb;
  do {
    uVar1 = *puVar8;
    puVar8 = puVar8 + 1;
    *puVar7 = uVar1;
    puVar7 = puVar7 + 1;
    iVar6 = iVar6 + -1;
  } while (iVar6 != 0);
  uStack_18 = ov80_0222ACA0(param_2,5);
  uStack_17 = ov80_0222ACA0(param_2,6);
  iVar6 = ov80_0222ACA0(param_2,0xc);
  if (iVar6 == 0) {
    uVar2 = func_0x0200cf6c(param_1[0xd]);
    uVar2 = func_0x022293b8(uVar2,*param_1,auStack_20,0x65);
    param_1[9] = uVar2;
  }
  iVar4 = ov80_0222ACA0(param_2,9);
  if (iVar4 != 0xffff) {
    uStack_17 = ov80_0222ACA0(param_2,9);
    auStack_20[1] = 2;
    auStack_20[3] = 1;
    auStack_20[4] = 8;
    uStack_1a = 1;
    if (iVar6 == 0) {
      uVar2 = func_0x0200cf6c(param_1[0xd]);
      uVar2 = func_0x022293b8(uVar2,*param_1,auStack_20,0x65);
      param_1[10] = uVar2;
    }
  }
  uVar2 = func_0x02229a40(0x80,0x65);
  param_1[0xb] = uVar2;
  uVar2 = func_0x02229974(0x80,0x65);
  param_1[0xc] = uVar2;
  func_0x02227f48(param_1[6],0x223d654);
  iVar6 = ov80_0222ACA0(param_2,0);
  uVar2 = ov80_0222ACA0(param_2,5);
  uVar3 = NARC_New(uVar2,0x65);
  uVar5 = ov80_0222ACA0(param_2,7);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar3,uVar5,*param_1,3,0,0,1,0x65);
  if (iVar6 == 0) {
    uVar5 = ov80_0222ACA0(param_2,8);
    PaletteData_LoadNarc(param_1[1],uVar2,uVar5,0x65,0,0x160,0);
  }
  else {
    uVar2 = ov80_0222ACA0(param_2,8);
    uVar2 = func_0x02007c48(uVar3,uVar2,&iStack_24,0x65);
    func_0x020d2894(*(undefined4 *)(iStack_24 + 0xc),*(undefined4 *)(iStack_24 + 8));
    func_0x020d0524();
    func_0x020d05c4(*(undefined4 *)(iStack_24 + 0xc),0x6000,0x2000);
    func_0x020d0634();
    Heap_Free(uVar2);
  }
  func_0x02003d5c(param_1[1],0,2,0,0,1);
  uVar2 = ov80_0222ACA0(param_2,6);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar3,uVar2,*param_1,3,0,0,1,0x65);
  iVar4 = ov80_0222ACA0(param_2,9);
  if (iVar4 != 0xffff) {
    uVar2 = ov80_0222ACA0(param_2,10);
    GfGfxLoader_LoadCharDataFromOpenNarc(uVar3,uVar2,*param_1,2,0,0,1,0x65);
    uVar2 = ov80_0222ACA0(param_2,9);
    GfGfxLoader_LoadScrnDataFromOpenNarc(uVar3,uVar2,*param_1,2,0,0,1,0x65);
    if (iVar6 != 0) {
      uVar2 = ov80_0222ACA0(param_2,0xb);
      uVar2 = func_0x02007c48(uVar3,uVar2,&iStack_28,0x65);
      func_0x020d2894(*(undefined4 *)(iStack_28 + 0xc),*(undefined4 *)(iStack_28 + 8));
      func_0x020d0524();
      func_0x020d05c4(*(undefined4 *)(iStack_28 + 0xc),0x4000,0x2000);
      func_0x020d0634();
      Heap_Free(uVar2);
    }
  }
  ScheduleBgTilemapBufferTransfer(*param_1,3);
  NARC_Delete(uVar3);
  return;
}

