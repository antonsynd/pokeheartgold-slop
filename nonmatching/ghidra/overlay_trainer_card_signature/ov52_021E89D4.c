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
undefined4 func_0x020cfe74() __asm__("sub_020CFE74");
undefined4 FillWindowPixelBuffer();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 FontID_String_GetWidth();
undefined4 AddWindowParameterized();
undefined4 sub_02013A50();
undefined4 ov52_021E8994();
undefined4 ov52_021E925C();
undefined4 func_0x020d2894() __asm__("sub_020D2894");

void ov52_021E89D4(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  char cVar4;
  short sVar5;
  int iVar6;
  int iStack_1c;
  int iStack_18;
  
  AddWindowParameterized(*param_1,param_1 + 0xb5,0,2,1,0x1b,4,0xd,0x28);
  FillWindowPixelBuffer(param_1 + 0xb5,0xf);
  AddWindowParameterized(*param_1,param_1 + 0xb1,1,4,9,0x18,8,1,1);
  FillWindowPixelBuffer(param_1 + 0xb1,2);
  AddWindowParameterized(*param_1,param_1 + 0xb9,1,0x1a,0x15,8,2,2,0xc1);
  FillWindowPixelBuffer(param_1 + 0xb9,0);
  uVar1 = ov52_021E8994(param_1 + 0xb9,param_1[0xb],1,2,0xe0702);
  func_0x020d2894(uVar1,0x200);
  iVar2 = 0;
  iStack_18 = 0;
  iVar6 = 0;
  puVar3 = param_1 + 0x16e7;
  do {
    sub_02013A50(param_1 + 0xb9,4,2,iVar2,0,puVar3);
    func_0x020d2894(puVar3,0x100);
    func_0x020cfe74(puVar3,iVar6,0x100);
    iVar6 = iVar6 + 0x100;
    iVar2 = iVar2 + 4;
    iStack_18 = iStack_18 + 1;
  } while (iStack_18 < 2);
  AddWindowParameterized(*param_1,param_1 + 0xbd,1,2,2,0x1c,2,0xd,0xd1);
  iVar2 = FontID_String_GetWidth(1,param_1[0xc],0);
  FillWindowPixelBuffer(param_1 + 0xbd,0);
  AddTextPrinterParameterizedWithColor
            (param_1 + 0xbd,1,param_1[0xc],(0xe0 - iVar2) / 2,0,0,0x10200,0);
  iStack_1c = 0;
  sVar5 = 1;
  cVar4 = '\x03';
  puVar3 = param_1 + 0x9d;
  do {
    AddWindowParameterized(*param_1,puVar3,4,5,cVar4,10,2,0xd,sVar5);
    FillWindowPixelBuffer(puVar3,0);
    sVar5 = sVar5 + 0x14;
    iStack_1c = iStack_1c + 1;
    cVar4 = cVar4 + '\x04';
    puVar3 = puVar3 + 4;
  } while (iStack_1c < 5);
  ov52_021E925C(param_1 + 0x9d,0,0xe0d0f,param_1);
  return;
}

