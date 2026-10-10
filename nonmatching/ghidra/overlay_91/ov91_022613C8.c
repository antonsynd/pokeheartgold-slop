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
undefined4 ov91_022614FC(void *, int, unsigned char, ...);
undefined4 G2x_SetBlendAlpha_(unsigned int, int, int, int, int);
extern uint  uRam04001050 __asm__("sub_04001050");

void ov91_022613C8(short *param_1,undefined4 param_2)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;

  switch(*param_1) {
  default:
    return;
  case 1:
    ov91_022614FC(param_2,(param_1[2] + -1) * 0x10000 >> 0x10,(char)param_1[3]);
    *param_1 = *param_1 + 1;
    param_1[1] = 0;
    break;
  case 2:
    break;
  case 3:
    if (param_1[1] < 8) {
      param_1[1] = param_1[1] + 1;
      iVar3 = (int)(param_1[1] * 0x10 + ((uint)(param_1[1] * 0x10 >> 2) >> 0x1d)) >> 3;
      G2x_SetBlendAlpha_(0x4001050,1 << ((int)param_1[2] & 0xffU),8,iVar3,0x10 - iVar3);
      return;
    }
    *param_1 = 0;
    uRam04001050 = 0;
    return;
  }
  if (param_1[1] < 0x10) {
    param_1[1] = param_1[1] + 1;
    uVar1 = (uint)param_1[2];
    uVar4 = uVar1 - 2;
    uVar5 = uVar1 - 1;
    uVar2 = uVar1;
    if ((int)uVar1 < 0) {
      uVar2 = uVar1 + 3;
    }
    if ((int)uVar4 < 0) {
      uVar4 = uVar1 + 1;
    }
    if ((int)uVar5 < 0) {
      uVar5 = uVar1 + 2;
    }
    iVar3 = 0x10 - ((int)(param_1[1] * 0x10 + ((uint)(param_1[1] * 0x10 >> 3) >> 0x1c)) >> 4);
    G2x_SetBlendAlpha_(0x4001050,1 << (uVar2 & 0xff),1 << (uVar5 & 0xff) | 1 << (uVar4 & 0xff) | 8,
                       iVar3,0x10 - iVar3);
    return;
  }
  *param_1 = 3;
  param_1[1] = 0;
  ov91_022614FC(param_2,(int)param_1[2],(char)param_1[3]);
  G2x_SetBlendAlpha_(0x4001050,1 << ((int)param_1[2] & 0xffU),8,0,0x10);
  return;
}

