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
undefined4 MapObject_IncrementMovementStep();
undefined4 PlaySE();
undefined4 MapObject_CheckVisible();
undefined4 sub_0205F328();
undefined4 sub_02060F78();
undefined4 sub_02060F24();
undefined4 MapObject_SetOrQueueFacing();
undefined4 MapObject_SetFlagsBits();
undefined4 sub_0205F3C0();

void sub_02062958(undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,
                 undefined2 param_5,undefined1 param_6,undefined2 param_7)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)sub_0205F3C0(param_1,0x10,param_3,param_4,param_4);
  *(char *)(piVar1 + 3) = (char)param_2;
  *piVar1 = param_3;
  *(char *)((int)piVar1 + 0xd) = (char)param_4;
  *(char *)((int)piVar1 + 0xe) = (char)param_5;
  *(undefined1 *)((int)piVar1 + 0xf) = param_6;
  *(undefined2 *)(piVar1 + 2) = param_7;
  if (param_3 == 0) {
    sub_02060F78(param_1);
  }
  else {
    sub_02060F24(param_1,param_2);
  }
  MapObject_SetFlagsBits(param_1,0x10004);
  MapObject_SetOrQueueFacing(param_1,param_2);
  sub_0205F328(param_1,param_5);
  MapObject_IncrementMovementStep(param_1);
  iVar2 = MapObject_CheckVisible(param_1);
  if (iVar2 == 0) {
    PlaySE(0x60a);
  }
  return;
}

