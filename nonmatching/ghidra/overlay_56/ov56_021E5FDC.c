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
undefined4 ClearWindowTilemapAndCopyToVram();
undefined4 String_Delete();
undefined4 ReadMsgDataIntoString();
undefined4 ClearFrameAndWindow2();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 FillWindowPixelBuffer();
undefined4 DrawFrameAndWindow2();
undefined4 System_GetTouchNew();
undefined4 ov56_021E5D08();
undefined4 String_New();
extern uint uRam021d1154 __asm__("sub_021D1154");

undefined4 ov56_021E5FDC(undefined4 *param_1)

{
  bool bVar1;
  undefined4 uVar2;
  int iVar3;
  
  bVar1 = false;
  if (*(short *)(param_1 + 2) == 0) {
    DrawFrameAndWindow2(param_1 + 0x27,1,10,6);
    FillWindowPixelBuffer(param_1 + 0x27,0xff);
    uVar2 = String_New(0x4c,*param_1);
    ReadMsgDataIntoString(param_1[8],2,uVar2);
    AddTextPrinterParameterizedWithColor(param_1 + 0x27,1,uVar2,0,0,0,0x1020f,0);
    String_Delete(uVar2);
  }
  else if (*(short *)(param_1 + 2) == 1) {
    if ((uRam021d1154 & 3) == 0) {
      iVar3 = System_GetTouchNew();
      if (iVar3 != 0) {
        bVar1 = true;
        *(undefined1 *)((int)param_1 + 10) = 1;
        ov56_021E5D08(param_1);
      }
    }
    else {
      bVar1 = true;
      *(undefined1 *)((int)param_1 + 10) = 0;
    }
    if (bVar1) {
      ClearFrameAndWindow2(param_1 + 0x27,1);
      ClearWindowTilemapAndCopyToVram(param_1 + 0x27);
      *(undefined2 *)(param_1 + 2) = 0;
      *(undefined1 *)(param_1 + 3) = *(undefined1 *)((int)param_1 + 0xd);
      return 0;
    }
    return 0;
  }
  *(short *)(param_1 + 2) = *(short *)(param_1 + 2) + 1;
  return 0;
}

