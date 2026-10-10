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
undefined4 func_0x0200d6d4() __asm__("sub_0200D6D4");
undefined4 SpriteSystem_InitSprites();
undefined4 SpriteSystem_Alloc();
undefined4 SpriteSystem_LoadCharResObjWithHardwareMappingType();
undefined4 SpriteManager_New();
undefined4 sub_02074494();
undefined4 func_0x0200d704() __asm__("sub_0200D704");
undefined4 SpriteSystem_NewSprite();
undefined4 func_0x0200d564() __asm__("sub_0200D564");
undefined4 SpriteSystem_Init();
undefined4 sub_0203A964();
undefined4 func_0x0200b2e0() __asm__("sub_0200B2E0");
undefined4 ManagedSprite_SetDrawFlag();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 SpriteSystem_InitManagerWithCapacities();
undefined4 sub_02074490();
undefined4 GF_CreateVramTransferManager();
undefined4 sub_020744A0();

void ov56_021E6BB4(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  int iVar6;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  short asStack_48 [6];
  uint uStack_3c;
  undefined4 uStack_38;
  int iStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  sub_0203A964();
  if (*(char *)(param_1 + 3) != '\x01') {
    GF_CreateVramTransferManager(0x20,*param_1);
    uVar1 = SpriteSystem_Alloc(*param_1);
    param_1[0x2c] = uVar1;
    uVar1 = SpriteManager_New(param_1[0x2c]);
    param_1[0x2d] = uVar1;
    uStack_68 = 0;
    uStack_64 = 7;
    uStack_60 = 1;
    uStack_5c = 1;
    uStack_58 = 0;
    uStack_54 = 1;
    uStack_50 = 1;
    uStack_4c = 1;
    uStack_7c = 3;
    uStack_78 = 0x400;
    uStack_74 = 0;
    uStack_70 = 0x10;
    uStack_6c = 0x10;
    uStack_94 = 3;
    uStack_90 = 1;
    uStack_8c = 1;
    uStack_88 = 1;
    uStack_84 = 0;
    uStack_80 = 0;
    SpriteSystem_Init(param_1[0x2c],&uStack_68,&uStack_7c,0x20);
    SpriteSystem_InitSprites(param_1[0x2c],param_1[0x2d],3);
    SpriteSystem_InitManagerWithCapacities(param_1[0x2c],param_1[0x2d],&uStack_94);
    func_0x0200b2e0(*param_1);
    uVar1 = sub_02074490();
    uVar5 = 0;
    func_0x0200d564(param_1[0x2c],param_1[0x2d],0x14,uVar1,0,3,1,0);
    uVar1 = sub_02074494();
    func_0x0200d6d4(param_1[0x2c],param_1[0x2d],0x14,uVar1,0,0);
    uVar1 = sub_020744A0();
    func_0x0200d704(param_1[0x2c],param_1[0x2d],0x14,uVar1,0,0);
    iVar3 = 0;
    iVar2 = 0;
    iVar6 = 0;
    puVar4 = param_1;
    do {
      if (*(short *)(param_1[7] + iVar2 + 0x18) == -1) {
        return;
      }
      SpriteSystem_LoadCharResObjWithHardwareMappingType
                (param_1[0x2c],param_1[0x2d],0x14,*(ushort *)(param_1[7] + iVar2 + 0x18) & 0xfff,0,1
                 ,iVar3,uVar5,iVar6);
      func_0x020d4994(asStack_48,0,0x34);
      asStack_48[0] = 0x80 - (short)iVar6;
      asStack_48[1] = 0xa0;
      asStack_48[2] = 0;
      asStack_48[3] = 0;
      uStack_1c = 2;
      uStack_3c = (uint)(*(ushort *)(param_1[7] + iVar2 + 0x18) >> 0xc);
      uStack_18 = 0;
      uStack_38 = 1;
      uStack_30 = 0;
      uStack_2c = 0;
      uStack_28 = 0;
      uStack_24 = 0xffffffff;
      uStack_20 = 0xffffffff;
      iStack_34 = iVar3;
      uVar1 = SpriteSystem_NewSprite(param_1[0x2c],param_1[0x2d],asStack_48);
      puVar4[0x2e] = uVar1;
      if ((*(ushort *)(param_1[7] + iVar2 + 0x18) & 0xfff) == 7) {
        ManagedSprite_SetDrawFlag(puVar4[0x2e],0);
      }
      iVar3 = iVar3 + 1;
      iVar6 = iVar6 + 0x28;
      iVar2 = iVar2 + 2;
      puVar4 = puVar4 + 1;
    } while (iVar3 < 3);
  }
  return;
}

