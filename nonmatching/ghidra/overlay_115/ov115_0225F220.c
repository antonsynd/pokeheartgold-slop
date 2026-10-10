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
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 ov115_0225F158();
undefined4 func_0x021f0718() __asm__("sub_021F0718");
undefined4 func_0x021efcf8() __asm__("sub_021EFCF8");
undefined4 func_0x021f0614() __asm__("sub_021F0614");
undefined4 func_0x021f05c4() __asm__("sub_021F05C4");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 ov115_02260254();
undefined4 func_0x021f0b44() __asm__("sub_021F0B44");
undefined4 Sprite_SetDrawFlag();
undefined4 GfGfxLoader_GXLoadPalFromOpenNarc();
undefined4 String_Delete();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 FillWindowPixelBuffer();
undefined4 ov115_0225F020();
undefined4 ov115_0225F1BC();
undefined4 Heap_Alloc();
undefined4 AddWindowParameterized();
undefined4 func_0x021f0454() __asm__("sub_021F0454");
undefined4 func_0x021efe34() __asm__("sub_021EFE34");
undefined4 func_0x021efe30() __asm__("sub_021EFE30");
undefined4 func_0x021efec8() __asm__("sub_021EFEC8");
undefined4 func_0x021f0b78() __asm__("sub_021F0B78");
undefined4 Sprite_SetPriority();
undefined4 BeginNormalPaletteFade();
undefined4 ScheduleSetBgPosText();
undefined4 func_0x0200b4f0() __asm__("sub_0200B4F0");
undefined4 Sprite_SetMatrix();
undefined4 ov115_0225F0B4();
undefined4 func_0x0201bb68() __asm__("sub_0201BB68");
undefined4 func_0x021efe44() __asm__("sub_021EFE44");
undefined4 func_0x021f074c() __asm__("sub_021F074C");
undefined4 func_0x021f0b5c() __asm__("sub_021F0B5C");
undefined4 func_0x021f0dc8() __asm__("sub_021F0DC8");
undefined4 func_0x021eff28() __asm__("sub_021EFF28");
undefined4 IsPaletteFadeFinished();
undefined4 func_0x0201bc8c() __asm__("sub_0201BC8C");
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 func_0x021f05f4() __asm__("sub_021F05F4");
undefined4 ov115_0225F09C();
undefined4 sub_0200FBF4();
undefined4 RemoveWindow();
undefined4 func_0x021f06ec() __asm__("sub_021F06EC");
undefined4 Sprite_Delete();
extern uint uRam04000000 __asm__("sub_04000000");

