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
undefined4 TextPrinterCheckActive();
undefined4 ov59_0223BD4C();
undefined4 ov59_0223BBB0();
undefined4 ov59_0223BE70();
undefined4 ov59_0223BBD4();
undefined4 PlaySE();
extern undefined ov59_0223C99C;

undefined4 ov59_0223B164(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  short sVar2;
  int iVar3;
  uint uVar4;

  uVar4 = *(uint *)(&ov59_0223C99C + (uint)*(byte *)(param_1 + 0x36) * 4);
  sVar2 = *(short *)(param_1 + 0x42);
  if (sVar2 == 0) {
    *(undefined1 *)(param_1 + 0x51) = 0;
    *(undefined1 *)(param_1 + 0x38) = 0;
    cVar1 = *(char *)(param_1 + (uint)*(byte *)(param_1 + 0x36) + 0x39);
    if (cVar1 < '\0') {
      *(char *)(param_1 + 0x37) = -cVar1;
      PlaySE(0x926);
    }
    else {
      *(char *)(param_1 + 0x37) = cVar1;
      PlaySE(0x925);
    }
    *(short *)(param_1 + 0x42) = *(short *)(param_1 + 0x42) + 1;
  }
  else if (sVar2 != 1) {
    if (sVar2 == 2) {
      if (*(char *)(param_1 + 0x4f) != '\0') {
        return 0;
      }
      ov59_0223BD4C(param_1,param_1 + 0x7c + (uint)*(byte *)(param_1 + 0x4a) * 0x34,uVar4 & 0xff,
                    (uint)*(byte *)(param_1 + 0x4a),param_4);
      ov59_0223BBB0(param_1);
      if (*(char *)(param_1 + (uint)*(byte *)(param_1 + 0x36) + 0x39) < '\0') {
        ov59_0223BBD4(param_1,uVar4 + 7);
      }
      else {
        ov59_0223BBD4(param_1,uVar4 + 2);
      }
      *(short *)(param_1 + 0x42) = *(short *)(param_1 + 0x42) + 1;
      return 0;
    }
    iVar3 = TextPrinterCheckActive(*(undefined1 *)(param_1 + 0x4d));
    if (iVar3 != 0) {
      return 0;
    }
    *(undefined2 *)(param_1 + 0x42) = 0;
    return 1;
  }
  cVar1 = *(char *)(param_1 + 0x51);
  *(char *)(param_1 + 0x51) = *(char *)(param_1 + 0x51) + -1;
  if (cVar1 == '\0') {
    if (*(char *)(param_1 + (uint)*(byte *)(param_1 + 0x36) + 0x39) < '\0') {
      ov59_0223BE70(param_1,uVar4 & 0xff,1);
    }
    else {
      ov59_0223BE70(param_1,uVar4 & 0xff,0);
    }
    if (*(byte *)(param_1 + 0x38) < *(byte *)(param_1 + 0x37)) {
      *(undefined1 *)(param_1 + 0x51) = 0xf;
    }
    else {
      *(short *)(param_1 + 0x42) = *(short *)(param_1 + 0x42) + 1;
    }
  }
  return 0;
}

