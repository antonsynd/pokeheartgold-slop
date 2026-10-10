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
undefined4 ov59_0223C380();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 ScheduleWindowCopyToVram();
undefined4 ov59_0223C3AC();
undefined4 ov59_0223BE18();
undefined4 BufferIntegerAsString();
undefined4 StringExpandPlaceholders();
undefined4 FillWindowPixelBuffer();
extern undefined ov59_0223C94C;

void ov59_0223BC88(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  
  iVar2 = param_1 + 0x7c + param_2 * 0x34;
  FillWindowPixelBuffer(param_1 + 500,0);
  AddTextPrinterParameterizedWithColor
            (param_1 + 500,0,*(undefined4 *)(iVar2 + 0xc),0,0,0xff,0xf0200,0,param_4);
  if (*(byte *)(iVar2 + 7) != 2) {
    iVar1 = (uint)*(byte *)(iVar2 + 7) * 4;
    AddTextPrinterParameterizedWithColor
              (param_1 + 500,0,*(undefined4 *)(param_1 + iVar1 + 0x70),0x40,0,0xff,
               *(undefined4 *)(&ov59_0223C94C + iVar1),0,param_4);
  }
  BufferIntegerAsString(*(undefined4 *)(param_1 + 0x60),0,*(undefined1 *)(iVar2 + 6),3,0,1);
  StringExpandPlaceholders
            (*(undefined4 *)(param_1 + 0x60),*(undefined4 *)(param_1 + 0x68),
             *(undefined4 *)(param_1 + 0x6c));
  AddTextPrinterParameterizedWithColor
            (param_1 + 500,0,*(undefined4 *)(param_1 + 0x68),0x10,0x10,0xff,0x10200,0);
  ScheduleWindowCopyToVram(param_1 + 500);
  ov59_0223C3AC(*(undefined4 *)(param_1 + 0x78));
  ov59_0223C380(*(undefined4 *)(param_1 + 0x78),iVar2);
  ov59_0223BE18(param_1,iVar2);
  return;
}

