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
undefined4 ov91_02260A10();
undefined4 sub_020182A4();
undefined4 ov91_02260950();
undefined4 func_0x020c34d8() __asm__("sub_020C34D8");
undefined4 ov91_02260AF8();
undefined4 ov91_02260A88();
undefined4 ov91_02260B48();
undefined4 func_0x020182a8() __asm__("sub_020182A8");
undefined4 func_0x020181ec() __asm__("sub_020181EC");
undefined4 ov91_02260B5C();

void ov91_022608A8(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  if ((*(int *)(param_1 + 0xf4) == 1) &&
     (iVar1 = ov91_02260A88(param_1,*(undefined4 *)(param_1 + 0xf8),param_3,param_4,param_4),
     iVar1 == 0)) {
    ov91_02260AF8(param_1,param_2);
  }
  if (*(int *)(param_1 + 0xf4) == 0) {
    iVar1 = ov91_02260B48(*(undefined4 *)(param_1 + 0xf8),param_2 + 0x6fc);
    if (**(char **)(param_1 + 0xf8) == '\x05') {
      func_0x020c34d8(*(undefined4 *)(iVar1 + 8),0x7fff);
    }
    else {
      func_0x020c34d8(*(undefined4 *)(iVar1 + 8),0x4a52);
    }
    ov91_02260B5C(param_1);
    iVar1 = *(int *)(param_1 + 0xf8);
    func_0x020182a8(param_1 + 4,*(undefined4 *)(iVar1 + 0x2c),*(undefined4 *)(iVar1 + 0x30),
                    *(undefined4 *)(iVar1 + 0x34));
    func_0x020181ec(param_1 + 4);
    iVar1 = sub_020182A4(param_1 + 0x7c);
    if (iVar1 == 1) {
      ov91_02260950(param_1);
      func_0x020181ec(param_1 + 0x7c);
      ov91_02260A10(param_1);
    }
  }
  return;
}

