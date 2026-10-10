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
undefined4 WindowIsInUse();
undefined4 LoadUserFrameGfx1();
undefined4 FillWindowPixelRect();
undefined4 AddTextPrinterParameterized();
undefined4 DrawFrameAndWindow1();
undefined4 ReadMsgDataIntoString();
undefined4 AddWindowParameterized();
undefined4 FillWindowPixelBuffer();
undefined4 ListMenuUpdateCursorObj();

void sub_0205993C(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = param_1 + 100;
  iVar1 = WindowIsInUse(iVar3);
  if (iVar1 == 0) {
    AddWindowParameterized
              (*(undefined4 *)(*(int *)(param_1 + 0x24) + 8),iVar3,3,0x14,0xb,0xb,6,0xd,0x5a,param_2
               ,param_4);
    LoadUserFrameGfx1(*(undefined4 *)(*(int *)(param_1 + 0x24) + 8),3,1,0xb,0,4);
    FillWindowPixelBuffer(iVar3,0xf);
    iVar2 = 0;
    iVar1 = 0;
    do {
      ReadMsgDataIntoString
                (*(undefined4 *)(param_1 + 0x2c),iVar2 + 0x16,*(undefined4 *)(param_1 + 0xc));
      AddTextPrinterParameterized(iVar3,0,*(undefined4 *)(param_1 + 0xc),0x10,iVar1,0xff,0);
      iVar2 = iVar2 + 1;
      iVar1 = iVar1 + 0x10;
    } while (iVar2 < 3);
  }
  *(undefined1 *)(param_1 + 0x80) = 3;
  *(int *)(param_1 + 0x7c) = iVar3;
  *(char *)(param_1 + 0x81) = (char)param_2;
  FillWindowPixelRect(iVar3,0xf,0,0,0x10,(uint)*(byte *)(param_1 + 0x6c) << 3);
  ListMenuUpdateCursorObj
            (*(undefined4 *)(param_1 + 0x78),*(undefined4 *)(param_1 + 0x7c),0,param_2 << 4);
  DrawFrameAndWindow1(*(undefined4 *)(param_1 + 0x7c),0,1,0xb);
  return;
}

