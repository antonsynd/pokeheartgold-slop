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
undefined4 ov07_0221C478(void);
undefined4 ov07_0221FF34(undefined4, undefined4, undefined4);
undefined4 ov07_02231B90(undefined4, undefined4, undefined4);
undefined4 ov07_0222036C(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_02231924(undefined4, undefined4);
undefined4 ov07_0221F9A8(undefined4, undefined4, undefined4);
undefined4 ov07_0222043C(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);

void ov07_0222050C(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,int param_5,
                  undefined4 param_6)

{
  undefined4 uVar1;
  int iVar2;
  short sStack_94;
  short sStack_92;
  short sStack_90;
  int iStack_8c;
  int iStack_88;
  int iStack_84;
  int iStack_80;
  int iStack_7c;
  int iStack_78;
  short asStack_74 [2];
  short sStack_70;
  short sStack_6c;
  short asStack_68 [2];
  short sStack_64;
  short sStack_60;
  short asStack_5c [2];
  short sStack_58;
  short sStack_54;
  short asStack_50 [2];
  short sStack_4c;
  short sStack_48;
  short asStack_44 [2];
  short sStack_40;
  short sStack_3c;
  short asStack_38 [2];
  short sStack_34;
  short sStack_30;
  short asStack_2c [2];
  short sStack_28;
  short sStack_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;

  ov07_0221C478();
  uVar1 = ov07_02231924(param_1,param_3);
  iVar2 = ov07_02231924(param_1,param_4);
  ov07_0221F9A8(param_1,asStack_2c,3);
  ov07_0221F9A8(param_1,asStack_38,3);
  ov07_0221F9A8(param_1,asStack_50,3);
  ov07_0221F9A8(param_1,asStack_44,3);
  ov07_0221F9A8(param_1,asStack_68,3);
  ov07_0221F9A8(param_1,asStack_74,3);
  ov07_0221F9A8(param_1,asStack_5c,3);
  sStack_94 = asStack_2c[0];
  sStack_92 = sStack_28;
  sStack_90 = sStack_24;
  switch(uVar1) {
  default:
    break;
  case 1:
    sStack_94 = -asStack_2c[0];
    sStack_92 = -sStack_28;
    sStack_90 = -sStack_24;
    break;
  case 2:
    if (iVar2 == 3) {
      sStack_94 = asStack_38[0];
      sStack_92 = sStack_34;
      sStack_90 = sStack_30;
    }
    else if (iVar2 == 5) {
      sStack_94 = asStack_50[0];
      sStack_92 = sStack_4c;
      sStack_90 = sStack_48;
    }
    else {
      sStack_94 = asStack_44[0];
      sStack_92 = sStack_40;
      sStack_90 = sStack_3c;
    }
    break;
  case 3:
    if (iVar2 == 2) {
      sStack_94 = -asStack_38[0];
      sStack_92 = -sStack_34;
      sStack_90 = -sStack_30;
    }
    else if (iVar2 == 5) {
      sStack_94 = -asStack_44[0];
      sStack_92 = -sStack_40;
      sStack_90 = -sStack_3c;
    }
    else {
      sStack_94 = -asStack_68[0];
      sStack_92 = -sStack_64;
      sStack_90 = -sStack_60;
    }
    break;
  case 4:
    if (iVar2 == 3) {
      sStack_94 = asStack_68[0];
      sStack_92 = sStack_64;
      sStack_90 = sStack_60;
    }
    else if (iVar2 == 5) {
      sStack_94 = asStack_74[0];
      sStack_92 = sStack_70;
      sStack_90 = sStack_6c;
    }
    else {
      sStack_94 = asStack_5c[0];
      sStack_92 = sStack_58;
      sStack_90 = sStack_54;
    }
    break;
  case 5:
    if (iVar2 == 3) {
      sStack_94 = -asStack_5c[0];
      sStack_92 = -sStack_58;
      sStack_90 = -sStack_54;
    }
    else if (iVar2 == 2) {
      sStack_94 = -asStack_50[0];
      sStack_92 = -sStack_4c;
      sStack_90 = -sStack_48;
    }
    else {
      sStack_94 = -asStack_74[0];
      sStack_92 = -sStack_70;
      sStack_90 = -sStack_6c;
    }
  }
  iVar2 = ov07_0221FF34(param_1,param_3,param_4);
  iStack_80 = 0;
  iStack_7c = 0;
  iStack_78 = 0;
  ov07_0221F9A8(param_1,&iStack_80,3);
  ov07_02231B90(param_1,param_3,&iStack_8c);
  if (((iStack_80 == 0) && (iStack_7c == 0)) && (iStack_78 == 0)) {
    iStack_20 = iStack_8c;
    iStack_1c = iStack_88;
    iStack_18 = iStack_84;
    *(int *)(param_2 + 0x28) = iStack_8c + *(int *)(**(int **)(param_2 + 0x20) + 4);
    *(int *)(param_2 + 0x2c) = iStack_88 + *(int *)(**(int **)(param_2 + 0x20) + 8);
    *(int *)(param_2 + 0x30) = iStack_84 + *(int *)(**(int **)(param_2 + 0x20) + 0xc);
  }
  else {
    if ((iStack_80 == 0) && (iStack_7c == 0xc80)) {
      iVar2 = 1;
    }
    iStack_20 = iVar2 * iStack_80;
    iStack_1c = iVar2 * iStack_7c;
    iStack_18 = iVar2 * iStack_84;
    *(int *)(param_2 + 0x28) = iStack_20 + *(int *)(**(int **)(param_2 + 0x20) + 4);
    *(int *)(param_2 + 0x2c) = iStack_1c + *(int *)(**(int **)(param_2 + 0x20) + 8);
    *(int *)(param_2 + 0x30) = iStack_18 + *(int *)(**(int **)(param_2 + 0x20) + 0xc);
  }
  if (param_5 != 0) {
    if (param_5 == 1) {
      ov07_0222036C(param_1,param_2,param_3,param_4,param_6,iVar2,&iStack_20);
    }
    else if (param_5 == 2) {
      ov07_0222043C(param_1,param_2,param_3,param_4,param_6,iVar2,&iStack_20);
    }
  }
  *(short *)(param_2 + 0x50) = sStack_94;
  *(short *)(param_2 + 0x52) = sStack_92;
  *(short *)(param_2 + 0x54) = sStack_90;
  return;
}

