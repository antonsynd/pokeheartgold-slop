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
undefined4 ov83_02245ACC();
undefined4 sub_02037B38();
undefined4 sub_02037BEC();
undefined4 sub_02037AC0();
undefined4 ov83_0224776C();
undefined4 ov83_022450A8();
undefined4 sub_020379A0();
undefined4 ov83_02244E24();
undefined4 ov83_02244F60();
undefined4 ov83_0224563C();

undefined4 ov83_02243C88(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  switch(*(undefined1 *)(param_1 + 8)) {
  case 0:
    *(byte *)(param_1 + 0xf) = *(byte *)(param_1 + 0xf) & 7 | 8;
    iVar2 = ov83_022450A8(param_1,0x15,*(undefined1 *)(param_1 + 0xd));
    if (iVar2 == 1) {
      *(undefined1 *)(param_1 + 0x10) = 0;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 1:
    if (*(char *)(param_1 + 0x11) != -1) {
      *(undefined1 *)(param_1 + 0x17) = 0;
      if (*(char *)(param_1 + 0x13) == '\x05') {
        ov83_02245ACC(param_1,*(undefined1 *)(param_1 + 0x11),5);
      }
      else {
        ov83_0224563C(param_1,*(undefined1 *)(param_1 + 0x11));
      }
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 2:
    uVar1 = ov83_0224776C(*(undefined1 *)(param_1 + 0x15),*(undefined1 *)(param_1 + 0x11));
    iVar2 = ov83_02244E24(param_1,uVar1,*(undefined1 *)(param_1 + 0x13));
    if (iVar2 == 1) {
      *(undefined1 *)(param_1 + 0x16) = 0x1e;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 3:
    *(char *)(param_1 + 0x16) = *(char *)(param_1 + 0x16) + -1;
    if (*(char *)(param_1 + 0x16) == '\0') {
      sub_02037BEC();
      sub_02037AC0(0x85);
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 4:
    iVar2 = sub_02037B38(0x85);
    if (iVar2 == 1) {
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 5:
    uVar1 = ov83_0224776C(*(undefined1 *)(param_1 + 0x15),*(undefined1 *)(param_1 + 0x11));
    iVar2 = ov83_02244F60(param_1,uVar1,*(undefined1 *)(param_1 + 0x13));
    if (iVar2 == 1) {
      sub_02037BEC();
      sub_020379A0(0x6b);
      *(undefined1 *)(param_1 + 0x11) = 0xff;
      *(undefined1 *)(param_1 + 0x5b6) = 0;
      return 1;
    }
  }
  return 0;
}

