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
undefined4 ov86_021E7CF8();
undefined4 ov86_021E792C();
undefined4 TouchscreenHitbox_FindRectAtTouchNew();
undefined4 func_0x02019f74() __asm__("sub_02019F74");
undefined4 ov86_021E78B8();
undefined4 ov86_021E7B68();
undefined4 ov86_021E71C0();
undefined4 GridInputHandler_HandleInput_NoHold();
undefined4 PlaySE();
extern undefined ov86_021E7E9C;
extern uint uRam021d1154 __asm__("sub_021D1154");

undefined4 ov86_021E7984(int param_1)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;

  uVar1 = GridInputHandler_HandleInput_NoHold(*(undefined4 *)(param_1 + 0x254));
  if (uVar1 < 9) {
    if (uVar1 == 8) {
LAB_021e79b6:
      PlaySE(0x5dd);
      ov86_021E71C0(param_1);
      *(undefined1 *)(param_1 + 5) = 2;
      return 9;
    }
LAB_021e7a76:
    if (uVar1 + *(char *)(param_1 + 0x25c) * 8 <
        *(uint *)(param_1 + (uint)*(ushort *)(param_1 + 600) * 8 + 0x264)) {
      *(short *)(param_1 + 0x25a) = (short)uVar1;
      PlaySE(0x5dd);
      ov86_021E78B8(param_1,uVar1);
      *(undefined1 *)(param_1 + 5) = 7;
      return 9;
    }
    PlaySE(0x5f2);
  }
  else {
    switch(uVar1) {
    case 0xfffffffc:
      break;
    case 0xfffffffd:
      PlaySE(0x5dc);
      break;
    case 0xfffffffe:
      goto LAB_021e79b6;
    case 0xffffffff:
      uVar2 = func_0x02019f74(*(undefined4 *)(param_1 + 0x254));
      switch(uVar2) {
      case 0:
      case 2:
      case 4:
      case 6:
        if (((uRam021d1154 & 0x20) != 0) && (*(char *)(param_1 + 0x25d) != '\0')) {
          *(char *)(param_1 + 0x25c) = *(char *)(param_1 + 0x25c) + -1;
          if (*(char *)(param_1 + 0x25c) < '\0') {
            *(undefined1 *)(param_1 + 0x25c) = *(undefined1 *)(param_1 + 0x25d);
          }
          PlaySE(0x5dc);
          ov86_021E7B68(param_1);
          ov86_021E7CF8(param_1);
        }
        break;
      case 1:
      case 3:
      case 5:
      case 7:
        if (((uRam021d1154 & 0x10) != 0) && (*(char *)(param_1 + 0x25d) != '\0')) {
          *(char *)(param_1 + 0x25c) = *(char *)(param_1 + 0x25c) + '\x01';
          if (*(char *)(param_1 + 0x25d) < *(char *)(param_1 + 0x25c)) {
            *(undefined1 *)(param_1 + 0x25c) = 0;
          }
          PlaySE(0x5dc);
          ov86_021E7B68(param_1);
          ov86_021E7CF8(param_1);
        }
      }
      break;
    default:
      goto LAB_021e7a76;
    }
  }
  iVar3 = TouchscreenHitbox_FindRectAtTouchNew(&ov86_021E7E9C);
  if (iVar3 == 0) {
    if (*(char *)(param_1 + 0x25d) != '\0') {
      *(char *)(param_1 + 0x25c) = *(char *)(param_1 + 0x25c) + -1;
      if (*(char *)(param_1 + 0x25c) < '\0') {
        *(undefined1 *)(param_1 + 0x25c) = *(undefined1 *)(param_1 + 0x25d);
      }
      PlaySE(0x5e0);
      ov86_021E792C(param_1,0x22,0x34);
      *(undefined1 *)(param_1 + 5) = 6;
      return 9;
    }
  }
  else if ((iVar3 == 1) && (*(char *)(param_1 + 0x25d) != '\0')) {
    *(char *)(param_1 + 0x25c) = *(char *)(param_1 + 0x25c) + '\x01';
    if (*(char *)(param_1 + 0x25d) < *(char *)(param_1 + 0x25c)) {
      *(undefined1 *)(param_1 + 0x25c) = 0;
    }
    PlaySE(0x5e0);
    ov86_021E792C(param_1,0x26,0x34);
    *(undefined1 *)(param_1 + 5) = 6;
    return 9;
  }
  return 5;
}

