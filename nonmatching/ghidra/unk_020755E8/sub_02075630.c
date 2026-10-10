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
undefined4 NARC_New();
undefined4 SpriteSystem_InitManagerWithCapacities();
undefined4 SpriteSystem_InitSprites();
undefined4 SpriteSystem_LoadCharResObjFromOpenNarc();
undefined4 SpriteSystem_LoadAnimResObjFromOpenNarc();
undefined4 SpriteSystem_Alloc();
undefined4 SpriteSystem_Init();
undefined4 SpriteManager_New();
undefined4 SpriteSystem_LoadPlttResObjFromOpenNarc();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 sub_020755E8();
undefined4 SpriteSystem_LoadCellResObjFromOpenNarc();
undefined4 NARC_Delete();

void sub_02075630(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
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
  
  uVar1 = SpriteSystem_Alloc(*(undefined4 *)(param_1 + 0x5c));
  *(undefined4 *)(param_1 + 0xac) = uVar1;
  uVar1 = SpriteManager_New(*(undefined4 *)(param_1 + 0xac));
  *(undefined4 *)(param_1 + 0xb0) = uVar1;
  uStack_34 = 0;
  uStack_30 = 0x80;
  uStack_2c = 0;
  uStack_28 = 0x20;
  uStack_24 = 0;
  uStack_20 = 0x80;
  uStack_1c = 0;
  uStack_18 = 0x20;
  uStack_44 = 0;
  uStack_40 = 0x4000;
  uStack_3c = 0x10;
  uStack_38 = 0x10;
  uStack_48 = 0x10;
  SpriteSystem_Init(*(undefined4 *)(param_1 + 0xac),&uStack_34,&uStack_48,0x20);
  SpriteSystem_InitSprites(*(undefined4 *)(param_1 + 0xac),*(undefined4 *)(param_1 + 0xb0),0x10);
  uStack_60 = 1;
  uStack_5c = 1;
  uStack_58 = 1;
  uStack_54 = 1;
  uStack_50 = 0;
  uStack_4c = 0;
  SpriteSystem_InitManagerWithCapacities
            (*(undefined4 *)(param_1 + 0xac),*(undefined4 *)(param_1 + 0xb0),&uStack_60,&uStack_48);
  uVar3 = *(undefined4 *)(param_1 + 0xac);
  uVar2 = *(undefined4 *)(param_1 + 0xb0);
  uVar1 = NARC_New(0xef,*(undefined4 *)(param_1 + 0x5c));
  SpriteSystem_LoadPlttResObjFromOpenNarc(uVar3,uVar2,uVar1,0xb,0,1,2,0);
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar3,uVar2,uVar1,0xc,0,2,0);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar3,uVar2,uVar1,0xd,0,0);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar3,uVar2,uVar1,0xe,0,0);
  NARC_Delete(uVar1);
  uVar1 = sub_020755E8(*(undefined4 *)(param_1 + 0xac),*(undefined4 *)(param_1 + 0xb0),0x80,0x48,1);
  *(undefined4 *)(param_1 + 0xb4) = uVar1;
  ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0xb4),0);
  *(undefined4 *)(param_1 + 0xb8) = 1;
  return;
}

