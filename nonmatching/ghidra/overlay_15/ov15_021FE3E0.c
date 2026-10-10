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
undefined4 ClearWindowTilemapAndScheduleTransfer();
undefined4 RemoveWindow();

void ov15_021FE3E0(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  if (*(int *)(param_1 + 0x174) != 0) {
    iVar1 = 0;
    iVar2 = param_1;
    do {
      iVar3 = (iVar1 + 0x11) * 0x10;
      ClearWindowTilemapAndScheduleTransfer(param_1 + 0xb4 + iVar3);
      RemoveWindow(param_1 + 0xb4 + iVar3);
      *(undefined4 *)(iVar2 + 0x1c4) = 0;
      iVar1 = iVar1 + 1;
      iVar2 = iVar2 + 0x10;
    } while (iVar1 < 3);
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0x224);
    RemoveWindow(param_1 + 0x224);
    *(undefined4 *)(param_1 + 0x224) = 0;
    RemoveWindow(param_1 + 0x214);
    *(undefined4 *)(param_1 + 0x214) = 0;
    RemoveWindow(param_1 + 0x204);
    *(undefined4 *)(param_1 + 0x204) = 0;
    ClearWindowTilemapAndScheduleTransfer(param_1 + 500);
    RemoveWindow(param_1 + 500);
    iVar1 = 0;
    *(undefined4 *)(param_1 + 500) = 0;
    iVar2 = param_1;
    do {
      iVar3 = (iVar1 + 0xd) * 0x10;
      ClearWindowTilemapAndScheduleTransfer(param_1 + 0xb4 + iVar3);
      RemoveWindow(param_1 + 0xb4 + iVar3);
      *(undefined4 *)(iVar2 + 0x184) = 0;
      iVar1 = iVar1 + 1;
      iVar2 = iVar2 + 0x10;
    } while (iVar1 < 4);
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0x174);
    RemoveWindow(param_1 + 0x174);
    *(undefined4 *)(param_1 + 0x174) = 0;
  }
  return;
}

