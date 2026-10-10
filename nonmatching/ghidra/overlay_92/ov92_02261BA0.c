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
undefined4 func_0x0201fcac() __asm__("sub_0201FCAC");
undefined4 ManagedSprite_GetPositionFxXYWithSubscreenOffset();
undefined4 SysTask_Destroy();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 IsPaletteFadeFinished();
undefined4 ov92_02262018();
undefined4 ov92_022619C4();
undefined4 ov92_02261E88();
undefined4 ov92_02260860();
undefined4 ov92_022620D0();
undefined4 func_0x0200df44() __asm__("sub_0200DF44");
undefined4 ov92_02261E80();
undefined4 ov92_02261F60();
undefined4 GF_CosDeg();

void ov92_02261BA0(undefined4 param_1,undefined4 *param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];

  iVar1 = IsPaletteFadeFinished();
  if ((iVar1 == 0) || (*(char *)(param_2[0x5f] + 0x34) == '\x01')) {
    SysTask_Destroy(param_1);
    return;
  }
  switch(param_2[0x5a]) {
  case 0:
    *(undefined2 *)(param_2 + 2) = 0;
    *(undefined2 *)(param_2 + 5) = 0x80;
    *(undefined2 *)((int)param_2 + 0x16) = 0xa0;
    param_2[6] = 0x40;
    param_2[7] = 0x18;
    ManagedSprite_SetDrawFlag(*param_2,1);
    *(undefined2 *)(param_2 + 0x2a) = 0;
    *(undefined2 *)(param_2 + 0x2d) = 0x80;
    *(undefined2 *)((int)param_2 + 0xb6) = 0xa0;
    param_2[0x2e] = 0x40;
    param_2[0x2f] = 0x18;
    ManagedSprite_SetDrawFlag(param_2[0x28],1);
    ManagedSprite_GetPositionFxXYWithSubscreenOffset(*param_2,auStack_14,auStack_18,0x100000);
    iVar1 = func_0x0201fcac(*(undefined2 *)(param_2 + 2));
    iVar3 = *(short *)(param_2 + 5) * 0x1000 + param_2[6] * iVar1;
    iVar1 = GF_CosDeg(*(undefined2 *)(param_2 + 2));
    iVar1 = *(short *)((int)param_2 + 0x16) * 0x1000 + param_2[7] * iVar1;
    func_0x0200df44(*param_2,iVar3,iVar1,0x100000);
    uVar2 = ov92_022619C4(param_2[0x52]);
    ov92_02260860(param_2 + 8,iVar3,iVar3 + 0xb4000,uVar2);
    uVar2 = ov92_022619C4(param_2[0x52]);
    ov92_02260860(param_2 + 0xe,iVar1,iVar1 + -0x18000,uVar2);
    ManagedSprite_GetPositionFxXYWithSubscreenOffset(param_2[0x28],auStack_14,auStack_18,0x100000);
    iVar1 = func_0x0201fcac(*(undefined2 *)(param_2 + 0x2a));
    iVar3 = *(short *)(param_2 + 0x2d) * 0x1000 + param_2[0x2e] * iVar1;
    iVar1 = GF_CosDeg(*(undefined2 *)(param_2 + 0x2a));
    iVar1 = *(short *)((int)param_2 + 0xb6) * 0x1000 - param_2[0x2f] * iVar1;
    func_0x0200df44(param_2[0x28],iVar3,iVar1,0x100000);
    uVar2 = ov92_022619C4(param_2[0x51]);
    ov92_02260860(param_2 + 0x30,iVar3,iVar3 + -0xb4000,uVar2);
    uVar2 = ov92_022619C4(param_2[0x51]);
    ov92_02260860(param_2 + 0x36,iVar1,iVar1 + 0x18000,uVar2);
    ov92_02261E80(param_2 + 0x28);
    ov92_02261E80(param_2);
    param_2[0x5a] = param_2[0x5a] + 1;
  case 1:
    iVar1 = ov92_022620D0(param_2 + 0x28,param_2[0x51],0,1);
    iVar3 = ov92_02262018(param_2,param_2[0x52],1,3);
    if ((iVar1 != 0) && (iVar3 != 0)) {
      ov92_02261E80(param_2 + 0x28);
      ov92_02261E80(param_2);
      param_2[0x5a] = param_2[0x5a] + 1;
      return;
    }
    break;
  case 2:
    iVar1 = ov92_02261E88(param_2 + 0x28,param_2[0x51],0,3);
    iVar3 = ov92_02261E88(param_2,param_2[0x52],1,2);
    if ((iVar1 != 0) && (iVar3 != 0)) {
      ov92_02261E80(param_2 + 0x28);
      ov92_02261E80(param_2);
      param_2[0x5a] = param_2[0x5a] + 1;
      return;
    }
    break;
  case 3:
    iVar1 = ov92_02261F60(param_2 + 0x28,param_2[0x51],0,2);
    iVar3 = ov92_02262018(param_2,param_2[0x52],1,3);
    if ((iVar1 != 0) && (iVar3 != 0)) {
      ov92_02261E80(param_2 + 0x28);
      ov92_02261E80(param_2);
      param_2[0x5a] = param_2[0x5a] + 1;
      return;
    }
    break;
  case 4:
    iVar1 = ov92_022620D0(param_2 + 0x28,param_2[0x51],0,1);
    iVar3 = ov92_02261E88(param_2,param_2[0x52],1,2);
    if ((iVar1 != 0) && (iVar3 != 0)) {
      ov92_02261E80(param_2 + 0x28);
      ov92_02261E80(param_2);
      param_2[0x5a] = param_2[0x5a] + 1;
      return;
    }
    break;
  default:
    SysTask_Destroy(param_1);
  }
  return;
}

