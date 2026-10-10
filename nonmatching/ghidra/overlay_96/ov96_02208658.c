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
undefined4 ov96_021EB564();
undefined4 ov96_021EB588();
undefined4 ov96_021EB52C();
undefined4 ov96_0220831C();
undefined4 ov96_02208A80();

void ov96_02208658(int param_1,int param_2,uint param_3,int param_4,int param_5)

{
  int iVar1;
  int aiStack_2c [4];
  undefined4 uStack_1c;
  undefined4 uStack_18;

  if (param_3 != *(byte *)(param_1 + 0x1a4 + param_2)) {
    *(char *)(param_1 + 0x1a4 + param_2) = (char)param_3;
    ov96_0220831C();
  }
  if (param_4 == 0) {
    aiStack_2c[2] = 0;
    aiStack_2c[0] = (param_2 * 0x28 + 0x70) * 0x1000;
    aiStack_2c[1] = 0x350000;
    iVar1 = param_2 * 0x1c;
    ov96_021EB588(*(undefined4 *)(param_1 + iVar1 + 0x38),aiStack_2c);
    ov96_021EB588(*(undefined4 *)(param_1 + iVar1 + 0x40),aiStack_2c);
    ov96_02208A80(param_1 + 0x13c + param_2 * 0x10,1);
    if (param_5 == 1) {
      if (*(char *)(param_1 + iVar1 + 0x44) != '\x01') {
        ov96_021EB52C(*(undefined4 *)(param_1 + 0x3c + param_2 * 0x1c),1,1);
        ov96_021EB564(*(undefined4 *)(param_1 + 0x3c + param_2 * 0x1c),1);
      }
    }
    else {
      ov96_021EB52C(*(undefined4 *)(param_1 + iVar1 + 0x3c),1,0);
    }
  }
  else {
    uStack_18 = 0;
    aiStack_2c[3] = (param_2 * 0x28 + 0x70) * 0x1000;
    uStack_1c = 0x350004;
    ov96_021EB588(*(undefined4 *)(param_1 + param_2 * 0x1c + 0x38),aiStack_2c + 3);
    ov96_021EB588(*(undefined4 *)(param_1 + param_2 * 0x1c + 0x40),aiStack_2c + 3);
    ov96_02208A80(param_1 + 0x13c + param_2 * 0x10,0);
  }
  *(char *)(param_1 + param_2 * 0x1c + 0x44) = (char)param_5;
  return;
}

