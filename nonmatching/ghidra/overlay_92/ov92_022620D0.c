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
undefined4 ov92_022619C4();
undefined4 func_0x0201fcac() __asm__("sub_0201FCAC");
undefined4 ManagedSprite_GetPositionFxXYWithSubscreenOffset();
undefined4 func_0x0200df44() __asm__("sub_0200DF44");
undefined4 GF_CosDeg();
undefined4 func_0x020f2998() __asm__("sub_020F2998");

undefined4 ov92_022620D0(undefined4 *param_1,undefined4 param_2,int param_3,int param_4)

{
  short sVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  if (param_1[1] == 0) {
    param_1[4] = 0;
    *(undefined2 *)(param_1 + 2) = 0;
    param_1[1] = param_1[1] + 1;
  }
  else if (param_1[1] != 1) {
    return 1;
  }
  uVar2 = ov92_022619C4(param_2);
  sVar1 = func_0x020f2998(0x168,uVar2);
  *(short *)(param_1 + 2) = *(short *)(param_1 + 2) + sVar1;
  if (0x167 < *(short *)(param_1 + 2)) {
    *(undefined2 *)(param_1 + 2) = 0;
  }
  ManagedSprite_GetPositionFxXYWithSubscreenOffset(*param_1,auStack_14,auStack_18,0x100000);
  if (param_3 == 0) {
    iVar3 = func_0x0201fcac(*(undefined2 *)(param_1 + 2));
    iVar4 = *(short *)(param_1 + 5) * 0x1000 - param_1[6] * iVar3;
    iVar3 = GF_CosDeg(*(undefined2 *)(param_1 + 2));
  }
  else {
    iVar3 = func_0x0201fcac(*(undefined2 *)(param_1 + 2));
    iVar4 = *(short *)(param_1 + 5) * 0x1000 + param_1[6] * iVar3;
    iVar3 = GF_CosDeg(*(undefined2 *)(param_1 + 2));
  }
  func_0x0200df44(*param_1,iVar4,*(short *)((int)param_1 + 0x16) * 0x1000 - param_1[7] * iVar3,
                  0x100000);
  if (*(short *)(param_1 + 2) == 0) {
    iVar3 = param_1[4];
    param_1[4] = iVar3 + 1;
    if (param_4 <= iVar3 + 1) {
      param_1[1] = param_1[1] + 1;
      return 1;
    }
    param_1[1] = 1;
  }
  return 0;
}

