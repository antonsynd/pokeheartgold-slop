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
undefined4 ManagedSprite_SetDrawFlag(undefined4, undefined4);
undefined4 SysTask_CreateOnMainQueue(undefined4, undefined4, undefined4);
undefined4 ov07_0221D3CC(undefined4, undefined4);
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_0221FAB0(undefined4);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 ov07_02231924(undefined4, undefined4);
undefined4 ov07_0221C470(undefined4);
undefined4 func_0x0200dd68(undefined4, undefined4) __asm__("sub_0200DD68");

void ov07_0221DAF4(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;

  iVar1 = *(int *)(param_1 + 0x18);
  *(undefined4 **)(param_1 + 0x18) = (undefined4 *)(iVar1 + 4);
  uVar2 = *(undefined4 *)(iVar1 + 4);
  iVar7 = param_1 + 0x54;
  *(int **)(param_1 + 0x18) = (int *)(iVar1 + 8);
  iVar6 = *(int *)(iVar1 + 8);
  *(int **)(param_1 + 0x18) = (int *)(iVar1 + 0xc);
  iVar5 = *(int *)(iVar1 + 0xc);
  *(int *)(param_1 + 0x18) = iVar1 + 0x10;
  iVar6 = iVar6 * 0x10;
  *(int *)(param_1 + 0x4c + iVar6) = param_1;
  *(undefined4 *)(param_1 + iVar6 + 0x50) = *(undefined4 *)(param_1 + 0x138);
  *(undefined4 *)(iVar7 + iVar6) = *(undefined4 *)(param_1 + iVar5 * 4 + 0x13c);
  *(undefined4 *)(param_1 + iVar6 + 0x58) = 1;
  ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar7 + iVar6),0);
  iVar1 = ov07_0221FAB0(param_1);
  if (iVar1 == 1) {
    uVar3 = ov07_0221C468(param_1);
    iVar1 = ov07_02231924(param_1,uVar3);
    uVar3 = ov07_0221C470(param_1);
    uVar3 = ov07_02231924(param_1,uVar3);
    uVar4 = ov07_0221D3CC(param_1,uVar2);
    iVar5 = ov07_0221FA48(param_1,uVar4);
    if (iVar5 == 0) {
      iVar5 = 0;
    }
    else {
      iVar5 = Pokepic_GetAttr(iVar5,6);
    }
    if (iVar5 == 1) {
      ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar7 + iVar6),0);
    }
    else {
      ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar7 + iVar6),1);
    }
    switch(uVar2) {
    case 0:
      if (iVar1 - 3U < 2) {
        func_0x0200dd68(*(undefined4 *)(iVar7 + iVar6),1);
      }
      else {
        ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x54 + iVar6),0);
        func_0x0200dd68(*(undefined4 *)(param_1 + 0x54 + iVar6),0xff);
      }
      break;
    case 1:
      switch(uVar3) {
      case 2:
        func_0x0200dd68(*(undefined4 *)(iVar7 + iVar6),0xff);
        break;
      case 3:
        func_0x0200dd68(*(undefined4 *)(iVar7 + iVar6),1);
        break;
      case 4:
        func_0x0200dd68(*(undefined4 *)(iVar7 + iVar6),1);
        break;
      case 5:
        func_0x0200dd68(*(undefined4 *)(iVar7 + iVar6),0xff);
      }
      break;
    case 2:
      if ((iVar1 == 5) || (iVar1 == 2)) {
        func_0x0200dd68(*(undefined4 *)(iVar7 + iVar6),1);
      }
      else {
        ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x54 + iVar6),0);
        func_0x0200dd68(*(undefined4 *)(param_1 + 0x54 + iVar6),0xff);
      }
      break;
    case 3:
      switch(uVar3) {
      case 2:
        func_0x0200dd68(*(undefined4 *)(iVar7 + iVar6),1);
        break;
      case 3:
        func_0x0200dd68(*(undefined4 *)(iVar7 + iVar6),0xff);
        break;
      case 4:
        func_0x0200dd68(*(undefined4 *)(iVar7 + iVar6),0xff);
        break;
      case 5:
        func_0x0200dd68(*(undefined4 *)(iVar7 + iVar6),1);
      }
    }
    SysTask_CreateOnMainQueue(0x221dad1,param_1 + 0x4c + iVar6,0x1000);
  }
  return;
}

