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
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 func_0x02014a4c() __asm__("sub_02014A4C");
undefined4 func_0x02014a8c() __asm__("sub_02014A8C");

undefined4 ov74_0222F6C4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  
  iVar5 = 0x54000;
  if (*(int *)(param_1 + 0x3cf8) == 0) {
    return 1;
  }
  if (*(int *)(param_1 + 0x3cfc) == 1) {
    *(int *)(param_1 + 0x3cf0) = *(int *)(param_1 + 0x3cf0) + *(int *)(param_1 + 0x3cf4);
    *(int *)(param_1 + 0x3cf4) = *(int *)(param_1 + 0x3cf4) * 2;
    if (1000 < (int)(*(int *)(param_1 + 0x3cf0) +
                    ((uint)(*(int *)(param_1 + 0x3cf0) >> 0xb) >> 0x14)) >> 0xc) {
      *(undefined4 *)(param_1 + 0x3cf8) = 0;
      *(undefined4 *)(param_1 + 0x3cf0) = 0;
      iVar5 = 0xa8;
      *(undefined4 *)(param_1 + 0x3cf4) = 0;
    }
  }
  else {
    *(int *)(param_1 + 0x3cf0) = *(int *)(param_1 + 0x3cf0) - *(int *)(param_1 + 0x3cf4);
    *(int *)(param_1 + 0x3cf4) = *(int *)(param_1 + 0x3cf4) / 2;
    if (*(int *)(param_1 + 0x3cf4) < 0x400) {
      *(undefined4 *)(param_1 + 0x3cf8) = 0;
      *(undefined4 *)(param_1 + 0x3cf0) = 0x1000;
      *(undefined4 *)(param_1 + 0x3cf4) = 0;
    }
  }
  iVar1 = func_0x02014a4c(*(undefined4 *)(param_1 + 0x3ce8));
  iVar2 = 0x54;
  iVar4 = 0x150;
  do {
    iVar3 = (int)(iVar5 + ((uint)(iVar5 >> 0xb) >> 0x14)) >> 0xc;
    if (iVar3 < 0) {
      iVar3 = 0;
    }
    if (0xa8 < iVar3) {
      iVar3 = 0xa8;
    }
    iVar6 = iVar1 + iVar4 * 2;
    *(short *)(iVar6 + 6) = (short)iVar3 - (short)iVar2;
    iVar4 = iVar4 + 4;
    *(undefined2 *)(iVar6 + 2) = *(undefined2 *)(iVar6 + 6);
    iVar6 = iVar1 + (0xa8 - iVar2) * 8;
    *(short *)(iVar6 + 6) = (short)iVar2 - (short)iVar3;
    iVar2 = iVar2 + 1;
    *(undefined2 *)(iVar6 + 2) = *(undefined2 *)(iVar6 + 6);
    iVar5 = iVar5 + *(int *)(param_1 + 0x3cf0);
  } while (iVar2 < 0xa8);
  func_0x020d2894(iVar1,0x600,iVar1,iVar4,param_4);
  func_0x02014a8c(*(undefined4 *)(param_1 + 0x3ce8));
  return 0;
}

