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
undefined4 ov81_02242514();
undefined4 ov81_02240F08();
undefined4 ov81_0223F1A4();
undefined4 ov81_02240F28();
undefined4 ov81_0223EC88();
undefined4 ov81_0223F38C();
undefined4 OverlayManager_GetData();
undefined4 ov81_0223F314();
undefined4 ov81_0223E520();
undefined4 ov81_022404AC();
undefined4 ov81_02240F18();
undefined4 ov81_02241144();
undefined4 ov81_0223ECE4();
undefined4 ov81_0223E318();
undefined4 ov81_02240F38();
undefined4 ov81_022400D0();
undefined4 ov81_0223FC74();
undefined4 ov81_0223F6A8();
undefined4 ov81_02240008();
undefined4 ov81_02242C48();
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 ov81_0223F770();
undefined4 ov81_02240088();
undefined4 func_0x02237254() __asm__("sub_02237254");
undefined4 ov81_0223EA98();
undefined4 ov81_0223E8BC();
undefined4 ov81_0223FBAC();
undefined4 ov81_02240048();

undefined4 ov81_0223DEA8(undefined4 param_1,undefined4 *param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;

  iVar1 = OverlayManager_GetData();
  if (*(short *)(iVar1 + 0x458) == 1) {
    switch(*param_2) {
    case 6:
    case 7:
    case 8:
    case 9:
      if (-1 < (int)((uint)*(byte *)(iVar1 + 0x13) << 0x19)) {
        ov81_022404AC(iVar1,param_2,0xb);
      }
    }
  }
  ov81_02242514(iVar1);
  switch(*param_2) {
  case 0:
    iVar3 = ov81_0223E318(iVar1);
    if (iVar3 == 1) {
      ov81_022404AC(iVar1,param_2,1);
    }
    break;
  case 2:
    iVar3 = ov81_0223EC88(iVar1);
    if (iVar3 != 1) {
      return 0;
    }
    ov81_022404AC(iVar1,param_2,1);
  case 1:
    iVar3 = ov81_0223E520(iVar1);
    if (iVar3 == 1) {
      iVar3 = ov81_02240F08(iVar1,0);
      if (iVar3 == 1) {
        ov81_022404AC(iVar1,param_2,3);
      }
      else {
        ov81_022404AC(iVar1,param_2,6);
      }
    }
    break;
  case 3:
    ov81_02241144(iVar1);
    iVar3 = ov81_0223ECE4(iVar1);
    if (iVar3 == 1) {
      if ((*(byte *)(iVar1 + 0x13) & 3) >> 1 == 1) {
        ov81_022404AC(iVar1,param_2,2);
      }
      else {
        uVar2 = ov81_02240F18(*(undefined1 *)(iVar1 + 9));
        if (*(byte *)(iVar1 + 0x11) == uVar2) {
          ov81_022404AC(iVar1,param_2,4);
        }
        else {
          iVar3 = ov81_02240F28(iVar1);
          if (iVar3 == 1) {
            ov81_022404AC(iVar1,param_2,0xd);
          }
          else {
            ov81_022404AC(iVar1,param_2,3);
          }
        }
      }
    }
    break;
  case 4:
    ov81_02241144(iVar1);
    iVar3 = ov81_0223F1A4(iVar1);
    if (iVar3 == 1) {
      uVar2 = ov81_02240F18(*(undefined1 *)(iVar1 + 9));
      if (*(byte *)(iVar1 + 0x11) == uVar2) {
        ov81_022404AC(iVar1,param_2,0xd);
      }
      else {
        ov81_022404AC(iVar1,param_2,5);
      }
    }
    break;
  case 5:
    iVar3 = ov81_0223F314(iVar1);
    if (iVar3 == 1) {
      ov81_022404AC(iVar1,param_2,3);
    }
    break;
  case 6:
    iVar3 = ov81_0223F38C(iVar1);
    if (iVar3 == 1) {
      if ((*(byte *)(iVar1 + 0x13) & 3) >> 1 == 1) {
        ov81_022404AC(iVar1,param_2,2);
      }
      else {
        iVar3 = ov81_02240F28(iVar1);
        if (iVar3 == 1) {
          ov81_02240F38(iVar1,0);
          ov81_022404AC(iVar1,param_2,7);
        }
        else {
          ov81_022404AC(iVar1,param_2,10);
        }
      }
    }
    break;
  case 7:
    iVar3 = ov81_0223F6A8(iVar1);
    if (iVar3 == 1) {
      iVar3 = ov81_02240F28(iVar1);
      if (iVar3 == 1) {
        ov81_02240F38(iVar1,0);
        ov81_022404AC(iVar1,param_2,6);
      }
      else {
        iVar3 = func_0x02237254(*(undefined1 *)(iVar1 + 9));
        if (iVar3 == 1) {
          *(byte *)(iVar1 + 0x13) = *(byte *)(iVar1 + 0x13) & 0xf7;
          ov81_022404AC(iVar1,param_2,0xb);
        }
        else {
          ov81_022404AC(iVar1,param_2,0xd);
        }
      }
    }
    break;
  case 8:
    iVar3 = ov81_0223F770(iVar1);
    if (iVar3 == 1) {
      iVar3 = ov81_02240F28(iVar1);
      if (iVar3 == 1) {
        ov81_02240F38(iVar1,0);
        ov81_022404AC(iVar1,param_2,9);
      }
      else if (*(char *)(iVar1 + 0x11) == '\0') {
        ov81_022404AC(iVar1,param_2,10);
      }
      else {
        iVar3 = func_0x02237254(*(undefined1 *)(iVar1 + 9));
        if (iVar3 == 1) {
          ov81_022404AC(iVar1,param_2,0xb);
        }
        else {
          ov81_022404AC(iVar1,param_2,0xd);
        }
      }
    }
    break;
  case 9:
    iVar3 = ov81_0223FBAC(iVar1);
    if (iVar3 == 1) {
      iVar3 = ov81_02240F28(iVar1);
      if (iVar3 == 1) {
        ov81_02240F38(iVar1,0);
        ov81_022404AC(iVar1,param_2,8);
      }
      else {
        iVar3 = func_0x02237254(*(undefined1 *)(iVar1 + 9));
        if (iVar3 == 1) {
          *(byte *)(iVar1 + 0x13) = *(byte *)(iVar1 + 0x13) & 0xf7;
          ov81_022404AC(iVar1,param_2,0xb);
        }
        else {
          ov81_022404AC(iVar1,param_2,0xd);
        }
      }
    }
    break;
  case 10:
    iVar3 = ov81_0223FC74(iVar1);
    if (iVar3 == 1) {
      if (*(char *)(iVar1 + 0x11) == '\0') {
        ov81_0223E8BC(iVar1);
        ov81_022404AC(iVar1,param_2,6);
      }
      else {
        ov81_0223EA98(iVar1);
        ov81_022404AC(iVar1,param_2,8);
      }
    }
    break;
  case 0xb:
    iVar3 = ov81_02240008(iVar1);
    if (iVar3 == 1) {
      if (*(short *)(iVar1 + 0x458) == 1) {
        ov81_022404AC(iVar1,param_2,0xe);
      }
      else {
        ov81_022404AC(iVar1,param_2,0xc);
      }
    }
    break;
  case 0xc:
    iVar3 = ov81_02240048(iVar1);
    if (iVar3 == 1) {
      ov81_022404AC(iVar1,param_2,0xd);
    }
    break;
  case 0xd:
    iVar3 = ov81_02240088(iVar1);
    if (iVar3 == 1) {
      return 1;
    }
    break;
  case 0xe:
    iVar3 = ov81_022400D0(iVar1);
    if (iVar3 == 1) {
      ov81_022404AC(iVar1,param_2,0xc);
    }
  }
  SpriteList_RenderAndAnimateSprites(*(undefined4 *)(iVar1 + 0x1c4));
  ov81_02242C48(*(undefined4 *)(iVar1 + 0x1a8));
  return 0;
}

