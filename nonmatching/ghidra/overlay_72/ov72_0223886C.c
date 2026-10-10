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
undefined4 Sys_ClearSleepDisableFlag();
undefined4 ov72_0223A350();
undefined4 func_0x021ec5b4() __asm__("sub_021EC5B4");
undefined4 ov72_02238680();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 func_0x02039418() __asm__("sub_02039418");
undefined4 ov72_02238EE4();
undefined4 ov72_022389C8();
undefined4 func_0x0202d488() __asm__("sub_0202D488");
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov72_02238BEC();
undefined4 BeginNormalPaletteFade();
undefined4 ov72_0223A420();
undefined4 ov72_02239040();

undefined4 ov72_0223886C(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;

  ov72_02239040();
  BeginNormalPaletteFade(0,1,1,0,8,1,0x43,param_4);
  ov72_022389C8(param_1[1]);
  ov72_02238BEC(param_1);
  ov72_02238EE4(param_1);
  GfGfx_EngineATogglePlanes(1,1);
  GfGfx_EngineATogglePlanes(2,1);
  GfGfx_EngineBTogglePlanes(1,1);
  GfGfx_EngineBTogglePlanes(2,1);
  iVar1 = func_0x0202d488(*(undefined4 *)*param_1,0);
  param_1[0x24] = iVar1;
  param_1[0x25] = param_1[0x24];
  param_1[0x27] = 1;
  param_1[0x3d3] = 0;
  iVar1 = func_0x021ec5b4();
  if (iVar1 == 0) {
    if (*(int *)(*param_1 + 0x24) == 0) {
      Sys_ClearSleepDisableFlag(4);
      param_1[7] = 0;
    }
    else {
      func_0x02039418(*(undefined4 *)(*param_1 + 0xc));
      ov72_0223A350(param_1,param_1[0x2f6],1,1,0xf0f);
      ov72_02238680(param_1,0x2f,2);
      ov72_0223A420(param_1);
    }
  }
  else {
    func_0x02039418(*(undefined4 *)(*param_1 + 0xc));
    param_1[7] = 0x33;
  }
  return 2;
}

