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
undefined4 ov112_021E7CC8();
undefined4 ov112_021E7DA4();
undefined4 ov112_021E7594();
undefined4 ov112_021ED25C();
undefined4 func_0x0200dcc0() __asm__("sub_0200DCC0");
undefined4 ov112_021E9290();
undefined4 ov112_021EA670();
undefined4 ManagedSprite_SetAnim();
undefined4 ov112_021EA5A4();
undefined4 func_0x0200e0fc() __asm__("sub_0200E0FC");

undefined4 ov112_021EDA4C(int param_1)

{
  ov112_021E7DA4();
  ov112_021E7594(param_1 + 0xc910,param_1 + 0xf1d0,param_1 + 0x9d70,param_1 + 0xaabc);
  ov112_021E7CC8(param_1);
  if (*(int *)(param_1 + 0x1e42c) == 0) {
    ov112_021E9290(*(undefined4 *)(param_1 + 0x1e430),param_1 + 0x1d7ac,param_1 + 0x1d79c,0);
  }
  else {
    ov112_021E9290(*(int *)(param_1 + 0x1e42c),param_1 + 0x1d7ac,param_1 + 0x1d79c,0);
  }
  func_0x0200e0fc(*(undefined4 *)(param_1 + 0x1e550),1);
  ov112_021EA670(param_1,8);
  ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0x1e550),0x19);
  func_0x0200dcc0(*(undefined4 *)(param_1 + 0x1e550),0);
  *(undefined2 *)(param_1 + 0x1f2d4) = 0;
  ov112_021EA5A4(param_1,2);
  ov112_021ED25C(param_1);
  return 0x1f;
}

