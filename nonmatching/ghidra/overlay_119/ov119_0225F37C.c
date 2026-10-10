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
undefined4 func_0x0202487c() __asm__("sub_0202487C");
undefined4 func_0x021f0614() __asm__("sub_021F0614");
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 func_0x021efe70() __asm__("sub_021EFE70");
undefined4 func_0x021f0718() __asm__("sub_021F0718");
undefined4 func_0x021f02c4() __asm__("sub_021F02C4");
undefined4 func_0x021f0250() __asm__("sub_021F0250");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 func_0x021efcf8() __asm__("sub_021EFCF8");
undefined4 func_0x021efe80() __asm__("sub_021EFE80");
undefined4 func_0x021efe44() __asm__("sub_021EFE44");
undefined4 Sprite_SetDrawFlag();
undefined4 func_0x021f05c4() __asm__("sub_021F05C4");
undefined4 func_0x02024818() __asm__("sub_02024818");
undefined4 func_0x021f074c() __asm__("sub_021F074C");
undefined4 func_0x021efe34() __asm__("sub_021EFE34");
undefined4 Sprite_SetMatrix();
undefined4 Heap_Alloc();
undefined4 func_0x021efec8() __asm__("sub_021EFEC8");
undefined4 func_0x020235d4() __asm__("sub_020235D4");
undefined4 func_0x021eff28() __asm__("sub_021EFF28");
undefined4 func_0x021f06ec() __asm__("sub_021F06EC");
undefined4 func_0x021f029c() __asm__("sub_021F029C");
undefined4 func_0x021efcdc() __asm__("sub_021EFCDC");
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 sub_0200FC20();
undefined4 func_0x02023614() __asm__("sub_02023614");
undefined4 Sprite_Delete();
undefined4 func_0x021efe30() __asm__("sub_021EFE30");
undefined4 func_0x021f05f4() __asm__("sub_021F05F4");

void ov119_0225F37C(undefined4 param_1,int *param_2)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
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

  piVar2 = (int *)param_2[3];
  switch(*param_2) {
  case 0:
    iVar4 = Heap_Alloc(4,0x1c4);
    param_2[3] = iVar4;
    func_0x020e5b44(iVar4,0,0x1c4);
    piVar2 = (int *)param_2[3];
    piVar2[0x69] = *(int *)(param_2[4] + 0x24);
    iVar4 = func_0x021f0250();
    piVar2[10] = iVar4;
    func_0x021f05c4(piVar2 + 0xb,2,1);
    func_0x021f0614(param_2[8],piVar2 + 0xb,piVar2 + 0x5a,0,1,4,6,5,600000);
    iVar4 = 0;
    piVar3 = piVar2;
    do {
      iVar1 = func_0x021f0718(piVar2 + 0xb,piVar2 + 0x5a,0x80000,0,0,0);
      piVar3[0x67] = iVar1;
      Sprite_SetDrawFlag(piVar3[0x67],0);
      func_0x0202487c(piVar3[0x67],2);
      iVar4 = iVar4 + 1;
      piVar3 = piVar3 + 1;
    } while (iVar4 < 2);
    GfGfx_EngineATogglePlanes(0x10,1);
    *param_2 = *param_2 + 1;
    break;
  case 1:
    func_0x021efcf8(1,0x10,0xfffffff0,param_2 + 1,2);
    *param_2 = *param_2 + 1;
    break;
  case 2:
    if (param_2[1] != 0) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 3:
    func_0x021efe70(piVar2,0xfff40000,0xc0000,8);
    Sprite_SetDrawFlag(piVar2[0x67],1);
    Sprite_SetDrawFlag(piVar2[0x68],1);
    func_0x021f074c(&uStack_50,0x80000 - *piVar2,0x40000,0);
    uStack_20 = uStack_50;
    uStack_1c = uStack_4c;
    uStack_18 = uStack_48;
    func_0x021f074c(&uStack_5c,*piVar2 + 0x80000,0x80000,0);
    uStack_2c = uStack_5c;
    uStack_28 = uStack_58;
    uStack_24 = uStack_54;
    Sprite_SetMatrix(piVar2[0x67],&uStack_20);
    Sprite_SetMatrix(piVar2[0x68],&uStack_2c);
    func_0x021efe34(piVar2 + 5,0,0x1fffe,8);
    *param_2 = *param_2 + 1;
    break;
  case 4:
    iVar4 = func_0x021efe80(piVar2);
    func_0x021f074c(&uStack_68,0x80000 - *piVar2,0x40000,0);
    uStack_38 = uStack_68;
    uStack_34 = uStack_64;
    uStack_30 = uStack_60;
    func_0x021f074c(&uStack_74,*piVar2 + 0x80000,0x80000,0);
    uStack_44 = uStack_74;
    uStack_40 = uStack_70;
    uStack_3c = uStack_6c;
    Sprite_SetMatrix(piVar2[0x67],&uStack_38);
    Sprite_SetMatrix(piVar2[0x68],&uStack_44);
    func_0x021efe44(piVar2 + 5);
    func_0x02024818(piVar2[0x67],piVar2[5] & 0xffff);
    func_0x02024818(piVar2[0x68],-piVar2[5] & 0xffff);
    if (iVar4 == 1) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 5:
    func_0x021f02c4(param_2,piVar2[10],8,0x1000,0x1000);
    iVar4 = func_0x02023614(piVar2[0x69]);
    func_0x021efec8(piVar2 + 0x6a,iVar4,iVar4 + -0x1f4000,0xffff6000,8);
    *param_2 = *param_2 + 1;
    break;
  case 6:
    func_0x021eff28(piVar2 + 0x6a);
    func_0x020235d4(piVar2[0x6a],piVar2[0x69]);
    iVar4 = func_0x021efe30(param_2);
    if (iVar4 == 1) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 7:
    sub_0200FC20(0);
    if ((undefined4 *)param_2[5] != (undefined4 *)0x0) {
      *(undefined4 *)param_2[5] = 1;
    }
    iVar4 = 0;
    piVar3 = piVar2;
    do {
      Sprite_Delete(piVar3[0x67]);
      iVar4 = iVar4 + 1;
      piVar3 = piVar3 + 1;
    } while (iVar4 < 2);
    func_0x021f06ec(piVar2 + 0xb,piVar2 + 0x5a);
    func_0x021f05f4(piVar2 + 0xb);
    func_0x021f029c(piVar2[10]);
    func_0x021efcdc(param_2,param_1);
  }
  if (*param_2 != 7) {
    SpriteList_RenderAndAnimateSprites(piVar2[0xb]);
  }
  return;
}

