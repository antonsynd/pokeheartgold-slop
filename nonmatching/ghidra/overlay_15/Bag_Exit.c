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
undefined4 ov15_021FA0D8();
undefined4 sub_02021238();
undefined4 ov15_021FDC6C();
undefined4 String_Delete();
undefined4 ov15_021F9EA8();
undefined4 OverlayManager_GetData();
undefined4 MessageFormat_Delete();
undefined4 NARC_Delete();
undefined4 ov15_021F9A8C();
undefined4 DestroyMsgData();
undefined4 ov15_021FF894();
undefined4 ov15_021FE8A4();
undefined4 MessagePrinter_Delete();
undefined4 ov15_021FA028();
undefined4 Heap_Free();
undefined4 ov15_021FEB64();
undefined4 ov15_021FE504();
undefined4 ov15_021FE154();
undefined4 GF_DestroyVramTransferManager();
undefined4 Heap_Destroy();
undefined4 OverlayManager_FreeData();
undefined4 sub_02004B10();
undefined4 Main_SetVBlankIntrCB();

undefined4 Bag_Exit(undefined4 param_1)

{
  undefined4 *puVar1;

  puVar1 = (undefined4 *)OverlayManager_GetData();
  ov15_021FDC6C();
  ov15_021FF894(puVar1);
  Heap_Free(puVar1[0x1a3]);
  Heap_Free(puVar1[0x1a4]);
  ov15_021FA0D8(puVar1);
  ov15_021F9EA8(puVar1);
  ov15_021FE154(puVar1);
  ov15_021F9A8C(*puVar1);
  sub_02021238();
  GF_DestroyVramTransferManager();
  ov15_021FEB64(puVar1);
  ov15_021FE504(puVar1);
  ov15_021FE8A4(puVar1);
  ov15_021FA028(puVar1);
  String_Delete(puVar1[0x179]);
  DestroyMsgData(puVar1[0xbf]);
  DestroyMsgData(puVar1[0xbe]);
  DestroyMsgData(puVar1[0xbc]);
  MessagePrinter_Delete(puVar1[0xbb]);
  MessageFormat_Delete(puVar1[0xbd]);
  NARC_Delete(puVar1[0x91]);
  OverlayManager_FreeData(param_1);
  sub_02004B10();
  Main_SetVBlankIntrCB(0,0);
  Heap_Destroy(6);
  return 1;
}

