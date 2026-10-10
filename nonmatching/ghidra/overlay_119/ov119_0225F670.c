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
undefined4 func_0x021f12b4() __asm__("sub_021F12B4");
undefined4 func_0x0202487c() __asm__("sub_0202487C");
undefined4 func_0x021f0614() __asm__("sub_021F0614");
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 func_0x020cf15c() __asm__("sub_020CF15C");
undefined4 func_0x021f0718() __asm__("sub_021F0718");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 func_0x021efcf8() __asm__("sub_021EFCF8");
undefined4 Sprite_SetOamMode();
undefined4 func_0x021efe44() __asm__("sub_021EFE44");
undefined4 Sprite_SetDrawFlag();
undefined4 Sprite_SetDrawPriority();
undefined4 func_0x021f05c4() __asm__("sub_021F05C4");
undefined4 func_0x02024818() __asm__("sub_02024818");
undefined4 func_0x021efe34() __asm__("sub_021EFE34");
undefined4 Heap_Alloc();
undefined4 func_0x021f12e8() __asm__("sub_021F12E8");
extern ushort uRam04000052 __asm__("sub_04000052");
undefined4 func_0x021efec8() __asm__("sub_021EFEC8");
undefined4 BeginNormalPaletteFade();
undefined4 func_0x021eff28() __asm__("sub_021EFF28");
undefined4 sub_0200FBF4();
undefined4 func_0x020247f4() __asm__("sub_020247F4");
undefined4 func_0x021efcdc() __asm__("sub_021EFCDC");
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 func_0x021f12d0() __asm__("sub_021F12D0");
undefined4 func_0x021f05f4() __asm__("sub_021F05F4");
undefined4 func_0x020235d4() __asm__("sub_020235D4");
undefined4 func_0x021f06ec() __asm__("sub_021F06EC");
undefined4 func_0x021f074c() __asm__("sub_021F074C");
undefined4 func_0x021f1310() __asm__("sub_021F1310");
undefined4 IsPaletteFadeFinished();
undefined4 func_0x02023614() __asm__("sub_02023614");
undefined4 Sprite_Delete();
extern undefined2 uRam04000050 __asm__("sub_04000050");

