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
undefined4 ov87_021E7E98();
undefined4 sub_020164C4();
undefined4 ov87_021E7FC0();
undefined4 ov87_021E80F0();
undefined4 Heap_Free();
undefined4 MessageFormat_Delete();
undefined4 PaletteData_Free();
undefined4 String_Delete();
undefined4 ov87_021E6BB8();
undefined4 MessagePrinter_Delete();
undefined4 FontID_Release();
undefined4 DestroyMsgData();
undefined4 PaletteData_FreeBuffers();
undefined4 NARC_Delete();

void ov87_021E6780(int param_1)

{
  int iVar1;
  int iVar2;

  iVar1 = 0;
  iVar2 = param_1;
  do {
    if (*(int *)(iVar2 + 0x2f8) != 0) {
      ov87_021E7FC0();
    }
    iVar1 = iVar1 + 1;
    iVar2 = iVar2 + 4;
  } while (iVar1 < 4);
  iVar1 = 0;
  iVar2 = param_1;
  do {
    if (*(int *)(iVar2 + 0x308) != 0) {
      ov87_021E7FC0();
    }
    iVar1 = iVar1 + 1;
    iVar2 = iVar2 + 4;
  } while (iVar1 < 9);
  if (*(int *)(param_1 + 0x33c) != 0) {
    ov87_021E7FC0();
  }
  if (*(int *)(param_1 + 0x340) != 0) {
    ov87_021E7FC0();
  }
  iVar1 = 0;
  iVar2 = param_1;
  do {
    if (*(int *)(iVar2 + 0x344) != 0) {
      ov87_021E7FC0();
    }
    iVar1 = iVar1 + 1;
    iVar2 = iVar2 + 4;
  } while (iVar1 < 3);
  iVar1 = 0;
  iVar2 = param_1;
  do {
    if (*(int *)(iVar2 + 0x350) != 0) {
      ov87_021E7FC0();
    }
    iVar1 = iVar1 + 1;
    iVar2 = iVar2 + 4;
  } while (iVar1 < 3);
  if (*(int *)(param_1 + 0x35c) != 0) {
    ov87_021E7FC0();
  }
  FontID_Release(2);
  PaletteData_FreeBuffers(*(undefined4 *)(param_1 + 0x15c),2);
  PaletteData_FreeBuffers(*(undefined4 *)(param_1 + 0x15c),0);
  PaletteData_Free(*(undefined4 *)(param_1 + 0x15c));
  *(undefined4 *)(param_1 + 0x15c) = 0;
  ov87_021E7E98(param_1 + 0x16c);
  sub_020164C4(*(undefined4 *)(param_1 + 0x34));
  DestroyMsgData(*(undefined4 *)(param_1 + 0x38));
  MessageFormat_Delete(*(undefined4 *)(param_1 + 0x3c));
  String_Delete(*(undefined4 *)(param_1 + 0x40));
  String_Delete(*(undefined4 *)(param_1 + 0x44));
  MessagePrinter_Delete(*(undefined4 *)(param_1 + 0x160));
  Heap_Free(*(undefined4 *)(param_1 + 900));
  Heap_Free(*(undefined4 *)(param_1 + 0x38c));
  ov87_021E80F0(param_1 + 0x5c);
  ov87_021E6BB8(*(undefined4 *)(param_1 + 0x58));
  NARC_Delete(*(undefined4 *)(param_1 + 0x380));
  return;
}

