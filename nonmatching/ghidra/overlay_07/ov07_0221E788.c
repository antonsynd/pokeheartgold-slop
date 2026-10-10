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
undefined4 ov07_02222D90(void);
undefined4 SysTask_CreateOnMainQueue(undefined4, undefined4, undefined4);
undefined4 ov07_02222BE4(undefined4, undefined4, undefined4);
undefined4 ov07_0221DDB0(undefined4, undefined4, undefined4);
undefined4 ov07_0221DD38(undefined4, undefined4, undefined4);
undefined4 Heap_Alloc(undefined4, undefined4);
undefined4 ov07_0221FAF8(undefined4);
undefined4 ov07_02222D88(undefined4, undefined4);
extern undefined ov07_02234C20;

undefined4 ov07_0221E788(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  short sVar5;
  undefined4 *puVar6;
  int iVar7;
  undefined2 *puVar8;
  int iStack_1c;

  puVar6 = *(undefined4 **)(param_1 + 0x48);
  iVar1 = Heap_Alloc(*puVar6,0x28);
  uVar2 = Heap_Alloc(*puVar6,0xc4);
  *(undefined4 *)(iVar1 + 0x20) = uVar2;
  ov07_0221DD38(puVar6 + 0x60,iVar1,2);
  *(ushort *)(param_1 + 0x44) = *(ushort *)(param_1 + 0x44) | 2;
  *(undefined4 *)(iVar1 + 0x18) = 0;
  ov07_0221FAF8(puVar6);
  uVar2 = ov07_02222D90();
  uVar3 = ov07_02222D88(0,0);
  uVar2 = ov07_02222BE4(uVar2,uVar3,*puVar6);
  sVar5 = 0;
  puVar8 = (undefined2 *)&ov07_02234C20;
  *(undefined4 *)(*(int *)(iVar1 + 0x20) + 0xc0) = uVar2;
  iStack_1c = 0;
  iVar7 = 0;
  do {
    *(short *)(*(int *)(iVar1 + 0x20) + iVar7) = sVar5;
    *(short *)(*(int *)(iVar1 + 0x20) + iVar7 + 2) = *(short *)(*(int *)(iVar1 + 0x20) + iVar7) + 8;
    *(undefined2 *)(*(int *)(iVar1 + 0x20) + iVar7 + 4) = *puVar8;
    *(undefined2 *)(*(int *)(iVar1 + 0x20) + iVar7 + 6) = 0;
    uVar2 = ov07_02222D88(0,0);
    *(undefined4 *)(*(int *)(iVar1 + 0x20) + iVar7 + 8) = uVar2;
    iVar4 = ov07_0221DDB0(param_1,*(undefined4 *)(param_1 + 0x48),6);
    if (iVar4 == 1) {
      iVar4 = *(int *)(iVar1 + 0x20) + iVar7;
      *(short *)(iVar4 + 4) = -*(short *)(iVar4 + 4);
    }
    sVar5 = sVar5 + 8;
    iStack_1c = iStack_1c + 1;
    iVar7 = iVar7 + 0xc;
    puVar8 = puVar8 + 1;
  } while (iStack_1c < 0x10);
  SysTask_CreateOnMainQueue(0x221e87d,iVar1,0x1000);
  return 0;
}

