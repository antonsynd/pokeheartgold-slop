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
typedef void code(void);
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
undefined4 FillWindowPixelRect();
undefined4 func_0x02001ffc() __asm__("sub_02001FFC");
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 ov05_0221E9F8();
undefined4 AddTextPrinterParameterized();
undefined4 ov05_0221E9C4();
undefined4 ClearFrameAndWindow2();
undefined4 DrawFrameAndWindow2();
undefined4 ReadMsgDataIntoString();
undefined4 func_0x02001f20() __asm__("sub_02001F20");
undefined4 func_0x02001fdc() __asm__("sub_02001FDC");
extern undefined4 uRam021d1154 __asm__("sub_021D1154");
extern undefined ov05_0221EA58;

void ov05_0221BB30(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  iVar1 = ov05_0221E9F8();
  if (iVar1 != 0) {
    switch(param_1[0x2ef]) {
    case 1:
      ov05_0221E9C4(param_1);
      ReadMsgDataIntoString(param_1[0x2eb],0,param_1[0x2ed]);
      iVar1 = AddTextPrinterParameterized(param_1 + 0x2e2,1,param_1[0x2ed],0,0,0,0,param_4);
      param_1[0x2ee] = iVar1;
      ScheduleBgTilemapBufferTransfer(param_1[3],0);
      param_1[0x2ef] = 2;
      return;
    case 2:
      if ((param_1[0x2f2] == 1) && ((uRam021d1154 & 1) != 0)) {
        param_1[0x2ef] = 3;
        return;
      }
      break;
    case 3:
      if (param_1[0x2f3] == 1) {
        ReadMsgDataIntoString(param_1[0x2eb],2,param_1[0x2ed]);
      }
      else {
        ReadMsgDataIntoString(param_1[0x2eb],1,param_1[0x2ed]);
      }
      FillWindowPixelRect(param_1 + 0x2e6,0xf,0,0,0xd8,0x20);
      DrawFrameAndWindow2(param_1 + 0x2e6,0,1,0xf);
      iVar1 = AddTextPrinterParameterized(param_1 + 0x2e6,1,param_1[0x2ed],0,0,0,0);
      param_1[0x2ee] = iVar1;
      iVar1 = func_0x02001f20(param_1[3],&ov05_0221EA58,0x1f,0xe,1,*(undefined4 *)(*param_1 + 0x24))
      ;
      param_1[0x2f0] = iVar1;
      ScheduleBgTilemapBufferTransfer(param_1[3],0);
      param_1[0x2ef] = 4;
      return;
    case 4:
      iVar1 = func_0x02001fdc(param_1[0x2f0],*(undefined4 *)(*param_1 + 0x24));
      if (iVar1 == 0) {
        param_1[0x2ef] = 5;
        param_1[0x2f0] = 0;
        return;
      }
      if (iVar1 != -2) {
        return;
      }
      param_1[0x2ef] = 1;
      param_1[0x2f0] = 0;
      return;
    case 5:
      ov05_0221E9C4(param_1);
      ReadMsgDataIntoString(param_1[0x2eb],5,param_1[0x2ed]);
      iVar1 = AddTextPrinterParameterized(param_1 + 0x2e2,1,param_1[0x2ed],0,0,0,0,param_4);
      param_1[0x2ee] = iVar1;
      ScheduleBgTilemapBufferTransfer(param_1[3],0);
      param_1[0x2ef] = 6;
      return;
    case 7:
      if (param_1[0x2f0] != 0) {
        func_0x02001ffc(param_1[0x2f0],*(undefined4 *)(*param_1 + 0x24));
        param_1[0x2f0] = 0;
      }
      ClearFrameAndWindow2(param_1 + 0x2e2,0);
      ScheduleBgTilemapBufferTransfer(param_1[3],0);
      param_1[0x2ef] = 8;
    }
  }
  return;
}

