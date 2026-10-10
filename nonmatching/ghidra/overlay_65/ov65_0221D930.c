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
undefined4 Sprite_SetDrawFlag();
undefined4 Sprite_CreateAffine();
undefined4 CreateSpriteResourcesHeader();
undefined4 ov65_0221DD34();
undefined4 Sprite_SetOamMode();
undefined4 Sprite_SetDrawPriority();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 Sprite_SetAnimActiveFlag();
extern undefined ov65_0221FF4C;
extern undefined ov65_0221FEA4;

void ov65_0221D930(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
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
            (param_1 + 0x2fc,0,0,0,0,0xffffffff,0xffffffff,0,2,*(undefined4 *)(param_1 + 0x2cc),
             *(undefined4 *)(param_1 + 0x2d0),*(undefined4 *)(param_1 + 0x2d4),
             *(undefined4 *)(param_1 + 0x2d8),0,0);
  CreateSpriteResourcesHeader
            (param_1 + 800,1,1,1,1,0xffffffff,0xffffffff,0,0,*(undefined4 *)(param_1 + 0x2cc),
             *(undefined4 *)(param_1 + 0x2d0),*(undefined4 *)(param_1 + 0x2d4),
             *(undefined4 *)(param_1 + 0x2d8),0,0);
  uStack_44 = *(undefined4 *)(param_1 + 0x1a0);
  iStack_40 = param_1 + 0x2fc;
  iVar4 = 0;
  uStack_34 = 0;
  uStack_30 = 0x1000;
  uStack_2c = 0x1000;
  uStack_28 = 0x1000;
  uStack_24 = 0;
  uStack_1c = 1;
  piVar3 = (int *)&ov65_0221FF4C;
  uStack_20 = 0;
  uStack_18 = 0x1a;
  iVar2 = param_1;
  do {
    iStack_3c = *piVar3 << 0xc;
    iStack_38 = piVar3[1] << 0xc;
    uVar1 = Sprite_CreateAffine(&uStack_44);
    *(undefined4 *)(iVar2 + 0x344) = uVar1;
    Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar2 + 0x344),1);
    ov65_0221DD34(*(undefined4 *)(iVar2 + 0x94),*(undefined4 *)(iVar2 + 0x344),iVar4);
    Sprite_SetDrawPriority(*(undefined4 *)(iVar2 + 0x344),100);
    Sprite_SetDrawFlag(*(undefined4 *)(iVar2 + 0x344),0);
    Sprite_SetOamMode(*(undefined4 *)(iVar2 + 0x344),1);
    iVar4 = iVar4 + 1;
    piVar3 = piVar3 + 2;
    iVar2 = iVar2 + 4;
  } while (iVar4 < 2);
  piVar3 = (int *)&ov65_0221FF4C;
  iVar4 = 0;
  iVar2 = param_1;
  do {
    iStack_3c = (*piVar3 + 0x10) * 0x1000;
    iStack_38 = (piVar3[1] + -6) * 0x1000;
    uVar1 = Sprite_CreateAffine(&uStack_44);
    *(undefined4 *)(iVar2 + 0x37c) = uVar1;
    Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar2 + 0x37c),1);
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar2 + 0x37c),iVar4 + 5);
    Sprite_SetDrawPriority(*(undefined4 *)(iVar2 + 0x37c),5);
    Sprite_SetDrawFlag(*(undefined4 *)(iVar2 + 0x37c),0);
    Sprite_SetOamMode(*(undefined4 *)(iVar2 + 0x37c),1);
    iVar4 = iVar4 + 1;
    piVar3 = piVar3 + 2;
    iVar2 = iVar2 + 4;
  } while (iVar4 < 0xc);
  piVar3 = (int *)&ov65_0221FF4C;
  iVar4 = 0;
  iVar2 = param_1;
  do {
    iStack_3c = (*piVar3 + 0x24) * 0x1000;
    iStack_38 = (piVar3[1] + 0x10) * 0x1000;
    uStack_20 = 0;
    uVar1 = Sprite_CreateAffine(&uStack_44);
    *(undefined4 *)(iVar2 + 0x3ac) = uVar1;
    Sprite_SetDrawPriority(*(undefined4 *)(iVar2 + 0x3ac),3);
    Sprite_SetDrawFlag(*(undefined4 *)(iVar2 + 0x3ac),0);
    Sprite_SetOamMode(*(undefined4 *)(iVar2 + 0x3ac),1);
    iVar4 = iVar4 + 1;
    piVar3 = piVar3 + 2;
    iVar2 = iVar2 + 4;
  } while (iVar4 < 0xc);
  piVar3 = (int *)&ov65_0221FF4C;
  iVar4 = 0;
  iVar2 = param_1;
  do {
    iStack_3c = (*piVar3 + 0x2d) * 0x1000;
    iStack_38 = (piVar3[1] + 0x10) * 0x1000;
    uStack_20 = 0;
    uVar1 = Sprite_CreateAffine(&uStack_44);
    *(undefined4 *)(iVar2 + 0x3dc) = uVar1;
    Sprite_SetDrawPriority(*(undefined4 *)(iVar2 + 0x3dc),3);
    Sprite_SetDrawFlag(*(undefined4 *)(iVar2 + 0x3dc),0);
    Sprite_SetOamMode(*(undefined4 *)(iVar2 + 0x3dc),1);
    iVar4 = iVar4 + 1;
    piVar3 = piVar3 + 2;
    iVar2 = iVar2 + 4;
  } while (iVar4 < 0xc);
  iStack_3c = 0x60000;
  iStack_38 = 0x42000;
  uVar1 = Sprite_CreateAffine(&uStack_44);
  *(undefined4 *)(param_1 + 0x424) = uVar1;
  Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0x424),1);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x424),0x14);
  Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x424),0);
  piVar3 = (int *)&ov65_0221FEA4;
  iVar2 = 0;
  iVar4 = param_1 + 800;
  do {
    iStack_3c = *piVar3 << 0xc;
    iStack_38 = piVar3[1] * 0x1000 + 0xc0000;
    uStack_1c = 2;
    iStack_40 = iVar4;
    uVar1 = Sprite_CreateAffine(&uStack_44);
    *(undefined4 *)(param_1 + 0x40c) = uVar1;
    Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x40c),0);
    Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0x40c),0);
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x40c),piVar3[2]);
    iVar2 = iVar2 + 1;
    piVar3 = piVar3 + 3;
    param_1 = param_1 + 4;
  } while (iVar2 < 6);
  return;
}

