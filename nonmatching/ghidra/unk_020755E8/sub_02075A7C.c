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
undefined4 NARC_New();
undefined4 GfGfx_SwapDisplay();
undefined4 func_0x020d4790() __asm__("sub_020D4790");
undefined4 PaletteData_AllocBuffers();
undefined4 sub_02077400();
undefined4 AllocWindows();
undefined4 PaletteData_Init();
undefined4 GetMainBgPlttAddr();
undefined4 sub_020729A4();
undefined4 Heap_Alloc();
undefined4 FontID_Alloc();
undefined4 PaletteData_SetAutoTransparent();
undefined4 sub_02026E9C();
undefined4 sub_02026E8C();
undefined4 GetMonData();
undefined4 BgConfig_Alloc();
undefined4 func_0x020d4858() __asm__("sub_020D4858");
undefined4 GetSubBgPlttAddr();
extern undefined1 uRam021d1175 __asm__("sub_021D1175");
undefined4 sub_020773D4();
undefined4 sub_020163E0();
undefined4 sub_020774A0();
undefined4 sub_02076E64();
undefined4 AddWindowParameterized();
undefined4 DrawFrameAndWindow2();
undefined4 String_New();
undefined4 sub_020773AC();
undefined4 sub_02016EDC();
undefined4 sub_0201649C();
undefined4 sub_02075630();
undefined4 MessageFormat_New();
undefined4 sub_020771E8();
undefined4 FillWindowPixelBuffer();
undefined4 Pokepic_StartPaletteFadeAll();
undefined4 PokepicManager_Create();
undefined4 NewMsgDataFromNarc();
undefined4 PaletteData_BeginPaletteFade();
undefined4 SysTask_CreateOnMainQueue();
undefined4 TextFlags_SetCanABSpeedUpPrint();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 sub_0203A880();

undefined4 *
sub_02075A7C(undefined4 param_1,undefined4 param_2,undefined2 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9,undefined4 param_10,undefined4 param_11)

{
  undefined1 uVar1;
  undefined2 uVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 uVar5;

  uRam021d1175 = 0;
  GfGfx_SwapDisplay();
  FontID_Alloc(4,param_11);
  puVar3 = (undefined4 *)Heap_Alloc(param_11,0xbc);
  func_0x020d4858(0,puVar3,0xbc);
  uVar4 = sub_02026E8C();
  uVar5 = GetMainBgPlttAddr();
  func_0x020d4790(0,uVar5,uVar4);
  uVar4 = sub_02026E9C();
  uVar5 = GetSubBgPlttAddr();
  func_0x020d4790(0,uVar5,uVar4);
  puVar3[9] = param_1;
  puVar3[10] = param_2;
  uVar2 = GetMonData(param_2,5,0);
  *(undefined2 *)(puVar3 + 0x18) = uVar2;
  uVar1 = GetMonData(param_2,0x70,0);
  *(undefined1 *)(puVar3 + 0x20) = uVar1;
  *(undefined2 *)((int)puVar3 + 0x62) = param_3;
  puVar3[0x17] = param_11;
  puVar3[0xe] = 0;
  uVar4 = NARC_New(0xb4,param_11);
  puVar3[0x21] = uVar4;
  sub_020729A4(puVar3[0x21],puVar3 + 0x22,*(undefined2 *)(puVar3 + 0x18),1);
  sub_020729A4(puVar3[0x21],(int)puVar3 + 0x89,*(undefined2 *)((int)puVar3 + 0x62),1);
  uVar4 = PaletteData_Init(param_11);
  puVar3[5] = uVar4;
  PaletteData_SetAutoTransparent(uVar4,1);
  PaletteData_AllocBuffers(puVar3[5],0,0x200,param_11);
  PaletteData_AllocBuffers(puVar3[5],1,0x200,param_11);
  PaletteData_AllocBuffers(puVar3[5],2,0x1c0,param_11);
  uVar4 = BgConfig_Alloc(param_11);
  *puVar3 = uVar4;
  uVar4 = AllocWindows(param_11,1);
  puVar3[1] = uVar4;
  puVar3[0xb] = param_4;
  uVar4 = sub_02077400(param_11);
  puVar3[0xd] = uVar4;
  sub_020773AC();
  sub_020773D4();
  sub_020774A0();
  sub_02076E64(puVar3,*puVar3);
  sub_02075630(puVar3);
  AddWindowParameterized(*puVar3,puVar3[1],1,2,0x13,0x1b,4,0xb,0x1f);
  FillWindowPixelBuffer(puVar3[1],0xff);
  DrawFrameAndWindow2(puVar3[1],0,1,10);
  AddWindowParameterized(*puVar3,puVar3 + 0x23,6,3,8,0x1a,2,0xf,0x50);
  AddWindowParameterized(*puVar3,puVar3 + 0x27,6,3,0xe,0x1a,2,0xf,0x84);
  uVar4 = PokepicManager_Create(param_11);
  puVar3[6] = uVar4;
  uVar4 = sub_02016EDC(param_11,1,0);
  puVar3[0x11] = uVar4;
  *(undefined1 *)((int)puVar3 + 0x67) = 0;
  *(undefined1 *)((int)puVar3 + 0x66) = 2;
  uVar4 = NewMsgDataFromNarc(1,0x1b,0xc5,param_11);
  puVar3[2] = uVar4;
  uVar4 = MessageFormat_New(param_11);
  puVar3[3] = uVar4;
  uVar4 = String_New(0x140,param_11);
  puVar3[4] = uVar4;
  uVar4 = Heap_Alloc(param_11,0x3c);
  puVar3[0xf] = uVar4;
  func_0x020d4858(0,puVar3[0xf],0x3c);
  *(undefined4 *)(puVar3[0xf] + 0x2c) = param_5;
  puVar3[0x12] = param_6;
  puVar3[0x13] = param_7;
  puVar3[0x14] = param_8;
  puVar3[0x1e] = param_9;
  puVar3[0x1f] = param_10;
  sub_020771E8(puVar3);
  PaletteData_BeginPaletteFade(puVar3[5],0xf,0xffff,1,0x10,0,0);
  Pokepic_StartPaletteFadeAll(puVar3[6],0x10,0,0,0);
  uVar4 = sub_020163E0(puVar3[5],0,0xb,param_11);
  puVar3[0x16] = uVar4;
  sub_0201649C(uVar4,1);
  SysTask_CreateOnMainQueue(0x2075d09,puVar3,0);
  TextFlags_SetCanABSpeedUpPrint(1);
  TextFlags_SetCanTouchSpeedUpPrint(1);
  sub_0203A880();
  return puVar3;
}

