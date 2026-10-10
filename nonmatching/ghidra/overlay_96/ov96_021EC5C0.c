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
undefined4 ManagedSprite_SetAnimateFlag();
undefined4 SpriteSystem_NewSpriteWithYOffset();

void ov96_021EC5C0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  undefined4 uVar2;
  int iVar3;
  int iStack_54;
  int iStack_50;
  short asStack_4c [2];
  undefined4 uStack_48;
  undefined4 uStack_44;
  int iStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_48 = 0;
  uStack_28 = 0;
  uStack_24 = 0;
  iStack_50 = 0;
  uStack_1c = 0;
  iStack_54 = 5;
  sVar1 = 0x20;
  uStack_18 = param_4;
  do {
    uStack_38 = 0x69;
    uStack_34 = 0x69;
    uStack_30 = 0x65;
    uStack_2c = 0x65;
    uStack_20 = 1;
    uStack_3c = 2;
    uStack_44 = 2;
    asStack_4c[1] = 0x48;
    uStack_48 = uStack_48 & 0xffff;
    iStack_40 = iStack_50 + 1;
    asStack_4c[0] = sVar1;
    uVar2 = SpriteSystem_NewSpriteWithYOffset
                      (*(undefined4 *)(param_1 + 0x18),*(undefined4 *)(param_1 + 0x1c),asStack_4c,
                       0x20c000);
    *(undefined4 *)(param_1 + iStack_54 * 4 + 0x20) = uVar2;
    ManagedSprite_SetAnimateFlag(uVar2,1);
    iVar3 = 0;
    iStack_40 = 0;
    uStack_20 = 1;
    uStack_44 = 1;
    asStack_4c[0] = asStack_4c[0] + -0x10;
    uStack_48 = CONCAT22(1,(undefined2)uStack_48);
    do {
      uVar2 = SpriteSystem_NewSpriteWithYOffset
                        (*(undefined4 *)(param_1 + 0x18),*(undefined4 *)(param_1 + 0x1c),asStack_4c,
                         0x20c000);
      *(undefined4 *)(param_1 + (iStack_54 + 1 + iVar3) * 4 + 0x20) = uVar2;
      ManagedSprite_SetAnimateFlag(uVar2,1);
      iVar3 = iVar3 + 1;
      asStack_4c[0] = asStack_4c[0] + 0x10;
    } while (iVar3 < 3);
    iStack_54 = iStack_54 + 4;
    sVar1 = sVar1 + 0x40;
    iStack_50 = iStack_50 + 1;
  } while (iStack_50 < 4);
  return;
}

