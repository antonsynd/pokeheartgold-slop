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
undefined4 AddWindowParameterized();
undefined4 func_0x0201bb68() __asm__("sub_0201BB68");
undefined4 func_0x021f0718() __asm__("sub_021F0718");
undefined4 Heap_Alloc();
undefined4 Sprite_SetDrawFlag();
undefined4 func_0x021f0454() __asm__("sub_021F0454");
undefined4 func_0x020cf15c() __asm__("sub_020CF15C");
undefined4 func_0x021f05c4() __asm__("sub_021F05C4");
undefined4 GfGfxLoader_GXLoadPalFromOpenNarc();
undefined4 String_Delete();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 ov117_0225F470();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 ToggleBgLayer();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 Sprite_SetPriority();
undefined4 Sprite_SetOamMode();
undefined4 func_0x021f0614() __asm__("sub_021F0614");
undefined4 FillWindowPixelBuffer();
undefined4 func_0x0201bc8c() __asm__("sub_0201BC8C");
undefined4 func_0x021eff28() __asm__("sub_021EFF28");
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 func_0x021efcf8() __asm__("sub_021EFCF8");
undefined4 func_0x021f12b4() __asm__("sub_021F12B4");
undefined4 ov117_0225F420();
undefined4 func_0x021efec8() __asm__("sub_021EFEC8");
extern ushort uRam0400004a __asm__("sub_0400004A");
extern undefined2 uRam04000040 __asm__("sub_04000040");
extern ushort uRam04000048 __asm__("sub_04000048");
extern ushort uRam04000044 __asm__("sub_04000044");
extern uint uRam04000000 __asm__("sub_04000000");
undefined4 IsPaletteFadeFinished();
undefined4 func_0x021efcdc() __asm__("sub_021EFCDC");
undefined4 func_0x0200b5c0() __asm__("sub_0200B5C0");
undefined4 RemoveWindow();
undefined4 ScheduleSetBgPosText();
undefined4 func_0x0201c2d8() __asm__("sub_0201C2D8");
undefined4 func_0x021f12d0() __asm__("sub_021F12D0");
undefined4 BeginNormalPaletteFade();
undefined4 Sprite_Delete();
undefined4 func_0x021f05f4() __asm__("sub_021F05F4");
undefined4 func_0x0200b484() __asm__("sub_0200B484");
undefined4 BgClearTilemapBufferAndCommit();
undefined4 func_0x021f06ec() __asm__("sub_021F06EC");
undefined4 Sprite_SetMatrix();
undefined4 BG_ClearCharDataRange();
undefined4 func_0x021f1310() __asm__("sub_021F1310");
extern uint uRam04001000 __asm__("sub_04001000");
undefined4 SpriteList_RenderAndAnimateSprites();

void ov117_0225F524(undefined4 param_1,int *param_2,undefined1 *param_3)

