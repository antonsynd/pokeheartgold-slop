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
undefined4 func_0x0201fd14() __asm__("sub_0201FD14");
undefined4 ov89_0225ADA4();
undefined4 func_0x020182a8() __asm__("sub_020182A8");
undefined4 sub_020182B0();

undefined4 ov89_0225B82C(undefined4 param_1,int param_2)

{
  uint uVar1;
  int iVar2;
  undefined4 uStack_20;
  int iStack_1c;
  int iStack_18;

  if (*(int *)(param_2 + 0x94) == 0) {
    sub_020182B0(param_2 + 0x1c,&iStack_18,&iStack_1c,&uStack_20);
    *(int *)(param_2 + 0x9c) = iStack_18;
    *(int *)(param_2 + 0x94) = *(int *)(param_2 + 0x94) + 1;
  }
  else if (*(int *)(param_2 + 0x94) != 1) goto LAB_0225b8e0;
  sub_020182B0(param_2 + 0x1c,&iStack_18,&iStack_1c,&uStack_20);
  if ((((iStack_18 < -0x50000) || (0x50000 < iStack_18)) || (0x30000 < iStack_1c)) ||
     (iStack_1c < -0x30000)) {
    return 1;
  }
  iVar2 = *(int *)(param_2 + 0x98) + 0x8000;
  *(int *)(param_2 + 0x98) = iVar2;
  if (0x167fff < iVar2) {
    *(int *)(param_2 + 0x98) = *(int *)(param_2 + 0x98) + -0x168000;
  }
  uVar1 = func_0x0201fd14(*(undefined4 *)(param_2 + 0x98));
  func_0x020182a8(param_2 + 0x1c,
                  *(int *)(param_2 + 0x9c) +
                  (uVar1 * 0x8000 + 0x800 >> 0xc |
                  ((uVar1 >> 0x11) + (uint)(0xfffff7ff < uVar1 * 0x8000)) * 0x100000),
                  iStack_1c + -0x1000,uStack_20);
LAB_0225b8e0:
  ov89_0225ADA4(param_2 + 0x1c,param_2,param_2 + 0xa0,0);
  return 0;
}

