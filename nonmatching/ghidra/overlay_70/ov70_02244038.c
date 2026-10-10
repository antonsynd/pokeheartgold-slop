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
undefined4 ov70_02244670();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 func_0x021ec5b4() __asm__("sub_021EC5B4");
undefined4 ov70_02245124();
undefined4 ov70_022441A4();
undefined4 func_0x02039418() __asm__("sub_02039418");
undefined4 BeginNormalPaletteFade();
undefined4 ov70_02244FA4();
undefined4 ov70_02238D84();
undefined4 ov70_02238F64();
undefined4 ov70_022442B4();
undefined4 ov70_0224458C();
undefined4 Sys_ClearSleepDisableFlag();
undefined4 GfGfx_EngineBTogglePlanes();
extern ushort uRam04000304 __asm__("sub_04000304");

undefined4 ov70_02244038(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;

  ov70_02244670();
  uRam04000304 = uRam04000304 & 0x7fff;
  BeginNormalPaletteFade(0,1,1,0,6,1,0x3d,param_4);
  ov70_022441A4(param_1[1]);
  ov70_022442B4(param_1);
  ov70_0224458C(param_1);
  GfGfx_EngineATogglePlanes(1,1);
  GfGfx_EngineATogglePlanes(2,1);
  GfGfx_EngineATogglePlanes(4,0);
  GfGfx_EngineATogglePlanes(8,0);
  GfGfx_EngineBTogglePlanes(1,1);
  GfGfx_EngineBTogglePlanes(2,1);
  GfGfx_EngineBTogglePlanes(4,0);
  GfGfx_EngineBTogglePlanes(8,0);
  iVar1 = func_0x021ec5b4();
  if (iVar1 == 0) {
    if (*(int *)(*param_1 + 0x3c) == 0) {
      Sys_ClearSleepDisableFlag(4);
      param_1[0xb] = 0;
    }
    else {
      func_0x02039418(*(undefined4 *)(*param_1 + 0x20));
      ov70_02244FA4(param_1,param_1[0x2ea],1,1,0xf0f);
      ov70_02238D84(param_1,0xc,2);
      ov70_02238F64(param_1);
    }
  }
  else {
    func_0x02039418(*(undefined4 *)(*param_1 + 0x20));
    ov70_02245124(param_1);
    param_1[0xb] = 0x11;
  }
  return 2;
}

