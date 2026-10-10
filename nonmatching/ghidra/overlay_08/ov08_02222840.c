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
undefined4 ov08_02223BA8();
undefined4 ov08_02223368();
undefined4 ov08_02224938();
undefined4 PaletteData_GetSelectedBuffersBitmask();
undefined4 ov08_02224C94();
undefined4 ov08_0222417C();
extern undefined ov08_02225B4C;

undefined4 ov08_02222840(int *param_1)

{
  int iVar1;
  uint uVar2;

  iVar1 = PaletteData_GetSelectedBuffersBitmask(param_1[2]);
  if (iVar1 != 0) {
    return 1;
  }
  uVar2 = ov08_02223368(param_1,&ov08_02225B4C);
  if (uVar2 == 0xffffffff) {
    uVar2 = ov08_02224C94(param_1[0xd]);
    if (uVar2 == 0xfffffffe) {
      uVar2 = 5;
    }
  }
  else {
    ov08_0222417C(param_1);
  }
  switch(uVar2) {
  case 0:
  case 1:
  case 2:
  case 3:
    PlaySE(0x5dd);
    *(char *)((int)param_1 + 0x114d) = (char)uVar2;
    *(undefined1 *)((int)param_1 + 0x114b) = 5;
    ov08_02224938(param_1,uVar2 & 0xff,0);
    return 0xb;
  case 4:
    if (*(short *)(*param_1 + 0x20) != 0) {
      PlaySE(0x5dd);
      *(undefined1 *)((int)param_1 + 0x114d) = *(undefined1 *)(*param_1 + 0x1f);
      *(undefined1 *)((int)param_1 + 0x114b) = 6;
      ov08_02223BA8(param_1);
      ov08_02224938(param_1,4,0);
      return 0xb;
    }
    break;
  case 5:
    PlaySE(0x5dd);
    *(undefined2 *)(*param_1 + 0x1c) = 0;
    *(undefined1 *)(*param_1 + 0x1e) = 4;
    ov08_02224938(param_1,5);
    return 0xd;
  }
  return 1;
}

