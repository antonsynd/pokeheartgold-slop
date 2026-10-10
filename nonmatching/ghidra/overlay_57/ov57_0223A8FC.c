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
undefined4 YesNoPrompt_HandleInput();
undefined4 ClearFrameAndWindow2();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 PaletteData_BeginPaletteFade();
undefined4 ov57_022397B0();
undefined4 YesNoPrompt_InitFromTemplate();
undefined4 YesNoPrompt_Create();
undefined4 ov57_022384C0();
undefined4 YesNoPrompt_Destroy();
undefined4 PaletteData_SetAutoTransparent();
undefined4 ov57_02239728();
undefined4 YesNoPrompt_Reset();
undefined4 ov57_0223B774();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov57_0223B948();
undefined4 RemoveWindow();
undefined4 PaletteData_GetSelectedBuffersBitmask();
undefined4 func_0x020169c0() __asm__("sub_020169C0");
undefined4 ov57_02237F3C();
undefined4 ov57_022399F8();
undefined4 ov57_022383AC();
undefined4 ov57_0223B7A8();
undefined4 ov57_022383D0();

undefined4 ov57_0223A8FC(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined1 uStack_10;
  undefined1 uStack_f;
  byte bStack_e;
  
  switch(*(undefined4 *)(param_1 + 0x404)) {
  case 0:
    iVar1 = ov57_022384C0();
    if (iVar1 == 0) {
      return 0xb;
    }
    PaletteData_BeginPaletteFade(*(undefined4 *)(param_1 + 0xe8),2,0x80b,0,0,10,0);
    PaletteData_BeginPaletteFade(*(undefined4 *)(param_1 + 0xe8),8,0xffff,0,0,10,0);
    ov57_0223B948(param_1,0);
    GfGfx_EngineBTogglePlanes(1,0);
    *(int *)(param_1 + 0x404) = *(int *)(param_1 + 0x404) + 1;
    break;
  case 1:
    iVar1 = PaletteData_GetSelectedBuffersBitmask(*(undefined4 *)(param_1 + 0xe8));
    if (iVar1 == 0) {
      PaletteData_SetAutoTransparent(*(undefined4 *)(param_1 + 0xe8),0);
      ov57_022397B0(*(undefined4 *)(param_1 + 0xe4),param_1 + 300,4,2,1,0x1b,4,0x3a);
      func_0x020d4994(&uStack_20,0,0x14);
      uStack_20 = *(undefined4 *)(param_1 + 0xe4);
      uStack_1c = 4;
      uStack_18 = 0xe6;
      uStack_14 = 5;
      uStack_10 = 0x19;
      uStack_f = 6;
      bStack_e = bStack_e & 0xf0 | (byte)*(undefined4 *)(param_1 + 0x40c) & 0xf;
      uVar2 = YesNoPrompt_Create(0x34);
      *(undefined4 *)(param_1 + 0x244) = uVar2;
      YesNoPrompt_InitFromTemplate(*(undefined4 *)(param_1 + 0x244),&uStack_20);
      ov57_02239728(param_1 + 300,4,0xe,0);
      *(int *)(param_1 + 0x404) = *(int *)(param_1 + 0x404) + 1;
    }
    break;
  case 2:
    GfGfx_EngineBTogglePlanes(1,1);
    *(int *)(param_1 + 0x404) = *(int *)(param_1 + 0x404) + 1;
  case 3:
    iVar1 = YesNoPrompt_HandleInput(*(undefined4 *)(param_1 + 0x244));
    if ((iVar1 != 0) && ((iVar1 == 1 || (iVar1 == 2)))) {
      uVar2 = func_0x020169c0(*(undefined4 *)(param_1 + 0x244));
      *(undefined4 *)(param_1 + 0x40c) = uVar2;
      *(int *)(param_1 + 0x408) = iVar1;
      PaletteData_SetAutoTransparent(*(undefined4 *)(param_1 + 0xe8),1);
      YesNoPrompt_Reset(*(undefined4 *)(param_1 + 0x244));
      YesNoPrompt_Destroy(*(undefined4 *)(param_1 + 0x244));
      ClearFrameAndWindow2(param_1 + 300,0);
      RemoveWindow(param_1 + 300);
      *(int *)(param_1 + 0x404) = *(int *)(param_1 + 0x404) + 1;
    }
    break;
  case 4:
    PaletteData_BeginPaletteFade(*(undefined4 *)(param_1 + 0xe8),2,0x80b,0,10,0,0);
    PaletteData_BeginPaletteFade(*(undefined4 *)(param_1 + 0xe8),8,0xffff,0,10,0,0);
    *(int *)(param_1 + 0x404) = *(int *)(param_1 + 0x404) + 1;
    break;
  case 5:
    iVar1 = PaletteData_GetSelectedBuffersBitmask(*(undefined4 *)(param_1 + 0xe8));
    if (iVar1 != 0) {
      return 7;
    }
    iVar1 = *(int *)(param_1 + 0x408);
    if (iVar1 != 0) {
      if (iVar1 == 1) {
        ov57_0223B774(param_1);
        ov57_0223B7A8(param_1);
        ov57_022399F8(param_1);
        ov57_022383AC(param_1);
        ov57_02237F3C(param_1);
        ov57_022383D0(param_1,1);
        uVar2 = 6;
        *(undefined4 *)(param_1 + 0x410) = 0x14;
        goto code_r0x0223ab28;
      }
      if (iVar1 == 2) {
        uVar2 = 4;
        goto code_r0x0223ab28;
      }
    }
    uVar2 = 7;
code_r0x0223ab28:
    ov57_0223B948(param_1,1);
    *(undefined4 *)(param_1 + 0x404) = 0;
    return uVar2;
  }
  return 7;
}

