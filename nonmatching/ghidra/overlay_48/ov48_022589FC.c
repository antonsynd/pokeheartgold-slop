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
undefined4 ov48_02259C38();
undefined4 ov48_0225A108();
undefined4 ov48_02259984();
undefined4 OverlayManager_GetData();
undefined4 ov48_02259D94();
undefined4 ov48_02259868();
undefined4 ov48_0225B0A4();
undefined4 Main_SetVBlankIntrCB();
undefined4 HBlankInterruptDisable();
undefined4 ov48_022594A8();
undefined4 ov48_02259F14();
undefined4 OverlayManager_FreeData();
undefined4 OverlayManager_GetArgs();
undefined4 Heap_Destroy();

undefined4 ov48_022589FC(undefined4 param_1)

{
  int iVar1;
  
  iVar1 = OverlayManager_GetData();
  OverlayManager_GetArgs(param_1);
  Main_SetVBlankIntrCB(0,0);
  HBlankInterruptDisable();
  ov48_0225A108(iVar1 + 0xc40c,iVar1 + 0x20);
  ov48_02259F14(iVar1 + 0xc700);
  ov48_02259D94(iVar1 + 0xc3e0);
  ov48_02259C38(iVar1 + 0xc3cc);
  ov48_02259868(iVar1 + 0x178);
  ov48_02259984(iVar1 + 0x224);
  ov48_0225B0A4(iVar1 + 0x168);
  ov48_022594A8(iVar1 + 0x20);
  OverlayManager_FreeData(param_1);
  Heap_Destroy(0x70);
  return 1;
}

