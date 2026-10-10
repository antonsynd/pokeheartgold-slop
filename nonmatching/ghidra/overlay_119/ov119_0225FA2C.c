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
undefined4 func_0x021f12b4() __asm__("sub_021F12B4");
undefined4 func_0x0202487c() __asm__("sub_0202487C");
undefined4 func_0x021f0614() __asm__("sub_021F0614");
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 FillWindowPixelBuffer();
undefined4 func_0x021f0718() __asm__("sub_021F0718");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 func_0x021efcf8() __asm__("sub_021EFCF8");
undefined4 AllocWindows();
undefined4 Sprite_SetDrawFlag();
undefined4 BG_LoadPlttData();
undefined4 AddWindowParameterized();
undefined4 func_0x021f05c4() __asm__("sub_021F05C4");
undefined4 func_0x021f0768() __asm__("sub_021F0768");
undefined4 Heap_Alloc();
undefined4 ScheduleWindowCopyToVram();
undefined4 func_0x02023614() __asm__("sub_02023614");
undefined4 func_0x021f12e8() __asm__("sub_021F12E8");
undefined4 func_0x020235d4() __asm__("sub_020235D4");
undefined4 func_0x021eff28() __asm__("sub_021EFF28");
undefined4 func_0x021f06ec() __asm__("sub_021F06EC");
undefined4 func_0x021f074c() __asm__("sub_021F074C");
undefined4 func_0x021f0780() __asm__("sub_021F0780");
undefined4 func_0x021efe34() __asm__("sub_021EFE34");
undefined4 func_0x021f0788() __asm__("sub_021F0788");
undefined4 Sprite_SetMatrix();
undefined4 Sprite_Delete();
undefined4 func_0x021f12d0() __asm__("sub_021F12D0");
undefined4 sub_0200FC20();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 func_0x02024818() __asm__("sub_02024818");
undefined4 WindowArray_Delete();
undefined4 func_0x021f07e0() __asm__("sub_021F07E0");
undefined4 Sprite_GetMatrixPtr();
undefined4 ClearWindowTilemapAndCopyToVram();
undefined4 func_0x021efcdc() __asm__("sub_021EFCDC");
undefined4 RemoveWindow();
undefined4 func_0x021f1310() __asm__("sub_021F1310");
undefined4 func_0x021f05f4() __asm__("sub_021F05F4");
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 BG_ClearCharDataRange();
undefined4 func_0x021efe44() __asm__("sub_021EFE44");

