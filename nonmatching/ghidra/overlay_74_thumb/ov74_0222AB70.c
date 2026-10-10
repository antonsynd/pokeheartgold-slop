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
undefined4 Options_GetFrame();
undefined4 func_0x02020080() __asm__("sub_02020080");
undefined4 ov74_0222A81C();
undefined4 ov74_0222A94C();
undefined4 WindowIsInUse();
undefined4 ov74_0222AA18();
undefined4 AddWindowParameterized();
undefined4 LoadUserFrameGfx1();
undefined4 LoadFontPal0();
undefined4 LoadUserFrameGfx2();
extern undefined2 uRam05000000 __asm__("sub_05000000");

undefined4 ov74_0222AB70(undefined4 param_1,undefined4 *param_2)

{
  undefined1 uVar1;
  int iVar2;
  
  func_0x02020080();
  LoadFontPal0(0,0,0x54);
  LoadFontPal0(0,0x20,0x54);
  uVar1 = Options_GetFrame(param_2[2]);
  LoadUserFrameGfx2(*param_2,0,1,2,uVar1,0x54);
  LoadUserFrameGfx1(*param_2,0,0x1f,3,1,0x54);
  uRam05000000 = 0x7d8c;
  iVar2 = WindowIsInUse(param_2 + 6);
  if (iVar2 == 0) {
    AddWindowParameterized(*param_2,param_2 + 6,0,2,0x13,0x1b,4,0,0x28);
  }
  ov74_0222AA18(param_1,param_2 + 6,0);
  ov74_0222A94C(param_1,0xc4,0);
  ov74_0222A81C(*param_2);
  return 1;
}

