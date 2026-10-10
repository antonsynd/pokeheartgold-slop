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
undefined4 ScheduleWindowCopyToVram();
undefined4 FillWindowPixelBuffer();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 sub_0208C778();
undefined4 ReadMsgDataIntoString();

void sub_0208D728(int param_1)

{
  char cVar1;

  cVar1 = *(char *)(*(int *)(param_1 + 0x22c) + 0x12);
  if ((cVar1 == '\x03') || (cVar1 == '\x04')) {
    FillWindowPixelBuffer(*(int *)(param_1 + 0x224) + 0x10,0);
    ReadMsgDataIntoString(*(undefined4 *)(param_1 + 0x7a0),0xa5,*(undefined4 *)(param_1 + 0x7ac));
    sub_0208C778(param_1,*(int *)(param_1 + 0x224) + 0x10,0xe0f00,0);
    ReadMsgDataIntoString
              (*(undefined4 *)(param_1 + 0x7a0),*(byte *)(param_1 + 0x27b) + 0xa6,
               *(undefined4 *)(param_1 + 0x7ac));
    AddTextPrinterParameterizedWithColor
              (*(int *)(param_1 + 0x224) + 0x10,0,*(undefined4 *)(param_1 + 0x7ac),0,0x10,0xff,
               0x10200,0);
    ScheduleWindowCopyToVram(*(int *)(param_1 + 0x224) + 0x10);
  }
  return;
}

