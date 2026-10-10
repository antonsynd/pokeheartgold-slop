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
undefined4 BN_usub();
undefined4 BN_set_word();
undefined4 BN_mul();
undefined4 BN_ucmp();
undefined4 BN_num_bits();
undefined4 BN_rshift();
undefined4 BN_add_word();
undefined4 BN_copy();
undefined4 BN_reciprocal();

undefined4 BN_div_recp(int *param_1,int *param_2,int param_3,int param_4,int *param_5)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int *piVar6;
  int iVar7;
  undefined4 uStack_30;

  iVar7 = *param_5;
  *param_5 = iVar7 + 1;
  piVar6 = param_5 + *param_5 * 5 + 1;
  *param_5 = *param_5 + 1;
  uStack_30 = 0;
  if (param_1 == (int *)0x0) {
    param_1 = param_5 + *param_5 * 5 + 1;
    *param_5 = *param_5 + 1;
  }
  if (param_2 == (int *)0x0) {
    param_2 = param_5 + *param_5 * 5 + 1;
    *param_5 = *param_5 + 1;
  }
  iVar2 = BN_ucmp(param_3,param_4);
  if (iVar2 < 0) {
    BN_set_word(param_1,0);
    BN_copy(param_2,param_3);
    *param_5 = iVar7;
    return 1;
  }
  iVar3 = BN_num_bits(param_3);
  iVar2 = *(int *)(param_4 + 0x28) * 2;
  if (iVar3 < iVar2) {
    iVar5 = 0;
    iVar3 = iVar2;
  }
  else {
    iVar5 = (iVar3 + *(int *)(param_4 + 0x28) * -2) / 2;
  }
  if (iVar3 != *(int *)(param_4 + 0x2c)) {
    uVar4 = BN_reciprocal(param_4 + 0x14,param_4,iVar3,param_5);
    *(undefined4 *)(param_4 + 0x2c) = uVar4;
  }
  iVar2 = BN_rshift(param_5 + iVar7 * 5 + 1,param_3,iVar3 / 2 - iVar5);
  if (((iVar2 != 0) &&
      (iVar2 = BN_mul(piVar6,param_5 + iVar7 * 5 + 1,param_4 + 0x14,param_5), iVar2 != 0)) &&
     (iVar2 = BN_rshift(param_1,piVar6,iVar3 / 2 + iVar5), iVar2 != 0)) {
    param_1[3] = 0;
    iVar2 = BN_mul(piVar6,param_4,param_1,param_5);
    if ((iVar2 != 0) && (iVar2 = BN_usub(param_2,param_3,piVar6), iVar2 != 0)) {
      param_2[3] = 0;
      iVar3 = BN_ucmp(param_2,param_4);
      iVar2 = 0;
      while (-1 < iVar3) {
        if (((2 < iVar2) || (iVar3 = BN_usub(param_2,param_2,param_4), iVar3 == 0)) ||
           (iVar3 = BN_add_word(param_1,1), iVar3 == 0)) goto LAB_0223867c;
        iVar3 = BN_ucmp(param_2,param_4);
        iVar2 = iVar2 + 1;
      }
      bVar1 = true;
      if ((param_2[1] != 0) && ((param_2[1] != 1 || (*(int *)*param_2 != 0)))) {
        bVar1 = false;
      }
      if (bVar1) {
        iVar2 = 0;
      }
      else {
        iVar2 = *(int *)(param_3 + 0xc);
      }
      param_2[3] = iVar2;
      uStack_30 = 1;
      param_1[3] = *(uint *)(param_3 + 0xc) ^ *(uint *)(param_4 + 0xc);
    }
  }
LAB_0223867c:
  *param_5 = iVar7;
  return uStack_30;
}

