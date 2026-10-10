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
undefined4 ov74_02236980();
undefined4 sub_0203A930();
undefined4 func_0x020def44() __asm__("sub_020DEF44");
undefined4 ov74_0222CEC0();
undefined4 ov74_022368D4();
undefined4 sub_02034D8C();
undefined4 sub_02034DB8();
extern int iRam0223d0b4 __asm__("sub_0223D0B4");
extern int iRam0223d0b8 __asm__("sub_0223D0B8");
undefined4 sub_0203A880();
undefined4 ov74_02236680();
undefined4 ov74_022365FC();
undefined4 Heap_Alloc();
extern undefined4 uRam0223d0ac __asm__("sub_0223D0AC");
extern uint uRam021d1154 __asm__("sub_021D1154");

void ov74_0222CEE0(int param_1)

{
  int iVar1;
  undefined4 uVar2;

  if (iRam0223d0b8 == 0x2c) {
    ov74_0222CEC0();
    iVar1 = ov74_022368D4();
    if (iVar1 == 0) {
      iRam0223d0b8 = 0x2e;
    }
    else {
      iRam0223d0b8 = 0x2d;
    }
  }
  if ((((iRam0223d0b8 == 0x25) || (iRam0223d0b8 == 0x26)) || (iRam0223d0b8 == 0x27)) ||
     (((iRam0223d0b8 == 0x28 || (iRam0223d0b8 == 0x29)) || (iRam0223d0b8 == 0x2b)))) {
    iVar1 = func_0x020def44();
    sub_0203A930(3 - iVar1);
  }
  switch(iRam0223d0b8) {
  case 0x25:
    sub_02034D8C();
    iRam0223d0b8 = 0x26;
    break;
  case 0x26:
    iVar1 = sub_02034DB8();
    if (iVar1 == 1) {
      iRam0223d0b4 = 0;
      uVar2 = ov74_02236980();
      uRam0223d0ac = Heap_Alloc(0x54,uVar2);
      ov74_02236680(param_1 + 0x5d4,0x222ce6d);
      iRam0223d0b8 = 0x27;
      sub_0203A880();
    }
    break;
  case 0x29:
    iRam0223d0b4 = iRam0223d0b4 + 1;
    break;
  case 0x2f:
    return;
  }
  if ((uRam021d1154 & 2) != 0) {
    switch(iRam0223d0b8) {
    case 0x28:
    case 0x29:
    case 0x30:
      iVar1 = ov74_022365FC();
      if (iVar1 != 0) {
        iRam0223d0b8 = 0x2b;
      }
    }
  }
  return;
}

