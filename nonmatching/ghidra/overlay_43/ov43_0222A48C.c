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
undefined4 GfGfx_SwapDisplay();
undefined4 ov43_0222A87C();
undefined4 ov43_0222A8C0();
undefined4 TextFlags_SetCanABSpeedUpPrint();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 func_0x02002b50() __asm__("sub_02002B50");
undefined4 ov43_0222A690();
undefined4 NARC_New();
undefined4 ov43_0222A550();
undefined4 ov43_0222AC28();
undefined4 ov43_0222A998();
undefined4 ov43_0222A570();
extern undefined1 uRam021d1175 __asm__("sub_021D1175");

void ov43_0222A48C(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;

  uRam021d1175 = 1;
  GfGfx_SwapDisplay();
  uVar1 = NARC_New(0x55,param_3);
  *(undefined4 *)(param_1 + 0x58) = uVar1;
  ov43_0222A550();
  ov43_0222A570(param_1,param_3);
  ov43_0222A690(param_1,param_3);
  ov43_0222A87C(param_1,param_3);
  ov43_0222A8C0(param_1,param_2,param_3);
  ov43_0222AC28(param_1,param_3);
  ov43_0222A998(param_1,param_3);
  GfGfx_EngineATogglePlanes(0x10,1);
  TextFlags_SetCanABSpeedUpPrint(1);
  func_0x02002b50(0);
  TextFlags_SetCanTouchSpeedUpPrint(0);
  return;
}

