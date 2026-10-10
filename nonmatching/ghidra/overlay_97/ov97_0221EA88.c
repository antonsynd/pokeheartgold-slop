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
undefined4 CalcMonPokeathlonStars();
undefined4 Party_GetMonByIndex();
undefined4 Party_GetMonAprijuiceModifiers();

void ov97_0221EA88(undefined4 param_1,undefined4 param_2,byte *param_3)

{
  undefined4 uVar1;
  ushort uStack_20;
  byte bStack_1e;
  byte bStack_1d;
  byte bStack_1c;
  byte bStack_1b;
  byte bStack_1a;
  undefined1 auStack_18 [8];
  
  Party_GetMonAprijuiceModifiers(param_1,auStack_18,param_2);
  uVar1 = Party_GetMonByIndex(param_1,param_2);
  CalcMonPokeathlonStars(&uStack_20,uVar1,auStack_18,0x5c);
  *param_3 = (byte)uStack_20 & 7;
  param_3[1] = (byte)((uStack_20 & 0x7fff) >> 0xc);
  param_3[2] = (byte)((uStack_20 & 0xfff) >> 9);
  param_3[3] = (byte)((uStack_20 & 0x3f) >> 3);
  param_3[4] = (byte)((uStack_20 & 0x1ff) >> 6);
  *(ushort *)(param_3 + 6) = bStack_1e & 7 | *(ushort *)(param_3 + 6) & 0xfff8;
  *(ushort *)(param_3 + 6) = (bStack_1a & 7) << 3 | *(ushort *)(param_3 + 6) & 0xffc7;
  *(ushort *)(param_3 + 6) = (bStack_1b & 7) << 6 | *(ushort *)(param_3 + 6) & 0xfe3f;
  *(ushort *)(param_3 + 6) = (bStack_1d & 7) << 9 | *(ushort *)(param_3 + 6) & 0xf1ff;
  *(ushort *)(param_3 + 6) = (bStack_1c & 7) << 0xc | *(ushort *)(param_3 + 6) & 0x8fff;
  return;
}

