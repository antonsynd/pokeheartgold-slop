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
undefined4 ov68_021E5E48();
undefined4 GfGfx_DisableEngineBPlanes();
undefined4 NARC_New();
undefined4 ov68_021E7178();
undefined4 Main_SetVBlankIntrCB();
undefined4 ov68_021E7288();
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 HBlankInterruptDisable();
undefined4 ov68_021E5EBC();
undefined4 ov68_021E5BA0();
undefined4 func_0x020183f0() __asm__("sub_020183F0");
undefined4 ov68_021E5D24();
undefined4 ov68_021E5BC0();
undefined4 BgConfig_Alloc();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
extern uint uRam04001000 __asm__("sub_04001000");
extern uint uRam04000000 __asm__("sub_04000000");
undefined4 ov68_021E6204();
undefined4 ov68_021E75C0();
undefined4 ov68_021E6820();
undefined4 ov68_021E6320();
undefined4 sub_020880CC();
undefined4 NARC_Delete();

void ov68_021E5A58(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  
  Main_SetVBlankIntrCB(0,0,param_3,param_4,param_4);
  HBlankInterruptDisable();
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  uRam04000000 = uRam04000000 & 0xffffe0ff;
  uRam04001000 = uRam04001000 & 0xffffe0ff;
  TextFlags_SetCanTouchSpeedUpPrint(1);
  iVar1 = func_0x020183f0(*(undefined4 *)(*param_1 + 0xc));
  param_1[0x6d] = iVar1;
  iVar1 = BgConfig_Alloc(0x42);
  param_1[1] = iVar1;
  uVar2 = NARC_New(0x6e,0x42);
  ov68_021E5BA0();
  ov68_021E5BC0(param_1[1]);
  ov68_021E5D24(param_1,uVar2);
  ov68_021E7178(param_1,uVar2);
  ov68_021E7288(param_1);
  ov68_021E5EBC(param_1);
  ov68_021E5E48(param_1);
  ov68_021E6820(param_1);
  ov68_021E6204(param_1);
  ov68_021E6320(param_1);
  ov68_021E75C0(param_1);
  sub_020880CC(0,0x42);
  Main_SetVBlankIntrCB(0x21e5b6d,param_1);
  NARC_Delete(uVar2);
  return;
}

