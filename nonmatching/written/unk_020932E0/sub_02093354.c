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
undefined4 GfGfx_SwapDisplay(void);
undefined4 sub_0209515C();
undefined4 SpriteTransfer_DeleteCharTransferTask(void *);
undefined4 SpriteTransfer_DeletePlttTransferTask(void *);
undefined4 FreeBgTilemapBuffer(void *, unsigned char);
undefined4 sub_02095D2C();
undefined4 SpriteList_Delete(void *);
undefined4 Destroy2DGfxResObjMan(void *);
undefined4 Heap_Free(void *);
undefined4 YesNoPrompt_Destroy(void *);
undefined4 RemoveWindow(void *);
undefined4 FontID_Release(unsigned char);
undefined4 sub_020950F8();
undefined4 sub_020950D4();
extern unsigned short uRam04000050 __asm__("sub_04000050");
extern unsigned char uRam021d1175 __asm__("sub_021D1175");

void sub_02093354(undefined4 *param_1)

{
  undefined4 *puVar1;
  int iVar2;

  sub_02095D2C(param_1[0x11ae]);
  sub_0209515C(param_1);
  sub_020950F8(param_1 + 0x1194,1);
  RemoveWindow((undefined *)(param_1 + 0x119c));
  sub_020950D4(param_1);
  Heap_Free((undefined *)param_1[0x11b2]);
  Heap_Free((undefined *)param_1[0x11b3]);
  SpriteTransfer_DeleteCharTransferTask((undefined *)param_1[0x57]);
  SpriteTransfer_DeletePlttTransferTask((undefined *)param_1[0x58]);
  iVar2 = 0;
  puVar1 = param_1;
  do {
    Destroy2DGfxResObjMan((undefined *)puVar1[0x51]);
    iVar2 = iVar2 + 1;
    puVar1 = puVar1 + 1;
  } while (iVar2 < 6);
  SpriteList_Delete((undefined *)param_1[6]);
  Heap_Free((undefined *)param_1[0x11a9]);
  YesNoPrompt_Destroy((undefined *)param_1[2]);
  Heap_Free((undefined *)param_1[0x1f9]);
  Heap_Free((undefined *)param_1[0x234]);
  FontID_Release(4);
  uRam021d1175 = 0;
  GfGfx_SwapDisplay();
  uRam04000050 = 0;
  FreeBgTilemapBuffer((undefined *)*param_1,0);
  FreeBgTilemapBuffer((undefined *)*param_1,1);
  FreeBgTilemapBuffer((undefined *)*param_1,2);
  FreeBgTilemapBuffer((undefined *)*param_1,3);
  Heap_Free((undefined *)param_1);
  return;
}

