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
undefined4 InitWindow();
undefined4 ScheduleWindowCopyToVram();
undefined4 String_Delete();
undefined4 func_0x0201bb68() __asm__("sub_0201BB68");
undefined4 NewString_ReadMsgData();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 AddWindowParameterized();
undefined4 ov40_0222C6C8();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 FillWindowPixelBuffer();
extern undefined2 uRam04001050 __asm__("sub_04001050");

void ov40_0222DFE8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;

  if ((*(int *)(param_1 + 0x8a0) != 1) && (*(int *)(param_1 + 0x89c) != 1)) {
    *(undefined4 *)(param_1 + 0x8a0) = 1;
    *(undefined4 *)(param_1 + 0x89c) = 1;
    uRam04001050 = 0;
    func_0x0201bb68(6);
    ov40_0222C6C8(param_1,6,0);
    GfGfx_EngineBTogglePlanes(4,1);
    InitWindow(param_1 + 0x8a4);
    AddWindowParameterized
              (*(undefined4 *)(param_1 + 0x24),param_1 + 0x8a4,6,1,0x13,0x1e,4,0xe,0x20,param_4);
    uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x48),param_2);
    FillWindowPixelBuffer(param_1 + 0x8a4,0xcc);
    AddTextPrinterParameterizedWithColor(param_1 + 0x8a4,0,uVar1,0,0,0xff,0xf0d0c,0);
    ScheduleWindowCopyToVram(param_1 + 0x8a4);
    String_Delete(uVar1);
  }
  return;
}

