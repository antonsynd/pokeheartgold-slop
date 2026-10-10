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
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 ov108_021E6C68();
undefined4 sub_02021148();
undefined4 sub_020210BC();
undefined4 ov108_021E6D80();
undefined4 ov108_021E7224();
undefined4 ov108_021E6F74();
undefined4 GfGfx_DisableEngineBPlanes();
undefined4 ov108_021E733C();
undefined4 HBlankInterruptDisable();
undefined4 ov108_021E72CC();
undefined4 sub_0200FBF4();
undefined4 ov108_021E7080();
undefined4 Main_SetVBlankIntrCB();
undefined4 ResetVisibleHardwareWindows();
extern uint uRam04001000 __asm__("sub_04001000");
extern uint uRam04000000 __asm__("sub_04000000");
undefined4 ov108_021E7BFC();

undefined4 ov108_021E5C54(int param_1)

{
  int iVar1;

  iVar1 = *(int *)(param_1 + 8);
  if (iVar1 == 0) {
    Main_SetVBlankIntrCB(0,0);
    HBlankInterruptDisable();
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    uRam04000000 = uRam04000000 & 0xffffe0ff;
    uRam04001000 = uRam04001000 & 0xffffe0ff;
    sub_0200FBF4(0,0);
    sub_0200FBF4(1,0);
    ResetVisibleHardwareWindows(0);
    ResetVisibleHardwareWindows(1);
    sub_020210BC();
    sub_02021148(4);
  }
  else if (iVar1 == 1) {
    ov108_021E6C68();
    ov108_021E6D80(param_1);
    ov108_021E6F74(param_1);
    ov108_021E7080(param_1);
    ov108_021E7224(param_1);
    ov108_021E72CC(param_1);
    ov108_021E733C(param_1);
  }
  else if (iVar1 == 2) {
    ov108_021E7BFC();
    Main_SetVBlankIntrCB(0x21e6ba1,param_1);
    *(undefined4 *)(param_1 + 8) = 0;
    return 1;
  }
  *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  return 0;
}

