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
undefined4 ov18_021F2EC8();
undefined4 ov18_021F1FDC();
undefined4 ov18_021F1CAC();
undefined4 ov18_021F209C();
undefined4 ov18_021F2964();
undefined4 ov18_021F2E80();
undefined4 ov18_021F1A30();
undefined4 ov18_021F1424();
undefined4 ov18_021F299C();
undefined4 ov18_021F2AC0();
undefined4 ov18_021F2C5C();
undefined4 ov18_021F1D98();
undefined4 ov18_021F8824();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov18_021F2C10();
undefined4 ov18_021F2BB0();
undefined4 ov18_021F1620();
undefined4 ov18_021F1DE4();
undefined4 ov18_021F8838();
undefined4 ov18_021F24E0();
undefined4 ov18_021F2530();
undefined4 ov18_021F2468();

void ov18_021F2880(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  
  ov18_021F2964();
  ov18_021F1424(param_1,0x18);
  ov18_021F1620(param_1,0x18);
  ov18_021F299C(param_1);
  if (*(int *)(param_1 + 0x1860) == 0) {
    ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x670),0);
  }
  else {
    ov18_021F2AC0(param_1,0);
  }
  ov18_021F2BB0(param_1,5);
  ov18_021F2C10(param_1,2,1);
  ov18_021F2C5C(param_1,1,1);
  ov18_021F2E80(param_1,1,1);
  uVar1 = ov18_021F8838(param_1);
  uVar2 = ov18_021F8824(param_1);
  ov18_021F1A30(param_1,0xb);
  ov18_021F1CAC(param_1,uVar1,0xb,10);
  ov18_021F1FDC(param_1,0xe);
  ov18_021F209C(param_1,uVar1,uVar2,0xe);
  ov18_021F1D98(param_1,0xd);
  ov18_021F1DE4(param_1,uVar1,uVar2,0xd);
  ov18_021F2EC8(param_1,uVar2,9);
  ov18_021F2468(param_1);
  ov18_021F2530(param_1,uVar1,0x12);
  ov18_021F24E0(param_1,uVar1,8);
  ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x690),0);
  return;
}

