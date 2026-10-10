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
undefined4 ov112_021E5EC4();
undefined4 ov112_021E5D8C();
extern int iRam021ffae8 __asm__("sub_021FFAE8");
extern int iRam021ffb00 __asm__("sub_021FFB00");
extern int iRam021ffaec __asm__("sub_021FFAEC");
extern undefined4 uRam021ffad4 __asm__("sub_021FFAD4");
extern ushort uRam021ffb5e __asm__("sub_021FFB5E");
extern undefined4 uRam021ffad8 __asm__("sub_021FFAD8");
extern undefined2 uRam021ffb60 __asm__("sub_021FFB60");
extern undefined2 uRam021ffb5c __asm__("sub_021FFB5C");
extern int iRam021ffafc __asm__("sub_021FFAFC");
extern undefined4 uRam021ffadc __asm__("sub_021FFADC");
extern undefined4 uRam021ffad0 __asm__("sub_021FFAD0");
extern undefined1 uRam021ffb40 __asm__("sub_021FFB40");
extern undefined1 uRam021ffb41 __asm__("sub_021FFB41");
extern int iRam021ffaf8 __asm__("sub_021FFAF8");
extern int iRam021ffb04 __asm__("sub_021FFB04");

void ov112_021E7594(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uRam021ffb40 = 0x52;
  uRam021ffb41 = 0x20;
  uRam021ffad0 = param_1;
  uRam021ffad4 = param_2;
  uRam021ffad8 = param_4;
  uRam021ffadc = param_3;
  ov112_021E5EC4(0,0,0xd4c);
  uRam021ffb60 = 0x382e;
  uRam021ffb5e = 0;
  uRam021ffb5c = 0x71;
  if (iRam021ffaec != 0) {
    iRam021ffaf8 = iRam021ffae8 + 0x119;
    iRam021ffafc = iRam021ffaec + 0x8c80;
    ov112_021E5D8C(uRam021ffad0,iRam021ffafc,0x28be);
    iRam021ffb00 = iRam021ffaf8 + 0x52;
    iRam021ffb04 = iRam021ffafc + 0x2900;
    ov112_021E5D8C(uRam021ffad4,iRam021ffb04,0x224);
  }
  return;
}

