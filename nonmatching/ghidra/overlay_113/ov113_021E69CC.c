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
undefined4 SpriteSystem_CreateSpriteFromResourceHeader();
undefined4 Sprite_SetDrawFlag();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 GetMonIconPaletteEx();
undefined4 SpriteSystem_NewSprite();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 Sprite_SetPriority();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
extern undefined4 ov113_021E6CF8;

void ov113_021E69CC(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 *puVar4;
  short sVar5;
  int iVar6;
  undefined2 uStack_4c;
  short sStack_4a;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  int iStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  puVar4 = &ov113_021E6CF8;
  iVar6 = 0;
  iVar3 = param_1;
  uStack_18 = param_4;
  do {
    uVar2 = SpriteSystem_CreateSpriteFromResourceHeader
                      (*(undefined4 *)(param_1 + 0xac),*(undefined4 *)(param_1 + 0xb0),puVar4);
    *(undefined4 *)(iVar3 + 0xb8) = uVar2;
    Sprite_SetDrawFlag(*(undefined4 *)(iVar3 + 0xb8),1);
    Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar3 + 0xb8),1);
    Sprite_SetPriority(*(undefined4 *)(iVar3 + 0xb8),2);
    iVar6 = iVar6 + 1;
    puVar4 = puVar4 + 0x28;
    iVar3 = iVar3 + 4;
  } while (iVar6 < 3);
  func_0x020d4994(&uStack_4c,0,0x34);
  uStack_20 = 1;
  uStack_40 = GetMonIconPaletteEx(0xc9,0,0);
  iVar6 = 0;
  uStack_1c = 0;
  uStack_4c = 0x28;
  uStack_34 = 1;
  uStack_30 = 1;
  uStack_2c = 1;
  uStack_28 = 0xffffffff;
  uStack_24 = 0xffffffff;
  sVar5 = 0x1d;
  sVar1 = 0;
  iVar3 = param_1;
  do {
    if (iVar6 < 7) {
      uStack_3c = 2;
      sStack_4a = sVar5;
    }
    else {
      sStack_4a = sVar1 + -0x9b;
      uStack_3c = 1;
    }
    iStack_38 = iVar6 + 1;
    uVar2 = SpriteSystem_NewSprite
                      (*(undefined4 *)(param_1 + 0xac),*(undefined4 *)(param_1 + 0xb4),&uStack_4c);
    *(undefined4 *)(iVar3 + 0xc4) = uVar2;
    ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar3 + 0xc4),0);
    iVar6 = iVar6 + 1;
    sVar1 = sVar1 + 0x18;
    sVar5 = sVar5 + 0x18;
    iVar3 = iVar3 + 4;
  } while (iVar6 < 0xe);
  return;
}

