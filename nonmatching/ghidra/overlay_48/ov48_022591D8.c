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
undefined4 ov48_02259B68();
undefined4 ov48_02259BBC();
undefined4 ov48_022592E0();
undefined4 ov48_02259B3C();
undefined4 ov48_022598CC();
undefined4 ov48_02258F0C();

uint ov48_022591D8(int param_1)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  uint uStack_40;
  int iStack_38;
  int iStack_34;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  int iStack_20;
  int iStack_1c;

  uVar1 = ov48_02259BBC(param_1 + 0x224);
  ov48_022598CC(param_1 + 0x178,&iStack_20);
  iVar5 = (iStack_1c + -0x80) * 0x10000 >> 0x10;
  iStack_38 = (iStack_1c + 0x80) * 0x10000 >> 0x10;
  iVar3 = iStack_38 - iVar5;
  if (iVar3 < 0) {
    iVar3 = -iVar3;
  }
  iStack_34 = iVar5;
  iStack_30 = iStack_38;
  if (0x100 < iVar3) {
    iStack_30 = (int)(short)iStack_1c;
    if (iStack_30 < 1) {
      iStack_34 = iStack_30 + 0x10000;
    }
    else {
      iStack_34 = iStack_30 + -0x10000;
    }
    iVar5 = iStack_30 + -0x80;
    iStack_30 = iStack_30 + 0x80;
    iStack_38 = iStack_34 + 0x80;
    iStack_34 = iStack_34 + -0x80;
  }
  uVar6 = 0x100;
  uVar4 = 0;
  uStack_40 = uVar1;
  if (uVar1 != 0) {
    do {
      ov48_02259B3C(param_1 + 0x224,&iStack_2c,uVar4);
      iVar3 = ov48_02259B68(param_1 + 0x224,uVar4);
      if (((((iStack_20 + -0x80) * 0x10000 >> 0x10 < iStack_2c) &&
           (iStack_2c < (iStack_20 + 0x80) * 0x10000 >> 0x10)) &&
          (((iVar5 < iStack_28 && (iStack_28 < iStack_30)) ||
           ((iStack_34 < iStack_28 && (iStack_28 < iStack_38)))))) && (iVar3 != 3)) {
        ov48_02258F0C(&iStack_20);
        ov48_02258F0C(&iStack_2c);
        uVar2 = ov48_022592E0(&iStack_20,&iStack_2c);
        if (uVar2 < uVar6) {
          uVar6 = uVar2;
          uStack_40 = uVar4;
        }
      }
      uVar4 = uVar4 + 1;
    } while (uVar4 < uVar1);
  }
  return uStack_40;
}

