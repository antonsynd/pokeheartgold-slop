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
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 ov41_02247288();
undefined4 HBlankInterruptDisable();
undefined4 ov41_02248F18();
undefined4 Heap_Create();
undefined4 ov41_02248E84();
undefined4 sub_020210BC();
undefined4 ov41_02247334();
undefined4 func_0x020183f0() __asm__("sub_020183F0");
undefined4 ov41_02245EA0();
undefined4 ov41_022474D4();
undefined4 Main_SetVBlankIntrCB();
undefined4 ov41_02247240();
undefined4 ov41_022499B4();
undefined4 OverlayManager_CreateAndGetData();
undefined4 ov41_02247480();
undefined4 OverlayManager_GetArgs();
undefined4 ov41_0224765C();
undefined4 sub_02021148();
undefined4 AllocWindows();
undefined4 YesNoPrompt_Create();
undefined4 Sound_SetSceneAndPlayBGM();

undefined4 ov41_02246DE0(undefined4 param_1)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  Heap_Create(3,0xd,0x20000);
  Heap_Create(3,0xe,0x40000);
  iVar1 = OverlayManager_CreateAndGetData(param_1,0x6f0,0xd);
  func_0x020e5b44(iVar1,0,0x6f0);
  Main_SetVBlankIntrCB(0x2247479,iVar1);
  HBlankInterruptDisable();
  puVar2 = (undefined4 *)OverlayManager_GetArgs(param_1);
  *(undefined4 *)(iVar1 + 0x6dc) = puVar2[3];
  if (puVar2[8] == 0) {
    uVar3 = 0;
  }
  else {
    uVar3 = func_0x020183f0();
  }
  *(undefined4 *)(iVar1 + 0x6ec) = uVar3;
  sub_020210BC();
  sub_02021148(4);
  ov41_02248E84(puVar2[2],iVar1 + 0x184);
  ov41_02247240(iVar1);
  ov41_022499B4(iVar1 + 0x35c,0x2cf,0xd);
  uVar3 = ov41_02245EA0(700,0xd);
  *(undefined4 *)(iVar1 + 0x364) = uVar3;
  ov41_02247288(iVar1,*puVar2,10,0);
  ov41_02247334(iVar1);
  ov41_02247480(iVar1,0);
  ov41_022474D4(iVar1);
  ov41_0224765C(iVar1,puVar2[3]);
  ov41_02248F18(iVar1 + 0x498,iVar1 + 0x3f4,iVar1 + 0x368,iVar1,iVar1 + 0x568,1);
  uVar3 = YesNoPrompt_Create(0xd);
  *(undefined4 *)(iVar1 + 0x6b8) = uVar3;
  uVar3 = AllocWindows(0xd,1);
  *(undefined4 *)(iVar1 + 0x6bc) = uVar3;
  *(undefined4 *)(iVar1 + 0x6b0) = 0;
  Sound_SetSceneAndPlayBGM(0x35,0,0);
  return 1;
}

