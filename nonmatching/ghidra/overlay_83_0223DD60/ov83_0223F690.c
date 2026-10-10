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
undefined4 PaletteData_Init();
undefined4 ov83_0223FAF0();
undefined4 ov83_0223FA74();
undefined4 PaletteData_AllocBuffers();
undefined4 ov83_022477EC();
undefined4 ov83_0223FAA8();
undefined4 ov83_0223FBEC();
undefined4 ov83_0223F7E4();
undefined4 ov83_0223FA00();
undefined4 ov83_0223F804();
extern ushort uRam04000304 __asm__("sub_04000304");

void ov83_0223F690(int param_1)

{
  undefined4 uVar1;
  
  uRam04000304 = uRam04000304 & 0x7fff;
  ov83_0223F7E4();
  ov83_0223F804(*(undefined4 *)(param_1 + 0x4c));
  uVar1 = PaletteData_Init(0x6b);
  *(undefined4 *)(param_1 + 0x500) = uVar1;
  PaletteData_AllocBuffers(*(undefined4 *)(param_1 + 0x500),2,0x200,0x6b);
  PaletteData_AllocBuffers(*(undefined4 *)(param_1 + 0x500),0,0x200,0x6b);
  ov83_0223FA00(param_1,3);
  ov83_0223FA74();
  ov83_0223FAA8(param_1,2);
  ov83_0223FAF0();
  ov83_022477EC(2,0,param_1 + 0x868);
  ov83_0223FBEC(param_1,4);
  return;
}

