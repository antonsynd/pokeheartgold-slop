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
undefined4 Sprite_SetPositionXY();
undefined4 Sprite_SetPriority();
undefined4 SpriteSystem_CreateSpriteFromResourceHeader();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 func_0x0202487c() __asm__("sub_0202487C");
undefined4 Sprite_SetDrawFlag();
extern undefined ov59_0223CA90;
extern undefined ov59_0223C99C;
extern undefined ov59_0223CB08;
extern undefined ov59_0223CB30;

void ov59_0223B8E4(int param_1)

{
  short sVar1;
  short sVar2;
  undefined4 uVar3;
  int iVar4;
  short sVar5;
  undefined *puVar6;
  int iVar7;
  int iStack_28;
  int *piStack_1c;

  puVar6 = &ov59_0223CA90;
  iVar7 = 0;
  iVar4 = param_1;
  do {
    uVar3 = SpriteSystem_CreateSpriteFromResourceHeader
                      (*(undefined4 *)(param_1 + 600),*(undefined4 *)(param_1 + 0x25c),puVar6);
    *(undefined4 *)(iVar4 + 0x260) = uVar3;
    Sprite_SetDrawFlag(*(undefined4 *)(iVar4 + 0x260),1);
    Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar4 + 0x260),1);
    Sprite_SetPriority(*(undefined4 *)(iVar4 + 0x260),1);
    iVar7 = iVar7 + 1;
    puVar6 = puVar6 + 0x28;
    iVar4 = iVar4 + 4;
  } while (iVar7 < 3);
  Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x268),0);
  func_0x0202487c(*(undefined4 *)(param_1 + 0x268),2);
  iStack_28 = 0;
  piStack_1c = (int *)&ov59_0223C99C;
  sVar1 = 0x28;
  sVar2 = 0x38;
  do {
    iVar4 = param_1 + (*piStack_1c + 3U & 0xff) * 4;
    uVar3 = SpriteSystem_CreateSpriteFromResourceHeader
                      (*(undefined4 *)(param_1 + 600),*(undefined4 *)(param_1 + 0x25c),
                       &ov59_0223CB08);
    *(undefined4 *)(iVar4 + 0x260) = uVar3;
    Sprite_SetPositionXY(*(undefined4 *)(iVar4 + 0x260),0x50,(int)sVar1);
    Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar4 + 0x260),1);
    Sprite_SetDrawFlag(*(undefined4 *)(iVar4 + 0x260),1);
    iVar4 = 0;
    sVar5 = 0x40;
    do {
      iVar7 = param_1 + (iVar4 + *piStack_1c * 5 + 8 & 0xffU) * 4;
      uVar3 = SpriteSystem_CreateSpriteFromResourceHeader
                        (*(undefined4 *)(param_1 + 600),*(undefined4 *)(param_1 + 0x25c),
                         &ov59_0223CB30);
      *(undefined4 *)(iVar7 + 0x260) = uVar3;
      Sprite_SetPositionXY(*(undefined4 *)(iVar7 + 0x260),(int)sVar5,(int)sVar2);
      Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar7 + 0x260),1);
      Sprite_SetDrawFlag(*(undefined4 *)(iVar7 + 0x260),1);
      func_0x0202487c(*(undefined4 *)(iVar7 + 0x260),2);
      iVar4 = iVar4 + 1;
      sVar5 = sVar5 + 0x10;
    } while (iVar4 < 5);
    piStack_1c = piStack_1c + 1;
    sVar1 = sVar1 + 0x20;
    sVar2 = sVar2 + 0x20;
    iStack_28 = iStack_28 + 1;
  } while (iStack_28 < 5);
  return;
}

