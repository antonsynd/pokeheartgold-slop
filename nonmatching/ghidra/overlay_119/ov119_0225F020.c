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
undefined4 func_0x021efec8() __asm__("sub_021EFEC8");
undefined4 func_0x0202487c() __asm__("sub_0202487C");
undefined4 func_0x021f0614() __asm__("sub_021F0614");
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 func_0x021eff28() __asm__("sub_021EFF28");
undefined4 func_0x021f0718() __asm__("sub_021F0718");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 func_0x021efcf8() __asm__("sub_021EFCF8");
undefined4 func_0x020247f4() __asm__("sub_020247F4");
undefined4 func_0x021efe44() __asm__("sub_021EFE44");
undefined4 Sprite_SetDrawFlag();
undefined4 Sprite_SetDrawPriority();
undefined4 func_0x021f05c4() __asm__("sub_021F05C4");
undefined4 func_0x021f074c() __asm__("sub_021F074C");
undefined4 func_0x021effec() __asm__("sub_021EFFEC");
undefined4 func_0x021efe34() __asm__("sub_021EFE34");
undefined4 Heap_Alloc();
undefined4 func_0x021f0050() __asm__("sub_021F0050");
undefined4 func_0x020235d4() __asm__("sub_020235D4");
undefined4 func_0x021f06ec() __asm__("sub_021F06EC");
undefined4 func_0x02024818() __asm__("sub_02024818");
undefined4 Sprite_SetMatrix();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 func_0x021f0028() __asm__("sub_021F0028");
undefined4 func_0x021efcdc() __asm__("sub_021EFCDC");
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 sub_0200FC20();
undefined4 func_0x02023614() __asm__("sub_02023614");
undefined4 Sprite_Delete();
undefined4 func_0x021efe30() __asm__("sub_021EFE30");
undefined4 func_0x021f05f4() __asm__("sub_021F05F4");

void ov119_0225F020(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  int iVar4;
  int iVar5;
  int iStack_60;
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
  undefined1 auStack_24 [12];
  undefined4 uStack_18;
  
  puVar2 = (undefined4 *)param_2[3];
  uStack_18 = param_4;
  switch(*param_2) {
  case 0:
    iVar5 = Heap_Alloc(4,0x1e0);
    param_2[3] = iVar5;
    func_0x020e5b44(iVar5,0,0x1e0);
    puVar2 = (undefined4 *)param_2[3];
    puVar2[0x70] = *(undefined4 *)(param_2[4] + 0x24);
    uVar1 = func_0x021effec();
    puVar2[0x11] = uVar1;
    func_0x021f05c4(puVar2 + 0x12,2,1);
    func_0x021f0614(param_2[8],puVar2 + 0x12,puVar2 + 0x61,0,1,7,9,8,600000);
    iStack_60 = 0;
    iVar5 = 0;
    puVar3 = puVar2;
    do {
      uVar1 = func_0x021f0718(puVar2 + 0x12,puVar2 + 0x61,0x80000,0x60000,0,0);
      puVar3[0x6e] = uVar1;
      Sprite_SetDrawFlag(puVar3[0x6e],0);
      Sprite_SetDrawPriority(puVar3[0x6e],iVar5);
      puVar3 = puVar3 + 1;
      iStack_60 = iStack_60 + 1;
      iVar5 = iVar5 + 2;
    } while (iStack_60 < 2);
    GfGfx_EngineATogglePlanes(0x10,1);
    *param_2 = *param_2 + 1;
    break;
  case 1:
    func_0x021efcf8(1,0xfffffff0,0xfffffff0,param_2 + 1,2);
    *param_2 = *param_2 + 1;
    break;
  case 2:
    if (param_2[1] != 0) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 3:
    func_0x021efec8(puVar2,0x29,0x1000,2,10);
    uVar1 = *puVar2;
    func_0x021f074c(auStack_24,uVar1,uVar1,uVar1);
    iVar5 = 0;
    puVar3 = puVar2;
    do {
      Sprite_SetDrawFlag(puVar3[0x6e],1);
      func_0x0202487c(puVar3[0x6e],2);
      func_0x020247f4(puVar3[0x6e],auStack_24);
      iVar5 = iVar5 + 1;
      puVar3 = puVar3 + 1;
    } while (iVar5 < 2);
    func_0x021efe34(puVar2 + 6,0,0xffff,10);
    *param_2 = *param_2 + 1;
    break;
  case 4:
    iVar5 = func_0x021eff28(puVar2);
    uVar1 = *puVar2;
    func_0x021f074c(auStack_24,uVar1,uVar1,uVar1);
    func_0x021efe44(puVar2 + 6);
    iVar4 = 0;
    puVar3 = puVar2;
    do {
      func_0x020247f4(puVar3[0x6e],auStack_24);
      iVar4 = iVar4 + 1;
      puVar3 = puVar3 + 1;
    } while (iVar4 < 2);
    func_0x02024818(puVar2[0x6e],puVar2[6] & 0xffff);
    func_0x02024818(puVar2[0x6f],puVar2[6] - 0x100 & 0xffff);
    if (iVar5 == 1) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 5:
    func_0x021f0050(param_2,puVar2[0x11],0x60,6,0,0xff000,0xa000);
    Sprite_SetAnimCtrlSeq(puVar2[0x6e],1);
    Sprite_SetAnimCtrlSeq(puVar2[0x6f],2);
    func_0x021efec8(puVar2 + 0xb,0,0xff000,0xa000,6);
    iVar5 = func_0x02023614(puVar2[0x70]);
    func_0x021efec8(puVar2 + 0x71,iVar5,iVar5 + -0x1f4000,0xffff6000,6);
    func_0x02024818(puVar2[0x6e],0);
    func_0x02024818(puVar2[0x6f],0);
    *param_2 = *param_2 + 1;
    break;
  case 6:
    func_0x021eff28(puVar2 + 0xb);
    func_0x021f074c(&uStack_48,0x80000 - puVar2[0xb],0x60000,0);
    uStack_30 = uStack_48;
    uStack_2c = uStack_44;
    uStack_28 = uStack_40;
    func_0x021f074c(&uStack_54,puVar2[0xb] + 0x80000,0x60000,0);
    uStack_3c = uStack_54;
    uStack_38 = uStack_50;
    uStack_34 = uStack_4c;
    Sprite_SetMatrix(puVar2[0x6e],&uStack_30);
    Sprite_SetMatrix(puVar2[0x6f],&uStack_3c);
    func_0x021eff28(puVar2 + 0x71);
    func_0x020235d4(puVar2[0x71],puVar2[0x70]);
    iVar5 = func_0x021efe30(param_2);
    if (iVar5 != 0) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 7:
    sub_0200FC20(0);
    if ((undefined4 *)param_2[5] != (undefined4 *)0x0) {
      *(undefined4 *)param_2[5] = 1;
    }
    iVar5 = 0;
    puVar3 = puVar2;
    do {
      Sprite_Delete(puVar3[0x6e]);
      iVar5 = iVar5 + 1;
      puVar3 = puVar3 + 1;
    } while (iVar5 < 2);
    func_0x021f06ec(puVar2 + 0x12,puVar2 + 0x61);
    func_0x021f05f4(puVar2 + 0x12);
    func_0x021f0028(puVar2[0x11]);
    func_0x021efcdc(param_2,param_1);
  }
  if (*param_2 != 7) {
    SpriteList_RenderAndAnimateSprites(puVar2[0x12]);
  }
  return;
}

