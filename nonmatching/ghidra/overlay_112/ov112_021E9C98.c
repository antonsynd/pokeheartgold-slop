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
undefined4 NewString_ReadMsgData();

void ov112_021E9C98(int param_1)

{
  undefined4 uVar1;
  
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x4c);
  *(undefined4 *)(param_1 + 0x1e458) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x49);
  *(undefined4 *)(param_1 + 0x1e45c) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x4a);
  *(undefined4 *)(param_1 + 0x1e460) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x4b);
  *(undefined4 *)(param_1 + 0x1e464) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x4e);
  *(undefined4 *)(param_1 + 0x1e468) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x4d);
  *(undefined4 *)(param_1 + 0x1e46c) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x50);
  *(undefined4 *)(param_1 + 0x1e470) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x4f);
  *(undefined4 *)(param_1 + 0x1e474) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x3f);
  *(undefined4 *)(param_1 + 0x1e494) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x40);
  *(undefined4 *)(param_1 + 0x1e498) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x41);
  *(undefined4 *)(param_1 + 0x1e49c) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x42);
  *(undefined4 *)(param_1 + 0x1e4a0) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x47);
  *(undefined4 *)(param_1 + 0x1e4a4) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x3f);
  *(undefined4 *)(param_1 + 0x1e4a8) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x47);
  *(undefined4 *)(param_1 + 0x1e4ac) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x4f);
  *(undefined4 *)(param_1 + 0x1e4b0) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x3b);
  *(undefined4 *)(param_1 + 0x1e4b4) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x3d);
  *(undefined4 *)(param_1 + 0x1e4bc) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x52);
  *(undefined4 *)(param_1 + 0x1e50c) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x55);
  *(undefined4 *)(param_1 + 0x1e510) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x94);
  *(undefined4 *)(param_1 + 0x1e514) = uVar1;
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x1e44c),0x95);
  *(undefined4 *)(param_1 + 0x1e518) = uVar1;
  return;
}

