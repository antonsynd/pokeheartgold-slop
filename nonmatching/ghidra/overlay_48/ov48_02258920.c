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
undefined4 OverlayManager_GetData();
undefined4 ov48_02259050();
undefined4 func_0x0222a330() __asm__("sub_0222A330");
undefined4 func_0x0222d844() __asm__("sub_0222D844");
undefined4 func_0x0222a4a8() __asm__("sub_0222A4A8");
undefined4 ov48_02259030();
undefined4 func_0x0222a520() __asm__("sub_0222A520");
undefined4 IsPaletteFadeFinished();
undefined4 OverlayManager_GetArgs();
undefined4 BeginNormalPaletteFade();
undefined4 ov48_02258F64();

undefined4 ov48_02258920(undefined4 param_1,int *param_2)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  uVar1 = OverlayManager_GetData();
  iVar2 = OverlayManager_GetArgs(param_1);
  switch(*param_2) {
  case 0:
    BeginNormalPaletteFade(0,1,1,0,6,1,0x70);
    func_0x0222a520(*(undefined4 *)(iVar2 + 0xc),1);
    *param_2 = *param_2 + 1;
    break;
  case 1:
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 == 1) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 2:
    iVar3 = ov48_02258F64(uVar1);
    ov48_02259030(uVar1);
    iVar4 = func_0x0222a330(*(undefined4 *)(iVar2 + 0xc));
    if (iVar4 == 1) {
      func_0x0222a4a8(*(undefined4 *)(iVar2 + 0xc));
      iVar3 = 1;
    }
    iVar2 = func_0x0222d844();
    if (iVar2 == 1) {
      iVar3 = 1;
    }
    if (iVar3 == 1) {
      *param_2 = 5;
    }
    break;
  case 5:
    BeginNormalPaletteFade(0,0,0,0,6,1,0x70);
    *param_2 = *param_2 + 1;
    break;
  case 6:
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 == 1) {
      return 1;
    }
  }
  ov48_02259050(uVar1);
  return 0;
}

