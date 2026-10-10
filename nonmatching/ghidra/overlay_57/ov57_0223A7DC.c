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
undefined4 ov57_02239BCC();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 sub_0200E5D4();
undefined4 ov57_0223B940();
undefined4 ov57_022387C0();
undefined4 ov57_02239728();
undefined4 func_0x0201bb68() __asm__("sub_0201BB68");
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov57_02239240();
undefined4 ov57_0223866C();
undefined4 ov57_0223B948();
undefined4 CopyWindowToVram();
undefined4 ov57_02239BAC();
undefined4 ov57_0223A034();
undefined4 IsPaletteFadeFinished();
undefined4 ov57_02238AF0();
extern ushort uRam04000304 __asm__("sub_04000304");
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov57_02239B0C();
undefined4 ov57_0223B828();

undefined4 ov57_0223A7DC(int param_1)

{
  int iVar1;

  iVar1 = *(int *)(param_1 + 0x404);
  if (iVar1 == 0) {
    if (0 < *(int *)(param_1 + 0x410)) {
      *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + -1;
      return 0;
    }
    *(undefined4 *)(param_1 + 0x410) = 0;
    ov57_02239BCC();
    *(int *)(param_1 + 0x404) = *(int *)(param_1 + 0x404) + 1;
  }
  else if (iVar1 == 1) {
    iVar1 = IsPaletteFadeFinished();
    if (iVar1 == 1) {
      GfGfx_EngineATogglePlanes(0x10,1);
      func_0x0201bb68(3,3);
      func_0x0201bb68(7,3);
      GfGfx_EngineBTogglePlanes(4,0);
      ov57_0223A034(param_1,0);
      ov57_02239240(param_1,0);
      ov57_022387C0(param_1,0);
      sub_0200E5D4(param_1 + 0xec,1);
      ov57_02239728(param_1 + 0x11c,3,7,0);
      CopyWindowToVram(param_1 + 0x11c);
      ov57_0223866C(param_1,1);
      uRam04000304 = uRam04000304 & 0x7fff;
      ov57_02238AF0(param_1,0xffffffff);
      ov57_0223B948(param_1,0);
      ov57_02239BAC();
      *(int *)(param_1 + 0x404) = *(int *)(param_1 + 0x404) + 1;
    }
  }
  else if (((iVar1 == 2) && (iVar1 = ov57_0223B940(), iVar1 != 1)) &&
          (iVar1 = IsPaletteFadeFinished(), iVar1 == 1)) {
    ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 800),0);
    ov57_0223B828(param_1,0,0xff,0);
    ov57_02239B0C(param_1);
    *(undefined4 *)(param_1 + 0x404) = 0;
    return 1;
  }
  return 0;
}

