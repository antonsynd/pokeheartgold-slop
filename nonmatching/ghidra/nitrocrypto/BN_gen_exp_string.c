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
undefined4 func_0x020f2998() __asm__("sub_020F2998");
extern undefined shift_val;

int BN_gen_exp_string(char *param_1,int *param_2,uint param_3)

{
  int iVar1;
  uint *puVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  char *pcVar9;
  uint uVar10;
  uint uVar11;
  uint *puVar12;
  
  if (6 < (int)param_3) {
    param_3 = 6;
  }
  iVar3 = *(int *)(&shift_val + param_3 * 4);
  uVar6 = 0;
  iVar1 = func_0x020f2998(param_3 + param_2[1] * 0x20 + -1,param_3);
  iVar1 = iVar1 * 2;
  param_1[iVar1 + 2] = '\0';
  param_1[iVar1 + 1] = '\0';
  puVar2 = (uint *)*param_2;
  iVar4 = param_2[1];
  uVar7 = *puVar2;
  pcVar9 = param_1 + iVar1;
  uVar8 = 0;
  uVar5 = uVar7;
  uVar11 = 0;
  puVar12 = puVar2 + 1;
  if (1 < iVar4) {
    uVar8 = puVar2[1];
    puVar12 = puVar2 + 2;
  }
  do {
    while( true ) {
      uVar5 = uVar5 & (1 << (param_3 & 0xff)) - 1U;
      uVar10 = (uint)*(byte *)(iVar3 + uVar5);
      if (uVar10 == 0) break;
      uVar11 = uVar11 + uVar10;
      uVar6 = uVar6 + uVar10;
      uVar10 = uVar8;
      puVar2 = puVar12;
      if (0x1f < uVar6) {
        if (iVar4 < 2) break;
        iVar4 = iVar4 + -1;
        if (iVar4 < 2) {
          uVar10 = 0;
        }
        else {
          puVar2 = puVar12 + 1;
          uVar10 = *puVar12;
        }
        uVar6 = uVar6 - 0x20;
        uVar7 = uVar8;
      }
      uVar8 = uVar10;
      uVar5 = uVar7;
      puVar12 = puVar2;
      if (uVar6 != 0) {
        uVar5 = uVar7 >> (uVar6 & 0xff) | uVar10 << (0x20 - uVar6 & 0xff);
      }
    }
    if (uVar5 == 0) goto LAB_02238bc8;
    *pcVar9 = (char)uVar11;
    pcVar9[-1] = (char)uVar5;
    pcVar9 = pcVar9 + -2;
    if (0xff < uVar11) {
      for (; 0xff < uVar11; uVar11 = uVar11 - 0x100) {
        *pcVar9 = -1;
        pcVar9[-1] = '\0';
        pcVar9 = pcVar9 + -2;
      }
    }
    uVar11 = uVar6 + param_3;
    uVar6 = uVar11;
    uVar10 = uVar8;
    puVar2 = puVar12;
    if (0x1f < uVar11) {
      if (iVar4 < 2) {
LAB_02238bc8:
        iVar1 = 2;
        for (pcVar9 = pcVar9 + 1; (*pcVar9 != '\0' || (pcVar9[1] != '\0')); pcVar9 = pcVar9 + 2) {
          *param_1 = *pcVar9;
          iVar1 = iVar1 + 2;
          param_1[1] = pcVar9[1];
          param_1 = param_1 + 2;
        }
        *param_1 = '\0';
        param_1[1] = '\0';
        return iVar1;
      }
      iVar4 = iVar4 + -1;
      uVar6 = uVar11 - 0x20;
      if (iVar4 < 2) {
        uVar10 = 0;
        uVar6 = uVar11 - 0x20;
        uVar7 = uVar8;
      }
      else {
        puVar2 = puVar12 + 1;
        uVar10 = *puVar12;
        uVar7 = uVar8;
      }
    }
    uVar8 = uVar10;
    uVar5 = uVar7;
    uVar11 = param_3;
    puVar12 = puVar2;
    if (uVar6 != 0) {
      uVar5 = uVar7 >> (uVar6 & 0xff) | uVar10 << (0x20 - uVar6 & 0xff);
    }
  } while( true );
}

