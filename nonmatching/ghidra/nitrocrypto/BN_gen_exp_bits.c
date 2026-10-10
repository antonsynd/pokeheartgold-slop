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
undefined4 BN_gen_exp_string();
undefined4 bn_expand2();
extern undefined UNK_0223bb3c __asm__("sub_0223BB3C");
extern undefined UNK_0223bb54 __asm__("sub_0223BB54");
extern undefined UNK_0223bb48 __asm__("sub_0223BB48");

int BN_gen_exp_bits(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,int *param_4)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  undefined *puVar4;
  int iVar5;
  undefined1 uVar6;
  
  param_4 = param_4 + *param_4 * 5 + 1;
  iVar1 = param_1[1];
  puVar4 = (undefined *)0x0;
  if (iVar1 == 0) {
    return 0;
  }
  if (iVar1 == 1) {
    if (*(int *)*param_1 == 0x10001) {
      puVar4 = &UNK_0223bb3c;
    }
    else if (*(int *)*param_1 == 0x11) {
      puVar4 = &UNK_0223bb54;
    }
    else if (*(int *)*param_1 == 3) {
      puVar4 = &UNK_0223bb48;
    }
    uVar6 = 1;
    iVar3 = 0x20;
    iVar5 = 1;
  }
  else if (iVar1 * 0x20 < 0x100) {
    if (iVar1 * 0x20 < 0x80) {
      uVar6 = 3;
      iVar5 = 4;
      iVar3 = 0xb;
    }
    else {
      iVar3 = 8;
      uVar6 = 4;
      iVar5 = iVar3;
    }
  }
  else {
    uVar6 = 5;
    iVar3 = 7;
    iVar5 = 0x10;
  }
  iVar1 = iVar1 * iVar3 * 2 + 7;
  if (puVar4 == (undefined *)0x0) {
    piVar2 = param_4;
    if (param_4[2] < (int)(iVar1 + ((uint)(iVar1 >> 1) >> 0x1e)) >> 2) {
      piVar2 = (int *)bn_expand2(param_4);
    }
    if (piVar2 == (int *)0x0) {
      return 0;
    }
    puVar4 = (undefined *)*param_4;
    iVar1 = BN_gen_exp_string(puVar4 + 4,param_1,uVar6);
    iVar1 = iVar1 + 2;
    *puVar4 = (char)((uint)iVar1 >> 8);
    puVar4[1] = (char)iVar1;
    puVar4[2] = uVar6;
    puVar4[3] = (char)iVar5;
  }
  else {
    iVar1 = 8;
  }
  *param_2 = puVar4;
  return iVar1 + 2;
}

