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
undefined4 FillWindowPixelBuffer();
undefined4 AddWindowParameterized();

void ov31_0225EC58(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  AddWindowParameterized(*(undefined4 *)(param_1 + 4),param_1 + 0xe4,4,0xc,7,0xb,4,0xc,0xad,param_4)
  ;
  AddWindowParameterized(*(undefined4 *)(param_1 + 4),param_1 + 0xf4,4,0x10,0xe,2,3,0xc,0xd9);
  AddWindowParameterized(*(undefined4 *)(param_1 + 4),param_1 + 0x104,4,0x14,0xe,2,3,0xc,0xdf);
  AddWindowParameterized(*(undefined4 *)(param_1 + 4),param_1 + 0x114,4,0xe,0x15,7,2,0xc,0xe5);
  AddWindowParameterized(*(undefined4 *)(param_1 + 4),param_1 + 0x124,4,1,0xd,8,5,0xb,0xf3);
  AddWindowParameterized(*(undefined4 *)(param_1 + 4),param_1 + 0x134,4,0x17,0xe,8,3,0xc,0x11b);
  AddWindowParameterized(*(undefined4 *)(param_1 + 4),param_1 + 0x144,4,0xc,1,0x11,4,0xc,0x133);
  FillWindowPixelBuffer(param_1 + 0xe4,0);
  FillWindowPixelBuffer(param_1 + 0xf4,0);
  FillWindowPixelBuffer(param_1 + 0x104,0);
  FillWindowPixelBuffer(param_1 + 0x114,0);
  FillWindowPixelBuffer(param_1 + 0x124,0);
  FillWindowPixelBuffer(param_1 + 0x134,0);
  FillWindowPixelBuffer(param_1 + 0x144,0xf);
  return;
}

