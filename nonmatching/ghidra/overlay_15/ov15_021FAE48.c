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
undefined4 ov15_021FAD28();
undefined4 ov15_021FA074();
undefined4 ov15_021FD7D0();
undefined4 ov15_021FADE8();
undefined4 _s32_div_f(void);
undefined4 ov15_021FFF34();
undefined4 PlaySE(unsigned short);
undefined4 ov15_021FAC2C();
extern undefined _DAT_021d1154 __asm__("sub_021D1154");
undefined4 ov15_021FD810();



undefined4 ov15_021FAE48(int param_1)

{
  ushort uVar1;
  uint uVar2;
  uint uVar3;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;

  uVar5 = 0xffffffff;
  iVar6 = *(int *)(param_1 + 0x234) + 4 + (uint)*(byte *)(*(int *)(param_1 + 0x234) + 100) * 0xc;
  uVar2 = ov15_021FAD28(*(int *)(param_1 + 0x66c));
  uVar2 = uVar2 & 0xffff;
  if (*(uint *)(param_1 + 0x66c) != uVar2) {
    if ((uVar2 + 0xfffa & 0xffff) < 2) {
      uVar5 = ov15_021FADE8(param_1,uVar2);
    }
    else {
      *(uint *)(param_1 + 0x66c) = uVar2;
      ov15_021FFF34(param_1,*(int *)(param_1 + 0x66c));
      PlaySE(0x5dc);
    }
  }
  uVar2 = ov15_021FAC2C(param_1,2);
  if (uVar2 == 0xffffffff) {
    if ((_DAT_021d1154 & 1) == 0) {
      if ((_DAT_021d1154 & 2) != 0) {
        uVar5 = 0xfffffffe;
      }
    }
    else {
      uVar5 = ov15_021FADE8(param_1,*(int *)(param_1 + 0x66c));
    }
  }
  else if (uVar2 == 8) {
    uVar5 = ov15_021FADE8(param_1,8);
    ov15_021FFF34(param_1,8);
  }
  else if (uVar2 - 6 < 2) {
    uVar5 = ov15_021FADE8(param_1,uVar2);
  }
  else {
    *(uint *)(param_1 + 0x66c) = uVar2;
    uVar3 = ov15_021FA074(param_1);
    if (uVar2 < uVar3) {
      uVar5 = ov15_021FADE8(param_1,uVar2);
    }
    else {
      PlaySE(0x5f3);
    }
    ov15_021FFF34(param_1,*(int *)(param_1 + 0x66c));
  }
  if (uVar5 < 0xffffffff) {
    if (0xfffffffd < uVar5) {
      PlaySE(0x940);
      uVar1 = (ushort)*(byte *)(param_1 + 0x672);
      _s32_div_f();
      *(ushort *)(iVar6 + 6) = uVar1 * 6;
      uVar4 = ov15_021FD7D0(param_1,0x13,9,'\b',0x20);
      return uVar4;
    }
    if ((uVar5 < 0x10) && (0xd < uVar5)) {
      if (uVar5 == 0xe) {
        if (6 < *(byte *)(iVar6 + 9)) {
          PlaySE(0x5dc);
          uVar4 = ov15_021FD7D0(param_1,0x11,9,'\b',0x1f);
          return uVar4;
        }
      }
      else {
        if (uVar5 != 0xf) goto LAB_021fafac;
        if (6 < *(byte *)(iVar6 + 9)) {
          PlaySE(0x5dc);
          uVar4 = ov15_021FD7D0(param_1,0x12,9,'\b',0x1e);
          return uVar4;
        }
      }
      return 3;
    }
  }
  else if (uVar5 == 0xffffffff) {
    return 3;
  }
LAB_021fafac:
  PlaySE(0x5dc);
  if ((uint)*(byte *)(param_1 + 0x672) == (int)*(short *)(iVar6 + 6) + *(int *)(param_1 + 0x66c)) {
    uVar4 = ov15_021FD810(param_1,0x14,0x29,0x21);
    return uVar4;
  }
  uVar4 = ov15_021FD810(param_1,0x14,0x2a,0x21);
  return uVar4;
}

