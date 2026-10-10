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
undefined4 bn_fix_top();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 bn_expand2();

undefined4 BN_lshift(int *param_1,int *param_2,int param_3)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;

  iVar1 = (int)(param_3 + ((uint)(param_3 >> 4) >> 0x1b)) >> 5;
  piVar2 = param_1;
  if (param_1[2] < param_2[1] + iVar1 + 1) {
    piVar2 = (int *)bn_expand2();
  }
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  iVar3 = param_3 >> 0x1f;
  param_1[3] = param_2[3];
  uVar8 = ((uint)(param_3 * 0x8000000 + iVar3) >> 0x1b | iVar3 << 5) - iVar3;
  iVar5 = *param_2;
  iVar3 = *param_1;
  *(undefined4 *)(iVar3 + (param_2[1] + iVar1) * 4) = 0;
  if (uVar8 == 0) {
    iVar4 = param_2[1];
    while (iVar4 = iVar4 + -1, -1 < iVar4) {
      *(undefined4 *)(iVar3 + (iVar1 + iVar4) * 4) = *(undefined4 *)(iVar5 + iVar4 * 4);
    }
  }
  else {
    iVar4 = param_2[1];
    while (iVar4 = iVar4 + -1, -1 < iVar4) {
      iVar6 = iVar1 + iVar4 + 1;
      uVar7 = *(uint *)(iVar5 + iVar4 * 4);
      *(uint *)(iVar3 + iVar6 * 4) = *(uint *)(iVar3 + iVar6 * 4) | uVar7 >> (0x20 - uVar8 & 0xff);
      *(uint *)(iVar3 + (iVar1 + iVar4) * 4) = uVar7 << (uVar8 & 0xff);
    }
  }
  func_0x020d4994(iVar3,0,iVar1 << 2);
  param_1[1] = param_2[1] + iVar1 + 1;
  bn_fix_top(param_1);
  return 1;
}

