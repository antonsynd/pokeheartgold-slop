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
undefined4 func_0x0202cc30(undefined4, undefined4) __asm__("sub_0202CC30");
undefined4 NARC_New(undefined4, undefined4);
undefined4 sub_02091084(undefined4);
undefined4 ov07_0221FEE4(undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x0202cc48(void) __asm__("sub_0202CC48");
undefined4 GF_AssertFail(void);
undefined4 SysTask_Destroy(undefined4);
undefined4 NARC_Delete(undefined4);

void ov07_02232730(undefined4 param_1,undefined4 *param_2)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  
  switch(param_2[0x24]) {
  case 0:
    uVar3 = NARC_New(0x5f,*param_2);
    param_2[0x23] = uVar3;
    iVar4 = 0;
    do {
      iVar1 = func_0x0202cc30(param_2 + 0x28,iVar4);
      if (((iVar1 != 0) && (uVar2 = func_0x0202cc48(), uVar2 != 0)) && ((int)uVar2 < 0x51)) {
        uVar3 = sub_02091084(uVar2 & 0xff);
        param_2[param_2[4] + 0xe] = iVar1;
        if (param_2[param_2[4] + 5] != 0) {
          GF_AssertFail();
        }
        uVar3 = ov07_0221FEE4(param_2[0x23],*param_2,uVar3,0);
        param_2[param_2[4] + 5] = uVar3;
        if (param_2[param_2[4] + 5] == 0) {
          GF_AssertFail();
        }
        else {
          param_2[4] = param_2[4] + 1;
        }
      }
      iVar4 = iVar4 + 1;
    } while (iVar4 < 2);
    param_2[0x24] = param_2[0x24] + 1;
    return;
  case 1:
    iVar4 = 2;
    do {
      iVar1 = func_0x0202cc30(param_2 + 0x28,iVar4);
      if (((iVar1 != 0) && (uVar2 = func_0x0202cc48(), uVar2 != 0)) && ((int)uVar2 < 0x51)) {
        uVar3 = sub_02091084(uVar2 & 0xff);
        param_2[param_2[4] + 0xe] = iVar1;
        if (param_2[param_2[4] + 5] != 0) {
          GF_AssertFail();
        }
        uVar3 = ov07_0221FEE4(param_2[0x23],*param_2,uVar3,0);
        param_2[param_2[4] + 5] = uVar3;
        if (param_2[param_2[4] + 5] == 0) {
          GF_AssertFail();
        }
        else {
          param_2[4] = param_2[4] + 1;
        }
      }
      iVar4 = iVar4 + 1;
    } while (iVar4 < 4);
    param_2[0x24] = param_2[0x24] + 1;
    return;
  case 2:
    iVar4 = 4;
    do {
      iVar1 = func_0x0202cc30(param_2 + 0x28,iVar4);
      if (((iVar1 != 0) && (uVar2 = func_0x0202cc48(), uVar2 != 0)) && ((int)uVar2 < 0x51)) {
        uVar3 = sub_02091084(uVar2 & 0xff);
        param_2[param_2[4] + 0xe] = iVar1;
        if (param_2[param_2[4] + 5] != 0) {
          GF_AssertFail();
        }
        uVar3 = ov07_0221FEE4(param_2[0x23],*param_2,uVar3,0);
        param_2[param_2[4] + 5] = uVar3;
        if (param_2[param_2[4] + 5] == 0) {
          GF_AssertFail();
        }
        else {
          param_2[4] = param_2[4] + 1;
        }
      }
      iVar4 = iVar4 + 1;
    } while (iVar4 < 6);
    param_2[0x24] = param_2[0x24] + 1;
    return;
  case 3:
    iVar4 = 6;
    do {
      iVar1 = func_0x0202cc30(param_2 + 0x28,iVar4);
      if (((iVar1 != 0) && (uVar2 = func_0x0202cc48(), uVar2 != 0)) && ((int)uVar2 < 0x51)) {
        uVar3 = sub_02091084(uVar2 & 0xff);
        param_2[param_2[4] + 0xe] = iVar1;
        if (param_2[param_2[4] + 5] != 0) {
          GF_AssertFail();
        }
        uVar3 = ov07_0221FEE4(param_2[0x23],*param_2,uVar3,0);
        param_2[param_2[4] + 5] = uVar3;
        if (param_2[param_2[4] + 5] == 0) {
          GF_AssertFail();
        }
        else {
          param_2[4] = param_2[4] + 1;
        }
      }
      iVar4 = iVar4 + 1;
    } while (iVar4 < 8);
    param_2[0x24] = 0xff;
    NARC_Delete(param_2[0x23]);
    SysTask_Destroy(param_1);
  }
  return;
}

