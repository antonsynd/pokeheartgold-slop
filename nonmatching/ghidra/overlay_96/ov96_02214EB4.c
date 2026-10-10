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
undefined4 func_0x020ccf80() __asm__("sub_020CCF80");
undefined4 ov96_02215614();
undefined4 ov96_02215058();
undefined4 ov96_021E8228();
undefined4 func_0x020ccdac() __asm__("sub_020CCDAC");
undefined4 ov96_0221567C();

undefined4 ov96_02214EB4(undefined4 param_1,int param_2,undefined4 param_3,int param_4,int param_5)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  byte abStack_28 [4];
  undefined1 auStack_24 [12];
  int iStack_18;
  
  if (*(int *)(param_4 + 0x78) != 0) {
    return 0;
  }
  if (*(int *)(param_4 + 0x48) != 0) {
    return 0;
  }
  iStack_18 = param_4;
  uVar1 = ov96_02215614(0x80,0x60,
                        (int)(*(int *)(param_4 + 0x30) +
                             ((uint)(*(int *)(param_4 + 0x30) >> 0xb) >> 0x14)) >> 0xc,
                        (int)(*(int *)(param_4 + 0x34) +
                             ((uint)(*(int *)(param_4 + 0x34) >> 0xb) >> 0x14)) >> 0xc);
  uVar3 = 0;
  do {
    iVar4 = param_5 + uVar3 * 0x4c;
    if ((*(char *)(iVar4 + 0x39) == '\0') && (*(char *)(iVar4 + 0x38) != '\0')) {
      iVar2 = ov96_02215614(0x80,0x60,
                            (int)(*(int *)(iVar4 + 8) + ((uint)(*(int *)(iVar4 + 8) >> 0xb) >> 0x14)
                                 ) >> 0xc,
                            (int)(*(int *)(iVar4 + 0xc) +
                                 ((uint)(*(int *)(iVar4 + 0xc) >> 0xb) >> 0x14)) >> 0xc);
    }
    else {
      iVar2 = 4;
    }
    if (iVar2 == 4) {
      abStack_28[uVar3] = 5;
    }
    else if (param_2 == iVar2) {
      iVar4 = ov96_0221567C((int)(*(int *)(iVar4 + 8) + ((uint)(*(int *)(iVar4 + 8) >> 0xb) >> 0x14)
                                 ) >> 0xc,
                            (int)(*(int *)(iVar4 + 0xc) +
                                 ((uint)(*(int *)(iVar4 + 0xc) >> 0xb) >> 0x14)) >> 0xc,
                            (int)(*(int *)(param_4 + 0x30) +
                                 ((uint)(*(int *)(param_4 + 0x30) >> 0xb) >> 0x14)) >> 0xc,
                            (int)(*(int *)(param_4 + 0x34) +
                                 ((uint)(*(int *)(param_4 + 0x34) >> 0xb) >> 0x14)) >> 0xc,uVar1,
                            param_2);
      if (iVar4 == 0) {
        abStack_28[uVar3] = 6;
      }
      else {
        abStack_28[uVar3] = 7;
      }
    }
    else {
      abStack_28[uVar3] = 6;
    }
    uVar3 = uVar3 + 1 & 0xff;
  } while (uVar3 < 2);
  if ((abStack_28[0] == 7) == (abStack_28[1] == 7)) {
    func_0x020ccdac(param_4 + 0x30,param_5 + 8,auStack_24);
    iVar4 = func_0x020ccf80(auStack_24);
    func_0x020ccdac(param_4 + 0x30,param_5 + 0x54,auStack_24);
    iVar2 = func_0x020ccf80(auStack_24);
    if (iVar4 < iVar2) {
      uVar1 = ov96_02215058(param_4,param_5 + 0x4c,abStack_28[1],param_2);
    }
    else {
      uVar1 = ov96_02215058(param_4,param_5,abStack_28[0],param_2);
    }
  }
  else if (abStack_28[0] < abStack_28[1]) {
    uVar1 = ov96_02215058(param_4,param_5 + 0x4c,abStack_28[1],param_2);
  }
  else {
    uVar1 = ov96_02215058(param_4,param_5,abStack_28[0],param_2);
  }
  if (*(int *)(param_4 + 0x78) == 1) {
    ov96_021E8228(param_1,param_2,param_3,6,1);
  }
  return uVar1;
}

