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
undefined4 func_0x0200b2e0() __asm__("sub_0200B2E0");
undefined4 SpriteSystem_InitSprites();
undefined4 SpriteSystem_Alloc();
undefined4 func_0x02074494() __asm__("sub_02074494");
undefined4 GF_CreateVramTransferManager();
undefined4 func_0x0200d2a4() __asm__("sub_0200D2A4");
undefined4 func_0x0200e2b0() __asm__("sub_0200E2B0");
undefined4 SpriteSystem_Init();
undefined4 SpriteManager_SetSpriteList();
undefined4 NARC_New();
undefined4 SpriteManager_New();
undefined4 func_0x0200b2e8() __asm__("sub_0200B2E8");
undefined4 SpriteSystem_InitManagerWithCapacities();
undefined4 sub_02074490();
undefined4 SpriteSystem_LoadPlttResObjFromOpenNarc();
extern undefined ov113_021E6B74;
extern undefined ov113_021E6CB0;
extern undefined ov113_021E6BA4;
extern undefined ov113_021E6BD0;
undefined4 func_0x0200d704() __asm__("sub_0200D704");
undefined4 GetMonIconNaixEx();
undefined4 SpriteSystem_LoadCellResObjFromOpenNarc();
undefined4 func_0x020744a0() __asm__("sub_020744A0");
undefined4 SpriteSystem_LoadCharResObjFromOpenNarc();

void ov113_021E677C(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  GF_CreateVramTransferManager(0x20,*param_1);
  uVar1 = SpriteSystem_Alloc(*param_1);
  param_1[0x2b] = uVar1;
  SpriteSystem_Init(param_1[0x2b],&ov113_021E6CB0,&ov113_021E6BA4,2);
  func_0x0200b2e0(*param_1);
  func_0x0200b2e8(*param_1);
  uVar1 = SpriteManager_New(param_1[0x2b]);
  param_1[0x2c] = uVar1;
  SpriteSystem_InitSprites(param_1[0x2b],param_1[0x2c],0x11);
  func_0x0200d2a4(param_1[0x2b],param_1[0x2c],&ov113_021E6B74,0,0);
  uStack_30 = 0xe;
  uStack_2c = 1;
  uStack_28 = 1;
  uStack_24 = 1;
  uStack_20 = 0;
  uStack_1c = 0;
  uVar1 = SpriteManager_New(param_1[0x2b],0,&uStack_18,&ov113_021E6BD0);
  param_1[0x2d] = uVar1;
  SpriteSystem_InitManagerWithCapacities(param_1[0x2b],param_1[0x2d],&uStack_30);
  uVar1 = func_0x0200e2b0(param_1[0x2c]);
  SpriteManager_SetSpriteList(param_1[0x2d],uVar1);
  uVar1 = NARC_New(0x14,*param_1);
  param_1[0x3f] = uVar1;
  uVar1 = sub_02074490();
  SpriteSystem_LoadPlttResObjFromOpenNarc(param_1[0x2b],param_1[0x2d],param_1[0x3f],uVar1,0,1,3,1);
  uVar1 = func_0x02074494();
  SpriteSystem_LoadCellResObjFromOpenNarc(param_1[0x2b],param_1[0x2d],param_1[0x3f],uVar1,0,1);
  uVar1 = func_0x020744a0();
  func_0x0200d704(param_1[0x2b],param_1[0x2d],0x14,uVar1,0,1);
  iVar2 = 0;
  do {
    uVar1 = GetMonIconNaixEx(0xc9,0,iVar2);
    SpriteSystem_LoadCharResObjFromOpenNarc
              (param_1[0x2b],param_1[0x2d],param_1[0x3f],uVar1,0,2,iVar2 + 1);
    iVar2 = iVar2 + 1;
  } while (iVar2 < 7);
  iVar2 = 7;
  do {
    uVar1 = GetMonIconNaixEx(0xc9,0,iVar2);
    SpriteSystem_LoadCharResObjFromOpenNarc
              (param_1[0x2b],param_1[0x2d],param_1[0x3f],uVar1,0,1,iVar2 + 1);
    iVar2 = iVar2 + 1;
  } while (iVar2 < 0xe);
  return;
}

