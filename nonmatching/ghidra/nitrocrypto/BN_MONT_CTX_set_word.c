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
undefined4 BN_set_bit();
undefined4 BN_set_word();
undefined4 BN_init();
undefined4 BN_mod();
undefined4 BN_free();
undefined4 bn_zexpand();
undefined4 BN_num_bits();
undefined4 BN_copy();
undefined4 BN_lshift();
undefined4 BN_sub_word();
undefined4 BN_mod_inverse_word();
undefined4 bn_div_words();

undefined4 BN_MONT_CTX_set_word(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  int *piStack_28;
  int iStack_24;

  if (param_2[1] == 0) {
    return 0;
  }
  iVar1 = BN_copy(param_1 + 8);
  if (iVar1 == 0) {
    return 0;
  }
  BN_init(&piStack_28);
  *param_1 = 1;
  iVar1 = BN_num_bits(param_2);
  param_1[2] = (int)(iVar1 + 0x1f + ((uint)(iVar1 + 0x1f >> 4) >> 0x1b)) >> 5;
  iVar1 = BN_set_word(param_1 + 3,0);
  if (iVar1 == 0) {
    return 0;
  }
  iVar1 = BN_set_bit(param_1 + 3,0x20);
  if (iVar1 != 0) {
    uVar4 = *(undefined4 *)*param_2;
    uVar2 = BN_mod_inverse_word(uVar4);
    iVar1 = BN_set_word(&piStack_28,uVar2);
    if ((iVar1 != 0) && (iVar1 = BN_lshift(&piStack_28,&piStack_28,0x20), iVar1 != 0)) {
      if ((iStack_24 == 0) || ((iStack_24 == 1 && (*piStack_28 == 0)))) {
        iVar1 = BN_set_word(&piStack_28,0xffffffff);
        if (iVar1 == 0) goto LAB_02238a30;
      }
      else {
        BN_sub_word(&piStack_28,1);
      }
      if (iStack_24 < 1) {
        iVar1 = 0;
      }
      else {
        iVar1 = *piStack_28;
      }
      if (iStack_24 < 2) {
        iVar3 = 0;
      }
      else {
        iVar3 = piStack_28[1];
      }
      uVar2 = bn_div_words(iVar3,iVar1,uVar4);
      param_1[0x12] = uVar2;
      BN_set_word(param_1 + 3,0);
      iVar1 = BN_set_bit(param_1 + 3,param_1[2] << 6);
      if (iVar1 != 0) {
        BN_mod(param_1 + 3,param_1 + 3,param_1 + 8,param_3);
        bn_zexpand(param_1 + 3,param_1[2]);
      }
    }
  }
LAB_02238a30:
  BN_free(&piStack_28);
  return 1;
}

