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
typedef void code(void);
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
undefined4 func_0x0201cc2c(undefined4, undefined4) __asm__("sub_0201CC2C");
undefined4 AddTextPrinterParameterizedWithColor(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x0201bb68(undefined4, undefined4) __asm__("sub_0201BB68");
undefined4 NewMsgDataFromNarc(undefined4, undefined4, undefined4, undefined4);
undefined4 GfGfxLoader_GXLoadPalFromOpenNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 GfGfx_EngineATogglePlanes(undefined4, undefined4);
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 NARC_Delete(undefined4);
undefined4 NARC_New(undefined4, undefined4);
undefined4 DestroyMsgData(undefined4);
undefined4 FillWindowPixelBuffer(undefined4, undefined4);
undefined4 AddWindow(undefined4, undefined4, undefined4);
undefined4 NewString_ReadMsgData(undefined4, undefined4);
undefined4 ScheduleWindowCopyToVram(undefined4);
undefined4 FontID_String_GetWidth(undefined4, undefined4, undefined4);
undefined4 String_Delete(undefined4);
extern undefined ov02_0225324C;

void ov02_0224686C(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  uint uVar4;

  uVar2 = NARC_New(0xae,*param_1);
  GfGfxLoader_GXLoadPalFromOpenNarc(uVar2,0xf,0,0,0x20,*param_1);
  GfGfxLoader_LoadCharDataFromOpenNarc
            (uVar2,0x10,*(undefined4 *)(param_1[1] + 8),1,0,0,0,*param_1,param_4);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar2,0x11,*(undefined4 *)(param_1[1] + 8),1,0,0,0,*param_1);
  uVar1 = func_0x0201cc2c(*(undefined4 *)(param_1[1] + 8),1);
  *(undefined1 *)((int)param_1 + 0x1a) = uVar1;
  func_0x0201bb68(1,0);
  GfGfx_EngineATogglePlanes(2,1);
  NARC_Delete(uVar2);
  AddWindow(*(undefined4 *)(param_1[1] + 8),param_1 + 2,&ov02_0225324C);
  FillWindowPixelBuffer(param_1 + 2,9);
  uVar2 = NewMsgDataFromNarc(0,0x1b,0xc6,*param_1);
  uVar3 = NewString_ReadMsgData(uVar2,*(undefined1 *)((int)param_1 + 0x19));
  uVar4 = FontID_String_GetWidth(3,uVar3,0);
  AddTextPrinterParameterizedWithColor
            (param_1 + 2,3,uVar3,(int)(0x70 - (uVar4 & 0xff)) / 2,0,0xff,0xf0e09,0);
  ScheduleWindowCopyToVram(param_1 + 2);
  String_Delete(uVar3);
  DestroyMsgData(uVar2);
  return;
}

