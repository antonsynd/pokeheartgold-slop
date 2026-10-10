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
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 ov05_0221E9F8();
undefined4 ov05_0221EA38();
undefined4 AddTextPrinterParameterized();
undefined4 ov05_0221E9C4();
undefined4 ov05_0221EA18();
undefined4 ClearFrameAndWindow2();
undefined4 func_0x0202fe14() __asm__("sub_0202FE14");
undefined4 ReadMsgDataIntoString();
undefined4 PlaySE();

undefined4 ov05_0221C908(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;
  
  iVar2 = ov05_0221E9F8();
  if (iVar2 == 0) {
    *(undefined1 *)((int)param_1 + 0xb81) = 1;
    return 1;
  }
  if ((param_1[0x2f4] == 0) && (param_1[0x2f0] != 0)) {
    return 0;
  }
  iVar2 = param_1[0x2ef];
  if (iVar2 == 5) {
    return 0;
  }
  if ((((iVar2 != 6) && (iVar2 != 5)) && (iVar2 != 7)) && (iVar2 != 8)) {
    param_1[0x2ef] = 7;
    *(undefined1 *)((int)param_1 + 0xb82) = 0xff;
  }
  cVar1 = *(char *)((int)param_1 + 0xb82);
  if (cVar1 == '\0') {
    ov05_0221E9C4(param_1);
    ReadMsgDataIntoString(param_1[0x2eb],8,param_1[0x2ed]);
    iVar2 = AddTextPrinterParameterized(param_1 + 0x2e2,1,param_1[0x2ed],0,0,0,0,param_4);
    param_1[0x2ee] = iVar2;
    ov05_0221EA18(param_1);
    *(char *)((int)param_1 + 0xb82) = *(char *)((int)param_1 + 0xb82) + '\x01';
  }
  else if (cVar1 == '\x01') {
    iVar2 = func_0x0202fe14(*(undefined4 *)(*(int *)*param_1 + 0x1c0),(char)((int *)*param_1)[0xb],0
                            ,0,param_1 + 0x2e1,(int)param_1 + 0xb86);
    if (iVar2 == 2) {
      ReadMsgDataIntoString(param_1[0x2eb],6,param_1[0x2ed]);
      PlaySE(0x61a);
    }
    else {
      if (iVar2 != 3) goto LAB_0221ca8c;
      ReadMsgDataIntoString(param_1[0x2eb],7,param_1[0x2ed]);
    }
    ov05_0221EA38(param_1);
    FillWindowPixelRect(param_1 + 0x2e2,0xf,0,0,0xd8,0x20);
    iVar2 = AddTextPrinterParameterized(param_1 + 0x2e2,1,param_1[0x2ed],0,0,0,0);
    param_1[0x2ee] = iVar2;
    *(undefined1 *)((int)param_1 + 0xb81) = 0;
    *(char *)((int)param_1 + 0xb82) = *(char *)((int)param_1 + 0xb82) + '\x01';
  }
  else {
    if (cVar1 != '\x02') {
      ClearFrameAndWindow2(param_1 + 0x2e2,0);
      ScheduleBgTilemapBufferTransfer(param_1[3],0);
      *(undefined1 *)((int)param_1 + 0xb82) = 0;
      *(undefined1 *)((int)param_1 + 0xb81) = 0x15;
      return 1;
    }
    *(char *)((int)param_1 + 0xb81) = *(char *)((int)param_1 + 0xb81) + '\x01';
    if (0x1e < *(byte *)((int)param_1 + 0xb81)) {
      *(undefined1 *)((int)param_1 + 0xb81) = 0;
      *(char *)((int)param_1 + 0xb82) = *(char *)((int)param_1 + 0xb82) + '\x01';
    }
  }
LAB_0221ca8c:
  ScheduleBgTilemapBufferTransfer(param_1[3],0);
  return 0;
}

