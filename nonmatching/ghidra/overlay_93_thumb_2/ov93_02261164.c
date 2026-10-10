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
undefined4 GF_SinDegFX32();
undefined4 func_0x0200df98() __asm__("sub_0200DF98");
undefined4 Sprite_TickFrame();
undefined4 ov93_02262444();
undefined4 func_0x020f2948() __asm__("sub_020F2948");
undefined4 GF_CosDegFX32();
undefined4 SpriteSystem_NewSprite();
undefined4 func_0x0200ddf4() __asm__("sub_0200DDF4");
undefined4 ManagedSprite_SetDrawFlag();
undefined4 func_0x0200e024() __asm__("sub_0200E024");
undefined4 ManagedSprite_SetAnim();
undefined4 ManagedSprite_SetOamMode();
extern undefined ov93_02262C7A;

void ov93_02261164(int param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  int iVar6;
  undefined *puVar7;
  int iStack_50;
  undefined4 auStack_4c [13];
  undefined4 uStack_18;

  puVar5 = (undefined4 *)0x2262e9c;
  puVar4 = auStack_4c;
  iVar3 = 6;
  uStack_18 = param_4;
  do {
    uVar1 = *puVar5;
    uVar2 = puVar5[1];
    puVar5 = puVar5 + 2;
    *puVar4 = uVar1;
    puVar4[1] = uVar2;
    puVar4 = puVar4 + 2;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  *puVar4 = *puVar5;
  puVar7 = &ov93_02262C7A;
  iStack_50 = 0;
  puVar4 = param_2;
  do {
    iVar3 = GF_SinDegFX32(param_2[0x39] + puVar4[3]);
    iVar3 = func_0x020f2948(iVar3,iVar3 >> 0x1f,0x4c,0);
    iVar6 = (iVar3 + 0x800U >> 0xc) + 0x80;
    iVar3 = GF_CosDegFX32(param_2[0x39] + puVar4[3]);
    iVar3 = func_0x020f2948(iVar3,iVar3 >> 0x1f,0x44,0);
    iVar3 = -(iVar3 + 0x800U >> 0xc);
    uVar1 = SpriteSystem_NewSprite
                      (*(undefined4 *)(param_1 + 0x24),*(undefined4 *)(param_1 + 0x28),auStack_4c);
    *puVar4 = uVar1;
    func_0x0200ddf4(uVar1,iVar6 * 0x10000 >> 0x10,(iVar3 + 0x4a) * 0x10000 >> 0x10,0x160000);
    ManagedSprite_SetAnim(*puVar4,*(undefined2 *)(puVar7 + 2));
    Sprite_TickFrame(*(undefined4 *)*puVar4);
    ManagedSprite_SetDrawFlag(*puVar4,0);
    uVar1 = SpriteSystem_NewSprite
                      (*(undefined4 *)(param_1 + 0x24),*(undefined4 *)(param_1 + 0x28),0x2262ed0);
    puVar4[1] = uVar1;
    func_0x0200ddf4(uVar1,0,0,0x160000);
    ManagedSprite_SetAnim(puVar4[1],0x21);
    Sprite_TickFrame(*(undefined4 *)puVar4[1]);
    ManagedSprite_SetDrawFlag(puVar4[1],0);
    uVar1 = SpriteSystem_NewSprite
                      (*(undefined4 *)(param_1 + 0x24),*(undefined4 *)(param_1 + 0x28),0x2262f04);
    puVar4[2] = uVar1;
    func_0x0200ddf4(uVar1,iVar6 * 0x10000 >> 0x10,(int)(short)((short)iVar3 + 0x62),0x160000);
    ManagedSprite_SetOamMode(puVar4[2],1);
    func_0x0200df98(puVar4[2],1);
    func_0x0200e024(puVar4[2],0x3f800000,0x3f800000);
    ManagedSprite_SetAnim(puVar4[2],iStack_50 + 0x22);
    Sprite_TickFrame(*(undefined4 *)puVar4[2]);
    ManagedSprite_SetDrawFlag(puVar4[2],0);
    ov93_02262444(param_1,puVar4 + 0xc);
    puVar4 = puVar4 + 0x13;
    iStack_50 = iStack_50 + 1;
    puVar7 = puVar7 + 2;
  } while (iStack_50 < 3);
  ManagedSprite_SetDrawFlag(*param_2,1);
  ManagedSprite_SetDrawFlag(param_2[2],1);
  return;
}

