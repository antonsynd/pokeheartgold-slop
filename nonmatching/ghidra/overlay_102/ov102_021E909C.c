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
undefined4 ov102_021E93D4();
undefined4 HBlankInterruptDisable();
undefined4 FontID_Alloc();
undefined4 ov102_021E8F68();
undefined4 ov102_021E9198();
undefined4 BgConfig_Alloc();
undefined4 Main_SetVBlankIntrCB();
undefined4 SysTask_CreateOnMainQueue();
undefined4 func_0x0200b150() __asm__("sub_0200B150");
undefined4 Heap_Alloc();
undefined4 G2dRenderer_Init();
undefined4 func_0x020b78d4() __asm__("sub_020B78D4");

undefined4 * ov102_021E909C(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;

  puVar1 = (undefined4 *)Heap_Alloc(0x23,0x234);
  Main_SetVBlankIntrCB(0,0);
  HBlankInterruptDisable();
  puVar1[6] = param_1;
  puVar1[7] = param_2;
  uVar2 = ov102_021E8F68(param_1);
  puVar1[0x7e] = uVar2;
  ov102_021E9198(puVar1);
  func_0x020b78d4();
  func_0x0200b150(1);
  uVar2 = G2dRenderer_Init(0x80,puVar1 + 10,0x23);
  puVar1[9] = uVar2;
  uVar2 = BgConfig_Alloc(0x23);
  puVar1[8] = uVar2;
  uVar2 = SysTask_CreateOnMainQueue(0x21e93dd,puVar1,2);
  *puVar1 = uVar2;
  uVar2 = ov102_021E93D4(0x21e93e1,puVar1,1);
  iVar3 = 0;
  puVar1[1] = uVar2;
  puVar4 = puVar1;
  do {
    iVar3 = iVar3 + 1;
    puVar4[2] = 0;
    puVar4 = puVar4 + 1;
  } while (iVar3 < 4);
  FontID_Alloc(4,0x23);
  return puVar1;
}

