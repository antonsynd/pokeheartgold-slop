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
typedef void code(void);
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
undefined4 MapObject_CopyPositionVector(undefined4, undefined4);
undefined4 MapObject_GetZCoord(undefined4);
undefined4 MapObject_GetYCoord(undefined4);
undefined4 ov01_021F146C(void);
undefined4 ov01_021F1450(undefined4, undefined4);
undefined4 MapObject_GetPriorityPlusValue(undefined4, undefined4);
undefined4 ov01_021F1468(undefined4);
undefined4 ov01_021F1620(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 MapObject_GetXCoord(undefined4);
extern undefined ov01_02209138;

void ov01_021FF070(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined2 uStack_24;
  undefined2 uStack_22;
  undefined1 uStack_20;
  undefined1 auStack_1c [12];

  uVar1 = ov01_021F146C();
  uStack_40 = MapObject_GetXCoord(param_1);
  uStack_3c = MapObject_GetYCoord(param_1);
  uStack_38 = MapObject_GetZCoord(param_1);
  uStack_24 = 0;
  uStack_22 = 0;
  uStack_20 = 0xff;
  uStack_30 = uVar1;
  uStack_34 = ov01_021F1468(uVar1);
  uStack_2c = ov01_021F1450(uVar1,8);
  uStack_28 = param_1;
  MapObject_CopyPositionVector(param_1,auStack_1c);
  uVar2 = MapObject_GetPriorityPlusValue(param_1,2);
  ov01_021F1620(uVar1,&ov01_02209138,auStack_1c,param_2,&uStack_40,uVar2);
  return;
}

