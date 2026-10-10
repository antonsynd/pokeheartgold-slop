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
undefined4 ov57_0223B504();
undefined4 ov57_0223853C();
undefined4 ov57_02239728();
undefined4 PlaySE();
undefined4 ov57_02238134();
undefined4 ov57_02237F3C();
undefined4 ov57_022383D0();
undefined4 ov57_022383AC();
undefined4 ov57_022394AC();
undefined4 ov57_02237E88();
undefined4 ov57_02237F14();
undefined4 ov57_02238C30();

undefined4 ov57_0223B1A4(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  if (param_2 == 0xc) {
    PlaySE(0x5dd);
    ov57_02237E88(*param_1,0);
    return 5;
  }
  if (param_2 != 0xd) {
    ov57_02238134();
    ov57_0223853C(param_1);
    ov57_022394AC(param_1);
    param_1[0xfb] = param_2;
    ov57_0223B504(param_1,0,1);
    ov57_022383AC(param_1);
    ov57_02237F3C(param_1);
    ov57_022383D0(param_1,1);
    ov57_02237F14(param_1);
    if (param_1[0x103] == 0) {
      PlaySE(0x5dc);
      return 3;
    }
    ov57_02239728(param_1 + 0x47,3,8,0);
    ov57_02238C30(param_1[0x39],param_1 + 0x3f,1,param_1,param_1[0xfb]);
    PlaySE(0x5dc);
    return 4;
  }
  ov57_02239728(param_1 + 0x47,3,8,0,param_4);
  ov57_02238C30(param_1[0x39],param_1 + 0x3f,1,param_1,param_1[0xfb]);
  PlaySE(0x5dc);
  return 4;
}

