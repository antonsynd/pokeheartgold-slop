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
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 SpriteSystem_CreateSpriteFromResourceHeader();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 Sprite_SetPositionXY();
undefined4 Sprite_SetDrawFlag();
undefined4 Sprite_SetPaletteOverride();

void ov59_02239A24(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  short sVar3;
  int iVar4;
  short *psVar5;
  int iVar6;
  int iStack_18;
  
  iVar4 = 0x223c7f0;
  iVar6 = 0;
  iVar2 = param_1;
  do {
    uVar1 = SpriteSystem_CreateSpriteFromResourceHeader
                      (*(undefined4 *)(param_1 + 0x24c),*(undefined4 *)(param_1 + 0x250),iVar4);
    *(undefined4 *)(iVar2 + 0x254) = uVar1;
    Sprite_SetDrawFlag(*(undefined4 *)(iVar2 + 0x254),1);
    Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar2 + 0x254),1);
    iVar6 = iVar6 + 1;
    iVar4 = iVar4 + 0x28;
    iVar2 = iVar2 + 4;
  } while (iVar6 < 2);
  Sprite_SetPriority(*(undefined4 *)(param_1 + 600),2);
  psVar5 = (short *)0x223c6c4;
  iVar2 = 0;
  do {
    iVar4 = param_1 + (iVar2 + 2U & 0xff) * 4;
    uVar1 = SpriteSystem_CreateSpriteFromResourceHeader
                      (*(undefined4 *)(param_1 + 0x24c),*(undefined4 *)(param_1 + 0x250),0x223c840);
    *(undefined4 *)(iVar4 + 0x254) = uVar1;
    Sprite_SetPositionXY(*(undefined4 *)(iVar4 + 0x254),(int)*psVar5,(int)psVar5[1]);
    Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar4 + 0x254),0);
    Sprite_SetDrawFlag(*(undefined4 *)(iVar4 + 0x254),1);
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar4 + 0x254),iVar2 + 9);
    Sprite_SetPriority(*(undefined4 *)(iVar4 + 0x254),2);
    iVar2 = iVar2 + 1;
    psVar5 = psVar5 + 2;
  } while (iVar2 < 7);
  if (*(char *)(param_1 + 0x44) != '\x01') {
    if (*(char *)(param_1 + 0x44) != '\x02') {
      return;
    }
    iVar2 = 0;
    sVar3 = 0x70;
    iStack_18 = 0x1c;
    do {
      iVar4 = param_1 + (iVar2 + 9U & 0xff) * 4;
      uVar1 = SpriteSystem_CreateSpriteFromResourceHeader
                        (*(undefined4 *)(param_1 + 0x24c),*(undefined4 *)(param_1 + 0x250),0x223c8b8
                        );
      *(undefined4 *)(iVar4 + 0x254) = uVar1;
      Sprite_SetPositionXY(*(undefined4 *)(iVar4 + 0x254),0xa0,(int)sVar3);
      Sprite_SetDrawFlag(*(undefined4 *)(iVar4 + 0x254),0);
      Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar4 + 0x254),1);
      Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar4 + 0x254),iStack_18);
      Sprite_SetPriority(*(undefined4 *)(iVar4 + 0x254),1);
      iVar2 = iVar2 + 1;
      iStack_18 = iStack_18 + 2;
      sVar3 = sVar3 + 0x18;
    } while (iVar2 < 2);
    iVar2 = 0;
    do {
      iVar6 = param_1 + (iVar2 + 0xbU & 0xff) * 4;
      uVar1 = SpriteSystem_CreateSpriteFromResourceHeader
                        (*(undefined4 *)(param_1 + 0x24c),*(undefined4 *)(param_1 + 0x250),0x223c8e0
                        );
      *(undefined4 *)(iVar6 + 0x254) = uVar1;
      iVar4 = iVar2 >> 0x1f;
      iVar4 = ((uint)(iVar2 * -0x80000000 + iVar4) >> 0x1f | iVar4 << 1) - iVar4;
      Sprite_SetPositionXY
                (*(undefined4 *)(iVar6 + 0x254),((iVar2 / 2) * -0x16 + 0x67) * 0x10000 >> 0x10,
                 (iVar4 * 0x28 + 0x60) * 0x10000 >> 0x10);
      Sprite_SetDrawFlag(*(undefined4 *)(iVar6 + 0x254),0);
      Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar6 + 0x254),0);
      Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar6 + 0x254),iVar4 * 2 + 0x18);
      Sprite_SetPriority(*(undefined4 *)(iVar6 + 0x254),1);
      iVar2 = iVar2 + 1;
    } while (iVar2 < 4);
    return;
  }
  iVar2 = 0;
  do {
    iVar4 = param_1 + (iVar2 + 9U & 0xff) * 4;
    uVar1 = SpriteSystem_CreateSpriteFromResourceHeader
                      (*(undefined4 *)(param_1 + 0x24c),*(undefined4 *)(param_1 + 0x250),
                       (iVar2 + 3) * 0x28 + 0x223c7f0);
    *(undefined4 *)(iVar4 + 0x254) = uVar1;
    Sprite_SetDrawFlag(*(undefined4 *)(iVar4 + 0x254),1);
    Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar4 + 0x254),1);
    iVar2 = iVar2 + 1;
  } while (iVar2 < 2);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x278),*(byte *)(param_1 + 0x14) + 0x10);
  Sprite_SetPaletteOverride(*(undefined4 *)(param_1 + 0x278),*(byte *)(param_1 + 0x17) + 5);
  return;
}

