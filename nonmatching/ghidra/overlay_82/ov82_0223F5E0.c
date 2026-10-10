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
undefined4 BgTilemapRectChangePalette();

void ov82_0223F5E0(undefined4 param_1,uint param_2,int param_3,undefined4 param_4)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  
  if (param_3 == 0) {
    uVar3 = 0;
  }
  else if (param_3 == 1) {
    uVar3 = 5;
  }
  else if (param_3 == 2) {
    uVar3 = 4;
  }
  else {
    uVar3 = 3;
  }
  iVar6 = (int)param_2 >> 0x1f;
  uVar1 = -iVar6 + (param_2 * 0x40000000 + iVar6 >> 0x1e | iVar6 << 2);
  uVar2 = uVar1 * 8;
  iVar6 = -iVar6 + (param_2 * 0x20000000 + iVar6 >> 0x1d | iVar6 << 3);
  if (iVar6 < 4) {
    uVar4 = 5;
  }
  else {
    uVar4 = 4;
  }
  if (param_2 < 4) {
    uVar5 = 0;
  }
  else if (param_2 < 8) {
    uVar5 = 5;
  }
  else if (param_2 < 0xc) {
    uVar5 = 9;
  }
  else if (param_2 < 0x10) {
    uVar5 = 0xe;
  }
  else {
    uVar5 = 0x12;
  }
  BgTilemapRectChangePalette(param_1,3,(uVar1 & 0x1f) << 3,uVar5,8,uVar4,uVar3,uVar2,param_4);
  if (param_3 == 0) {
    if (iVar6 < 4) {
      uVar3 = 2;
    }
    else {
      uVar3 = 3;
    }
    if (param_2 < 4) {
      uVar4 = 2;
    }
    else if (param_2 < 8) {
      uVar4 = 6;
    }
    else if (param_2 < 0xc) {
      uVar4 = 0xb;
    }
    else if (param_2 < 0x10) {
      uVar4 = 0xf;
    }
    else {
      uVar4 = 0x14;
    }
    if (param_2 < 9) {
      BgTilemapRectChangePalette(param_1,3,uVar2 & 0xff,uVar4,1,uVar3,1,uVar2,param_4);
      return;
    }
    BgTilemapRectChangePalette(param_1,3,uVar2 & 0xff,uVar4,1,uVar3,2,uVar2,param_4);
  }
  return;
}

