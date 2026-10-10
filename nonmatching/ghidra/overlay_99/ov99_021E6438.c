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
undefined4 func_0x0221e6e0() __asm__("sub_0221E6E0");
undefined4 ManagedSprite_SetAnim();
undefined4 func_0x0221ef64() __asm__("sub_0221EF64");
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov99_021E5B90();
undefined4 ManagedSprite_SetAnimateFlag();
undefined4 ov99_021E5BB4();
extern undefined ov99_021E9840;

void ov99_021E6438(undefined4 *param_1)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined *puVar4;
  undefined4 *puVar5;
  int iVar6;

  puVar4 = &ov99_021E9840;
  iVar6 = 0;
  puVar5 = param_1;
  do {
    uVar2 = func_0x0221e6e0(param_1[5],puVar4);
    puVar5[6] = uVar2;
    ManagedSprite_SetAnimateFlag(uVar2,1);
    iVar6 = iVar6 + 1;
    puVar4 = puVar4 + 0x34;
    puVar5 = puVar5 + 1;
  } while (iVar6 < 0x1a);
  iVar6 = 0;
  puVar5 = param_1;
  do {
    iVar3 = ov99_021E5BB4(*param_1,iVar6);
    if (iVar3 == 0) {
      ManagedSprite_SetDrawFlag(puVar5[7],0);
    }
    ov99_021E5B90(*param_1,iVar6);
    iVar3 = func_0x0221ef64();
    uVar1 = iVar6 >> 0x1f;
    if (iVar3 == 2) {
      if ((iVar6 * -0x80000000 + uVar1 >> 0x1f | uVar1 << 1) == uVar1) {
        ManagedSprite_SetAnim(puVar5[0xc],5);
      }
      else {
        ManagedSprite_SetAnim(puVar5[0xc],6);
      }
    }
    else if (iVar3 == 1) {
      if ((iVar6 * -0x80000000 + uVar1 >> 0x1f | uVar1 << 1) == uVar1) {
        ManagedSprite_SetAnim(puVar5[0xc],2);
      }
      else {
        ManagedSprite_SetAnim(puVar5[0xc],3);
      }
    }
    else {
      ManagedSprite_SetDrawFlag(puVar5[0xc],0);
    }
    iVar6 = iVar6 + 1;
    puVar5 = puVar5 + 1;
  } while (iVar6 < 5);
  return;
}

