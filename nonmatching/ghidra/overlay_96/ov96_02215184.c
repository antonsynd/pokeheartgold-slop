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
undefined4 ov96_02215460();
undefined4 ov96_02215614();
undefined4 ov96_02215478();
undefined4 ov96_021EAF8C();
undefined4 ov96_022156E8();
undefined4 ov96_02214DBC();
undefined4 ov96_02215650();
undefined4 GF_AssertFail();
undefined4 func_0x020ccf80() __asm__("sub_020CCF80");
undefined4 func_0x020ccdac() __asm__("sub_020CCDAC");
undefined4 ov96_021E8228();

undefined4
ov96_02215184(undefined4 param_1,uint param_2,undefined4 param_3,undefined4 *param_4,int param_5,
             int param_6)

{
  byte bVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  byte abStack_28 [16];
  undefined4 *puStack_18;

  if (param_4[0x1e] != 0) {
    return 0;
  }
  if (param_4[0x12] != 0) {
    return 0;
  }
  puStack_18 = param_4;
  uVar2 = ov96_02215614(0x80,0x60,
                        (int)(param_4[0xc] + ((uint)((int)param_4[0xc] >> 0xb) >> 0x14)) >> 0xc,
                        (int)(param_4[0xd] + ((uint)((int)param_4[0xd] >> 0xb) >> 0x14)) >> 0xc);
  uVar6 = 0;
  do {
    iVar5 = param_5 + uVar6 * 0x4c;
    if ((*(char *)(iVar5 + 0x39) == '\0') && (*(char *)(iVar5 + 0x38) != '\0')) {
      bVar1 = ov96_02215614(0x80,0x60,
                            (int)(*(int *)(iVar5 + 8) + ((uint)(*(int *)(iVar5 + 8) >> 0xb) >> 0x14)
                                 ) >> 0xc,
                            (int)(*(int *)(iVar5 + 0xc) +
                                 ((uint)(*(int *)(iVar5 + 0xc) >> 0xb) >> 0x14)) >> 0xc);
      abStack_28[uVar6] = bVar1;
    }
    else {
      abStack_28[uVar6] = 4;
    }
    uVar6 = uVar6 + 1 & 0xff;
  } while (uVar6 < 2);
  uVar6 = 0;
  do {
    iVar5 = param_5 + uVar6 * 0x4c;
    abStack_28[uVar6 + 2] = 8;
    bVar1 = abStack_28[uVar6];
    if (bVar1 != 4) {
      iVar7 = 0;
      if (*(char *)(iVar5 + 0x38) == '\x01') {
        iVar7 = 8;
      }
      else if (*(char *)(iVar5 + 0x38) == '\x02') {
        iVar7 = 0xc;
      }
      else {
        GF_AssertFail();
      }
      iVar3 = ov96_021EAF8C(*param_4);
      iVar7 = ov96_022156E8(param_4 + 0xc,iVar3 << 0xc,iVar5 + 8,iVar7 << 0xc);
      if (iVar7 == 0) {
        if ((uVar2 == bVar1) &&
           (iVar5 = ov96_02215650((int)(*(int *)(iVar5 + 8) +
                                       ((uint)(*(int *)(iVar5 + 8) >> 0xb) >> 0x14)) >> 0xc,
                                  (int)(*(int *)(iVar5 + 0xc) +
                                       ((uint)(*(int *)(iVar5 + 0xc) >> 0xb) >> 0x14)) >> 0xc,
                                  (int)(param_4[0xc] + ((uint)((int)param_4[0xc] >> 0xb) >> 0x14))
                                  >> 0xc,(int)(param_4[0xd] +
                                              ((uint)((int)param_4[0xd] >> 0xb) >> 0x14)) >> 0xc,
                                  uVar2,param_2), iVar5 != 0)) {
          abStack_28[uVar6 + 2] = 0xd;
        }
      }
      else {
        abStack_28[uVar6 + 2] = 8;
      }
    }
    uVar6 = uVar6 + 1 & 0xff;
  } while (uVar6 < 2);
  if (abStack_28[2] == 0xd) {
    uVar4 = ov96_02214DBC(param_4,param_5,0xd,uVar2);
    return uVar4;
  }
  if (abStack_28[3] == 0xd) {
    uVar4 = ov96_02214DBC(param_4,param_5 + 0x4c,0xd,uVar2);
    return uVar4;
  }
  if (0x31 < *(byte *)(*(int *)(param_6 + param_2 * 0x24 + 4) + 0x71)) {
    uVar4 = ov96_02215478(param_4,param_6,param_2);
    return uVar4;
  }
  uVar6 = 0;
  do {
    iVar5 = param_5 + uVar6 * 0x4c;
    if (abStack_28[uVar6] == 4) {
      abStack_28[uVar6 + 2] = 10;
    }
    else if (param_2 == abStack_28[uVar6]) {
      iVar7 = *(int *)(iVar5 + 8);
      iVar5 = *(int *)(iVar5 + 0xc);
      iVar5 = ov96_02215650((int)(iVar7 + ((uint)(iVar7 >> 0xb) >> 0x14)) >> 0xc,
                            (int)(iVar5 + ((uint)(iVar5 >> 0xb) >> 0x14)) >> 0xc,
                            (int)(param_4[0xc] + ((uint)((int)param_4[0xc] >> 0xb) >> 0x14)) >> 0xc,
                            (int)(param_4[0xd] + ((uint)((int)param_4[0xd] >> 0xb) >> 0x14)) >> 0xc,
                            uVar2,param_2);
      if (iVar5 == 0) {
        abStack_28[uVar6 + 2] = 0xb;
      }
      else {
        abStack_28[uVar6 + 2] = 0xc;
      }
    }
    else {
      abStack_28[uVar6 + 2] = 0xb;
    }
    uVar6 = uVar6 + 1 & 0xff;
  } while (uVar6 < 2);
  if ((abStack_28[2] == 7) == (abStack_28[3] == 7)) {
    func_0x020ccdac(param_4 + 0xc,param_5 + 8,abStack_28 + 4);
    iVar5 = func_0x020ccf80(abStack_28 + 4);
    func_0x020ccdac(param_4 + 0xc,param_5 + 0x54,abStack_28 + 4);
    iVar7 = func_0x020ccf80(abStack_28 + 4);
    if (iVar5 < iVar7) {
      uVar4 = ov96_02215460(param_4,param_5 + 0x4c,abStack_28[3],param_2,param_6);
    }
    else {
      uVar4 = ov96_02215460(param_4,param_5,abStack_28[2],param_2,param_6);
    }
  }
  else if (abStack_28[2] < abStack_28[3]) {
    uVar4 = ov96_02215460(param_4,param_5 + 0x4c,abStack_28[3],param_2,param_6);
  }
  else {
    uVar4 = ov96_02215460(param_4,param_5,abStack_28[2],param_2,param_6);
  }
  if (param_4[0x1e] == 1) {
    ov96_021E8228(param_1,param_2,param_3,6,1);
  }
  return uVar4;
}

