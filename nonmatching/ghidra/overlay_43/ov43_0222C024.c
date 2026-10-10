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
undefined4 ov43_0222C378();
undefined4 GF_SetG2dRendererSurface();
undefined4 ov43_0222C9A4();
undefined4 ScheduleSetBgPosText();
undefined4 ov43_0222AD20();
extern undefined ov43_0222F0EC;
extern undefined ov43_0222F10C;

undefined4 ov43_0222C024(short *param_1,undefined4 param_2,undefined4 *param_3,undefined4 param_4)

{
  uint uVar1;
  int iVar2;
  int aiStack_28 [5];

  aiStack_28[4] = param_4;
  if (7 < param_1[0x58]) {
    ScheduleSetBgPosText(*param_3,2,0,0);
    ScheduleSetBgPosText(*param_3,3,0,0);
    aiStack_28[0] = 0;
    aiStack_28[1] = 0x100000;
    aiStack_28[2] = 0xff000;
    aiStack_28[3] = 0xc0000;
    GF_SetG2dRendererSurface(param_3 + 2,aiStack_28,aiStack_28 + 4,&ov43_0222F10C);
    if (param_1[0x59] == 2) {
      iVar2 = 2;
    }
    else {
      iVar2 = 1;
    }
    ov43_0222C9A4(param_1 + iVar2 * 0x1c + 4,param_3,param_3 + 0x80);
    ov43_0222C378(param_1,param_2,param_3,(int)*param_1,(int)param_1[2],0,param_4);
    ov43_0222AD20(param_3,1);
    return 1;
  }
  iVar2 = param_1[0x58] * 0x100;
  iVar2 = (int)(iVar2 + ((uint)(iVar2 >> 2) >> 0x1d)) >> 3;
  if (param_1[0x59] == 2) {
    iVar2 = -iVar2;
  }
  ScheduleSetBgPosText(*param_3,2,0,iVar2);
  ScheduleSetBgPosText(*param_3,3,0,iVar2);
  aiStack_28[1] = 0x100000;
  aiStack_28[2] = 0xff000;
  aiStack_28[3] = 0xc0000;
  aiStack_28[0] = iVar2 * 0x1000;
  GF_SetG2dRendererSurface(param_3 + 2,aiStack_28,aiStack_28 + 4,&ov43_0222F10C);
  iVar2 = (int)param_1[0x58];
  uVar1 = iVar2 >> 0x1f;
  if (((iVar2 * -0x80000000 + uVar1 >> 0x1f | uVar1 << 1) != uVar1) &&
     (*(code **)(&ov43_0222F0EC + (iVar2 / 2) * 4) != (code *)0x0)) {
    (**(code **)(&ov43_0222F0EC + (iVar2 / 2) * 4))(param_1,param_3,(int)*param_1,(int)param_1[1]);
  }
  param_1[0x58] = param_1[0x58] + 1;
  return 0;
}

