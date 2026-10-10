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
undefined4 PlaySE();
undefined4 ov109_021E7248();
undefined4 ov109_021E5DB8();
undefined4 ov109_021E73F8();
undefined4 ov109_021E74D4();
undefined4 ov109_021E77D4();
undefined4 ov109_021E71BC();
undefined4 ov109_021E7474();
undefined4 ov109_021E7584();
extern undefined UNK_021e7884 __asm__("sub_021E7884");

undefined4 ov109_021E628C(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  byte bVar1;
  
  if (param_2 == 0xc) {
    PlaySE(0x5dc);
    ov109_021E7248(param_1,0);
    ov109_021E74D4(param_1,0);
    ov109_021E77D4(param_1);
    ov109_021E73F8(param_1,0,0,0);
    *(undefined1 *)(param_1 + 0x20) = 0;
    return 1;
  }
  if (param_2 == 0xd) {
    if (*(char *)(param_1 + 0x19) == '\0') {
      return 5;
    }
    ov109_021E7584(param_1,2,param_3,param_4,param_4);
    PlaySE(0x920);
    return 2;
  }
  if (param_2 == 0xe) {
    if ((uint)*(byte *)(param_1 + 0x19) == *(byte *)(param_1 + 0x1a) - 1) {
      return 5;
    }
    ov109_021E7584(param_1,3,(uint)*(byte *)(param_1 + 0x19),param_4,param_4);
    PlaySE(0x920);
    return 3;
  }
  bVar1 = (&UNK_021e7884)[param_2] + *(char *)(param_1 + 0x19) * '\f';
  if (*(byte *)(param_1 + 0xc5) <= bVar1) {
    return 5;
  }
  PlaySE(0x5dc);
  ov109_021E74D4(param_1,0);
  ov109_021E7248(param_1,0);
  if (bVar1 != *(byte *)(param_1 + 0x1f)) {
    ov109_021E5DB8(param_1,*(byte *)(param_1 + 0x1f),bVar1);
    ov109_021E71BC(param_1,*(undefined1 *)(param_1 + 0x1f),bVar1);
    ov109_021E7474(param_1,*(undefined1 *)(param_1 + 0x1b),*(undefined1 *)(param_1 + 0x1c),0);
    *(undefined2 *)(param_1 + 10) = 0;
    return 6;
  }
  *(undefined1 *)(param_1 + 0x20) = 0;
  ov109_021E73F8(param_1,0,0,0);
  return 1;
}

