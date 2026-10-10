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
undefined4 func_0x021ee4fc() __asm__("sub_021EE4FC");
undefined4 ov00_021E6388();
undefined4 func_0x021ee384() __asm__("sub_021EE384");
undefined4 sub_0203993C();
undefined4 sub_02034098();
extern int iRam0221a680 __asm__("sub_0221A680");

void ov00_021E6ED8(int param_1,int param_2,int param_3,uint param_4,int param_5)

{
  bool bVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  uint uStack_18;

  bVar1 = false;
  *(undefined4 *)(iRam0221a680 + 0x10a0) = 0;
  if (param_1 == 0) {
    if (param_2 == 0) {
      uStack_18 = param_4;
      sub_0203993C();
      iVar2 = sub_02034098();
      if ((iVar2 != 0) && (param_5 == -1)) {
        bVar1 = true;
      }
      if ((*(code **)(iRam0221a680 + 0xfbc) != (code *)0x0) &&
         (iVar2 = (**(code **)(iRam0221a680 + 0xfbc))(param_5), iVar2 == 0)) {
        bVar1 = true;
      }
      if ((*(char *)(iRam0221a680 + 0x10e0) != '\0') || (bVar1)) {
        uStack_18 = func_0x021ee4fc();
        uStack_18 = uStack_18 & ~*(uint *)(iRam0221a680 + 0x10d8);
        uVar3 = func_0x021ee4fc();
        if (uStack_18 != 0) {
          func_0x021ee384(&uStack_18);
          if ((uStack_18 ^ uVar3) != 1) {
            return;
          }
          *(undefined4 *)(iRam0221a680 + 0x1070) = 6;
          return;
        }
      }
      *(int *)(iRam0221a680 + 0x1094) = param_5;
      uVar4 = func_0x021ee4fc();
      *(undefined4 *)(iRam0221a680 + 0x10d8) = uVar4;
      if (*(int *)(iRam0221a680 + 0x10d8) != 1) {
        ov00_021E6388(param_5);
        return;
      }
      *(undefined4 *)(iRam0221a680 + 0x1070) = 6;
      return;
    }
    if (param_3 == 0) {
      *(undefined4 *)(iRam0221a680 + 0x1098) = 0xffffffff;
    }
  }
  return;
}

