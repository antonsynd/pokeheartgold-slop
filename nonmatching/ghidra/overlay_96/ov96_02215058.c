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
undefined4 GF_AssertFail(void);
undefined4 ov96_022156A8();
unsigned short LCRandom(void);
ulonglong _s32_div_f(int, int);

undefined4 ov96_02215058(int param_1,int param_2,undefined4 param_3,int param_4)

{
  ushort uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  ulonglong uVar5;
  ulonglong uVar6;
  short sStack_18;
  short sStack_16;

  switch(param_3) {
  default:
    GF_AssertFail();
  case 5:
  case 8:
    return 0;
  case 6:
  case 0xb:
    break;
  case 7:
  case 0xc:
    uVar3 = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)(param_2 + 8);
    *(undefined4 *)(param_1 + 0x28) = uVar3;
    *(undefined4 *)(param_1 + 0x2c) = *(undefined4 *)(param_2 + 0x10);
    uVar1 = LCRandom();
    uVar6 = _s32_div_f((uint)uVar1,100);
    if ((int)(uVar6 >> 0x20) < 0x50) {
      *(undefined4 *)(param_1 + 0x78) = 1;
    }
    return 10;
  }
  iVar4 = (param_4 + -1) * 0xc;
  iVar2 = ov96_022156A8((int)(*(int *)(param_1 + 0x30) +
                             ((uint)(*(int *)(param_1 + 0x30) >> 0xb) >> 0x14)) >> 0xc,
                        (int)(*(int *)(param_1 + 0x34) +
                             ((uint)(*(int *)(param_1 + 0x34) >> 0xb) >> 0x14)) >> 0xc,
                        (short *)(iVar4 + 0x221d678));
  if (iVar2 != 0) {
    return 0;
  }
  uVar1 = LCRandom();
  if ((int)((uint)uVar1 * -0x80000000) < 0) {
    uVar1 = LCRandom();
    if ((int)((uint)uVar1 * -0x80000000) < 0) {
      sStack_18 = *(short *)(iVar4 + 0x221d680);
      sStack_16 = *(short *)(iVar4 + 0x221d682);
    }
    else {
      sStack_18 = *(short *)(iVar4 + 0x221d67c);
      sStack_16 = *(short *)(iVar4 + 0x221d67e);
    }
  }
  else {
    sStack_18 = *(short *)(iVar4 + 0x221d678);
    sStack_16 = *(short *)(iVar4 + 0x221d67a);
  }
  uVar1 = LCRandom();
  uVar6 = _s32_div_f((uint)uVar1,0x11);
  uVar1 = LCRandom();
  uVar5 = _s32_div_f((uint)uVar1,0x11);
  *(uint *)(param_1 + 0x24) = (uint)(ushort)(sStack_18 + (8 - (short)(uVar6 >> 0x20))) << 0xc;
  *(uint *)(param_1 + 0x28) = (uint)(ushort)(sStack_16 + (8 - (short)(uVar5 >> 0x20))) << 0xc;
  return 6;
}

