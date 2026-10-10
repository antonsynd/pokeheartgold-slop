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
undefined4 Heap_Create();
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 OverlayManager_GetArgs();
undefined4 Main_SetHBlankIntrCB();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 FontID_Alloc();
undefined4 ov86_021E5E0C();
undefined4 OverlayManager_CreateAndGetData();
undefined4 BgConfig_Alloc();
undefined4 Main_SetVBlankIntrCB();
undefined4 Save_Frontier_GetStatic();
undefined4 Save_PlayerData_GetOptionsAddr();
undefined4 GfGfx_DisableEngineBPlanes();
extern uint uRam04001000 __asm__("sub_04001000");
extern uint uRam04000000 __asm__("sub_04000000");
extern ushort uRam04000304 __asm__("sub_04000304");
undefined4 MessageFormat_New();
undefined4 LoadFontPal0();
undefined4 ov86_021E7E68();
undefined4 ov86_021E6E98();
undefined4 ov86_021E7DF8();
undefined4 ov86_021E6E30();
undefined4 NewMsgDataFromNarc();
undefined4 LoadFontPal1();
undefined4 String_New();
undefined4 ov86_021E5E98();

undefined4 ov86_021E5900(undefined4 param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  
  Main_SetVBlankIntrCB(0,0);
  Main_SetHBlankIntrCB(0,0);
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  uRam04000000 = uRam04000000 & 0xffffe0ff;
  uRam04001000 = uRam04001000 & 0xffffe0ff;
  uRam04000304 = uRam04000304 & 0x7fff;
  Heap_Create(3,0x79,0x30000);
  puVar1 = (undefined4 *)OverlayManager_CreateAndGetData(param_1,0x394,0x79);
  func_0x020e5b44(puVar1,0,0x394);
  *puVar1 = param_1;
  uVar2 = BgConfig_Alloc(0x79);
  puVar1[3] = uVar2;
  puVar3 = (undefined4 *)OverlayManager_GetArgs(param_1);
  puVar1[0x89] = *puVar3;
  uVar2 = Save_Frontier_GetStatic(puVar1[0x89]);
  puVar1[0x8a] = uVar2;
  *(undefined1 *)((int)puVar1 + 6) = *(undefined1 *)(puVar3 + 1);
  *(undefined1 *)((int)puVar1 + 7) = *(undefined1 *)((int)puVar3 + 5);
  *(undefined2 *)(puVar1 + 2) = *(undefined2 *)((int)puVar3 + 6);
  uVar2 = Save_PlayerData_GetOptionsAddr(puVar1[0x89]);
  puVar1[0x88] = uVar2;
  FontID_Alloc(4,0x79);
  ov86_021E5E0C(puVar1);
  uVar2 = NewMsgDataFromNarc(1,0x1b,0x13,0x79);
  puVar1[0x84] = uVar2;
  uVar2 = MessageFormat_New(0x79);
  puVar1[0x85] = uVar2;
  uVar2 = String_New(800,0x79);
  puVar1[0x86] = uVar2;
  LoadFontPal0(0,0x1a0,0x79);
  LoadFontPal1(0,0x180,0x79);
  uVar2 = ov86_021E5E98(*(undefined1 *)((int)puVar1 + 7));
  ov86_021E7DF8(puVar1[3],puVar1 + 4,uVar2);
  ov86_021E7E68(puVar1[3],puVar1 + 0x8f);
  ov86_021E6E30(puVar1);
  ov86_021E6E98(puVar1);
  Main_SetVBlankIntrCB(0x21e5cdd,puVar1);
  *param_2 = 0;
  return 1;
}

