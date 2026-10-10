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
undefined4 AddWindow();
undefined4 YesNoPrompt_Create();
undefined4 FillWindowPixelBuffer();
undefined4 AddWindowParameterized();
extern undefined ov59_0223CA40;

void ov59_0223B740(undefined4 *param_1)

{
  undefined4 uVar1;
  char cVar2;
  undefined *puVar3;
  undefined4 *puVar4;
  short sVar5;
  int iVar6;
  
  iVar6 = 0;
  puVar3 = &ov59_0223CA40;
  puVar4 = param_1 + 0x6d;
  do {
    AddWindow(param_1[0x15],puVar4,puVar3);
    FillWindowPixelBuffer(puVar4,0);
    iVar6 = iVar6 + 1;
    puVar3 = puVar3 + 8;
    puVar4 = puVar4 + 4;
  } while (iVar6 < 5);
  sVar5 = 0xc1;
  iVar6 = 0;
  cVar2 = '\x04';
  do {
    AddWindowParameterized
              (param_1[0x15],param_1 + (iVar6 + 5) * 4 + 0x6d,2,1,cVar2,0x10,2,0xc,sVar5);
    FillWindowPixelBuffer(param_1 + (iVar6 + 5) * 4 + 0x6d,0);
    iVar6 = iVar6 + 1;
    sVar5 = sVar5 + 0x20;
    cVar2 = cVar2 + '\x04';
  } while (iVar6 < 5);
  uVar1 = YesNoPrompt_Create(*param_1);
  param_1[0x95] = uVar1;
  return;
}