undefined4 ov115_0225F220(int *param_1,undefined4 param_2,undefined4 *param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;
  undefined4 uStack_2c;
  undefined1 auStack_24 [12];
  undefined4 uStack_18;

  piVar2 = (int *)param_1[3];
  uStack_18 = param_4;
  switch(*param_1) {
  case 0:
    iVar1 = Heap_Alloc(param_2,0x298);
    param_1[3] = iVar1;
    func_0x020e5b44(iVar1,0,0x298);
    piVar2 = (int *)param_1[3];
    GfGfxLoader_GXLoadPalFromOpenNarc(param_1[8],0x10,0,0x40,0x20,param_2);
    GfGfx_EngineATogglePlanes(4,0);
    AddWindowParameterized(*(undefined4 *)(param_1[4] + 8),piVar2 + 0x9f,2,0,10,0x10,2,2,1);
    FillWindowPixelBuffer(piVar2 + 0x9f,0);
    if (*(short *)(param_3 + 2) == 0x17) {
      uStack_2c = ov115_0225F1BC(*(undefined4 *)(param_1[4] + 0xc),param_2);
    }
    else {
      uStack_2c = ov115_0225F158(param_3[1],param_2);
    }
    AddTextPrinterParameterizedWithColor(piVar2 + 0x9f,0,uStack_2c,0,0,0,0x10200,0);
    String_Delete(uStack_2c);
    func_0x021f05c4(piVar2 + 0x11,8,3);
    func_0x021f0614(param_1[8],piVar2 + 0x11,piVar2 + 0x60,*(undefined1 *)(param_3 + 3),1,
                    *(undefined1 *)((int)param_3 + 0xd),*(undefined1 *)((int)param_3 + 0xe),
                    *(undefined1 *)((int)param_3 + 0xf),600000);
    func_0x021f0614(param_1[8],piVar2 + 0x11,piVar2 + 0x6d,0x3b,1,0x3c,0x3d,0x3e,0x927c1);
    iVar1 = func_0x021f0718(piVar2 + 0x11,piVar2 + 0x60,0x110000,0x42000,0,0);
    piVar2[0x7a] = iVar1;
    Sprite_SetDrawFlag(piVar2[0x7a],0);
    ov115_0225F020(piVar2 + 0x7b,piVar2 + 0x11,piVar2 + 0x6d,0x48000,0x4a000,param_2);
    ov115_02260254(piVar2[0x7a],param_2,*(undefined1 *)(param_3 + 3),0xe,0);
    iVar1 = func_0x021f0b44();
    piVar2[0x10] = iVar1;
    *param_1 = *param_1 + 1;
    break;
  case 1:
    func_0x021efcf8(1,0x10,0x10,param_1 + 1,1);
    *param_1 = *param_1 + 1;
    break;
  case 2:
    if (param_1[1] != 0) {
      *param_1 = *param_1 + 1;
    }
    break;
  case 3:
    func_0x021f0454(param_1[8],*(undefined1 *)((int)param_3 + 0x12),
                    *(undefined1 *)((int)param_3 + 0x11),*(undefined1 *)(param_3 + 4),0,1,
                    *(undefined4 *)(param_1[4] + 8),3);
    piVar2[0xa3] = 1;
    func_0x021f0b78(param_1,piVar2[0x10],6,8,0x10,0x1f,0x17);
    func_0x0201bb68(2,0);
    func_0x0201bb68(3,1);
    func_0x0201bb68(0,2);
    GfGfx_EngineATogglePlanes(8,1);
    GfGfx_EngineATogglePlanes(2,0);
    *param_1 = *param_1 + 1;
    break;
  case 4:
    iVar1 = func_0x021efe30();
    if (iVar1 != 0) {
      *param_1 = *param_1 + 1;
      func_0x021f0b5c(piVar2[0x10]);
      piVar2[0xa5] = 10;
    }
    break;
  case 5:
    piVar2[0xa5] = piVar2[0xa5] + -1;
    if (piVar2[0xa5] < 0) {
      GfGfx_EngineATogglePlanes(0x10,1);
      iVar1 = ov115_0225F0B4(piVar2 + 0x7b);
      if (iVar1 == 1) {
        *param_1 = *param_1 + 1;
      }
    }
    break;
  case 6:
    func_0x021efec8(piVar2,0x110000,*param_3,0xfffc0000,4);
    Sprite_SetDrawFlag(piVar2[0x7a],1);
    Sprite_SetPriority(piVar2[0x7a],1);
    func_0x021f074c(auStack_24,*piVar2,0x42000,0);
    Sprite_SetMatrix(piVar2[0x7a],auStack_24);
    *param_1 = *param_1 + 1;
    break;
  case 7:
    iVar1 = func_0x021eff28(piVar2);
    func_0x021f074c(auStack_24,*piVar2,0x42000,0);
    Sprite_SetMatrix(piVar2[0x7a],auStack_24);
    if (iVar1 == 1) {
      *param_1 = *param_1 + 1;
    }
    break;
  case 8:
    func_0x021efe34(piVar2 + 6,0,0x10,3);
    piVar2[0xa5] = 10;
    *param_1 = *param_1 + 1;
    break;
  case 9:
    piVar2[0xa5] = piVar2[0xa5] + -1;
    if (piVar2[0xa5] < 0) {
      iVar1 = func_0x021efe44(piVar2 + 6);
      func_0x021f0dc8(piVar2 + 6);
      if (iVar1 == 1) {
        ov115_02260254(piVar2[0x7a],param_2,*(undefined1 *)(param_3 + 3),0,0);
        func_0x0200b4f0(0xfffffff2,0x21,1);
        ScheduleSetBgPosText(*(undefined4 *)(param_1[4] + 8),2,0,-((*piVar2 >> 0xc) + -0x5c));
        GfGfx_EngineATogglePlanes(4,1);
        *param_1 = *param_1 + 1;
      }
    }
    break;
  case 10:
    func_0x021efe34(piVar2 + 6,0x10,0,3);
    *param_1 = *param_1 + 1;
    break;
  case 0xb:
    iVar1 = func_0x021efe44(piVar2 + 6);
    func_0x021f0dc8(piVar2 + 6);
    if (iVar1 == 1) {
      *param_1 = *param_1 + 1;
      piVar2[0xa5] = 0x1a;
    }
    break;
  case 0xc:
    piVar2[0xa5] = piVar2[0xa5] + -1;
    if (piVar2[0xa5] < 0) {
      *param_1 = *param_1 + 1;
    }
    break;
  case 0xd:
    BeginNormalPaletteFade(3,0,0,0x7fff,0xf,1,4);
    *param_1 = *param_1 + 1;
    break;
  case 0xe:
    iVar1 = IsPaletteFadeFinished();
    if (iVar1 != 0) {
      *param_1 = *param_1 + 1;
    }
    break;
  case 0xf:
    sub_0200FBF4(1,0x7fff);
    if ((undefined4 *)param_1[5] != (undefined4 *)0x0) {
      *(undefined4 *)param_1[5] = 1;
    }
    Sprite_Delete(piVar2[0x7a]);
    ov115_0225F09C(piVar2 + 0x7b);
    func_0x021f06ec(piVar2 + 0x11,piVar2 + 0x60);
    func_0x021f06ec(piVar2 + 0x11,piVar2 + 0x6d);
    func_0x021f05f4(piVar2 + 0x11);
    RemoveWindow(piVar2 + 0x9f);
    uRam04000000 = uRam04000000 & 0xffff1fff;
    func_0x0200b4f0(0,0,1);
    func_0x0201bc8c(*(undefined4 *)(param_1[4] + 8),2,0,0);
    return 1;
  }
  if (piVar2[0xa3] == 1) {
    ScheduleSetBgPosText(*(undefined4 *)(param_1[4] + 8),3,0,piVar2[0xa4]);
    iVar1 = piVar2[0xa4] + 0x1e >> 0x1f;
    piVar2[0xa4] = ((uint)((piVar2[0xa4] + 0x1e) * 0x800000 + iVar1) >> 0x17 | iVar1 << 9) - iVar1;
  }
  if (*param_1 != 0xf) {
    SpriteList_RenderAndAnimateSprites(piVar2[0x11]);
  }
  return 0;
}

