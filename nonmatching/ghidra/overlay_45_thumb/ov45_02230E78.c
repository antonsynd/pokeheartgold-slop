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
void * sub_02023F90(void *);
undefined4 func_0x020f2948() __asm__("sub_020F2948");
undefined4 MTX_Identity33_(void *);
undefined4 NNS_G3dGlbSetBaseScale(void *);
void * sub_02023E94(void *);
undefined4 sub_0201FA34(void *, void *);
void * sub_02023E68(void *);
undefined4 MI_Copy36B(void *, void *);
extern uint  uRam021da598 __asm__("sub_021DA598");

undefined4
ov45_02230E78(undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  int *piVar2;
  int iVar3;
  longlong lVar4;
  undefined auStack_58 [36];
  undefined2 uStack_34;
  undefined2 uStack_32;
  undefined2 uStack_30;
  int iStack_2c;
  int iStack_28;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  undefined4 uStack_14;
  
  uStack_14 = param_4;
  puVar1 = sub_02023F90(param_1);
  if (puVar1 == (undefined *)0x0) {
    puVar1 = (undefined *)0x0;
  }
  else {
    puVar1 = puVar1 + 0x14;
  }
  piVar2 = (int *)sub_02023E68(param_1);
  iStack_20 = *piVar2;
  iStack_1c = piVar2[1];
  iStack_18 = piVar2[2];
  uStack_34 = *(undefined2 *)(puVar1 + 0x1e);
  uStack_32 = *(undefined2 *)(puVar1 + 0x20);
  uStack_30 = *(undefined2 *)(puVar1 + 0x20);
  iStack_2c = *(int *)(puVar1 + 0x24) >> 0xc;
  iStack_28 = *(int *)(puVar1 + 0x24) >> 0xc;
  iStack_24 = *(int *)(puVar1 + 0x24) >> 0xc;
  lVar4 = func_0x020f2948((int)*(short *)(puVar1 + 0x18),(int)*(short *)(puVar1 + 0x18) >> 0x1f,
                          *(int *)(puVar1 + 0x24),*(int *)(puVar1 + 0x24) >> 0x1f);
  iStack_20 = iStack_20 +
              ((uint)(lVar4 + 0x800) >> 0xc | (int)((ulonglong)(lVar4 + 0x800) >> 0x20) * 0x100000);
  lVar4 = func_0x020f2948((int)*(short *)(puVar1 + 0x1a),(int)*(short *)(puVar1 + 0x1a) >> 0x1f,
                          *(int *)(puVar1 + 0x24),*(int *)(puVar1 + 0x24) >> 0x1f);
  iStack_1c = iStack_1c +
              ((uint)(lVar4 + 0x800) >> 0xc | (int)((ulonglong)(lVar4 + 0x800) >> 0x20) * 0x100000);
  lVar4 = func_0x020f2948((int)*(short *)(puVar1 + 0x1c),(int)*(short *)(puVar1 + 0x1c) >> 0x1f,
                          *(int *)(puVar1 + 0x24),*(int *)(puVar1 + 0x24) >> 0x1f);
  iStack_18 = iStack_18 +
              ((uint)(lVar4 + 0x800) >> 0xc | (int)((ulonglong)(lVar4 + 0x800) >> 0x20) * 0x100000);
  lVar4 = func_0x020f2948((int)*(short *)(puVar1 + 0x20),(int)*(short *)(puVar1 + 0x20) >> 0x1f,
                          *(int *)(puVar1 + 0x24),*(int *)(puVar1 + 0x24) >> 0x1f);
  iStack_18 = iStack_18 -
              ((uint)(lVar4 + 0x800) >> 0xc | (int)((ulonglong)(lVar4 + 0x800) >> 0x20) * 0x100000);
  MTX_Identity33_(auStack_58);
  MI_Copy36B(auStack_58,(undefined *)0x21da558);
  uRam021da598 = uRam021da598 & 0xffffff5b;
  puVar1 = sub_02023E94(param_1);
  NNS_G3dGlbSetBaseScale(puVar1);
  iVar3 = sub_0201FA34((undefined *)&iStack_20,(undefined *)&uStack_34);
  if (iVar3 == 0) {
    return 0;
  }
  return 1;
}

