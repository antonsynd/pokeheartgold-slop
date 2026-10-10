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
undefined4 BN_usub();
undefined4 BN_set_word();
undefined4 BN_init();
undefined4 BN_sub();
undefined4 BN_ucmp();
undefined4 BN_add();
undefined4 BN_num_bits();
undefined4 BN_rshift();
undefined4 BN_copy();
undefined4 BN_lshift();
undefined4 bn_expand2();
undefined4 bn_mul_words();
undefined4 bn_div_words();



undefined4 BN_div(uint *param_1,int param_2,int param_3,undefined4 *param_4,uint *param_5)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint *puVar5;
  uint uVar6;
  undefined4 uVar7;
  uint *puVar8;
  uint *puVar9;
  uint *puVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  uint uVar16;
  uint uVar17;
  uint uVar18;
  uint *puVar19;
  int iVar20;
  uint uVar21;
  uint uVar22;
  int iStack_64;
  uint *puStack_50;
  uint uStack_3c;
  int iStack_38;
  uint uStack_34;
  int iStack_30;
  int iStack_2c;

  if ((param_4[1] == 0) || ((param_4[1] == 1 && (*(int *)*param_4 == 0)))) {
    return 0;
  }
  iVar1 = BN_ucmp(param_3,param_4);
  if (iVar1 < 0) {
    if ((param_2 != 0) && (iVar1 = BN_copy(param_2,param_3), iVar1 == 0)) {
      return 0;
    }
    if (param_1 != (uint *)0x0) {
      BN_set_word(param_1,0);
    }
    return 1;
  }
  puVar8 = param_5 + *param_5 * 5 + 1;
  puVar8[3] = 0;
  uVar17 = *param_5;
  puVar9 = param_5 + (uVar17 + 1) * 5 + 1;
  puVar10 = param_5 + (uVar17 + 2) * 5 + 1;
  if (param_1 == (uint *)0x0) {
    param_1 = param_5 + (uVar17 + 3) * 5 + 1;
  }
  iVar2 = BN_num_bits(param_4);
  iVar1 = iVar2 >> 0x1f;
  iVar1 = -(((uint)(iVar2 * 0x8000000 + iVar1) >> 0x1b | iVar1 << 5) - iVar1);
  iVar2 = BN_lshift(puVar10,param_4,iVar1 + 0x20);
  if (iVar2 == 0) {
    return 0;
  }
  puVar10[3] = 0;
  iVar2 = BN_lshift(puVar9,param_3,iVar1 + 0x40);
  if (iVar2 == 0) {
    return 0;
  }
  puVar9[3] = 0;
  uVar3 = puVar10[1];
  uVar16 = puVar9[1];
  uVar11 = uVar16 - uVar3;
  BN_init(&iStack_38);
  iStack_38 = *puVar9 + uVar11 * 4;
  iStack_30 = puVar9[2] + 1;
  if (uVar3 == 1) {
    uVar17 = 0;
  }
  uVar4 = *(uint *)(*puVar10 + (uVar3 - 1) * 4);
  if (uVar3 != 1) {
    uVar17 = *(uint *)(*puVar10 + (uVar3 - 2) * 4);
  }
  puVar19 = (uint *)(*puVar9 + (uVar16 - 1) * 4);
  puVar5 = param_1;
  uStack_34 = uVar3;
  if ((int)param_1[2] < (int)(uVar11 + 1)) {
    puVar5 = (uint *)bn_expand2(param_1);
  }
  if (puVar5 != (uint *)0x0) {
    param_1[3] = *(uint *)(param_3 + 0xc) ^ param_4[3];
    param_1[1] = uVar11;
    puStack_50 = (uint *)(*param_1 + (uVar11 - 1) * 4);
    puVar5 = puVar8;
    if ((int)puVar8[2] < (int)(uVar3 + 1)) {
      puVar5 = (uint *)bn_expand2(puVar8);
    }
    if (puVar5 != (uint *)0x0) {
      iVar2 = BN_ucmp(&iStack_38,puVar10);
      if (iVar2 < 0) {
        param_1[1] = param_1[1] - 1;
      }
      else {
        iVar2 = BN_usub(&iStack_38,&iStack_38,puVar10);
        if (iVar2 == 0) {
          return 0;
        }
        *puStack_50 = 1;
        *(undefined4 *)(*param_1 + (param_1[1] - 1) * 4) = 1;
      }
      iStack_64 = 0;
      if (0 < (int)(uVar11 - 1)) {
        if (0 < (int)(uVar11 - 1)) {
          uStack_3c = 0xffffffff;
          do {
            puStack_50 = puStack_50 + -1;
            iStack_38 = iStack_38 + -4;
            uStack_34 = uStack_34 + 1;
            uVar21 = *puVar19;
            uVar18 = puVar19[-1];
            uVar16 = uStack_3c;
            if (uVar21 != uVar4) {
              uVar16 = bn_div_words(uVar21,uVar18,uVar4);
            }
            while( true ) {
              uVar13 = uVar16 & 0xffff;
              uVar14 = uVar16 >> 0x10;
              uVar6 = uVar13 * (uVar17 >> 0x10);
              iVar2 = (uVar17 >> 0x10) * uVar14;
              iVar20 = (uVar4 >> 0x10) * uVar14;
              uVar12 = uVar14 * (uVar17 & 0xffff) + uVar6;
              if (uVar12 < uVar6) {
                iVar2 = iVar2 + 0x10000;
              }
              uVar15 = iVar2 + (uVar12 >> 0x10);
              uVar22 = (uVar17 & 0xffff) * uVar13 + uVar12 * 0x10000;
              uVar6 = uVar13 * (uVar4 >> 0x10);
              uVar14 = uVar14 * (uVar4 & 0xffff) + uVar6;
              if (uVar22 < uVar12 * 0x10000) {
                uVar15 = uVar15 + 1;
              }
              if (uVar14 < uVar6) {
                iVar20 = iVar20 + 0x10000;
              }
              uVar12 = iVar20 + (uVar14 >> 0x10);
              uVar6 = (uVar4 & 0xffff) * uVar13 + uVar14 * 0x10000;
              if (uVar6 < uVar14 * 0x10000) {
                uVar12 = uVar12 + 1;
              }
              uVar6 = uVar18 - uVar6;
              if (uVar18 < uVar6) {
                uVar12 = uVar12 + 1;
              }
              if (((uVar21 != uVar12) || (uVar15 < uVar6)) ||
                 ((uVar15 == uVar6 && (uVar22 <= puVar19[-2])))) break;
              uVar16 = uVar16 - 1;
            }
            uVar7 = bn_mul_words(*puVar8,*puVar10,uVar3,uVar16);
            uVar18 = uStack_34;
            *(undefined4 *)(*puVar8 + uVar3 * 4) = uVar7;
            uVar21 = uVar3 + 1;
            if (0 < (int)uVar21) {
              do {
                if (*(int *)(*puVar8 + (uVar21 - 1) * 4) != 0) break;
                uVar21 = uVar21 - 1;
              } while (0 < (int)uVar21);
            }
            puVar8[1] = uVar21;
            BN_sub(&iStack_38,&iStack_38,puVar8);
            uVar21 = uStack_34;
            puVar9[1] = (puVar9[1] + uStack_34) - uVar18;
            if (iStack_2c != 0) {
              uVar16 = uVar16 - 1;
              BN_add(&iStack_38,&iStack_38,puVar10);
              puVar9[1] = puVar9[1] + (uStack_34 - uVar21);
            }
            puVar19 = puVar19 + -1;
            *puStack_50 = uVar16;
            iStack_64 = iStack_64 + 1;
          } while (iStack_64 < (int)(uVar11 - 1));
        }
      }
      bn_fix_top(puVar9);
      if (param_2 != 0) {
        uVar7 = *(undefined4 *)(param_3 + 0xc);
        iVar1 = BN_rshift(param_2,puVar9,iVar1 + 0x40);
        if (iVar1 == 0) {
          return 0;
        }
        *(undefined4 *)(param_2 + 0xc) = uVar7;
      }
      return 1;
    }
  }
  return 0;
}

