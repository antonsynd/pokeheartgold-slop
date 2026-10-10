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
undefined4 AddWindowParameterized();
undefined4 FillWindowPixelBuffer();
extern undefined ov70_02245D60;

void ov70_0224190C(undefined4 *param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  undefined1 *puVar3;
  undefined *puVar4;
  short sVar5;
  int iVar6;
  int iStack_2c;
  int iStack_28;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  
  switch(param_2) {
  case 0:
    puVar3 = (undefined1 *)0x2245da2;
    iStack_2c = 0;
    sVar5 = 0x30;
    iVar1 = 0;
    do {
      AddWindowParameterized
                (*param_1,param_1[1] + iVar1,param_1[0x15] & 0xff,*puVar3,puVar3[1],8,2,1,sVar5);
      FillWindowPixelBuffer(param_1[1] + iVar1,0x22);
      sVar5 = sVar5 + 0x10;
      iStack_2c = iStack_2c + 1;
      puVar3 = puVar3 + 3;
      iVar1 = iVar1 + 0x10;
    } while (iStack_2c < 4);
    AddWindowParameterized(*param_1,param_1[1] + 0x40,param_1[0x15] & 0xff,6,0xe,5,1,1,0x70);
    FillWindowPixelBuffer(param_1[1] + 0x40,0x22);
    AddWindowParameterized(*param_1,param_1[1] + 0xe0,param_1[0x15] & 0xff,9,0x11,6,2,1,0x12f);
    FillWindowPixelBuffer(param_1[1] + 0xe0,0x22);
    return;
  case 1:
    puVar4 = &ov70_02245D60;
    iStack_20 = 0;
    sVar5 = 0x30;
    iVar1 = 0;
    do {
      AddWindowParameterized
                (*param_1,param_1[1] + iVar1,param_1[0x15] & 0xff,*puVar4,puVar4[1],8,2,1,sVar5);
      FillWindowPixelBuffer(param_1[1] + iVar1,0x22);
      sVar5 = sVar5 + 0x10;
      iStack_20 = iStack_20 + 1;
      puVar4 = puVar4 + 2;
      iVar1 = iVar1 + 0x10;
    } while (iStack_20 < 3);
    AddWindowParameterized(*param_1,param_1[1] + 0xe0,param_1[0x15] & 0xff,9,0x11,6,2,1,0x60);
    FillWindowPixelBuffer(param_1[1] + 0xe0,0x22);
    return;
  case 2:
    puVar3 = (undefined1 *)0x2245d6e;
    iStack_1c = 0;
    sVar5 = 0x30;
    iVar1 = 0;
    do {
      AddWindowParameterized
                (*param_1,param_1[1] + iVar1,param_1[0x15] & 0xff,*puVar3,puVar3[1],0xb,2,1,sVar5);
      FillWindowPixelBuffer(param_1[1] + iVar1,0x22);
      sVar5 = sVar5 + 0x16;
      iStack_1c = iStack_1c + 1;
      puVar3 = puVar3 + 2;
      iVar1 = iVar1 + 0x10;
    } while (iStack_1c < 4);
    AddWindowParameterized(*param_1,param_1[1] + 0x40,param_1[0x15] & 0xff,6,0xe,5,1,1,0x88);
    FillWindowPixelBuffer(param_1[1] + 0x40,0x22);
    AddWindowParameterized(*param_1,param_1[1] + 0xe0,param_1[0x15] & 0xff,9,0x11,6,2,1,0xa1);
    FillWindowPixelBuffer(param_1[1] + 0xe0,0x22);
    break;
  case 3:
    puVar3 = (undefined1 *)0x2245d96;
    iStack_24 = 0;
    sVar5 = 0x30;
    iVar1 = 0;
    do {
      AddWindowParameterized
                (*param_1,param_1[1] + iVar1,param_1[0x15] & 0xff,*puVar3,puVar3[1],0x17,2,1,sVar5);
      FillWindowPixelBuffer(param_1[1] + iVar1,0x22);
      sVar5 = sVar5 + 0x2e;
      iStack_24 = iStack_24 + 1;
      puVar3 = puVar3 + 2;
      iVar1 = iVar1 + 0x10;
    } while (iStack_24 < 5);
    AddWindowParameterized(*param_1,param_1[1] + 0x50,param_1[0x15] & 0xff,0xd,0x10,5,1,1,0x116);
    FillWindowPixelBuffer(param_1[1] + 0x50,0x22);
    AddWindowParameterized(*param_1,param_1[1] + 0xe0,param_1[0x15] & 0xff,0x18,0x11,6,2,1,0x12f);
    FillWindowPixelBuffer(param_1[1] + 0xe0,0x22);
    return;
  case 4:
    puVar3 = (undefined1 *)0x2245e0e;
    iStack_18 = 0;
    sVar5 = 0x30;
    iVar1 = 0;
    do {
      AddWindowParameterized
                (*param_1,param_1[1] + iVar1,param_1[0x15] & 0xff,*puVar3,puVar3[1],3,2,1,sVar5);
      FillWindowPixelBuffer(param_1[1] + iVar1,0x22);
      sVar5 = sVar5 + 6;
      iStack_18 = iStack_18 + 1;
      puVar3 = puVar3 + 2;
      iVar1 = iVar1 + 0x10;
    } while (iStack_18 < 9);
    AddWindowParameterized(*param_1,param_1[1] + 0xe0,param_1[0x15] & 0xff,9,0x11,6,2,1,0x12f);
    FillWindowPixelBuffer(param_1[1] + 0xe0,0x22);
    return;
  case 5:
    AddWindowParameterized(*param_1,param_1[1],param_1[0x15] & 0xff,1,2,3,2,1,0x30);
    FillWindowPixelBuffer(param_1[1],0x22);
    iVar2 = 0x2245e10;
    iVar6 = 1;
    iVar1 = 0x10;
    do {
      AddWindowParameterized
                (*param_1,param_1[1] + iVar1,param_1[0x15] & 0xff,*(undefined1 *)(iVar2 + -2),
                 *(undefined1 *)(iVar2 + -1),2,2,1,(iVar6 + -1) * 4 + 0x36U & 0xffff);
      FillWindowPixelBuffer(param_1[1] + iVar1,0x22);
      iVar6 = iVar6 + 1;
      iVar2 = iVar2 + 2;
      iVar1 = iVar1 + 0x10;
    } while (iVar6 < 4);
    AddWindowParameterized(*param_1,param_1[1] + 0xe0,param_1[0x15] & 0xff,9,0x11,6,2,1,0x12f);
    FillWindowPixelBuffer(param_1[1] + 0xe0,0x22);
    return;
  case 6:
    puVar3 = (undefined1 *)0x2245e0e;
    iStack_28 = 0;
    sVar5 = 0x30;
    iVar1 = 0;
    do {
      AddWindowParameterized
                (*param_1,param_1[1] + iVar1,param_1[0x15] & 0xff,*puVar3,puVar3[1],3,2,1,sVar5);
      FillWindowPixelBuffer(param_1[1] + iVar1,0x22);
      sVar5 = sVar5 + 6;
      iStack_28 = iStack_28 + 1;
      puVar3 = puVar3 + 2;
      iVar1 = iVar1 + 0x10;
    } while (iStack_28 < 9);
    AddWindowParameterized(*param_1,param_1[1] + 0xe0,param_1[0x15] & 0xff,9,0x11,6,2,1,0x12f);
    FillWindowPixelBuffer(param_1[1] + 0xe0,0x22);
    AddWindowParameterized(*param_1,param_1[1] + 0xf0,param_1[0x15] & 0xff,2,2,9,2,1,0x66);
    FillWindowPixelBuffer(param_1[1] + 0xf0,0x22);
    return;
  }
  return;
}

