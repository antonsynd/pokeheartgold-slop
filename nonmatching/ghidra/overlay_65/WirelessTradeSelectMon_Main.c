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
undefined4 ov65_0221C08C();
undefined4 IsPaletteFadeFinished();
undefined4 ov65_0221CCB0();
undefined4 ov65_0221C5E0();
undefined4 ov65_0221CD0C();
undefined4 BeginNormalPaletteFade();
undefined4 ov65_0221CB5C();
undefined4 OverlayManager_GetData();
undefined4 ov65_0221BFEC();
undefined4 ov65_0221D1C8();
undefined4 sub_0203A880();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 OverlayManager_Run();
undefined4 ov65_0221CC0C();
undefined4 ov65_0221DD34();
undefined4 ov65_0221E06C();
undefined4 OverlayManager_Delete();
undefined4 sub_020399FC();
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 ov65_0221F714();

undefined4
WirelessTradeSelectMon_Main(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;

  iVar1 = OverlayManager_GetData();
  iVar3 = *param_2;
  uVar4 = 0;
  if (iVar3 == 0) {
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 != 0) {
      *param_2 = 1;
      ov65_0221BFEC(iVar1);
    }
  }
  else if (iVar3 == 1) {
    switch(*(undefined4 *)(iVar1 + 0x54)) {
    case 0:
      uVar2 = ov65_0221C5E0();
      *(undefined4 *)(iVar1 + 0x54) = uVar2;
      break;
    case 1:
      uVar2 = ov65_0221CC0C();
      *(undefined4 *)(iVar1 + 0x54) = uVar2;
      break;
    case 2:
      BeginNormalPaletteFade(0,0,0,0,8,1,0x1a,param_4);
      *param_2 = 2;
      break;
    case 3:
      BeginNormalPaletteFade(0,0,0,0,8,1,0x1a,param_4);
      *(undefined4 *)(iVar1 + 0x54) = 4;
      break;
    case 4:
      iVar3 = IsPaletteFadeFinished();
      if (iVar3 != 0) {
        ov65_0221CD0C(iVar1);
        ov65_0221CCB0(iVar1);
        ov65_0221D1C8(*(undefined4 *)(iVar1 + 0x180));
        *(undefined4 *)(iVar1 + 0x50) = 1;
        *(undefined4 *)(iVar1 + 0x54) = 5;
        uVar2 = func_0x020f2998(*(undefined4 *)(iVar1 + 0x94),6);
        ov65_0221E06C(iVar1,uVar2);
      }
      break;
    case 5:
      iVar3 = OverlayManager_Run(*(undefined4 *)(iVar1 + 0x4c));
      if (iVar3 != 0) {
        OverlayManager_Delete(*(undefined4 *)(iVar1 + 0x4c));
        ov65_0221C08C(iVar1);
        *(undefined4 *)(iVar1 + 0x50) = 0;
        *(uint *)(iVar1 + 0x94) = (uint)*(byte *)(iVar1 + 0x20) + *(int *)(iVar1 + 0x48) * 6;
        ov65_0221CB5C(iVar1);
        ov65_0221DD34(*(undefined4 *)(iVar1 + 0x94),*(undefined4 *)(iVar1 + 0x344),0);
        sub_0203A880();
        *(undefined4 *)(iVar1 + 0x54) = 6;
      }
      break;
    case 6:
      BeginNormalPaletteFade(0,1,1,0,8,1,0x1a,param_4);
      *(undefined4 *)(iVar1 + 0x54) = 7;
      break;
    case 7:
      iVar3 = IsPaletteFadeFinished();
      if (iVar3 != 0) {
        *(undefined4 *)(iVar1 + 0x54) = 1;
      }
    }
  }
  else if ((iVar3 == 2) && (iVar3 = IsPaletteFadeFinished(), iVar3 != 0)) {
    uVar4 = 1;
  }
  if (*(int *)(iVar1 + 0x50) == 0) {
    ov65_0221F714(iVar1);
    SpriteList_RenderAndAnimateSprites(*(undefined4 *)(iVar1 + 0x1a0));
  }
  sub_020399FC(0x1a,*(undefined4 *)(iVar1 + 0x180));
  return uVar4;
}

