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
undefined4 ov07_02222768();
undefined4 ov07_02222508();
undefined4 ov07_022226C4();
undefined4 Pokepic_SetAttr();

undefined4 ov07_0222E5E8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;

  uVar2 = 0;
  switch(*(undefined4 *)(param_1 + 0x38)) {
  case 0:
    iVar1 = ov07_02222768(param_1 + 0x10,*(undefined4 *)(param_1 + 0xc));
    if (iVar1 == 0) {
      *(int *)(param_1 + 0x38) = *(int *)(param_1 + 0x38) + 1;
    }
    else {
      ov07_022226C4(*(undefined4 *)(param_1 + 0xc),(int)(short)*(undefined4 *)(param_1 + 0x3c),
                    (int)(short)*(undefined4 *)(param_1 + 0x40),*(undefined4 *)(param_1 + 0x24),0);
    }
    break;
  case 1:
    iVar1 = *(int *)(param_1 + 0x34) + -1;
    *(int *)(param_1 + 0x34) = iVar1;
    if (iVar1 < 0) {
      *(int *)(param_1 + 0x38) = *(int *)(param_1 + 0x38) + 1;
      ov07_02222508(param_1 + 0x10,0xf,10,10,8);
    }
    break;
  case 2:
    iVar1 = ov07_02222768(param_1 + 0x10,*(undefined4 *)(param_1 + 0xc));
    if (iVar1 == 0) {
      *(int *)(param_1 + 0x38) = *(int *)(param_1 + 0x38) + 1;
    }
    else {
      ov07_022226C4(*(undefined4 *)(param_1 + 0xc),(int)(short)*(undefined4 *)(param_1 + 0x3c),
                    (int)(short)*(undefined4 *)(param_1 + 0x40),*(undefined4 *)(param_1 + 0x24),0);
    }
    break;
  case 3:
    Pokepic_SetAttr(*(undefined4 *)(param_1 + 0xc),0xc,0x100,param_4,param_4);
    Pokepic_SetAttr(*(undefined4 *)(param_1 + 0xc),0xd,0x100);
    uVar2 = 1;
  }
  return uVar2;
}

