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
undefined4 ov83_022418E8();
undefined4 ov83_02241BC4();
undefined4 sub_02037BEC();
undefined4 sub_02037AC0();
undefined4 ov83_02240FAC();
undefined4 ov83_022477EC();
undefined4 ov83_0224776C();
undefined4 sub_020379A0();
undefined4 sub_02037B38();
undefined4 ov83_02241368();
undefined4 ov83_02240290();
undefined4 ov83_02241354();

undefined4 ov83_0223EEA0(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  switch(*(undefined1 *)(param_1 + 8)) {
  case 0:
    *(byte *)(param_1 + 0xe) = *(byte *)(param_1 + 0xe) & 0x9f;
    ov83_022477EC(2,0,param_1 + 0x868);
    iVar2 = ov83_02241368(param_1,0xb,*(undefined1 *)(param_1 + 0xd));
    if (iVar2 == 1) {
      *(byte *)(param_1 + 0xe) = *(byte *)(param_1 + 0xe) & 0xfd;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 1:
    if (*(char *)(param_1 + 0x12) != -1) {
      *(undefined1 *)(param_1 + 0xf) = 0;
      if ((*(char *)(param_1 + 0x13) == '\x04') || (*(char *)(param_1 + 0x13) == '\b')) {
        ov83_02241BC4(param_1,*(undefined1 *)(param_1 + 0x12));
      }
      else {
        ov83_022418E8(param_1,*(undefined1 *)(param_1 + 0x12));
      }
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 2:
    uVar1 = ov83_0224776C(*(undefined1 *)(param_1 + 0x15),*(undefined1 *)(param_1 + 0x12));
    iVar2 = ov83_02240FAC(param_1,uVar1,*(undefined1 *)(param_1 + 0x13));
    if (iVar2 == 1) {
      *(undefined1 *)(param_1 + 0xb) = 0x1e;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 3:
    *(char *)(param_1 + 0xb) = *(char *)(param_1 + 0xb) + -1;
    if (*(char *)(param_1 + 0xb) == '\0') {
      sub_02037BEC();
      sub_02037AC0(0x82);
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 4:
    iVar2 = sub_02037B38(0x82);
    if (iVar2 == 1) {
      sub_02037BEC();
      sub_020379A0(0x6b);
      *(undefined1 *)(param_1 + 0x12) = 0xff;
      if ((*(byte *)(param_1 + 0xe) & 0x7f) >> 5 == 0) {
        ov83_02241354(param_1 + 0xb0);
        ov83_02240290(param_1);
      }
      *(undefined1 *)(param_1 + 0x7fe) = 0;
      return 1;
    }
  }
  return 0;
}

