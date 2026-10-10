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
undefined4 ov102_021E940C();
undefined4 PlaySE();
undefined4 ov102_021E839C();
undefined4 ov102_021E8458();
undefined4 ov102_021E85A8();
undefined4 ov102_021E83E4();
undefined4 ov102_021E874C();

void ov102_021E848C(int param_1,undefined4 *param_2)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = ov102_021E839C();
  if (iVar1 == 1) {
    PlaySE(0x5dc);
    ov102_021E940C(*(undefined4 *)(param_1 + 0x14),10);
    *(undefined4 *)(param_1 + 0x24) = 0x21e7aa5;
    *param_2 = 1;
    return;
  }
  if (iVar1 == 2) {
    PlaySE(0x5e4);
    *(byte *)(param_1 + 0x6b) = *(byte *)(param_1 + 0x6b) ^ 1;
    *(undefined2 *)(param_1 + 0x50) = 0;
    ov102_021E940C(*(undefined4 *)(param_1 + 0x14),0x1b);
    *param_2 = 2;
    return;
  }
  if (*(char *)(param_1 + 0x6b) == '\0') {
    uVar2 = ov102_021E83E4(param_1);
    if ((int)uVar2 < 0) {
      return;
    }
    iVar1 = ov102_021E85A8(*(undefined4 *)(param_1 + 0x18),*(undefined1 *)(param_1 + 0x6b),
                           uVar2 & 0xffff);
    if (iVar1 == 0) {
      PlaySE(0x5f2);
      return;
    }
    *(short *)(param_1 + 0x50) = (short)uVar2;
  }
  else {
    uVar2 = ov102_021E8458(param_1);
    if ((int)uVar2 < 0) {
      return;
    }
    iVar1 = ov102_021E85A8(*(undefined4 *)(param_1 + 0x18),*(undefined1 *)(param_1 + 0x6b),
                           uVar2 & 0xffff);
    if (iVar1 == 0) {
      PlaySE(0x5f2);
      return;
    }
    *(short *)(param_1 + 0x50) = (short)uVar2;
  }
  PlaySE(0x5dc);
  ov102_021E874C(param_1 + 0x54,param_1);
  *(undefined4 *)(param_1 + 0x24) = 0x21e87b5;
  ov102_021E940C(*(undefined4 *)(param_1 + 0x14),0xb);
  *param_2 = 1;
  return;
}

