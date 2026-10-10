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
undefined4 Sprite_SetDrawPriority();
undefined4 CreateSpriteResourcesHeader();
undefined4 Sprite_CreateAffine();
undefined4 Sprite_SetDrawFlag();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 Sprite_SetAnimCtrlSeq();
extern undefined UNK_021e80a0 __asm__("sub_021E80A0");
extern undefined ov51_021E80A4;

void ov51_021E7BD0(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  byte *pbVar2;
  int iVar3;
  undefined *puVar4;
  undefined4 uStack_6c;
  undefined1 *puStack_68;
  int iStack_64;
  int iStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined2 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined1 auStack_3c [36];
  undefined4 uStack_18;

  uStack_18 = param_4;
  CreateSpriteResourcesHeader
            (auStack_3c,1,1,1,1,0xffffffff,0xffffffff,0,1,param_1[0x4f],param_1[0x50],param_1[0x51],
             param_1[0x52],0,0);
  uStack_6c = *param_1;
  iVar3 = 0;
  puStack_68 = auStack_3c;
  uStack_5c = 0;
  uStack_58 = 0x1000;
  uStack_54 = 0x1000;
  uStack_50 = 0x1000;
  uStack_4c = 0;
  uStack_44 = 2;
  pbVar2 = &ov51_021E80A4;
  puVar4 = &UNK_021e80a0;
  uStack_48 = 0;
  uStack_40 = 0x19;
  do {
    iStack_64 = (uint)*pbVar2 << 0xc;
    iStack_60 = (uint)pbVar2[1] * 0x1000 + 0xe0000;
    uVar1 = Sprite_CreateAffine(&uStack_6c);
    param_1[0x7c] = uVar1;
    Sprite_SetAnimActiveFlag(param_1[0x7c],1);
    Sprite_SetAnimCtrlSeq(param_1[0x7c],*puVar4);
    Sprite_SetDrawPriority(param_1[0x7c],2 - iVar3);
    Sprite_SetDrawFlag(param_1[0x7c],0);
    iVar3 = iVar3 + 1;
    pbVar2 = pbVar2 + 2;
    param_1 = param_1 + 1;
    puVar4 = puVar4 + 1;
  } while (iVar3 < 2);
  return;
}

