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
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 func_0x02013910() __asm__("sub_02013910");
undefined4 func_0x02013950() __asm__("sub_02013950");
undefined4 FontID_String_GetWidth();
undefined4 func_0x0200e2b0() __asm__("sub_0200E2B0");
undefined4 GetWindowWidth();
undefined4 func_0x02021ac8() __asm__("sub_02021AC8");
undefined4 func_0x0200d934() __asm__("sub_0200D934");
undefined4 func_0x02013850() __asm__("sub_02013850");
undefined4 func_0x020137c0() __asm__("sub_020137C0");
undefined4 func_0x02013948() __asm__("sub_02013948");

void ov108_021E756C(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 uStack_40;
  undefined4 *puStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uVar1 = func_0x02013910(param_1 + 0x129,*param_1);
  param_1[0xe8] = uVar1;
  uVar1 = func_0x02013948(param_1[0xe8],1);
  iVar2 = GetWindowWidth(param_1 + 0x129);
  iVar3 = FontID_String_GetWidth(0,param_1[0xc4],0);
  AddTextPrinterParameterizedWithColor
            (param_1 + 0x129,0,param_1[0xc4],(uint)(iVar2 * 8 - iVar3) >> 1,0,0xff,0xb0600,0);
  uStack_40 = param_1[0xe7];
  puStack_3c = param_1 + 0x129;
  uStack_38 = func_0x0200e2b0(param_1[0xd4]);
  uStack_34 = func_0x0200d934(param_1[0xd4],0);
  uStack_20 = 3;
  uStack_1c = 0x80;
  uStack_28 = 200;
  uStack_18 = 1;
  uStack_24 = 0xac;
  uStack_14 = *param_1;
  func_0x02021ac8(uVar1,0,1,param_1 + 0xea);
  uStack_2c = param_1[0xeb];
  uStack_30 = 0;
  uVar1 = func_0x02013950(&uStack_40,param_1[0xe8]);
  param_1[0xe9] = uVar1;
  func_0x020137c0(param_1[0xe9],1);
  func_0x02013850(param_1[0xe9],4);
  return;
}

