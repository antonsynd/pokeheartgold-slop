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
undefined4 SpriteSystem_LoadCharResObjFromOpenNarc();
undefined4 SpriteSystem_Init();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 func_0x0200d740() __asm__("sub_0200D740");
undefined4 NARC_New();
undefined4 SpriteSystem_LoadCellResObjFromOpenNarc();
undefined4 SpriteSystem_InitManagerWithCapacities();
undefined4 G2dRenderer_SetSubSurfaceCoords();
undefined4 SpriteManager_New();
undefined4 func_0x0200cf6c() __asm__("sub_0200CF6C");
undefined4 SpriteSystem_InitSprites();
undefined4 SpriteSystem_LoadPlttResObjFromOpenNarc();
undefined4 SpriteSystem_LoadAnimResObjFromOpenNarc();
undefined4 SpriteSystem_NewSprite();
undefined4 NARC_Delete();
undefined4 SpriteSystem_Alloc();
extern undefined4 ov64_021E70C8;
extern undefined4 ov64_021E6EFC;
extern undefined4 ov64_021E70FC;
undefined4 GfGfx_EngineATogglePlanes();
undefined4 GfGfx_EngineBTogglePlanes();
extern undefined4 ov64_021E7408;
extern undefined4 ov64_021E73A0;
extern undefined4 ov64_021E743C;
extern undefined4 ov64_021E73D4;

void ov64_021E5CD0(int param_1)

{
  undefined4 uVar1;
  uint uVar2;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
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
  
  uVar1 = SpriteSystem_Alloc(0x3b);
  *(undefined4 *)(param_1 + 0x130) = uVar1;
  uVar1 = SpriteManager_New(*(undefined4 *)(param_1 + 0x130));
  *(undefined4 *)(param_1 + 0x134) = uVar1;
  uStack_34 = 0;
  uStack_30 = 0x80;
  uStack_2c = 0;
  uStack_28 = 0x20;
  uStack_24 = 0;
  uStack_20 = 0x80;
  uStack_1c = 0;
  uStack_18 = 0x20;
  uStack_48 = 0x400;
  uStack_44 = 0x10000;
  uStack_40 = 0x4000;
  uStack_3c = 0x100010;
  uStack_38 = 0x100010;
  SpriteSystem_Init(*(undefined4 *)(param_1 + 0x130),&uStack_34,&uStack_48,0x20);
  uStack_60 = 0xf;
  uStack_5c = 0xf;
  uStack_58 = 4;
  uStack_54 = 4;
  uStack_50 = 0;
  uStack_4c = 0;
  SpriteSystem_InitSprites
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),0x12,&ov64_021E6EFC);
  SpriteSystem_InitManagerWithCapacities
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),&uStack_60);
  uVar1 = func_0x0200cf6c(*(undefined4 *)(param_1 + 0x130));
  G2dRenderer_SetSubSurfaceCoords(uVar1,0,0x200000);
  uVar1 = NARC_New(8,0x3b);
  SpriteSystem_LoadCharResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),uVar1,0x4c,0,2,0xdcc0
            );
  SpriteSystem_LoadCharResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),uVar1,0x4c,0,2,0xdcc1
            );
  SpriteSystem_LoadPlttResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),uVar1,0x4b,0,1,2,
             0xdcc0);
  SpriteSystem_LoadPlttResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),uVar1,0x4b,0,1,2,
             0xdcc1);
  SpriteSystem_LoadCellResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),uVar1,0x4d,0,0xdcc0);
  SpriteSystem_LoadAnimResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),uVar1,0x4e,0,0xdcc0);
  NARC_Delete(uVar1);
  uVar1 = NARC_New(0x61,0x3b);
  SpriteSystem_LoadCharResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),uVar1,6,1,1,0xdcce);
  SpriteSystem_LoadCellResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),uVar1,7,1,0xdcc3);
  SpriteSystem_LoadAnimResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),uVar1,8,1,0xdcc3);
  SpriteSystem_LoadPlttResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),uVar1,9,0,2,1,0xdcce)
  ;
  SpriteSystem_LoadCellResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),uVar1,0xb,1,0xdcc1);
  SpriteSystem_LoadAnimResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),uVar1,0xc,1,0xdcc1);
  SpriteSystem_LoadCellResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),uVar1,0xe,1,0xdcc2);
  SpriteSystem_LoadAnimResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),uVar1,0xf,1,0xdcc2);
  uVar2 = 0xdcc2;
  do {
    SpriteSystem_LoadPlttResObjFromOpenNarc
              (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),uVar1,0x10,0,1,1,
               uVar2);
    uVar2 = uVar2 + 1;
  } while (uVar2 < 0xdcce);
  NARC_Delete(uVar1);
  uVar1 = func_0x0200d740(*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),
                          &ov64_021E70C8,0x200000);
  *(undefined4 *)(param_1 + 0x138) = uVar1;
  uVar1 = func_0x0200d740(*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),
                          &ov64_021E70FC,0x200000);
  *(undefined4 *)(param_1 + 0x13c) = uVar1;
  ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x138),0);
  ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x13c),0);
  uVar1 = SpriteSystem_NewSprite
                    (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),
                     &ov64_021E73A0);
  *(undefined4 *)(param_1 + 0x170) = uVar1;
  uVar1 = SpriteSystem_NewSprite
                    (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),
                     &ov64_021E73D4);
  *(undefined4 *)(param_1 + 0x174) = uVar1;
  uVar1 = SpriteSystem_NewSprite
                    (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),
                     &ov64_021E7408);
  *(undefined4 *)(param_1 + 0x178) = uVar1;
  uVar1 = SpriteSystem_NewSprite
                    (*(undefined4 *)(param_1 + 0x130),*(undefined4 *)(param_1 + 0x134),
                     &ov64_021E743C);
  *(undefined4 *)(param_1 + 0x17c) = uVar1;
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  return;
}

