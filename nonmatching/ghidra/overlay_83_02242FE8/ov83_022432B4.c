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
undefined4 func_0x02237d8c() __asm__("sub_02237D8C");
undefined4 BeginNormalPaletteFade();
undefined4 IsPaletteFadeFinished();
undefined4 sub_02037AC0();
undefined4 sub_02037BEC();
undefined4 ov83_022433B8();
undefined4 ov83_022450A8();
undefined4 sub_02037B38();

undefined4 ov83_022432B4(int param_1)

{
  int iVar1;

  switch(*(undefined1 *)(param_1 + 8)) {
  case 0:
    iVar1 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
    if (iVar1 == 1) {
      sub_02037BEC();
      sub_02037AC0(0xd8);
    }
    *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    break;
  case 1:
    iVar1 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
    if (iVar1 == 1) {
      iVar1 = sub_02037B38(0xd8);
      if (iVar1 == 1) {
        sub_02037BEC();
        *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
      }
    }
    else {
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 2:
    iVar1 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
    if (iVar1 == 1) {
      iVar1 = ov83_022450A8(param_1,0x14,0);
      if (iVar1 == 1) {
        *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
      }
    }
    else {
      ov83_022433B8(param_1);
      BeginNormalPaletteFade(0,1,1,0,6,3,0x6b);
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 3:
    iVar1 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
    if (iVar1 == 1) {
      if (1 < *(byte *)(param_1 + 0x17)) {
        *(undefined1 *)(param_1 + 0x17) = 0;
        ov83_022433B8(param_1);
        BeginNormalPaletteFade(0,1,1,0,6,3,0x6b);
        *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
      }
    }
    else {
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 4:
    iVar1 = IsPaletteFadeFinished();
    if (iVar1 == 1) {
      return 1;
    }
  }
  return 0;
}

