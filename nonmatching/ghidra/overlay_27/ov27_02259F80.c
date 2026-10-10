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
undefined4 func_0x020ce6f8() __asm__("sub_020CE6F8");
undefined4 ov27_0225C10C();
undefined4 ov27_0225C1AC();
undefined4 ov27_0225BD50();
undefined4 MessageFormat_New();
undefined4 CreateSysTaskAndEnvironment();
undefined4 func_0x020ce650() __asm__("sub_020CE650");
undefined4 SysTask_GetData();
undefined4 ov27_0225C1EC();
undefined4 func_0x020cda64() __asm__("sub_020CDA64");
undefined4 NewMsgDataFromNarc();
undefined4 ov27_0225AC00();
undefined4 InitBgFromTemplate();
undefined4 FontID_Alloc();
undefined4 Heap_Create();
extern undefined ov27_0225D000;
extern uint uRam04001000 __asm__("sub_04001000");
extern undefined ov27_0225D01C;
undefined4 ov27_0225A714();
undefined4 ov27_0225A7FC();
undefined4 FieldSystem_TaskIsRunning();
undefined4 ov27_0225BCE8();
undefined4 ov27_0225C0E0();
undefined4 ov27_0225B010();
undefined4 ov27_0225BB6C();
undefined4 ov27_0225BC84();
undefined4 ov27_0225AD0C();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 func_0x020183f0() __asm__("sub_020183F0");
undefined4 ov27_0225A690();
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 ov27_0225BDDC();
undefined4 GfGfx_EngineBTogglePlanes();

undefined4 ov27_02259F80(undefined4 param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;

  Heap_Create(3,8,0x18d00);
  func_0x020cda64(0);
  func_0x020ce650(0x80);
  func_0x020ce6f8(0x100);
  uRam04001000 = uRam04001000 & 0xffcfffef | 0x10;
  InitBgFromTemplate(param_1,4,&ov27_0225D000,0);
  InitBgFromTemplate(param_1,5,&ov27_0225D01C,0);
  uVar1 = CreateSysTaskAndEnvironment(0x225a321,0x540,10,8);
  puVar2 = (undefined4 *)SysTask_GetData();
  puVar2[2] = uVar1;
  *puVar2 = 0;
  puVar2[1] = param_1;
  puVar2[3] = param_2;
  puVar2[4] = param_3;
  uVar3 = ov27_0225BD50(param_3);
  puVar2[0x147] = (uVar3 & 0xf) << 1 | puVar2[0x147] & 0xffffffe1;
  puVar2[0x147] = puVar2[0x147] & 0xffffffdf;
  ov27_0225AC00(param_1,*puVar2,puVar2 + 0xf4,puVar2 + 0xf8,puVar2 + 0xfc);
  FontID_Alloc(4,8);
  uVar4 = MessageFormat_New(8);
  puVar2[299] = uVar4;
  uVar4 = NewMsgDataFromNarc(0,0x1b,0xc4,8);
  puVar2[0x12a] = uVar4;
  ov27_0225C10C(puVar2);
  uVar4 = ov27_0225C1AC(puVar2,*(undefined1 *)(param_3 + 0xd3));
  puVar2[5] = uVar4;
  ov27_0225C1EC(puVar2);
  ov27_0225AD0C(puVar2);
  ov27_0225B010(puVar2);
  ov27_0225BB6C(puVar2,*(byte *)(puVar2[4] + 0xd2) & 0x3f);
  AddTextPrinterParameterizedWithColor(puVar2 + 0xf4,4,puVar2[0x12d],0,0,0,0xf0100,0);
  AddTextPrinterParameterizedWithColor(puVar2 + 0xf8,0,puVar2[0x131],0,0,0xff,0xf0100,0);
  ov27_0225BCE8(puVar2);
  ov27_0225BC84(puVar2);
  ov27_0225A690(puVar2,1);
  ov27_0225C0E0(puVar2);
  ov27_0225BDDC(puVar2 + 0x148,puVar2);
  iVar5 = func_0x020183f0(param_3 + 0x10c);
  if (iVar5 == 0) {
    *(byte *)(param_3 + 0xd2) = *(byte *)(param_3 + 0xd2) & 0x7f;
  }
  else {
    iVar5 = FieldSystem_TaskIsRunning(param_3);
    if (iVar5 == 0) {
      *(byte *)(param_3 + 0xd2) = *(byte *)(param_3 + 0xd2) | 0x80;
    }
  }
  iVar5 = ov27_0225A714(puVar2);
  if (iVar5 == 0) {
    return uVar1;
  }
  ov27_0225A7FC(puVar2);
  SpriteList_RenderAndAnimateSprites(puVar2[6]);
  uRam04001000 = uRam04001000 & 0xffff1fff;
  GfGfx_EngineBTogglePlanes(1,1);
  GfGfx_EngineBTogglePlanes(2,1);
  GfGfx_EngineBTogglePlanes(4,0);
  GfGfx_EngineBTogglePlanes(8,0);
  GfGfx_EngineBTogglePlanes(0x10,1);
  return uVar1;
}

