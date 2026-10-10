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
typedef void code(void);
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
undefined4 ov07_02225AE0(undefined4, undefined4);
undefined4 ov07_0221FAA0(undefined4, undefined4);
undefined4 func_0x0200908c(undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_0200908C");
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_02232020(undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 ov07_0221C4A8(undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_02231FE4(undefined4, undefined4);
undefined4 Pokepic_SetAttr(undefined4, undefined4);

void ov07_02225CC4(undefined4 param_1)

{
  undefined2 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  undefined1 auStack_14 [4];

  iVar2 = ov07_022324D8(param_1,0x50);
  ov07_02231FE4(param_1,iVar2);
  uVar1 = ov07_0221C4A8(param_1,3);
  *(undefined2 *)(iVar2 + 0x1c) = uVar1;
  uVar3 = ov07_0221C4A8(param_1,4);
  *(undefined4 *)(iVar2 + 0x20) = uVar3;
  uVar3 = ov07_0221C4A8(param_1,0);
  ov07_02232020(param_1,uVar3,iVar2 + 0x28,auStack_14);
  uVar3 = ov07_02225AE0(param_1,uVar3);
  iVar4 = ov07_0221C4A8(param_1,5);
  if (iVar4 != 0) {
    iVar4 = ov07_0221FAA0(param_1,uVar3);
    *(int *)(iVar2 + 0x3c) = 0x50 - iVar4;
    *(undefined4 *)(iVar2 + 0x40) = 0;
    func_0x0200908c(*(undefined4 *)(iVar2 + 0x30),0,*(undefined4 *)(iVar2 + 0x3c),0x50,0);
    ov07_0221C410(*(undefined4 *)(iVar2 + 4),0x2225c51,iVar2);
    return;
  }
  uVar5 = Pokepic_GetAttr(*(undefined4 *)(iVar2 + 0x30),1);
  *(undefined4 *)(iVar2 + 0x44) = uVar5;
  *(undefined4 *)(iVar2 + 0x48) = uVar5;
  iVar4 = ov07_0221FAA0(param_1,uVar3);
  *(int *)(iVar2 + 0x3c) = 0x50 - iVar4;
  *(int *)(iVar2 + 0x40) = 0x50 - iVar4;
  if (0 < *(short *)(iVar2 + 0x1c)) {
    func_0x0200908c(*(undefined4 *)(iVar2 + 0x30),0,0,0x50,*(undefined4 *)(iVar2 + 0x3c));
    ov07_0221C410(*(undefined4 *)(iVar2 + 4),0x2225bc5,iVar2);
    return;
  }
  *(undefined4 *)(iVar2 + 0x3c) = 0;
  *(int *)(iVar2 + 0x44) = *(int *)(iVar2 + 0x44) + *(int *)(iVar2 + 0x40);
  Pokepic_SetAttr(*(undefined4 *)(iVar2 + 0x30),1);
  func_0x0200908c(*(undefined4 *)(iVar2 + 0x30),0,0,0x50,*(undefined4 *)(iVar2 + 0x3c));
  ov07_0221C410(*(undefined4 *)(iVar2 + 4),0x2225b39,iVar2);
  return;
}

