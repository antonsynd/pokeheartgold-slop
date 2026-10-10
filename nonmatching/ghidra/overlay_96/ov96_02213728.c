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
undefined4 func_0x020ccfe0() __asm__("sub_020CCFE0");
undefined4 ov96_02213D00();
undefined4 ov96_02213D2C();
undefined4 sub_02020E80();
undefined4 func_0x020cd224() __asm__("sub_020CD224");
undefined4 GF_AssertFail();
undefined4 sub_02020F4C();

int ov96_02213728(int *param_1,int *param_2,int param_3,int param_4,int *param_5)

{
  bool bVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  int iStack_b8;
  int iStack_b4;
  int iStack_b0;
  int iStack_ac;
  int iStack_a8;
  int iStack_a4;
  int iStack_a0;
  int iStack_9c;
  int iStack_98;
  int iStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  int iStack_60;
  int iStack_5c;
  undefined4 uStack_58;
  int iStack_54;
  int iStack_50;
  undefined4 uStack_4c;
  undefined1 auStack_48 [12];
  int iStack_3c;
  int iStack_38;
  int iStack_34;
  int iStack_30;
  int iStack_2c;
  undefined4 uStack_28;
  int iStack_24;
  int iStack_20;
  undefined4 uStack_1c;
  int iStack_18;

  uVar5 = 0;
  iStack_24 = 0;
  iStack_20 = 0;
  uStack_1c = 0;
  iStack_30 = 0;
  iStack_2c = 0;
  uStack_28 = 0;
  iStack_54 = 0;
  iStack_50 = 0;
  uStack_4c = 0;
  iStack_60 = 0;
  iStack_5c = 0;
  uStack_58 = 0;
  uStack_6c = 0x1000;
  uStack_68 = 0x1000;
  uStack_64 = 0;
  uStack_78 = 0xfffff000;
  uStack_74 = 0x1000;
  uStack_70 = 0;
  uStack_84 = 0x1000;
  uStack_80 = 0xfffff000;
  uStack_7c = 0;
  uStack_90 = 0xfffff000;
  uStack_8c = 0xfffff000;
  uStack_88 = 0;
  *param_5 = 0;
  param_5[1] = 0;
  param_5[2] = 0;
  iStack_a8 = (int)(*param_2 + ((uint)(*param_2 >> 0xb) >> 0x14)) >> 0xc;
  iStack_a4 = (int)(param_2[1] + ((uint)(param_2[1] >> 0xb) >> 0x14)) >> 0xc;
  iStack_b0 = (int)(*param_1 + ((uint)(*param_1 >> 0xb) >> 0x14)) >> 0xc;
  iStack_ac = (int)(param_1[1] + ((uint)(param_1[1] >> 0xb) >> 0x14)) >> 0xc;
  if (param_1[1] < 0x70000) {
    if (0x7ffff < *param_1) {
      uVar5 = 1;
    }
  }
  else if (*param_1 < 0x80000) {
    uVar5 = 2;
  }
  else {
    uVar5 = 3;
  }
  iVar6 = 0;
  bVar1 = false;
  bVar2 = false;
  iStack_18 = param_4;
  if (param_4 != 0) {
    switch(uVar5) {
    case 0:
      iStack_50 = 0x70000;
      iStack_60 = 0x60000;
      iStack_54 = -0x20000;
      iStack_5c = -0x10000;
      func_0x020ccfe0(&uStack_6c,auStack_48);
      iVar6 = 5;
      break;
    case 1:
      iStack_54 = 0xa0000;
      iStack_50 = -0x10000;
      iStack_60 = 0x120000;
      iStack_5c = 0x70000;
      func_0x020ccfe0(&uStack_78,auStack_48);
      iVar6 = 6;
      break;
    case 2:
      iStack_50 = 0xe0000;
      iStack_54 = 0x60000;
      iStack_60 = -0x20000;
      iStack_5c = 0x60000;
      func_0x020ccfe0(&uStack_84,auStack_48);
      iVar6 = 7;
      break;
    case 3:
      iStack_54 = 0x120000;
      iStack_50 = 0x60000;
      iStack_60 = 0xa0000;
      iStack_5c = 0xe0000;
      func_0x020ccfe0(&uStack_90,auStack_48);
      iVar6 = 8;
      break;
    default:
      GF_AssertFail();
    }
    if (iVar6 != 0) {
      iVar3 = param_3 << 0xc;
      func_0x020cd224(iVar3,auStack_48,&iStack_54,&iStack_54);
      func_0x020cd224(iVar3,auStack_48,&iStack_60,&iStack_60);
      iStack_98 = (int)(iStack_54 + ((uint)(iStack_54 >> 0xb) >> 0x14)) >> 0xc;
      iStack_94 = (int)(iStack_50 + ((uint)(iStack_50 >> 0xb) >> 0x14)) >> 0xc;
      iStack_a0 = (int)(iStack_60 + ((uint)(iStack_60 >> 0xb) >> 0x14)) >> 0xc;
      iStack_9c = (int)(iStack_5c + ((uint)(iStack_5c >> 0xb) >> 0x14)) >> 0xc;
      iVar3 = sub_02020F4C(&iStack_98,&iStack_a0,&iStack_a8,&iStack_b0,&iStack_b8);
      if (iVar3 == 0) {
        iVar6 = 0;
      }
      else {
        iVar3 = sub_02020E80(&iStack_98,&iStack_a0,&iStack_b8);
        if (iVar3 != 0) {
          *param_5 = iStack_b8 << 0xc;
          param_5[1] = iStack_b4 << 0xc;
        }
        else {
          iVar4 = param_2[1];
          *param_5 = *param_2;
          param_5[1] = iVar4;
          param_5[2] = param_2[2];
        }
        bVar1 = iVar3 == 0;
        bVar2 = true;
      }
    }
  }
  iVar3 = param_1[1];
  if (iVar3 < 0x70000) {
    iStack_2c = (param_3 + 0x10) * 0x1000;
    if ((iVar3 < iStack_2c) && (param_2[1] == (0x10 - param_3) * 0x1000)) {
      iVar6 = param_2[1];
      *param_5 = *param_2;
      param_5[1] = iVar6;
      param_5[2] = param_2[2];
      return 3;
    }
    iStack_24 = 0x8000;
    iStack_30 = 0xf7000;
    iStack_20 = iStack_2c;
    iVar3 = ov96_02213D2C(&iStack_24,&iStack_30,param_2,param_1,&iStack_3c);
    if (iVar3 != 0) {
      if (bVar1) {
        return iVar6;
      }
      if ((bVar2) && (iStack_38 <= param_5[1])) {
        return iVar6;
      }
      if ((param_4 != 0) &&
         (iVar6 = ov96_02213D00(&iStack_98,&iStack_a0,&iStack_a8,&iStack_3c), iVar6 != 0)) {
        iVar6 = param_2[1];
        *param_5 = *param_2;
        param_5[1] = iVar6;
        param_5[2] = param_2[2];
        return 3;
      }
      *param_5 = iStack_3c;
      param_5[1] = iStack_38;
      param_5[2] = iStack_34;
      return 3;
    }
    iVar3 = *param_1;
    if (iVar3 < 0x80000) {
      iStack_30 = (param_3 + 8) * 0x1000;
      if ((iVar3 < iStack_30) && (*param_2 == iStack_30)) {
        iVar6 = param_2[1];
        *param_5 = *param_2;
        param_5[1] = iVar6;
        param_5[2] = param_2[2];
        return 1;
      }
      iStack_20 = 0xb7000;
      iStack_2c = 0x10000;
      iStack_24 = iStack_30;
      iVar3 = ov96_02213D2C(&iStack_24,&iStack_30,param_2,param_1,&iStack_3c,param_3 + 8);
      if (iVar3 != 0) {
        if (bVar1) {
          return iVar6;
        }
        if ((bVar2) && (iStack_3c <= *param_5)) {
          return iVar6;
        }
        if ((param_4 != 0) &&
           (iVar6 = ov96_02213D00(&iStack_98,&iStack_a0,&iStack_a8,&iStack_3c), iVar6 != 0)) {
          iVar6 = param_2[1];
          *param_5 = *param_2;
          param_5[1] = iVar6;
          param_5[2] = param_2[2];
          return 1;
        }
        *param_5 = iStack_3c;
        param_5[1] = iStack_38;
        param_5[2] = iStack_34;
        return 1;
      }
    }
    else {
      iStack_30 = (0xf7 - param_3) * 0x1000;
      if ((iStack_30 < iVar3) && (*param_2 == iStack_30)) {
        iVar6 = param_2[1];
        *param_5 = *param_2;
        param_5[1] = iVar6;
        param_5[2] = param_2[2];
        return 2;
      }
      iStack_20 = 0x10000;
      iStack_2c = 0xb7000;
      iStack_24 = iStack_30;
      iVar3 = ov96_02213D2C(&iStack_24,&iStack_30,param_2,param_1,&iStack_3c);
      if (iVar3 != 0) {
        if (bVar1) {
          return iVar6;
        }
        if ((bVar2) && (*param_5 <= iStack_3c)) {
          return iVar6;
        }
        if ((param_4 != 0) &&
           (iVar6 = ov96_02213D00(&iStack_98,&iStack_a0,&iStack_a8,&iStack_3c), iVar6 != 0)) {
          iVar6 = param_2[1];
          *param_5 = *param_2;
          param_5[1] = iVar6;
          param_5[2] = param_2[2];
          return 2;
        }
        *param_5 = iStack_3c;
        param_5[1] = iStack_38;
        param_5[2] = iStack_34;
        return 2;
      }
    }
  }
  else {
    iStack_2c = (0xb7 - param_3) * 0x1000;
    if ((iStack_2c < iVar3) && (param_2[1] == iStack_2c)) {
      iVar6 = param_2[1];
      *param_5 = *param_2;
      param_5[1] = iVar6;
      param_5[2] = param_2[2];
      return 4;
    }
    iStack_24 = 0xf7000;
    iStack_30 = 0x8000;
    iStack_20 = iStack_2c;
    iVar3 = ov96_02213D2C(&iStack_24,&iStack_30,param_2,param_1,&iStack_3c);
    if (iVar3 != 0) {
      if (bVar1) {
        return iVar6;
      }
      if ((bVar2) && (param_5[1] <= iStack_38)) {
        return iVar6;
      }
      if ((param_4 != 0) &&
         (iVar6 = ov96_02213D00(&iStack_98,&iStack_a0,&iStack_a8,&iStack_3c), iVar6 != 0)) {
        iVar6 = param_2[1];
        *param_5 = *param_2;
        param_5[1] = iVar6;
        param_5[2] = param_2[2];
        return 4;
      }
      *param_5 = iStack_3c;
      param_5[1] = iStack_38;
      param_5[2] = iStack_34;
      return 4;
    }
    iVar3 = *param_1;
    if (iVar3 < 0x80000) {
      iStack_30 = (param_3 + 8) * 0x1000;
      if ((iVar3 < iStack_30) && (*param_2 == iStack_30)) {
        iVar6 = param_2[1];
        *param_5 = *param_2;
        param_5[1] = iVar6;
        param_5[2] = param_2[2];
        return 1;
      }
      iStack_20 = 0xb7000;
      iStack_2c = 0x10000;
      iStack_24 = iStack_30;
      iVar3 = ov96_02213D2C(&iStack_24,&iStack_30,param_2,param_1,&iStack_3c,param_3 + 8);
      if (iVar3 != 0) {
        if (bVar1) {
          return iVar6;
        }
        if ((bVar2) && (iStack_3c <= *param_5)) {
          return iVar6;
        }
        if ((param_4 != 0) &&
           (iVar6 = ov96_02213D00(&iStack_98,&iStack_a0,&iStack_a8,&iStack_3c), iVar6 != 0)) {
          iVar6 = param_2[1];
          *param_5 = *param_2;
          param_5[1] = iVar6;
          param_5[2] = param_2[2];
          return 1;
        }
        *param_5 = iStack_3c;
        param_5[1] = iStack_38;
        param_5[2] = iStack_34;
        return 1;
      }
    }
    else {
      iStack_30 = (0xf7 - param_3) * 0x1000;
      if ((iStack_30 < iVar3) && (*param_2 == iStack_30)) {
        iVar6 = param_2[1];
        *param_5 = *param_2;
        param_5[1] = iVar6;
        param_5[2] = param_2[2];
        return 2;
      }
      iStack_20 = 0x10000;
      iStack_2c = 0xb7000;
      iStack_24 = iStack_30;
      iVar3 = ov96_02213D2C(&iStack_24,&iStack_30,param_2,param_1,&iStack_3c);
      if (iVar3 != 0) {
        if (bVar1) {
          return iVar6;
        }
        if ((bVar2) && (*param_5 <= iStack_3c)) {
          return iVar6;
        }
        if ((param_4 != 0) &&
           (iVar6 = ov96_02213D00(&iStack_98,&iStack_a0,&iStack_a8,&iStack_3c), iVar6 != 0)) {
          iVar6 = param_2[1];
          *param_5 = *param_2;
          param_5[1] = iVar6;
          param_5[2] = param_2[2];
          return 2;
        }
        *param_5 = iStack_3c;
        param_5[1] = iStack_38;
        param_5[2] = iStack_34;
        return 2;
      }
    }
  }
  return iVar6;
}

