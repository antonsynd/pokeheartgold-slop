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
undefined4 BgClearTilemapBufferAndCommit();
undefined4 func_0x020ce6f8() __asm__("sub_020CE6F8");
undefined4 ov27_0225C80C();
undefined4 ov27_0225C914();
undefined4 CreateSysTaskAndEnvironment();
undefined4 ov27_0225C4AC();
undefined4 func_0x020ce650() __asm__("sub_020CE650");
undefined4 ov27_0225C72C();
undefined4 SysTask_GetData();
undefined4 func_0x020cda64() __asm__("sub_020CDA64");
undefined4 BG_ClearCharDataRange();
undefined4 InitBgFromTemplate();
undefined4 FontID_Alloc();
undefined4 Heap_Create();
extern undefined ov27_0225D38C;
extern uint uRam04001000 __asm__("sub_04001000");
extern undefined ov27_0225D3A8;
extern undefined ov27_0225D370;
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();

undefined4
ov27_0225C250(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  uVar1 = param_4;
  Heap_Create(3,8,0x18000);
  func_0x020cda64(0);
  func_0x020ce650(0x80);
  func_0x020ce6f8(0x100);
  uRam04001000 = uRam04001000 & 0xffcfffef | 0x10;
  InitBgFromTemplate(param_1,4,&ov27_0225D370,0,param_3,param_4,uVar1);
  InitBgFromTemplate(param_1,5,&ov27_0225D38C,0);
  InitBgFromTemplate(param_1,6,&ov27_0225D3A8,0);
  BG_ClearCharDataRange(4,0x20,0,4);
  BG_ClearCharDataRange(5,0x20,0,4);
  BG_ClearCharDataRange(6,0x20,0,4);
  BgClearTilemapBufferAndCommit(param_1,4);
  BgClearTilemapBufferAndCommit(param_1,5);
  uVar1 = CreateSysTaskAndEnvironment(0x225c435,0x3a4,10,8);
  puVar2 = (undefined4 *)SysTask_GetData();
  puVar2[7] = uVar1;
  puVar2[5] = 0;
  puVar2[6] = param_1;
  puVar2[8] = param_2;
  puVar2[9] = param_3;
  puVar2[0x12] = 0;
  *puVar2 = 0;
  puVar2[1] = param_4;
  puVar2[0xe7] = 0;
  puVar2[0xe8] = 0;
  puVar2[0xd] = 0;
  puVar2[0x11] = 0;
  FontID_Alloc(4,8);
  ov27_0225C914(puVar2,*(byte *)(puVar2[9] + 0xd2) & 0x3f);
  ov27_0225C4AC(puVar2);
  ov27_0225C72C(puVar2);
  ov27_0225C80C(puVar2,0);
  uRam04001000 = uRam04001000 & 0xffff1fff;
  GfGfx_EngineBTogglePlanes(1,1);
  GfGfx_EngineBTogglePlanes(2,1);
  GfGfx_EngineBTogglePlanes(4,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  TextFlags_SetCanTouchSpeedUpPrint(1);
  return uVar1;
}

