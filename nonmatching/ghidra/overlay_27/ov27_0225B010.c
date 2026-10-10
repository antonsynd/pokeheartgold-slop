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
undefined4 Sprite_CreateAffine();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 func_0x0202487c() __asm__("sub_0202487C");
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 CreateSpriteResourcesHeader();
undefined4 Sprite_SetPriority();
undefined4 func_0x020f1520() __asm__("sub_020F1520");
extern undefined ov27_0225CF3C;
extern undefined ov27_0225D05C;
extern undefined ov27_0225D038;
undefined4 FieldSystem_BugContest_Get();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 func_0x02024aa8() __asm__("sub_02024AA8");
undefined4 ov27_0225A4B8();
undefined4 ov27_0225AA7C();
undefined4 GF_AssertFail();
undefined4 Sprite_SetDrawFlag();
undefined4 ov27_0225A9C0();
undefined4 Sprite_SetPositionXYWithSubscreenOffset();
undefined4 Pokemon_GetIconPalette();

void ov27_0225B010(int param_1)

{
  undefined4 uVar1;
  uint uVar2;
  undefined4 *puVar3;
  int iVar4;
  ushort *puVar5;
  int iVar6;
  int iStack_54;
  int iStack_50;
  int iStack_4c;
  undefined4 uStack_44;
  int iStack_40;
  undefined4 uStack_3c;
  int iStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined2 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  puVar3 = (undefined4 *)&ov27_0225CF3C;
  iVar6 = 0;
  iVar4 = param_1 + 0x204;
  do {
    CreateSpriteResourcesHeader
              (iVar4,iVar6 + 100,iVar6 + 100,*puVar3,*puVar3,0xffffffff,0xffffffff,0,0,
               *(undefined4 *)(param_1 + 0x144),*(undefined4 *)(param_1 + 0x148),
               *(undefined4 *)(param_1 + 0x14c),*(undefined4 *)(param_1 + 0x150),0,0);
    iVar6 = iVar6 + 1;
    puVar3 = puVar3 + 1;
    iVar4 = iVar4 + 0x24;
  } while (iVar6 < 0xb);
  uStack_44 = *(undefined4 *)(param_1 + 0x18);
  iVar6 = param_1 + 0x204;
  iStack_54 = 0;
  uStack_34 = 0;
  uStack_30 = 0x1000;
  uStack_2c = 0x1000;
  uStack_28 = 0x1000;
  uStack_24 = 0;
  uStack_20 = 1;
  uStack_1c = 2;
  puVar5 = (ushort *)&ov27_0225D038;
  uStack_18 = 8;
  iVar4 = param_1;
  do {
    iStack_40 = iVar6;
    if (*puVar5 == 0) {
      uVar1 = func_0x020f2178(0);
      func_0x020f24c8(uVar1,0x3f000000);
    }
    else {
      uVar1 = func_0x020f2178((uint)*puVar5 << 0xc);
      func_0x020f1520(0x3f000000,uVar1);
    }
    uStack_3c = func_0x020f2104();
    if (puVar5[1] == 0) {
      uVar1 = func_0x020f2178(0);
      func_0x020f24c8(uVar1,0x3f000000);
    }
    else {
      uVar1 = func_0x020f2178((uint)puVar5[1] << 0xc);
      func_0x020f1520(0x3f000000,uVar1);
    }
    iStack_38 = func_0x020f2104();
    iStack_38 = iStack_38 + 0x100000;
    uVar1 = Sprite_CreateAffine(&uStack_44);
    *(undefined4 *)(iVar4 + 0x390) = uVar1;
    Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar4 + 0x390),1);
    Sprite_SetPriority(*(undefined4 *)(iVar4 + 0x390),0);
    func_0x0202487c(*(undefined4 *)(iVar4 + 0x390),1);
    iVar6 = iVar6 + 0x24;
    iStack_54 = iStack_54 + 1;
    puVar5 = puVar5 + 2;
    iVar4 = iVar4 + 4;
  } while (iStack_54 < 9);
  iStack_50 = 9;
  puVar5 = (ushort *)&ov27_0225D05C;
  iVar4 = param_1 + 0x24;
  do {
    iStack_40 = param_1 + 0x348;
    if (*puVar5 == 0) {
      uVar1 = func_0x020f2178(0);
      func_0x020f24c8(uVar1,0x3f000000);
    }
    else {
      uVar1 = func_0x020f2178((uint)*puVar5 << 0xc);
      func_0x020f1520(0x3f000000,uVar1);
    }
    uStack_3c = func_0x020f2104();
    if (puVar5[1] == 0) {
      uVar1 = func_0x020f2178(0);
      func_0x020f24c8(uVar1,0x3f000000);
    }
    else {
      uVar1 = func_0x020f2178((uint)puVar5[1] << 0xc);
      func_0x020f1520(0x3f000000,uVar1);
    }
    iStack_38 = func_0x020f2104();
    iStack_38 = iStack_38 + 0x100000;
    uVar1 = Sprite_CreateAffine(&uStack_44);
    *(undefined4 *)(iVar4 + 0x390) = uVar1;
    Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar4 + 0x390),1);
    Sprite_SetPriority(*(undefined4 *)(iVar4 + 0x390),2);
    puVar5 = puVar5 + 2;
    iStack_50 = iStack_50 + 1;
    iVar4 = iVar4 + 4;
  } while (iStack_50 < 0xf);
  uVar2 = (*(uint *)(param_1 + 0x51c) & 0x1f) >> 1;
  if (uVar2 - 1 < 3) {
    if (uVar2 == 1) {
      iStack_4c = 0x90;
    }
    else if (uVar2 - 2 < 2) {
      iStack_4c = 0x68;
    }
    iStack_40 = param_1 + 0x36c;
    uVar1 = func_0x020f2178(0x64000);
    func_0x020f1520(0x3f000000,uVar1);
    uStack_3c = func_0x020f2104();
    if (iStack_4c < 1) {
      uVar1 = func_0x020f2178(iStack_4c << 0xc);
      func_0x020f24c8(uVar1,0x3f000000);
    }
    else {
      uVar1 = func_0x020f2178(iStack_4c << 0xc);
      func_0x020f1520(0x3f000000,uVar1);
    }
    iStack_38 = func_0x020f2104();
    iStack_38 = iStack_38 + 0x100000;
    uVar1 = Sprite_CreateAffine(&uStack_44);
    *(undefined4 *)(param_1 + 0x3cc) = uVar1;
    Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0x3cc),1);
    Sprite_SetPriority(*(undefined4 *)(param_1 + 0x3cc),0);
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x3cc),6);
  }
  uVar2 = (*(uint *)(param_1 + 0x51c) & 0x1f) >> 1;
  if (uVar2 == 2) {
    iVar4 = FieldSystem_BugContest_Get(*(undefined4 *)(param_1 + 0x10));
    if (iVar4 == 0) {
      GF_AssertFail();
    }
    if ((int)((uint)*(byte *)(iVar4 + 0x17) << 0x1f) < 0) {
      Sprite_SetPositionXYWithSubscreenOffset(*(undefined4 *)(param_1 + 0x3a8),0x68,0x88,0x100000);
      uVar1 = Pokemon_GetIconPalette(*(undefined4 *)(iVar4 + 0x10));
      func_0x02024aa8(*(undefined4 *)(param_1 + 0x3a8),uVar1);
      Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x3a8),6);
    }
  }
  else if (uVar2 == 3) {
    Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x3a8),0);
  }
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x3b4),0);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x3b8),8);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x3bc),3);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x3c0),5);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x3c8),0xc);
  Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x3c8),0);
  Sprite_SetPriority(*(undefined4 *)(param_1 + 0x3c4),1);
  ov27_0225A4B8(param_1);
  ov27_0225A9C0(param_1,1);
  ov27_0225AA7C(param_1);
  return;
}

