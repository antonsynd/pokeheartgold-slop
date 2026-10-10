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
undefined4 func_0x0200dd10() __asm__("sub_0200DD10");
undefined4 ov96_02219DD0();
undefined4 ov96_022199A8();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ManagedSprite_SetAnimateFlag();
undefined4 ov96_02219DA8();
undefined4 SpriteSystem_NewSpriteWithYOffset();
undefined4 ov96_02219E60();

void ov96_02219C30(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  short sVar4;
  uint uVar5;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  int iStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  int iStack_38;
  int iStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_4c = 0;
  uStack_48 = 0;
  iStack_44 = 0;
  uStack_40 = 0;
  uStack_3c = 0;
  iStack_38 = 0;
  iStack_34 = 0;
  uStack_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  uStack_24 = 0;
  uStack_20 = 0;
  uStack_1c = 0;
  uStack_18 = param_4;
  uVar1 = ov96_022199A8(param_1[2],param_1[3],0x86,0xa0,*(byte *)((int)param_1 + 0x22) + 0xc,6);
  param_1[0x18] = uVar1;
  func_0x0200dd10(uVar1,1);
  uVar5 = 0;
  sVar4 = 0x78;
  puVar3 = param_1;
  do {
    uVar1 = ov96_022199A8(param_1[2],param_1[3],(int)sVar4,0x24,uVar5 + 1 & 0xffff,5);
    puVar3[0x1a] = uVar1;
    ov96_02219DD0(param_1,uVar5 & 0xff,0);
    uVar1 = ov96_022199A8(param_1[2],param_1[3],(int)sVar4,0x24,10,4);
    puVar3[0x1e] = uVar1;
    ManagedSprite_SetDrawFlag(uVar1,0);
    uVar1 = ov96_022199A8(param_1[2],param_1[3],(int)sVar4,0x18,6,0);
    puVar3[0x22] = uVar1;
    ManagedSprite_SetDrawFlag(puVar3[0x22],0);
    uVar5 = uVar5 + 1;
    sVar4 = sVar4 + 0x20;
    puVar3 = puVar3 + 1;
  } while ((int)uVar5 < 4);
  iVar2 = 0;
  sVar4 = 0x30;
  puVar3 = param_1;
  do {
    iStack_38 = iVar2 + 0x2712;
    uStack_30 = 0x2712;
    uStack_2c = 0x2712;
    uStack_3c = 2;
    uStack_4c = CONCAT22(sVar4,0x28);
    iStack_44 = iVar2 + 2;
    uStack_20 = 2;
    iStack_34 = iStack_38;
    uVar1 = SpriteSystem_NewSpriteWithYOffset(param_1[2],param_1[3],&uStack_4c,0x1e0000);
    puVar3[0x26] = uVar1;
    ManagedSprite_SetAnimateFlag(puVar3[0x26],1);
    iVar2 = iVar2 + 1;
    sVar4 = sVar4 + 0x58;
    puVar3 = puVar3 + 1;
  } while (iVar2 < 2);
  iVar2 = 0;
  sVar4 = 0x18;
  puVar3 = param_1;
  do {
    ov96_02219DA8(*param_1,param_1[1],puVar3[0x26],*(undefined1 *)((int)param_1 + 0x22),
                  2U - iVar2 & 0xff);
    uVar1 = ov96_022199A8(param_1[2],param_1[3],0x28,(int)sVar4,5,1);
    puVar3[0x28] = uVar1;
    ManagedSprite_SetDrawFlag(puVar3[0x28],0);
    iVar2 = iVar2 + 1;
    puVar3 = puVar3 + 1;
    sVar4 = sVar4 + 0x58;
  } while (iVar2 < 2);
  ov96_02219E60(param_1);
  return;
}