void ov119_0225F670(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
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

  puVar3 = (undefined4 *)param_2[3];
  uStack_18 = param_4;
  switch(*param_2) {
  case 0:
    iVar6 = Heap_Alloc(4,0x1e8);
    param_2[3] = iVar6;
    func_0x020e5b44(iVar6,0,0x1e8);
    puVar3 = (undefined4 *)param_2[3];
    puVar3[0x72] = *(undefined4 *)(param_2[4] + 0x24);
    func_0x021f12b4(puVar3 + 0x10,4);
    puVar3[0x79] = 0xc;
    func_0x021f05c4(puVar3 + 0x14,2,1);
    func_0x021f0614(param_2[8],puVar3 + 0x14,puVar3 + 99,0,1,7,9,8,600000);
    iVar6 = 0;
    puVar4 = puVar3;
    do {
      uVar2 = func_0x021f0718(puVar3 + 0x14,puVar3 + 99,0x80000,0x60000,0,0);
      puVar4[0x70] = uVar2;
      Sprite_SetDrawFlag(puVar4[0x70],0);
      Sprite_SetDrawPriority(puVar4[0x70],iVar6);
      iVar6 = iVar6 + 1;
      puVar4 = puVar4 + 1;
    } while (iVar6 < 2);
    GfGfx_EngineATogglePlanes(0x10,1);
    *param_2 = *param_2 + 1;
    break;
  case 1:
    func_0x021efcf8(1,0xfffffff0,0xfffffff0,param_2 + 1,2);
    *param_2 = *param_2 + 1;
    break;
  case 2:
    puVar3[0x79] = puVar3[0x79] + -1;
    if (puVar3[0x79] == 0) {
      func_0x021f12e8(puVar3 + 0x10,0,0xbf,0x2aa,0xc000,800,0x4000010,0,4);
      puVar3[0x13] = 1;
    }
    if (param_2[1] != 0) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 3:
    func_0x021efe34(puVar3 + 6,0,0x10,8);
    func_0x020cf15c(0x4000050,0,0xf,puVar3[6],0x10 - puVar3[6]);
    iVar6 = 0;
    puVar4 = puVar3;
    do {
      Sprite_SetDrawFlag(puVar4[0x70],1);
      func_0x0202487c(puVar4[0x70],2);
      Sprite_SetOamMode(puVar4[0x70],1);
      iVar6 = iVar6 + 1;
      puVar4 = puVar4 + 1;
    } while (iVar6 < 2);
    func_0x021efe34(puVar3 + 0xb,0,0xffff,8);
    *param_2 = *param_2 + 1;
    break;
  case 4:
    iVar6 = func_0x021efe44(puVar3 + 6);
    uRam04000052 = (ushort)puVar3[6] | (0x10 - (ushort)puVar3[6]) * 0x100;
    uVar1 = puVar3[0xb];
    iVar5 = func_0x021efe44(puVar3 + 0xb);
    if (iVar5 == 0) {
      func_0x02024818(puVar3[0x70],puVar3[0xb] & 0xffff);
      func_0x02024818(puVar3[0x71],uVar1 & 0xffff);
    }
    else {
      func_0x02024818(puVar3[0x70],0);
      func_0x02024818(puVar3[0x71],0);
    }
    if (iVar6 == 1) {
      iVar6 = 0;
      uRam04000050 = 0;
      puVar4 = puVar3;
      do {
        Sprite_SetOamMode(puVar4[0x70],0);
        iVar6 = iVar6 + 1;
        puVar4 = puVar4 + 1;
      } while (iVar6 < 2);
      *param_2 = *param_2 + 1;
    }
    break;
  case 5:
    func_0x021efec8(puVar3,0x1000,0x29,0x19a,8);
    uVar2 = *puVar3;
    func_0x021f074c(&uStack_3c,uVar2,uVar2,uVar2);
    uStack_24 = uStack_3c;
    uStack_20 = uStack_38;
    iVar6 = 0;
    uStack_1c = uStack_34;
    puVar4 = puVar3;
    do {
      func_0x020247f4(puVar4[0x70],&uStack_24);
      iVar6 = iVar6 + 1;
      puVar4 = puVar4 + 1;
    } while (iVar6 < 2);
    iVar6 = func_0x02023614(puVar3[0x72]);
    func_0x021efec8(puVar3 + 0x73,iVar6,iVar6 + -0x1f4000,0xffff6000,8);
    BeginNormalPaletteFade(3,0x18,0,0,8,1,4);
    *param_2 = *param_2 + 1;
    break;
  case 6:
    iVar6 = func_0x021eff28(puVar3);
    uVar2 = *puVar3;
    func_0x021f074c(&uStack_48,uVar2,uVar2,uVar2);
    uStack_30 = uStack_48;
    uStack_2c = uStack_44;
    iVar5 = 0;
    uStack_28 = uStack_40;
    puVar4 = puVar3;
    do {
      func_0x020247f4(puVar4[0x70],&uStack_30);
      iVar5 = iVar5 + 1;
      puVar4 = puVar4 + 1;
    } while (iVar5 < 2);
    func_0x021eff28(puVar3 + 0x73);
    func_0x020235d4(puVar3[0x73],puVar3[0x72]);
    if ((iVar6 == 1) && (iVar6 = IsPaletteFadeFinished(), iVar6 == 1)) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 7:
    sub_0200FBF4(1,0);
    if ((undefined4 *)param_2[5] != (undefined4 *)0x0) {
      *(undefined4 *)param_2[5] = 1;
    }
    func_0x021f12d0(puVar3 + 0x10);
    iVar6 = 0;
    puVar3[0x13] = 0;
    puVar4 = puVar3;
    do {
      Sprite_Delete(puVar4[0x70]);
      iVar6 = iVar6 + 1;
      puVar4 = puVar4 + 1;
    } while (iVar6 < 2);
    func_0x021f06ec(puVar3 + 0x14,puVar3 + 99);
    func_0x021f05f4(puVar3 + 0x14);
    func_0x021efcdc(param_2,param_1);
    return;
  }
  if (puVar3[0x13] == 1) {
    func_0x021f1310(puVar3 + 0x10,2);
  }
  if (*param_2 != 7) {
    SpriteList_RenderAndAnimateSprites(puVar3[0x14]);
  }
  return;
}

