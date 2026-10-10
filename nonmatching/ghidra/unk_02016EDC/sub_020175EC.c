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
undefined4 GF_AssertFail();
undefined4 sub_020172B4();
undefined4 sub_02017294();
undefined4 sub_0201726C();
undefined4 sub_02017470();
undefined4 sub_02017280();

void sub_020175EC(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  char cStack_20;
  byte bStack_1f;
  byte bStack_1e;
  byte bStack_1d;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;

  uStack_10 = param_4;
  sub_02017280(param_1,&cStack_20);
  if (cStack_20 == '\x14') {
    sub_02017294(param_1,&bStack_1d);
    uStack_14 = *(undefined4 *)(param_1 + (uint)bStack_1d * 4 + 0x24);
    sub_0201726C(param_1,&uStack_18);
  }
  else if (cStack_20 == '\x15') {
    sub_020172B4(param_1,&bStack_1d,&bStack_1e);
    uStack_14 = *(undefined4 *)(param_1 + (uint)bStack_1d * 4 + 0x24);
    uStack_18 = *(undefined4 *)(param_1 + (uint)bStack_1e * 4 + 0x24);
  }
  else {
    GF_AssertFail();
  }
  sub_02017280(param_1,&bStack_1f);
  if (0x11 < bStack_1f) {
    GF_AssertFail();
  }
  uVar1 = sub_02017470(&uStack_14,&uStack_18);
  sub_02017280(param_1,&cStack_20);
  if (cStack_20 == '\x14') {
    sub_02017294(param_1,&bStack_1d);
    sub_0201726C(param_1,&uStack_1c);
  }
  else if (cStack_20 == '\x15') {
    sub_020172B4(param_1,&bStack_1d,&bStack_1e);
    uStack_1c = *(undefined4 *)(param_1 + (uint)bStack_1e * 4 + 0x24);
  }
  else {
    GF_AssertFail();
  }
  if (bStack_1f == uVar1) {
    *(undefined4 *)(param_1 + (uint)bStack_1d * 4 + 0x24) = uStack_1c;
  }
  return;
}

