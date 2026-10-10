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
undefined4 sub_02032858();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 func_0x020df064() __asm__("sub_020DF064");
undefined4 func_0x020def24() __asm__("sub_020DEF24");
undefined4 func_0x020df6d0() __asm__("sub_020DF6D0");
undefined4 sub_02039AD8();
extern int iRam021d4128 __asm__("sub_021D4128");

undefined4 sub_02032C84(void)

{
  undefined2 uVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 in_r3;
  
  uVar2 = func_0x020def24();
  if (uVar2 == 0x8000) {
    sub_02032858(3);
    sub_02039AD8(1);
    return 0;
  }
  if (uVar2 != 0) {
    if (*(short *)(iRam021d4128 + 0x130c) == 0) {
      do {
        *(short *)(iRam021d4128 + 0x12e4) = *(short *)(iRam021d4128 + 0x12e4) + 1;
        if (0x10 < *(ushort *)(iRam021d4128 + 0x12e4)) {
          *(undefined2 *)(iRam021d4128 + 0x12e4) = 1;
        }
      } while ((uVar2 & 1 << (*(ushort *)(iRam021d4128 + 0x12e4) - 1 & 0xff)) == 0);
    }
    else {
      *(short *)(iRam021d4128 + 0x12e4) = *(short *)(iRam021d4128 + 0x130c);
    }
    uVar3 = func_0x020df064();
    uVar1 = func_0x020f2998(uVar3,3);
    *(undefined2 *)(iRam021d4128 + 0x12e6) = uVar1;
    iVar4 = iRam021d4128;
    *(int *)(iRam021d4128 + 0x12e0) = iRam021d4128 + 0x1220;
    iVar4 = func_0x020df6d0(0x2032d4d,iRam021d4128 + 0x12e0,iRam021d4128,iVar4,in_r3);
    if (iVar4 == 2) {
      return 1;
    }
    sub_02032858();
    return 0;
  }
  sub_02032858(0x16);
  sub_02039AD8(1);
  return 0;
}

