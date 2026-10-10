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
undefined4 func_0x0200e2b0() __asm__("sub_0200E2B0");
undefined4 func_0x020135d8() __asm__("sub_020135D8");
undefined4 RemoveWindow();
undefined4 func_0x0200d934() __asm__("sub_0200D934");
undefined4 func_0x02013850() __asm__("sub_02013850");
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 func_0x0201d494() __asm__("sub_0201D494");

void ov05_0221D530(int *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;
  int iStack_48;
  int *piStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  int iStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  piVar2 = param_1 + 4;
  uStack_18 = param_4;
  func_0x0201d494(param_1[3],piVar2,8,2,0,0);
  AddTextPrinterParameterizedWithColor(piVar2,0,param_3,0,0,0xff,0x30400,0);
  iStack_48 = param_1[0x2d1];
  piStack_44 = piVar2;
  uStack_40 = func_0x0200e2b0(param_1[0x65]);
  uStack_3c = func_0x0200d934(param_1[0x65],0xb807);
  iStack_34 = (param_2 * -0x10 + 0x3e0) * 0x20;
  uStack_38 = 0;
  uStack_30 = 0;
  uStack_2c = 0;
  uStack_24 = 0;
  uStack_28 = 2;
  uStack_20 = 1;
  uStack_1c = *(undefined4 *)(*param_1 + 0x24);
  iVar1 = func_0x020135d8(&iStack_48);
  param_1[param_2 + 0x2d2] = iVar1;
  func_0x02013850(param_1[param_2 + 0x2d2],0);
  RemoveWindow(piVar2);
  return;
}

