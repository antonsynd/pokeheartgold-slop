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
undefined4 FontID_String_GetCenterAlignmentX();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 AddWindowParameterized();
undefined4 ov37_021E7478();
undefined4 FillWindowPixelBuffer();

void ov37_021E6418(undefined4 *param_1)

{
  int iVar1;
  char cVar2;
  undefined4 *puVar3;
  short sVar4;
  int iStack_1c;

  AddWindowParameterized(*param_1,param_1 + 0xb6,0,2,1,0x1b,4,0xd,0x28);
  FillWindowPixelBuffer(param_1 + 0xb6,0xf);
  AddWindowParameterized(*param_1,param_1 + 0xb2,1,1,2,0x1e,0xf,0,1);
  FillWindowPixelBuffer(param_1 + 0xb2,2);
  AddWindowParameterized(*param_1,param_1 + 0xba,1,0x19,0x15,7,2,0xd,0x1c3);
  FillWindowPixelBuffer(param_1 + 0xba,0);
  iVar1 = FontID_String_GetCenterAlignmentX(1,param_1[10],0,0x30);
  AddTextPrinterParameterizedWithColor(param_1 + 0xba,1,param_1[10],iVar1 + 2,0,0,0x70100,0);
  iStack_1c = 0;
  sVar4 = 1;
  cVar2 = '\x03';
  puVar3 = param_1 + 0x9e;
  do {
    AddWindowParameterized(*param_1,puVar3,4,5,cVar2,10,2,0xd,sVar4);
    FillWindowPixelBuffer(puVar3,0);
    sVar4 = sVar4 + 0x14;
    iStack_1c = iStack_1c + 1;
    cVar2 = cVar2 + '\x04';
    puVar3 = puVar3 + 4;
  } while (iStack_1c < 5);
  ov37_021E7478(param_1 + 0x9e,0,0xe0d0f,param_1);
  return;
}

