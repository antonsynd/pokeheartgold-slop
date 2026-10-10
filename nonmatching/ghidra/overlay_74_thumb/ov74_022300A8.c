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
undefined4 ov74_022314DC();
undefined4 ov74_0223115C();
undefined4 ov74_0222FE4C();
undefined4 ov74_0222FEC8();
undefined4 ov74_02231508();
undefined4 ov74_02231448();
undefined4 ov74_0222FF68();

void ov74_022300A8(int param_1)

{
  int iVar1;
  int iVar2;

  if (*(short *)(param_1 + 2) == 0) {
    iVar1 = ov74_0223115C();
    if (*(ushort *)(param_1 + 10) < (ushort)*(byte *)(iVar1 + 0x61)) {
      *(char *)(iVar1 + 0x61) = (char)*(ushort *)(param_1 + 10);
      *(char *)(iVar1 + 100) = (char)*(undefined2 *)(param_1 + 8);
    }
    iVar2 = ov74_0222FEC8();
    if (iVar2 == 0) {
      if (0x65 < *(byte *)(iVar1 + 0x61)) {
        ov74_0222FE4C();
        return;
      }
      ov74_0222FF68();
      iVar1 = ov74_02231508();
      if (iVar1 == 0) {
        ov74_0222FE4C();
        return;
      }
    }
    else {
      iVar1 = ov74_022314DC();
      if (iVar1 == 0) {
        ov74_0222FE4C();
        return;
      }
    }
  }
  else {
    ov74_02231448();
    ov74_0222FE4C();
  }
  return;
}

