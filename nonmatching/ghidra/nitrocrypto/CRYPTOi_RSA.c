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
undefined4 BN_CTX_free();
undefined4 BN_set_word();
undefined4 BN_init();
undefined4 BN_free();
undefined4 BN_num_bits();
undefined4 BN_mod_exp();
undefined4 BN_bin2bn();
undefined4 BN_CTX_new();
undefined4 BN_bn2bin();

undefined4
CRYPTOi_RSA(int param_1,int param_2,int param_3,undefined4 param_4,int param_5,undefined4 param_6,
           undefined4 param_7)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 auStack_6c [20];
  undefined1 auStack_58 [20];
  undefined1 auStack_44 [20];
  undefined1 auStack_30 [24];

  if (((param_1 != 0) && (param_3 != 0)) && (param_5 != 0)) {
    iVar1 = BN_CTX_new();
    BN_init(auStack_6c);
    BN_init(auStack_58);
    BN_init(auStack_44);
    BN_init(auStack_30);
    if (iVar1 == 0) {
      uVar3 = 0xfffffffe;
    }
    else {
      iVar2 = BN_bin2bn(param_3,param_4,auStack_6c);
      if (iVar2 == 0) {
        uVar3 = 0xfffffffe;
      }
      else {
        iVar2 = BN_set_word(auStack_44,param_7);
        if (iVar2 == 0) {
          uVar3 = 0xfffffffe;
        }
        else {
          iVar2 = BN_bin2bn(param_5,param_6,auStack_30);
          if (iVar2 == 0) {
            uVar3 = 0xfffffffe;
          }
          else {
            iVar2 = BN_mod_exp(auStack_58,auStack_6c,auStack_44,auStack_30,iVar1);
            if (iVar2 == 0) {
              uVar3 = 0xfffffffe;
            }
            else {
              iVar2 = BN_num_bits(auStack_58);
              if (param_2 < (int)(iVar2 + 7 + ((uint)(iVar2 + 7 >> 2) >> 0x1d)) >> 3) {
                uVar3 = 0xffffffff;
              }
              else {
                uVar3 = BN_bn2bin(auStack_58,param_1);
              }
            }
          }
        }
      }
    }
    BN_free(auStack_6c);
    BN_free(auStack_58);
    BN_free(auStack_44);
    BN_free(auStack_30);
    if (iVar1 != 0) {
      BN_CTX_free(iVar1);
    }
    return uVar3;
  }
  return 0xfffffffd;
}

