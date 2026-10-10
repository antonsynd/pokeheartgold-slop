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

void ov59_022397E4(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  char cVar4;
  int iVar5;
  short sVar6;
  
  iVar5 = 0;
  iVar2 = 0x223c798;
  puVar3 = param_1 + 0x4a;
  do {
    AddWindow(param_1[0x15],puVar3,iVar2);
    FillWindowPixelBuffer(puVar3,0);
    iVar5 = iVar5 + 1;
    iVar2 = iVar2 + 8;
    puVar3 = puVar3 + 4;
  } while (iVar5 < 0xb);
  sVar6 = 0x1bc;
  iVar2 = 0;
  cVar4 = '\x06';
  do {
    iVar5 = iVar2 >> 0x1f;
    AddWindowParameterized
              (param_1[0x15],param_1 + (iVar2 + 0xb) * 4 + 0x4a,2,
               (((uint)(iVar2 * -0x80000000 + iVar5) >> 0x1f | iVar5 * 2) - iVar5) * 6 + 5 & 0xff,
               cVar4,2,2,0xc,sVar6);
    FillWindowPixelBuffer(param_1 + (iVar2 + 0xb) * 4 + 0x4a,0);
    iVar2 = iVar2 + 1;
    sVar6 = sVar6 + 4;
    cVar4 = cVar4 + '\x02';
  } while (iVar2 < 7);
  uVar1 = YesNoPrompt_Create(*param_1);
  param_1[0x92] = uVar1;
  return;
}

