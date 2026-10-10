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
undefined4 sub_02032844();
undefined4 func_0x020e5bb0() __asm__("sub_020E5BB0");
undefined4 func_0x020dfa18() __asm__("sub_020DFA18");
undefined4 sub_02033264();
undefined4 sub_02032A40();
undefined4 sub_0203993C();
extern int iRam021d4128 __asm__("sub_021D4128");
extern undefined UNK_0210f8fc __asm__("sub_0210F8FC");

void sub_02032934(int param_1)

{
  ushort uVar1;
  ushort uVar2;
  uint uVar3;
  int iVar4;

  uVar2 = (ushort)(1 << (*(ushort *)(param_1 + 0x10) & 0xff));
  if (*(short *)(param_1 + 2) != 0) {
    sub_02032858();
    sub_02032844(9);
    return;
  }
  uVar1 = *(ushort *)(param_1 + 8);
  if (uVar1 < 8) {
    if (uVar1 < 7) {
      if (uVar1 < 3) {
        if (uVar1 != 0) {
          if (uVar1 == 2) {
            *(char *)(iRam021d4128 + 0x1345) = *(char *)(iRam021d4128 + 0x1345) + '\x01';
            return;
          }
          return;
        }
        iVar4 = sub_02032A40();
        if (iVar4 == 0) {
          sub_02032844(9);
        }
      }
    }
    else if ((((*(char *)(iRam021d4128 + 0x1343) == '\x01') ||
              (*(char *)(iRam021d4128 + 0x1342) == '\x01')) ||
             (iVar4 = sub_02033264(), (int)(uint)*(byte *)(iRam021d4128 + 0x1334) <= iVar4)) ||
            ((uVar3 = sub_0203993C(), *(byte *)(param_1 + 0x14) != uVar3 ||
             (iVar4 = func_0x020e5bb0(&UNK_0210f8fc,param_1 + 0x15,3), iVar4 != 0)))) {
      iVar4 = func_0x020dfa18(0,*(undefined2 *)(param_1 + 0x10));
      if (iVar4 != 2) {
        sub_02032858();
        sub_02032844(9);
        return;
      }
    }
    else {
      *(ushort *)(iRam021d4128 + 0x132e) = *(ushort *)(iRam021d4128 + 0x132e) | uVar2;
      if (*(code **)(iRam021d4128 + 0x1328) != (code *)0x0) {
        (**(code **)(iRam021d4128 + 0x1328))(*(undefined2 *)(param_1 + 0x10));
        return;
      }
    }
  }
  else {
    if (9 < uVar1) {
      return;
    }
    if (uVar1 != 9) {
      return;
    }
    *(ushort *)(iRam021d4128 + 0x132e) = ~uVar2 & *(ushort *)(iRam021d4128 + 0x132e);
    if (*(code **)(iRam021d4128 + 0x1324) != (code *)0x0) {
      (**(code **)(iRam021d4128 + 0x1324))(*(undefined2 *)(param_1 + 0x10));
      return;
    }
  }
  return;
}

