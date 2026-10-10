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
undefined4 CopyWindowToVram();
undefined4 DrawFrameAndWindow2();
undefined4 DrawFrameAndWindow1();
undefined4 func_0x0201eeac() __asm__("sub_0201EEAC");
undefined4 ov74_0223547C();
undefined4 AddWindowParameterized();
undefined4 func_0x0201eea8() __asm__("sub_0201EEA8");

undefined4
ov74_02235568(undefined4 param_1,int *param_2,uint param_3,uint param_4,undefined4 param_5)

{
  undefined4 uVar1;
  int *piVar2;
  
  piVar2 = (int *)param_2[4];
  if (*piVar2 == 0) {
    AddWindowParameterized
              (param_1,piVar2,param_2[0xb] & 0xff,param_3 & 0xff,param_4 & 0xff,param_2[6] & 0xff,
               param_2[7] & 0xff,param_2[0xc] & 0xff,param_2[10] & 0xffff,param_4);
    uVar1 = ov74_0223547C(param_2,param_5);
  }
  else {
    if (param_3 != 0xffffffff) {
      func_0x0201eea8(piVar2,param_3 & 0xff);
    }
    if (param_4 != 0xffffffff) {
      func_0x0201eeac(param_2[4],param_4 & 0xff);
    }
    uVar1 = ov74_0223547C(param_2,param_5);
  }
  if (param_2[1] == 1) {
    if (*param_2 == 0) {
      DrawFrameAndWindow1(param_2[4],0,param_2[0xe] & 0xffff,param_2[0xf] & 0xff);
    }
    else if (*param_2 == 1) {
      DrawFrameAndWindow2(param_2[4],0,param_2[0xe] & 0xffff,param_2[0xf] & 0xff);
    }
    else {
      CopyWindowToVram(param_2[4]);
    }
  }
  return uVar1;
}

