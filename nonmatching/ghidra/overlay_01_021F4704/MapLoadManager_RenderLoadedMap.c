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
undefined4 ov01_021F5FB8(undefined4, undefined4, undefined4);
undefined4 ov01_021FBA00(undefined4);
undefined4 ov01_021F3A3C(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 GF3dRender_DrawModel(undefined4, undefined4, undefined4, undefined4);
extern undefined ov01_02206BE4;

void MapLoadManager_RenderLoadedMap(int param_1,int param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
  undefined4 auStack_50 [9];
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  param_1 = param_1 * 4;
  uStack_20 = 0;
  uStack_1c = 0;
  iVar5 = param_2 + 0x90;
  uStack_18 = 0;
  ov01_021F5FB8(*(undefined4 *)(*(int *)(iVar5 + param_1) + 0x860),*(undefined4 *)(param_2 + 0xc4),
                *(undefined4 *)(param_2 + 0xc0));
  if (*(int *)(*(int *)(iVar5 + param_1) + 0x864) == 1) {
    uStack_2c = 0x1000;
    uStack_28 = 0x1000;
    puVar4 = (undefined4 *)&ov01_02206BE4;
    uStack_24 = 0x1000;
    puVar3 = auStack_50;
    iVar6 = 4;
    do {
      uVar1 = *puVar4;
      uVar2 = puVar4[1];
      puVar4 = puVar4 + 2;
      *puVar3 = uVar1;
      puVar3[1] = uVar2;
      puVar3 = puVar3 + 2;
      iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
    *puVar3 = *puVar4;
    GF3dRender_DrawModel(*(int *)(iVar5 + param_1) + 0x800,&uStack_20,auStack_50,&uStack_2c);
  }
  iVar5 = *(int *)(iVar5 + param_1);
  if (*(int *)(iVar5 + 0x864) == 1) {
    uVar1 = ov01_021FBA00(*(undefined4 *)(param_2 + 0xb8));
    ov01_021F3A3C(&uStack_20,*(undefined4 *)(param_2 + 0xb8),uVar1,param_3,
                  *(undefined4 *)(iVar5 + 0x868));
  }
  return;
}

