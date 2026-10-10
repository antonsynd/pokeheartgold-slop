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
undefined4 OverlayManager_GetArgs();
undefined4 func_0x0222d844() __asm__("sub_0222D844");
undefined4 ov47_02258A80();
undefined4 func_0x0222a330() __asm__("sub_0222A330");
undefined4 OverlayManager_GetData();
undefined4 func_0x0222a520() __asm__("sub_0222A520");
undefined4 func_0x0222a4a8() __asm__("sub_0222A4A8");
undefined4 ov47_022593A0();
undefined4 BeginNormalPaletteFade();
undefined4 IsPaletteFadeFinished();
extern undefined ov47_02259FA8;

undefined4 ov47_02258898(undefined4 param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = OverlayManager_GetData();
  iVar2 = OverlayManager_GetArgs(param_1);
  switch(*param_2) {
  case 0:
    BeginNormalPaletteFade(0,1,1,0,6,1,0x81);
    func_0x0222a520(*(undefined4 *)(iVar2 + 4),1);
    *param_2 = *param_2 + 1;
    break;
  case 1:
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 == 1) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 2:
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 == 1) {
      iVar3 = func_0x0222a330(*(undefined4 *)(iVar2 + 4));
      if (iVar3 == 1) {
        func_0x0222a4a8(*(undefined4 *)(iVar2 + 4));
        *param_2 = *param_2 + 1;
        break;
      }
      iVar3 = func_0x0222d844();
      if (iVar3 == 1) {
        *param_2 = *param_2 + 1;
        break;
      }
    }
    iVar2 = (**(code **)(&ov47_02259FA8 + *(int *)(iVar2 + 8) * 4))
                      (iVar1 + 0x178,iVar1 + 0x144,iVar1,iVar1 + 0x268,iVar2,0x81);
    if (iVar2 == 1) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 3:
    BeginNormalPaletteFade(0,0,0,0,6,1,0x81);
    *param_2 = *param_2 + 1;
    break;
  case 4:
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 == 1) {
      ov47_022593A0(iVar1 + 0x268);
      return 1;
    }
  }
  ov47_02258A80(iVar1);
  return 0;
}