{
  short sVar1;
  bool bVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;

  puVar5 = (undefined4 *)param_2[3];
  switch(*param_2) {
  case 0:
    iVar4 = Heap_Alloc(4,0x1bc);
    param_2[3] = iVar4;
    func_0x020e5b44(iVar4,0,0x1bc);
    puVar5 = (undefined4 *)param_2[3];
    func_0x021f05c4(puVar5 + 1,1,1);
    func_0x021f0614(param_2[8],puVar5 + 1,puVar5 + 0x50,*param_3,1,param_3[1],param_3[2],param_3[3],
                    600000);
    uVar3 = func_0x021f0718(puVar5 + 1,puVar5 + 0x50,0x140000,0x80000,0,0);
    *puVar5 = uVar3;
    Sprite_SetDrawFlag(uVar3,0);
    Sprite_SetOamMode(*puVar5,1);
    Sprite_SetPriority(*puVar5,0);
    GfGfx_EngineATogglePlanes(0x10,1);
    puVar5[0x6a] = 0x140000;
    puVar5[0x6b] = 0x80000;
    puVar5[0x6c] = 0;
    func_0x020cf15c(0x4000050,2,0x3d,0xc,4);
    func_0x0201bb68(2,0);
    func_0x0201bb68(3,1);
    func_0x0201bb68(1,2);
    func_0x0201bb68(0,3);
    ToggleBgLayer(1,0);
    ToggleBgLayer(2,0);
    ToggleBgLayer(3,0);
    func_0x021f0454(param_2[8],0xd9,0xd8,0xd7,0,2,*(undefined4 *)(param_2[4] + 8),1);
    GfGfxLoader_GXLoadPalFromOpenNarc(param_2[8],0x10,0,0x40,0x20,4);
    AddWindowParameterized(*(undefined4 *)(param_2[4] + 8),puVar5 + 0x66,2,0,0x14,0x10,2,2,1);
    FillWindowPixelBuffer(puVar5 + 0x66,0);
    uVar3 = ov117_0225F470(*(undefined4 *)(param_3 + 4),4);
    AddTextPrinterParameterizedWithColor(puVar5 + 0x66,0,uVar3,0,0,0,0x10200,0);
    String_Delete(uVar3);
    func_0x021f0454(param_2[8],0xda,0xd8,0xd7,0,2,*(undefined4 *)(param_2[4] + 8),3);
    uRam04000048 = uRam04000048 & 0xffc0 | 0x28;
    uRam0400004a = uRam0400004a & 0xffc0 | 0x37;
    uRam04000040 = 0xff;
    uRam04000044 = 0x6060;
    func_0x021f12b4(puVar5 + 99,4);
    func_0x021efcf8(1,0x10,0xfffffff0,param_2 + 1,1);
    *param_2 = *param_2 + 1;
    break;
  case 1:
    ToggleBgLayer(1,1);
    puVar5[0x6d] = 0xc;
    *param_2 = *param_2 + 1;
  case 2:
    func_0x0201bc8c(*(undefined4 *)(param_2[4] + 8),1,1,0x18);
    puVar5[0x6d] = puVar5[0x6d] + -1;
    if ((int)puVar5[0x6d] < 1) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 3:
    uRam04000000 = uRam04000000 & 0xffff1fff | 0x2000;
    ToggleBgLayer(3,1);
    func_0x021efec8(puVar5 + 0x5d,0,0x60000,0x4000,4);
    *param_2 = *param_2 + 1;
  case 4:
    func_0x0201bc8c(*(undefined4 *)(param_2[4] + 8),1,1,0x18);
    iVar4 = func_0x021eff28(puVar5 + 0x5d);
    if (iVar4 == 0) {
      sVar1 = (short)((int)puVar5[0x5d] >> 0xc);
      uRam04000040 = 0xff;
      uRam04000044 = sVar1 + 0x60U & 0xff | (0x60 - sVar1) * 0x100;
    }
    else {
      uRam04000000 = uRam04000000 & 0xffff1fff;
      func_0x0201bc8c(*(undefined4 *)(param_2[4] + 8),1,0,0);
      puVar5[0x6d] = 0xd;
      *param_2 = *param_2 + 1;
    }
    break;
  case 5:
    puVar5[0x6d] = puVar5[0x6d] + -1;
    if ((int)puVar5[0x6d] < 1) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 6:
    ov117_0225F420(param_2,1,0xdd);
    func_0x0201bb68(1,1);
    func_0x0201bb68(3,2);
    func_0x020cf15c(0x4000050,2,0x3d,0,0x10);
    Sprite_SetDrawFlag(*puVar5,1);
    puVar5[0x6d] = 0;
    *param_2 = *param_2 + 1;
  case 7:
    bVar2 = false;
    if ((int)puVar5[0x6d] < 0x11) {
      puVar5[0x6d] = puVar5[0x6d] + 4;
      iVar4 = puVar5[0x6d];
      if (0x10 < iVar4) {
        puVar5[0x6d] = 0x10;
      }
      bVar2 = 0x10 < iVar4;
      func_0x020cf15c(0x4000050,2,0x3d,puVar5[0x6d],0x10 - puVar5[0x6d]);
    }
    iVar4 = func_0x020f2998((0x80000 - puVar5[0x6a]) * 2,3);
    puVar5[0x6a] = puVar5[0x6a] + iVar4;
    if (((int)puVar5[0x6a] >> 0xc < 0x83) && (puVar5[0x6a] = 0x80000, bVar2)) {
      func_0x0200b484(8,0,0x10,0x1e,1);
      func_0x0201c2d8(0,0x14a5);
      ToggleBgLayer(0,0);
      *param_2 = *param_2 + 1;
    }
    if (4 < (int)puVar5[0x6d]) {
      ToggleBgLayer(2,1);
    }
    ScheduleSetBgPosText(*(undefined4 *)(param_2[4] + 8),2,0,-(((int)puVar5[0x6a] >> 0xc) + 8));
    Sprite_SetMatrix(*puVar5,puVar5 + 0x6a);
    break;
  case 8:
    iVar4 = func_0x0200b5c0(1);
    if (iVar4 != 0) {
      puVar5[0x6d] = 0x10;
      *param_2 = *param_2 + 1;
    }
    break;
  case 9:
    puVar5[0x6d] = puVar5[0x6d] + -1;
    if ((int)puVar5[0x6d] < 1) {
      func_0x021efec8(puVar5 + 0x5d,puVar5[0x6a],0xfffa0000,0x2000,8);
      puVar5[0x6d] = 8;
      ToggleBgLayer(3,0);
      *param_2 = *param_2 + 1;
    }
    break;
  case 10:
    puVar5[0x6a] = puVar5[0x5d];
    if (-(((int)puVar5[0x6a] >> 0xc) + 8) < 0) {
      ScheduleSetBgPosText(*(undefined4 *)(param_2[4] + 8),2,0);
    }
    else {
      ToggleBgLayer(2,0);
    }
    Sprite_SetMatrix(*puVar5,puVar5 + 0x6a);
    iVar4 = func_0x021eff28(puVar5 + 0x5d);
    if (iVar4 != 0) {
      uRam04001000 = uRam04001000 & 0xfffeffff;
      func_0x0201c2d8(4,0);
      BeginNormalPaletteFade(0,0,0,0x7fff,4,1,4);
      *param_2 = *param_2 + 1;
    }
    break;
  case 0xb:
    iVar4 = IsPaletteFadeFinished();
    if (iVar4 != 0) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 0xc:
    if ((undefined4 *)param_2[5] != (undefined4 *)0x0) {
      *(undefined4 *)param_2[5] = 1;
    }
    func_0x021f12d0(puVar5 + 99);
    puVar5[0x6e] = 0;
    Sprite_Delete(*puVar5);
    func_0x021f06ec(puVar5 + 1,puVar5 + 0x50);
    func_0x021f05f4(puVar5 + 1);
    RemoveWindow(puVar5 + 0x66);
    BG_ClearCharDataRange(3,0x20,0,4);
    BG_ClearCharDataRange(1,0x20,0,4);
    BgClearTilemapBufferAndCommit(*(undefined4 *)(param_2[4] + 8),3);
    BgClearTilemapBufferAndCommit(*(undefined4 *)(param_2[4] + 8),1);
    func_0x021efcdc(param_2,param_1);
  }
  if (puVar5[0x6e] == 1) {
    func_0x021f1310(puVar5 + 99,2);
  }
  if (*param_2 != 0xc) {
    SpriteList_RenderAndAnimateSprites(puVar5[1]);
  }
  return;
}

