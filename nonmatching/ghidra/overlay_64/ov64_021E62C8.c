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
undefined4 ov64_021E64F8();
undefined4 func_0x02019f74() __asm__("sub_02019F74");
undefined4 TouchscreenHitbox_FindRectAtTouchNew();
undefined4 PlaySE();
undefined4 func_0x02019d18() __asm__("sub_02019D18");
undefined4 ov64_021E677C();
extern undefined UNK_021e6e7c __asm__("sub_021E6E7C");
extern uint uRam021d1154 __asm__("sub_021D1154");
extern uint uRam021d1158 __asm__("sub_021D1158");
undefined4 ov64_021E62A8();
undefined4 ov64_021E652C();
undefined4 ov64_021E6B84();



undefined4 ov64_021E62C8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  
  switch(*(undefined4 *)(param_1 + 0x1c8)) {
  case 0:
    iVar3 = TouchscreenHitbox_FindRectAtTouchNew(&UNK_021e6e7c);
    if (iVar3 == 0) {
      if (*(int *)(param_1 + 0x1b4) < 1) {
        return 1;
      }
      *(undefined4 *)(param_1 + 0x1bc) = 0xf;
      *(undefined4 *)(param_1 + 0x1cc) = 2;
      *(undefined4 *)(param_1 + 0x1c8) = 1;
      ov64_021E64F8(param_1);
      PlaySE(0x5dc);
      return 1;
    }
    if (iVar3 == 1) {
      if (*(int *)(param_1 + 0x1b8) < 1) {
        return 1;
      }
      if (*(int *)(param_1 + 0x1b4) == *(int *)(param_1 + 0x1b8) + -1) {
        return 1;
      }
      *(undefined4 *)(param_1 + 0x1bc) = 0x10;
      *(undefined4 *)(param_1 + 0x1cc) = 3;
      *(undefined4 *)(param_1 + 0x1c8) = 1;
      ov64_021E64F8(param_1);
      PlaySE(0x5dc);
      return 1;
    }
    uVar1 = func_0x02019d18(*(undefined4 *)(param_1 + 0x180));
    if (uVar1 < 0xfffffffe) {
      if (0xfffffffc < uVar1) {
        uVar2 = func_0x02019f74(*(undefined4 *)(param_1 + 0x180));
        ov64_021E677C(param_1,uVar2);
        PlaySE(0x5dc);
        return 1;
      }
      switch(uVar1) {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        ov64_021E677C(param_1,uVar1);
        if (((uRam021d1154 & 1) == 0) && (uVar1 < *(uint *)(param_1 + 0x1ac))) {
          PlaySE(0x5dc);
        }
        break;
      case 6:
        goto LAB_021e63d2;
      }
    }
    else {
      if (uVar1 == 0xffffffff) {
        iVar3 = func_0x02019f74(*(undefined4 *)(param_1 + 0x180));
        if ((uRam021d1158 & 0x10) == 0) {
          if ((uRam021d1158 & 0x20) == 0) {
            return 1;
          }
          if ((iVar3 != 0) && (iVar3 != 3)) {
            return 1;
          }
          if (*(int *)(param_1 + 0x1b4) < 1) {
            return 1;
          }
          *(undefined4 *)(param_1 + 0x1bc) = 0xf;
          *(undefined4 *)(param_1 + 0x1cc) = 2;
          *(undefined4 *)(param_1 + 0x1c8) = 1;
          ov64_021E64F8(param_1);
          PlaySE(0x5dc);
          return 1;
        }
        if ((iVar3 != 2) && (iVar3 != 5)) {
          return 1;
        }
        if (*(int *)(param_1 + 0x1b8) < 1) {
          return 1;
        }
        if (*(int *)(param_1 + 0x1b4) == *(int *)(param_1 + 0x1b8) + -1) {
          return 1;
        }
        *(undefined4 *)(param_1 + 0x1bc) = 0x10;
        *(undefined4 *)(param_1 + 0x1cc) = 3;
        *(undefined4 *)(param_1 + 0x1c8) = 1;
        ov64_021E64F8(param_1);
        PlaySE(0x5dc);
        return 1;
      }
      if (uVar1 != 0xfffffffe) {
        return 1;
      }
LAB_021e63d2:
      PlaySE(0x5dc);
      *(undefined4 *)(param_1 + 0x1bc) = 0x11;
      *(undefined4 *)(param_1 + 0x1cc) = 4;
      *(int *)(param_1 + 0x1c8) = *(int *)(param_1 + 0x1c8) + 1;
    }
    break;
  case 1:
    iVar3 = ov64_021E6B84();
    if (iVar3 == 0) {
      *(undefined4 *)(param_1 + 0x1c8) = *(undefined4 *)(param_1 + 0x1cc);
    }
    break;
  case 2:
    ov64_021E652C(param_1,0xffffffff,param_3,param_4,param_4);
    *(undefined4 *)(param_1 + 0x1c8) = 0;
    break;
  case 3:
    ov64_021E652C(param_1,1,param_3,param_4,param_4);
    *(undefined4 *)(param_1 + 0x1c8) = 0;
    break;
  case 4:
    ov64_021E62A8();
    PlaySE(0x60d);
    return 0;
  }
  return 1;
}

