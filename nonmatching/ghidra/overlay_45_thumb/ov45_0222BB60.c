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
undefined4 func_0x02005f50() __asm__("sub_02005F50");
undefined4 ov45_0222CA8C();
undefined4 func_0x02005d48() __asm__("sub_02005D48");
undefined4 ov45_0222C3A8();

void ov45_0222BB60(byte *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;

  iVar1 = (int)*(short *)(param_1 + 4);
  if (iVar1 + -1 < 0) {
    if (iVar1 == 0) {
      *param_1 = *param_1 | 2;
      *(uint *)(param_2 + 8) = *(uint *)(param_2 + 8) | 0x80;
      *(short *)(param_1 + 4) = *(short *)(param_1 + 4) + -1;
    }
  }
  else {
    *(short *)(param_1 + 4) = (short)(iVar1 + -1);
    if (*(short *)(param_1 + 4) == 0x348) {
      func_0x02005f50(0,0x7f,iVar1,param_4,param_4);
      param_1[0xe] = 1;
    }
  }
  iVar1 = *(short *)(param_1 + 6) + -1;
  if (iVar1 < 0) {
    if (*(short *)(param_1 + 6) == 0) {
      *(uint *)(param_2 + 8) = *(uint *)(param_2 + 8) | 0xe;
      *(short *)(param_1 + 6) = *(short *)(param_1 + 6) + -1;
    }
  }
  else {
    *(short *)(param_1 + 6) = (short)iVar1;
  }
  iVar1 = *(short *)(param_1 + 8) + -1;
  if (iVar1 < 0) {
    if (*(short *)(param_1 + 8) == 0) {
      *param_1 = *param_1 & 0xf3 | 4;
      *(uint *)(param_2 + 8) = *(uint *)(param_2 + 8) | 0x20;
      *(short *)(param_1 + 8) = *(short *)(param_1 + 8) + -1;
      ov45_0222CA8C(param_4);
    }
  }
  else {
    *(short *)(param_1 + 8) = (short)iVar1;
  }
  iVar1 = *(short *)(param_1 + 10) + -1;
  if (-1 < iVar1) {
    *(short *)(param_1 + 10) = (short)iVar1;
    return;
  }
  if (*(short *)(param_1 + 10) == 0) {
    ov45_0222C3A8(param_3);
    if (param_1[0xc] == 0) {
      func_0x02005d48(0x481);
    }
    *param_1 = *param_1 | 0x10;
    *(uint *)(param_2 + 8) = *(uint *)(param_2 + 8) | 0x40;
    *(short *)(param_1 + 10) = *(short *)(param_1 + 10) + -1;
  }
  return;
}

