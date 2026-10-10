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
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 Sprite_CreateAffine();
undefined4 Sprite_SetDrawPriority();
undefined4 Sprite_SetDrawFlag();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 CreateSpriteResourcesHeader();
undefined4 Sprite_SetAnimCtrlSeq();
extern undefined ov37_021E7A80;

void ov37_021E6244(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  ushort *puVar4;
  int iVar5;
  undefined4 uStack_44;
  int iStack_40;
  int iStack_3c;
  int iStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined2 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  CreateSpriteResourcesHeader
            (param_1 + 400,0,0,0,0,0xffffffff,0xffffffff,0,0,*(undefined4 *)(param_1 + 0x160),
             *(undefined4 *)(param_1 + 0x164),*(undefined4 *)(param_1 + 0x168),
             *(undefined4 *)(param_1 + 0x16c),0,0);
  CreateSpriteResourcesHeader
            (param_1 + 0x1b4,1,1,1,1,0xffffffff,0xffffffff,0,0,*(undefined4 *)(param_1 + 0x160),
             *(undefined4 *)(param_1 + 0x164),*(undefined4 *)(param_1 + 0x168),
             *(undefined4 *)(param_1 + 0x16c),0,0);
  uStack_44 = *(undefined4 *)(param_1 + 0x34);
  iVar3 = 0;
  uStack_34 = 0;
  uStack_30 = 0x1000;
  uStack_2c = 0x1000;
  uStack_28 = 0x1000;
  uStack_24 = 0;
  uStack_20 = 1;
  uStack_18 = 0x27;
  iVar5 = 0x18;
  iVar2 = param_1;
  do {
    iStack_3c = iVar5 << 0xc;
    iStack_38 = 0x40000;
    uStack_1c = 2;
    iStack_40 = param_1 + 0x1b4;
    uVar1 = Sprite_CreateAffine(&uStack_44);
    *(undefined4 *)(iVar2 + 0x1d8) = uVar1;
    Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar2 + 0x1d8),1);
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar2 + 0x1d8),iVar3);
    Sprite_SetDrawFlag(*(undefined4 *)(iVar2 + 0x1d8),0);
    iVar3 = iVar3 + 1;
    iVar5 = iVar5 + 0x28;
    iVar2 = iVar2 + 4;
  } while (iVar3 < 5);
  puVar4 = (ushort *)&ov37_021E7A80;
  iVar3 = 0;
  iVar2 = param_1;
  do {
    iStack_3c = (uint)*puVar4 << 0xc;
    iStack_38 = (uint)puVar4[1] << 0xc;
    iStack_40 = param_1 + 0x1b4;
    uVar1 = Sprite_CreateAffine(&uStack_44);
    *(undefined4 *)(iVar2 + 0x248) = uVar1;
    Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar2 + 0x248),1);
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar2 + 0x248),puVar4[2]);
    if (7 < iVar3) {
      Sprite_SetPriority(*(undefined4 *)(iVar2 + 0x248),2);
    }
    iVar3 = iVar3 + 1;
    puVar4 = puVar4 + 3;
    iVar2 = iVar2 + 4;
  } while (iVar3 < 0xc);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x248),6);
  iVar3 = 0;
  iVar2 = 0x20;
  do {
    iStack_38 = iVar2 * 0x1000 + 0x100000;
    iStack_3c = 0x18000;
    uVar1 = Sprite_CreateAffine(&uStack_44);
    *(undefined4 *)(param_1 + 0x210) = uVar1;
    Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0x210),1);
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x210),iVar3);
    Sprite_SetDrawPriority(*(undefined4 *)(param_1 + 0x210),1);
    Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x210),0);
    iVar3 = iVar3 + 1;
    iVar2 = iVar2 + 0x20;
    param_1 = param_1 + 4;
  } while (iVar3 < 5);
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  return;
}

