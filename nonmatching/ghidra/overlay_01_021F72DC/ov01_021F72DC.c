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
typedef void code(void);
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
undefined4 sub_0205F40C(undefined4);
undefined4 sub_02064084(undefined4);
undefined4 MapObject_GetSpriteID(void);

undefined4 ov01_021F72DC(undefined4 param_1)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 uVar3;

  iVar1 = MapObject_GetSpriteID();
  if (iVar1 < 0xf9) {
    if (0xf7 < iVar1) goto LAB_021f737e;
    if (iVar1 < 99) {
      if (iVar1 < 0x61) {
        if (iVar1 < 1) {
          if (iVar1 == 0) goto LAB_021f737e;
        }
        else if (iVar1 == 0x15) goto LAB_021f737e;
      }
      else if ((iVar1 == 0x61) || (iVar1 == 0x62)) goto LAB_021f737e;
    }
    else if (iVar1 < 0xb1) {
      if (iVar1 == 0xb0) goto LAB_021f737e;
    }
    else {
      switch(iVar1) {
      case 0xb1:
      case 0xb2:
      case 0xb3:
      case 0xb4:
      case 0xb5:
      case 0xbc:
      case 0xbd:
      case 0xc4:
      case 0xc5:
      case 0xc6:
      case 199:
      case 200:
      case 0xc9:
        goto LAB_021f737e;
      }
    }
    goto LAB_021f7388;
  }
  if (iVar1 < 0x104) {
    if (0x102 < iVar1) goto LAB_021f737e;
    if (iVar1 < 0xfa) {
      if (iVar1 == 0xf9) goto LAB_021f737e;
    }
    else if (iVar1 == 0x102) goto LAB_021f737e;
  }
  else if (iVar1 < 0x105) {
    if (iVar1 == 0x104) {
LAB_021f737e:
      iVar1 = sub_0205F40C(param_1);
      return *(undefined4 *)(iVar1 + 4);
    }
  }
  else if (iVar1 == 0x105) goto LAB_021f737e;
LAB_021f7388:
  if ((0x1ab < iVar1) && (iVar1 < 0x3e2)) {
    puVar2 = (undefined4 *)sub_0205F40C(param_1);
    return *puVar2;
  }
  if ((0x105 < iVar1) && (iVar1 < 0x10e)) {
    uVar3 = sub_02064084(param_1);
    return uVar3;
  }
  iVar1 = sub_0205F40C(param_1);
  return *(undefined4 *)(iVar1 + 4);
}

