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
undefined4 Sprite_SetPriority();
undefined4 Sprite_CreateAffine();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 Sprite_SetDrawFlag();
undefined4 Sprite_SetAnimCtrlSeq();
extern int iRam0223d664 __asm__("sub_0223D664");
extern undefined4 uRam0223d45c __asm__("sub_0223D45C");
extern undefined4 uRam0223d488 __asm__("sub_0223D488");

int ov74_02235930(int param_1,int param_2,int param_3,int param_4,undefined4 param_5)

{
  undefined4 uStack_40;
  int iStack_3c;
  int iStack_38;
  int iStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined2 uStack_20;
  undefined4 uStack_1c;
  int iStack_18;
  undefined4 uStack_14;
  int iStack_10;
  
  iStack_10 = param_4;
  if (param_2 == 0) {
    iStack_38 = param_3 << 0xc;
    uStack_40 = uRam0223d488;
    iStack_3c = param_1 * 0x24 + 0x223d5fc;
    uStack_30 = 0;
    uStack_2c = 0x1000;
    uStack_28 = 0x1000;
    uStack_24 = 0x1000;
    uStack_20 = 0;
    iStack_34 = param_4 * 0x1000;
    uStack_1c = 10;
    if (param_1 == 0) {
      iStack_18 = 1;
    }
    else {
      iStack_18 = 2;
    }
    uStack_14 = uRam0223d45c;
    if (iStack_18 == 2) {
      iStack_34 = iStack_34 + iRam0223d664;
    }
    param_2 = Sprite_CreateAffine(&uStack_40);
  }
  Sprite_SetAnimActiveFlag(param_2,1);
  Sprite_SetPriority(param_2,0);
  Sprite_SetAnimCtrlSeq(param_2,param_5);
  Sprite_SetDrawFlag(param_2,1);
  return param_2;
}

