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
undefined4 ManagedSprite_OffsetPositionXY(void *, short, short);
undefined4 ManagedSprite_SetPositionXYWithSubscreenOffset(void *, short, short, int);
undefined4 ManagedSprite_SetDrawFlag(void *, int);

undefined4 ov93_02262374(undefined4 param_1,undefined4 *param_2)

{
  switch(*(undefined2 *)(param_2 + 1)) {
  case 0:
  case 5:
    ManagedSprite_SetPositionXYWithSubscreenOffset((undefined *)*param_2,0x80,0x10,0x160000);
    ManagedSprite_SetDrawFlag((undefined *)*param_2,1);
    *(short *)(param_2 + 1) = *(short *)(param_2 + 1) + 1;
    break;
  case 1:
  case 6:
    *(short *)((int)param_2 + 6) = *(short *)((int)param_2 + 6) + 1;
    if (0xf < *(short *)((int)param_2 + 6)) {
      *(undefined2 *)((int)param_2 + 6) = 0;
      param_2[5] = 1;
      param_2[6] = 1;
      param_2[3] = 0x80;
      param_2[4] = 0x20;
      *(short *)(param_2 + 1) = *(short *)(param_2 + 1) + 1;
    }
    break;
  case 2:
  case 7:
    param_2[6] = 0;
    param_2[4] = param_2[4] + 6;
    ManagedSprite_OffsetPositionXY((undefined *)*param_2,0,6);
    if (0x60 < (int)param_2[4]) {
      *(short *)(param_2 + 1) = *(short *)(param_2 + 1) + 1;
    }
    break;
  case 3:
  case 8:
    param_2[5] = 0;
    ManagedSprite_SetDrawFlag((undefined *)*param_2,0);
    *(short *)(param_2 + 1) = *(short *)(param_2 + 1) + 1;
  case 4:
  case 9:
    *(short *)((int)param_2 + 6) = *(short *)((int)param_2 + 6) + 1;
    if (0x1e < *(short *)((int)param_2 + 6)) {
      *(undefined2 *)((int)param_2 + 6) = 0;
      *(short *)(param_2 + 1) = *(short *)(param_2 + 1) + 1;
    }
    break;
  case 10:
    return 1;
  }
  return 0;
}

