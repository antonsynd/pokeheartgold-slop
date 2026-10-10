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
undefined4 sub_020110DC();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 sub_02011068();
undefined4 sub_02010F84();
undefined4 sub_02011080();

void sub_02012940(int param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  sub_02011080(param_1,param_5,1,0,0);
  if (*(short *)((int)param_2 + 6) == 0) {
    func_0x020e5b44(param_1,1,0xc0);
    func_0x020e5b44(param_1 + 0xc0,1,0xc0);
  }
  else {
    func_0x020e5b44(param_1,0,0xc0);
    func_0x020e5b44(param_1 + 0xc0,0,0xc0);
  }
  *(undefined4 *)(param_1 + 0x30c) = *param_2;
  *(uint *)(param_1 + 0x310) = (uint)*(ushort *)(param_2 + 1);
  *(uint *)(param_1 + 0x324) = (uint)*(ushort *)((int)param_2 + 6);
  *(undefined4 *)(param_1 + 0x328) = param_8;
  *(undefined4 *)(param_1 + 0x314) = param_3;
  *(undefined4 *)(param_1 + 0x318) = 0;
  *(undefined4 *)(param_1 + 0x31c) = param_4;
  *(undefined4 *)(param_1 + 800) = 0;
  *(undefined4 *)(param_1 + 0x32c) = param_6;
  *(undefined4 *)(param_1 + 0x330) = param_7;
  sub_020110DC(param_7,param_1,param_8);
  if (*(short *)((int)param_2 + 6) == 1) {
    sub_02010F84(param_6,0x20,0x3f,0,param_5,0,0,0,0,1);
  }
  else {
    sub_02010F84(param_6,0x3f,0x20,0,param_5,0,0,0,0,*(short *)((int)param_2 + 6));
  }
  sub_02011068(param_6,1,param_5,*(undefined4 *)(param_1 + 0x324));
  return;
}

