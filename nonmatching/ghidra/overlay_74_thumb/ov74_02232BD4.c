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
undefined4 ov74_02231EC4();
undefined4 ov74_02231DB8();
undefined4 GfGfxLoader_LoadScrnData();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 Sprite_SetDrawFlag();
undefined4 ov74_02231D70();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 BgTilemapRectChangePalette();
undefined4 Sprite_CreateAffine();
undefined4 ov74_02231D94();
undefined4 ov74_02231D48();
undefined4 LoadFontPal0();
undefined4 BgCommitTilemapBufferToVram();
extern undefined1 uRam021d1176 __asm__("sub_021D1176");
extern undefined ov74_0223C960;
undefined4 LoadUserFrameGfx1();
undefined4 ov74_02231A1C();
undefined4 ov74_02232B18();
undefined4 LoadUserFrameGfx2();

void ov74_02232BD4(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int *piVar5;
  int iVar6;
  int *piVar7;
  int iVar8;
  undefined1 auStack_44 [8];
  int iStack_3c;
  undefined4 uStack_38;
  
  iVar6 = 0;
  piVar5 = param_1;
  do {
    Sprite_SetDrawFlag(piVar5[0x6a],0);
    Sprite_SetDrawFlag(piVar5[0x6b],0);
    iVar6 = iVar6 + 1;
    piVar5 = piVar5 + 3;
  } while (iVar6 < 0x1e);
  iVar6 = 0;
  piVar5 = param_1;
  do {
    Sprite_SetDrawFlag(piVar5[0xf2],0);
    iVar6 = iVar6 + 1;
    piVar5 = piVar5 + 3;
  } while (iVar6 < 6);
  Sprite_SetDrawFlag(param_1[0xe6],0);
  Sprite_SetDrawFlag(param_1[0xee],0);
  Sprite_SetDrawFlag(param_1[0xea],0);
  ov74_02231D48(auStack_44,param_1,param_1 + 0x61,1);
  iVar8 = 0;
  iVar6 = 0x1c;
  piVar5 = param_1;
  piVar7 = param_1;
  do {
    iStack_3c = iVar6 << 0xc;
    uStack_38 = 0x8e000;
    iVar1 = Sprite_CreateAffine(auStack_44);
    piVar5[0x105] = iVar1;
    Sprite_SetAnimActiveFlag(piVar5[0x105],1);
    Sprite_SetAnimCtrlSeq(piVar5[0x105],iVar8 + 10);
    Sprite_SetPriority(piVar5[0x105],1);
    Sprite_SetDrawFlag(piVar5[0x105],1);
    uVar2 = ov74_02231D70(param_1,piVar7[0xf4],piVar7[0xf3]);
    uVar3 = ov74_02231D94(param_1,piVar7[0xf4],piVar7[0xf3]);
    uVar4 = ov74_02231DB8(param_1,piVar7[0xf4],piVar7[0xf3]);
    ov74_02231EC4(uVar2,uVar3,uVar4,uRam021d1176,iVar8,piVar5[0x105]);
    iVar8 = iVar8 + 1;
    iVar6 = iVar6 + 0x28;
    piVar5 = piVar5 + 1;
    piVar7 = piVar7 + 3;
  } while (iVar8 < 6);
  GfGfxLoader_LoadScrnData(0x71,0x19,param_1[8],2,0,0x600,1,0x4c,iVar6);
  BgTilemapRectChangePalette(param_1[8],2,0,0,0x20,0x18,(&ov74_0223C960)[*param_1]);
  BgCommitTilemapBufferToVram(param_1[8],2);
  GfGfx_EngineATogglePlanes(2,0);
  LoadFontPal0(0,0x1c0,0x4c);
  LoadUserFrameGfx1(param_1[8],0,0x3f0,0xe,0,0x4c);
  LoadUserFrameGfx2(param_1[8],0,0x3d2,0xd,param_1[7] & 0xff,0x4c);
  ov74_02232B18(param_1);
  param_1[0x118] = 10;
  ov74_02231A1C(param_1,param_1 + 0x10b,0x18);
  return;
}

