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
undefined4 ov112_021EA76C();
undefined4 ov112_021EDAF4();
undefined4 ov112_021EA60C();
undefined4 ov112_021ED590();
undefined4 ov112_021ED330();
undefined4 ov112_021E768C();
undefined4 ov112_021EA688();
undefined4 ov112_021E7670();
undefined4 ov112_021E7668();
undefined4 sub_02032644();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov112_021E7464();
undefined4 ov112_021ED314();
undefined4 ov112_021EAA98();
undefined4 ov112_021E76A8();
undefined4 ov112_021EAA10();
undefined4 sub_02032674();
undefined4 PlaySE();
undefined4 ov112_021EA10C();
undefined4 ov112_021EC440();
undefined4 ov112_021E9888();
undefined4 ov112_021E98E8();
extern uint uRam021d1154 __asm__("sub_021D1154");

undefined4 ov112_021EDB24(int param_1)

{
  undefined1 uVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  
  ov112_021E7670();
  uVar1 = ov112_021E768C();
  uVar2 = ov112_021ED330(param_1,uVar1);
  if (uVar2 != 0) {
    ov112_021EA76C(param_1);
  }
  ov112_021EA60C(param_1);
  ov112_021ED314(uVar2);
  ov112_021EDAF4(param_1,uVar2);
  if (uVar2 < 0xc9) {
    ov112_021EAA10(param_1);
    *(undefined2 *)(param_1 + 0x1f2d4) = 0;
  }
  else if (*(short *)(param_1 + 0x1f2d4) == 0) {
    ov112_021EAA98(param_1,param_1 + 0x1f2c0,2);
    *(undefined2 *)(param_1 + 0x1f2d4) = 1;
  }
  uVar3 = ov112_021E76A8();
  switch(uVar3) {
  case 2:
    if (*(short *)(param_1 + 0x16) == 1) {
      *(undefined2 *)(param_1 + 0x14) = 0x2a;
    }
    break;
  case 4:
  case 5:
  case 7:
  case 8:
  case 9:
  case 0xb:
  case 0xc:
  case 0xd:
    *(short *)(param_1 + 0x14) = (short)uVar3;
    break;
  case 0xf:
    ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x1e538),0);
    sub_02032674(*(undefined4 *)(param_1 + 0x1e440),param_1 + 0x1d758,param_1 + 0x1d75c);
    ov112_021ED590(param_1);
    sub_02032644(*(undefined4 *)(param_1 + 0x1e440));
    ov112_021EA688(param_1,8);
    ov112_021EAA98(param_1,param_1 + 0x1f2c0,0);
    return 0x23;
  }
  if (*(short *)(param_1 + 0x14) != 0) {
    ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x1e538),0);
    *(undefined4 *)(param_1 + 0xc) = 0x3b;
    ov112_021E7464();
    return 0x20;
  }
  iVar4 = ov112_021E7668();
  if (iVar4 == 0) {
    ov112_021E98E8(param_1,1);
    iVar4 = ov112_021E9888(5);
    if (((iVar4 == 0) || ((uRam021d1154 & 1) != 0)) || ((uRam021d1154 & 2) != 0)) {
      *(undefined2 *)(param_1 + 0x14) = 0x21;
      *(undefined4 *)(param_1 + 0xc) = 0x42;
      ov112_021E7464();
      ov112_021EC440(param_1,3,3,0x21);
      PlaySE(0x5dd);
      return 0x41;
    }
  }
  else {
    if (*(short *)(param_1 + 0x16) == 0) {
      ov112_021EA10C(param_1,2,6);
      *(undefined2 *)(param_1 + 0x16) = 1;
    }
    ov112_021E98E8(param_1,0);
  }
  return 0x1f;
}

