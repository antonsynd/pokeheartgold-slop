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
undefined4 FillBgTilemapRect();
undefined4 FillWindowPixelBuffer();
undefined4 CopyWindowPixelsToVram_TextMode();
undefined4 BgCommitTilemapBufferToVram();
undefined4 RemoveWindow();
undefined4 sub_02019B1C();

void ov70_02241DB4(undefined4 *param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  undefined1 uStack_18;
  char acStack_17 [3];

  sub_02019B1C(param_1[7],0,acStack_17,&uStack_18);
  switch(param_2) {
  case 0:
    iVar2 = 0;
    iVar1 = 0;
    do {
      FillWindowPixelBuffer(param_1[1] + iVar1,0x22);
      CopyWindowPixelsToVram_TextMode(param_1[1] + iVar1);
      RemoveWindow(param_1[1] + iVar1);
      iVar2 = iVar2 + 1;
      iVar1 = iVar1 + 0x10;
    } while (iVar2 < 5);
    if (acStack_17[0] == '\x10') {
      FillBgTilemapRect(*param_1,2,5,0x11,1,0xf,0xf,0x10);
      BgCommitTilemapBufferToVram(*param_1,2);
    }
    RemoveWindow(param_1[1] + 0xe0);
    return;
  case 1:
    iVar2 = 0;
    iVar1 = 0;
    do {
      RemoveWindow(param_1[1] + iVar1);
      iVar2 = iVar2 + 1;
      iVar1 = iVar1 + 0x10;
    } while (iVar2 < 3);
    RemoveWindow(param_1[1] + 0xe0);
    return;
  case 2:
    iVar2 = 0;
    iVar1 = 0;
    do {
      RemoveWindow(param_1[1] + iVar1);
      iVar2 = iVar2 + 1;
      iVar1 = iVar1 + 0x10;
    } while (iVar2 < 5);
    RemoveWindow(param_1[1] + 0xe0);
    break;
  case 3:
    iVar2 = 0;
    iVar1 = 0;
    do {
      FillWindowPixelBuffer(param_1[1] + iVar1,0x22);
      CopyWindowPixelsToVram_TextMode(param_1[1] + iVar1);
      RemoveWindow(param_1[1] + iVar1);
      iVar2 = iVar2 + 1;
      iVar1 = iVar1 + 0x10;
    } while (iVar2 < 6);
    if (((acStack_17[0] + -0x10) * 0x1000000 >> 0x18 & 0xffU) < 2) {
      FillBgTilemapRect(*param_1,2,5,0x12,1,0xe,0xf,0x10);
      BgCommitTilemapBufferToVram(*param_1,2);
    }
    RemoveWindow(param_1[1] + 0xe0);
    return;
  case 4:
    iVar2 = 0;
    iVar1 = 0;
    do {
      FillWindowPixelBuffer(param_1[1] + iVar1,0x22);
      CopyWindowPixelsToVram_TextMode(param_1[1] + iVar1);
      RemoveWindow(param_1[1] + iVar1);
      iVar2 = iVar2 + 1;
      iVar1 = iVar1 + 0x10;
    } while (iVar2 < 9);
    if (acStack_17[0] == '\x10') {
      FillBgTilemapRect(*param_1,2,5,0x11,1,0xf,0xf,0x10);
      BgCommitTilemapBufferToVram(*param_1,2);
    }
    RemoveWindow(param_1[1] + 0xe0);
    return;
  case 5:
    iVar2 = 0;
    iVar1 = 0;
    do {
      FillWindowPixelBuffer(param_1[1] + iVar1,0x22);
      CopyWindowPixelsToVram_TextMode(param_1[1] + iVar1);
      RemoveWindow(param_1[1] + iVar1);
      iVar2 = iVar2 + 1;
      iVar1 = iVar1 + 0x10;
    } while (iVar2 < 4);
    if (acStack_17[0] == '\x10') {
      FillBgTilemapRect(*param_1,2,5,0x11,1,0xf,0xf,0x10);
      BgCommitTilemapBufferToVram(*param_1,2);
    }
    RemoveWindow(param_1[1] + 0xe0);
    return;
  case 6:
    iVar2 = 0;
    iVar1 = 0;
    do {
      FillWindowPixelBuffer(param_1[1] + iVar1,0x22);
      CopyWindowPixelsToVram_TextMode(param_1[1] + iVar1);
      RemoveWindow(param_1[1] + iVar1);
      iVar2 = iVar2 + 1;
      iVar1 = iVar1 + 0x10;
    } while (iVar2 < 9);
    if (acStack_17[0] == '\x10') {
      FillBgTilemapRect(*param_1,2,5,0x11,1,0xf,0xf,0x10);
      BgCommitTilemapBufferToVram(*param_1,2);
    }
    RemoveWindow(param_1[1] + 0xe0);
    RemoveWindow(param_1[1] + 0xf0);
    return;
  }
  return;
}

