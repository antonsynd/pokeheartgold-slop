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
undefined4 MapObjectManager_NotEndMovement();
undefined4 sub_02060E54();
undefined4 sub_02060EBC();
undefined4 func_0x021fd684() __asm__("sub_021FD684");
undefined4 MapObject_GetManager();
undefined4 MapObject_GetFlagsBitsMask();
undefined4 MetatileBehavior_IsPuddle();
undefined4 MetatileBehavior_IsShallowWater();
undefined4 MetatileBehavior_IsTallGrass();
undefined4 MetatileBehavior_IsVeryTallGrass();
undefined4 MapObject_SetFlagsBits();
undefined4 MetatileBehavior_IsReflective();
undefined4 MetatileBehavior_IsMud();
undefined4 func_0x021fd640() __asm__("sub_021FD640");

void sub_020603F8(undefined4 param_1,undefined4 param_2,undefined4 param_3,ushort *param_4)

{
  int iVar1;
  uint uVar2;

  MapObject_GetManager();
  iVar1 = MapObjectManager_NotEndMovement();
  if ((iVar1 != 0) && (uVar2 = (*param_4 & 0x7f) >> 4, uVar2 != 0)) {
    if (uVar2 == 2) {
      iVar1 = MetatileBehavior_IsTallGrass(param_2);
      if (((((iVar1 == 1) || (iVar1 = MetatileBehavior_IsVeryTallGrass(param_2), iVar1 == 1)) ||
           (iVar1 = MetatileBehavior_IsTallGrass(param_3), iVar1 == 1)) ||
          (((iVar1 = MetatileBehavior_IsVeryTallGrass(param_3), iVar1 == 1 ||
            (iVar1 = sub_02060E54(param_1,param_2), iVar1 == 1)) ||
           ((iVar1 = MetatileBehavior_IsPuddle(param_2), iVar1 == 1 ||
            ((iVar1 = MetatileBehavior_IsShallowWater(param_2), iVar1 == 1 ||
             (iVar1 = sub_02060EBC(param_1,param_2), iVar1 == 1)))))))) ||
         ((iVar1 = MetatileBehavior_IsMud(param_2), iVar1 == 1 ||
          (iVar1 = MetatileBehavior_IsReflective(param_2), iVar1 != 0)))) {
        MapObject_SetFlagsBits(param_1,0x100000);
        return;
      }
      iVar1 = MapObject_GetFlagsBitsMask(param_1,0x8000);
      if (iVar1 == 0) {
        func_0x021fd684(param_1);
        MapObject_SetFlagsBits(param_1,0x8000);
        return;
      }
    }
    else {
      iVar1 = MetatileBehavior_IsTallGrass(param_2);
      if (((((iVar1 == 1) || (iVar1 = MetatileBehavior_IsVeryTallGrass(param_2), iVar1 == 1)) ||
           (iVar1 = sub_02060E54(param_1,param_2), iVar1 == 1)) ||
          ((iVar1 = MetatileBehavior_IsPuddle(param_2), iVar1 == 1 ||
           (iVar1 = MetatileBehavior_IsShallowWater(param_2), iVar1 == 1)))) ||
         ((iVar1 = sub_02060EBC(param_1,param_2), iVar1 == 1 ||
          ((iVar1 = MetatileBehavior_IsMud(param_2), iVar1 == 1 ||
           (iVar1 = MetatileBehavior_IsReflective(param_2), iVar1 != 0)))))) {
        MapObject_SetFlagsBits(param_1,0x100000);
        return;
      }
      iVar1 = MapObject_GetFlagsBitsMask(param_1,0x8000);
      if (iVar1 == 0) {
        func_0x021fd640(param_1);
        MapObject_SetFlagsBits(param_1,0x8000);
      }
    }
  }
  return;
}

