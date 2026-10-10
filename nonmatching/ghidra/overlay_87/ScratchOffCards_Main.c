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
undefined4 ov87_021E66B8();
undefined4 ov87_021E64F8();
undefined4 ov87_021E5CEC();
undefined4 ov87_021E5B48();
undefined4 ov87_021E5AFC();
undefined4 ov87_021E6080();
undefined4 ov87_021E6668();
undefined4 ov87_021E6760();
undefined4 OverlayManager_GetData();
undefined4 ov87_021E725C();
undefined4 ov87_021E5E00();
undefined4 ov87_021E5C38();
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 ov87_021E65FC();

undefined4 ScratchOffCards_Main(undefined4 param_1,undefined4 *param_2)

{
  int iVar1;
  int iVar2;

  iVar1 = OverlayManager_GetData();
  switch(*param_2) {
  case 0:
    iVar2 = ov87_021E5AFC();
    if (iVar2 == 1) {
      ov87_021E725C(iVar1,param_2,1);
    }
    break;
  case 1:
    iVar2 = ov87_021E5B48();
    if (iVar2 == 1) {
      ov87_021E725C(iVar1,param_2,2);
    }
    break;
  case 2:
    iVar2 = ov87_021E5C38();
    if (iVar2 == 1) {
      ov87_021E725C(iVar1,param_2,3);
    }
    break;
  case 3:
    iVar2 = ov87_021E5CEC();
    if (iVar2 == 1) {
      if (*(byte *)(iVar1 + 0xe) < 3) {
        ov87_021E725C(iVar1,param_2,1);
      }
      else {
        *(undefined1 *)(iVar1 + 0xe) = 0;
        ov87_021E6760(iVar1);
        ov87_021E6668(iVar1);
        ov87_021E66B8(iVar1);
        ov87_021E725C(iVar1,param_2,4);
      }
    }
    break;
  case 4:
    iVar2 = ov87_021E5E00();
    if (iVar2 == 1) {
      ov87_021E725C(iVar1,param_2,5);
    }
    break;
  case 5:
    iVar2 = ov87_021E6080();
    if (iVar2 == 1) {
      if (*(byte *)(iVar1 + 0xe) < 3) {
        ov87_021E725C(iVar1,param_2,6);
      }
      else {
        ov87_021E725C(iVar1,param_2,7);
      }
    }
    break;
  case 6:
    iVar2 = ov87_021E64F8();
    if (iVar2 == 1) {
      ov87_021E725C(iVar1,param_2,4);
    }
    break;
  case 7:
    iVar2 = ov87_021E65FC();
    if (iVar2 == 1) {
      return 1;
    }
  }
  SpriteList_RenderAndAnimateSprites(*(undefined4 *)(iVar1 + 0x16c));
  return 0;
}

