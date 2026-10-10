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
undefined4 sub_02032844();
undefined4 sub_020340C4();
undefined4 func_0x020e0e94() __asm__("sub_020E0E94");
undefined4 sub_0203993C();
extern int iRam021d4128 __asm__("sub_021D4128");
undefined4 sub_02032874();

undefined4
sub_02033668(int param_1,undefined2 param_2,undefined2 param_3,uint param_4,undefined2 param_5,
            undefined2 param_6)

{
  int iVar1;
  undefined4 uVar2;
  
  sub_0203993C();
  iVar1 = sub_020340C4();
  if (iVar1 != 0) {
    func_0x020e0e94(0x2033665,0xffff,100,5,100);
  }
  *(undefined4 *)(iRam021d4128 + 0x1308) = 0x1c0;
  *(undefined4 *)(iRam021d4128 + 0x1304) = 0xe0;
  *(int *)(iRam021d4128 + 0x1314) = param_1;
  sub_02032844(3);
  *(undefined2 *)(iRam021d4128 + 0xc) = param_2;
  *(undefined2 *)(iRam021d4128 + 0x32) = param_3;
  *(undefined2 *)(iRam021d4128 + 0x18) = param_5;
  if (param_1 == 0) {
    *(undefined2 *)(iRam021d4128 + 0x34) = 0xc0;
    if (param_4 < 5) {
      *(undefined2 *)(iRam021d4128 + 0x36) = 0x26;
    }
    else {
      *(undefined2 *)(iRam021d4128 + 0x36) = 0xc;
    }
  }
  else if (param_1 == 4) {
    *(undefined2 *)(iRam021d4128 + 0x34) = 100;
    *(undefined2 *)(iRam021d4128 + 0x36) = 0xc;
  }
  *(short *)(iRam021d4128 + 0x10) = (short)param_4;
  *(undefined2 *)(iRam021d4128 + 0x16) = 0;
  *(undefined2 *)(iRam021d4128 + 0x12) = 0;
  *(undefined2 *)(iRam021d4128 + 0xe) = param_6;
  *(ushort *)(iRam021d4128 + 0x14) = (ushort)(param_1 == 2);
  if (((param_1 != 0) && (param_1 != 2)) && (param_1 != 4)) {
    return 0;
  }
  uVar2 = sub_02032874();
  return uVar2;
}