void ov119_0225FA2C(undefined4 param_1,int *param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  int iStack_38;
  undefined4 *puStack_34;
  undefined2 auStack_30 [2];
  undefined4 uStack_2c;
  int iStack_28;
  undefined4 uStack_24;
  undefined1 auStack_20 [12];
  
  puVar4 = (undefined4 *)param_2[3];
  switch(*param_2) {
  case 0:
    iVar2 = Heap_Alloc(4,0x240);
    param_2[3] = iVar2;
    func_0x020e5b44(iVar2,0,0x240);
    puVar4 = (undefined4 *)param_2[3];
    puVar4[0x88] = *(undefined4 *)(param_2[4] + 0x24);
    func_0x021f12b4(puVar4 + 0x84,4);
    puVar4[0x8f] = 0xe;
    func_0x021f05c4(puVar4,3,1);
    func_0x021f0614(param_2[8],puVar4,puVar4 + 0x4f,0,1,4,6,5,600000);
    iVar2 = 0;
    puVar5 = puVar4;
    do {
      uVar1 = func_0x021f0718(puVar4,puVar4 + 0x4f,0,0,0,0);
      puVar5[0x5c] = uVar1;
      Sprite_SetDrawFlag(puVar5[0x5c],0);
      func_0x0202487c(puVar5[0x5c],2);
      uVar1 = func_0x021f0768(4);
      puVar5[0x7d] = uVar1;
      iVar2 = iVar2 + 1;
      puVar5 = puVar5 + 1;
    } while (iVar2 < 3);
    GfGfx_EngineATogglePlanes(0x10,1);
    uVar1 = AllocWindows(4,1);
    puVar4[0x83] = uVar1;
    AddWindowParameterized(*(undefined4 *)(param_2[4] + 8),puVar4[0x83],3,0,0,0x20,0x20,0,0);
    auStack_30[0] = 0;
    BG_LoadPlttData(3,auStack_30,2,0x1e);
    FillWindowPixelBuffer(puVar4[0x83],0);
    ScheduleWindowCopyToVram(puVar4[0x83]);
    *param_2 = *param_2 + 1;
    break;
  case 1:
    func_0x021efcf8(1,0x10,0xfffffff0,param_2 + 1,2);
    *param_2 = *param_2 + 1;
    break;
  case 2:
    puVar4[0x8f] = puVar4[0x8f] + -1;
    if (puVar4[0x8f] == 0) {
      func_0x021f12e8(puVar4 + 0x84,0,0xbf,0x2aa,0xc000,800,0x4000010,0,4);
      puVar4[0x87] = 1;
    }
    if (param_2[1] != 0) {
      puVar4[0x8f] = 6;
      *param_2 = *param_2 + 1;
    }
    break;
  case 3:
    puVar4[0x8f] = puVar4[0x8f] + -1;
    if ((int)puVar4[0x8f] < 0) {
      iVar2 = func_0x02023614(puVar4[0x88]);
      func_0x021efec8(puVar4 + 0x89,iVar2,iVar2 + -0x1f4000,0xffff6000,0x10);
      func_0x021efe34(puVar4 + 0x6e,0,0xffff,6);
      func_0x021efe34(puVar4 + 0x5f,0xe7,0xffffffe0,6);
      func_0x021f0788(puVar4[0x7d],0x2b,0x2b,0x138,0,6,puVar4[0x83],0x56,0x40,0xf);
      func_0x021f074c(auStack_20,0x2b000,0xe7000,0);
      Sprite_SetMatrix(puVar4[0x5c],auStack_20);
      Sprite_SetDrawFlag(puVar4[0x5c],1);
      puVar4[0x80] = 1;
      *param_2 = *param_2 + 1;
      puVar4[0x8f] = 4;
    }
    break;
  case 4:
    puVar4[0x8f] = puVar4[0x8f] + -1;
    if ((int)puVar4[0x8f] < 0) {
      func_0x021efe34(puVar4 + 100,0xe7,0xffffffe0,6);
      func_0x021efe34(puVar4 + 0x73,0,0xffff0001,6);
      func_0x021f0788(puVar4[0x7e],0xd7,0xd7,0x138,0,6,puVar4[0x83],0x56,0x40,0xf);
      func_0x021f074c(auStack_20,0xd7000,0xe7000,1);
      Sprite_SetMatrix(puVar4[0x5d],auStack_20);
      Sprite_SetDrawFlag(puVar4[0x5d],1);
      puVar4[0x81] = 1;
      *param_2 = *param_2 + 1;
      puVar4[0x8f] = 2;
    }
    break;
  case 5:
    puVar4[0x8f] = puVar4[0x8f] + -1;
    if ((int)puVar4[0x8f] < 0) {
      func_0x021efe34(puVar4 + 0x69,0xe7,0xffffffe0,6);
      func_0x021efe34(puVar4 + 0x78,0,0xffff,6);
      func_0x021f0788(puVar4[0x7f],0x81,0x81,0x138,0,6,puVar4[0x83],0x56,0x40,0xf);
      func_0x021f074c(auStack_20,0x81000,0xe7000,2);
      Sprite_SetMatrix(puVar4[0x5e],auStack_20);
      Sprite_SetDrawFlag(puVar4[0x5e],1);
      puVar4[0x82] = 1;
      *param_2 = *param_2 + 1;
    }
    break;
  case 6:
    func_0x021eff28(puVar4 + 0x89);
    func_0x020235d4(puVar4[0x89],puVar4[0x88]);
    if (((puVar4[0x80] == 0) && (puVar4[0x81] == 0)) && (puVar4[0x82] == 0)) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 7:
    sub_0200FC20(0);
    if ((undefined4 *)param_2[5] != (undefined4 *)0x0) {
      *(undefined4 *)param_2[5] = 1;
    }
    func_0x021f12d0(puVar4 + 0x84);
    iVar2 = 0;
    puVar4[0x87] = 0;
    puVar5 = puVar4;
    do {
      Sprite_Delete(puVar5[0x5c]);
      func_0x021f0780(puVar5[0x7d]);
      iVar2 = iVar2 + 1;
      puVar5 = puVar5 + 1;
    } while (iVar2 < 3);
    func_0x021f06ec(puVar4,puVar4 + 0x4f);
    func_0x021f05f4(puVar4);
    ClearWindowTilemapAndCopyToVram(puVar4[0x83]);
    RemoveWindow(puVar4[0x83]);
    WindowArray_Delete(puVar4[0x83],1);
    BG_ClearCharDataRange(3,0x20,0,4);
    BgClearTilemapBufferAndCommit(*(undefined4 *)(param_2[4] + 8),3);
    func_0x021efcdc(param_2,param_1);
    return;
  }
  if (puVar4[0x87] == 1) {
    func_0x021f1310(puVar4 + 0x84,2);
  }
  iStack_38 = 0;
  puStack_34 = puVar4 + 0x5f;
  puVar7 = puVar4 + 0x6e;
  puVar5 = puVar4;
  puVar6 = puVar4;
  do {
    if (puVar5[0x80] == 1) {
      iVar2 = func_0x021f07e0(puVar5[0x7d]);
      if (iVar2 != 0) {
        puVar5[0x80] = 0;
      }
      func_0x021efe44(puStack_34);
      func_0x021efe44(puVar7);
      func_0x02024818(puVar5[0x5c],puVar6[0x6e] & 0xffff);
      puVar3 = (undefined4 *)Sprite_GetMatrixPtr(puVar5[0x5c]);
      uStack_2c = *puVar3;
      uStack_24 = puVar3[2];
      iStack_28 = puVar6[0x5f] << 0xc;
      Sprite_SetMatrix(puVar5[0x5c],&uStack_2c);
    }
    puVar5 = puVar5 + 1;
    puStack_34 = puStack_34 + 5;
    puVar7 = puVar7 + 5;
    iStack_38 = iStack_38 + 1;
    puVar6 = puVar6 + 5;
  } while (iStack_38 < 3);
  ScheduleWindowCopyToVram(puVar4[0x83]);
  if (*param_2 != 7) {
    SpriteList_RenderAndAnimateSprites(*puVar4);
  }
  return;
}

