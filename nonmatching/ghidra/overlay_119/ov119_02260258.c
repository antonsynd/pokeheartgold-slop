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
undefined4 func_0x021f09bc() __asm__("sub_021F09BC");
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
undefined4 func_0x021f074c() __asm__("sub_021F074C");
undefined4 func_0x021efe34() __asm__("sub_021EFE34");
undefined4 Sprite_SetMatrix();
undefined4 Heap_Alloc();
undefined4 ScheduleWindowCopyToVram();
undefined4 func_0x021efec8() __asm__("sub_021EFEC8");
undefined4 func_0x021eff28() __asm__("sub_021EFF28");
undefined4 Sprite_GetMatrixPtr();
undefined4 func_0x021efcdc() __asm__("sub_021EFCDC");
undefined4 func_0x021f0a0c() __asm__("sub_021F0A0C");
undefined4 BG_ClearCharDataRange();
undefined4 func_0x021efe44() __asm__("sub_021EFE44");
undefined4 func_0x021f05f4() __asm__("sub_021F05F4");
undefined4 BgClearTilemapBufferAndCommit();
undefined4 func_0x020235d4() __asm__("sub_020235D4");
undefined4 func_0x021f06ec() __asm__("sub_021F06EC");
undefined4 WindowArray_Delete();
undefined4 func_0x021f0a4c() __asm__("sub_021F0A4C");
undefined4 ClearWindowTilemapAndCopyToVram();
undefined4 RemoveWindow();
undefined4 func_0x02023614() __asm__("sub_02023614");
undefined4 Sprite_Delete();
undefined4 sub_0200FC20();
undefined4 func_0x021f09ec() __asm__("sub_021F09EC");
undefined4 func_0x02024818() __asm__("sub_02024818");
undefined4 SpriteList_RenderAndAnimateSprites();

void ov119_02260258(undefined4 param_1,int *param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  int iStack_3c;
  undefined4 *puStack_38;
  undefined2 auStack_30 [2];
  undefined4 uStack_2c;
  int iStack_28;
  undefined4 uStack_24;
  undefined1 auStack_20 [12];

  puVar4 = (undefined4 *)param_2[3];
  switch(*param_2) {
  case 0:
    iVar2 = Heap_Alloc(4,0x228);
    param_2[3] = iVar2;
    func_0x020e5b44(iVar2,0,0x228);
    puVar4 = (undefined4 *)param_2[3];
    puVar4[0x82] = *(undefined4 *)(param_2[4] + 0x24);
    func_0x021f05c4(puVar4,3,1);
    func_0x021f0614(param_2[8],puVar4,puVar4 + 0x4f,0,1,4,6,5,600000);
    iVar2 = 0;
    puVar5 = puVar4;
    do {
      uVar1 = func_0x021f0718(puVar4,puVar4 + 0x4f,0,0xffffffe0,0,0);
      puVar5[0x5c] = uVar1;
      Sprite_SetDrawFlag(puVar5[0x5c],0);
      iVar2 = iVar2 + 1;
      puVar5 = puVar5 + 1;
    } while (iVar2 < 3);
    GfGfx_EngineATogglePlanes(0x10,1);
    uVar1 = AllocWindows(4,1);
    puVar4[0x80] = uVar1;
    AddWindowParameterized(*(undefined4 *)(param_2[4] + 8),puVar4[0x80],3,0,0,0x20,0x20,0,0);
    auStack_30[0] = 0;
    BG_LoadPlttData(3,auStack_30,2,0x1e);
    FillWindowPixelBuffer(puVar4[0x80],0);
    ScheduleWindowCopyToVram(puVar4[0x80]);
    uVar1 = func_0x021f09bc(4);
    puVar4[0x81] = uVar1;
    *param_2 = *param_2 + 1;
    break;
  case 1:
    func_0x021efcf8(1,0x10,0xfffffff0,param_2 + 1,2);
    *param_2 = *param_2 + 1;
    break;
  case 2:
    if (param_2[1] != 0) {
      *param_2 = *param_2 + 1;
      *(undefined2 *)(puVar4 + 0x89) = 0;
    }
    break;
  case 3:
    *(short *)(puVar4 + 0x89) = *(short *)(puVar4 + 0x89) + -1;
    if (*(short *)(puVar4 + 0x89) < 1) {
      func_0x021efe34(puVar4 + 0x5f,0xffffffe0,0xe0,5);
      func_0x021f074c(auStack_20,0x80000,0xfffe0000,0);
      Sprite_SetMatrix(puVar4[0x5c],auStack_20);
      Sprite_SetDrawFlag(puVar4[0x5c],1);
      func_0x021efe34(puVar4 + 0x6e,0,0xffff,5);
      func_0x0202487c(puVar4[0x5c],2);
      puVar4[0x7d] = 1;
      *param_2 = *param_2 + 1;
      *(undefined2 *)(puVar4 + 0x89) = 1;
    }
    break;
  case 4:
    *(short *)(puVar4 + 0x89) = *(short *)(puVar4 + 0x89) + -1;
    if (*(short *)(puVar4 + 0x89) < 1) {
      func_0x021efe34(puVar4 + 100,0xffffffe0,0xe0,5);
      func_0x021f074c(auStack_20,0xd0000,0xfffe0000,0);
      Sprite_SetMatrix(puVar4[0x5d],auStack_20);
      Sprite_SetDrawFlag(puVar4[0x5d],1);
      func_0x021efe34(puVar4 + 0x73,0,0xffff0001,5);
      func_0x0202487c(puVar4[0x5d],2);
      puVar4[0x7e] = 1;
      *param_2 = *param_2 + 1;
      *(undefined2 *)(puVar4 + 0x89) = 3;
    }
    break;
  case 5:
    *(short *)(puVar4 + 0x89) = *(short *)(puVar4 + 0x89) + -1;
    if (*(short *)(puVar4 + 0x89) < 1) {
      func_0x021efe34(puVar4 + 0x69,0xffffffe0,0xe0,5);
      func_0x021f074c(auStack_20,0x30000,0xfffe0000,0);
      Sprite_SetMatrix(puVar4[0x5e],auStack_20);
      Sprite_SetDrawFlag(puVar4[0x5e],1);
      func_0x021efe34(puVar4 + 0x78,0,0xffff,5);
      func_0x0202487c(puVar4[0x5e],2);
      puVar4[0x7f] = 1;
      *param_2 = *param_2 + 1;
    }
    break;
  case 6:
    if (((puVar4[0x7d] == 0) && (puVar4[0x7e] == 0)) && (puVar4[0x7f] == 0)) {
      iVar2 = 0;
      puVar5 = puVar4;
      do {
        Sprite_SetDrawFlag(puVar5[0x5c],0);
        iVar2 = iVar2 + 1;
        puVar5 = puVar5 + 1;
      } while (iVar2 < 3);
      *param_2 = *param_2 + 1;
    }
    break;
  case 7:
    func_0x021f0a0c(puVar4[0x81],1,1,puVar4[0x80],0xf);
    iVar2 = func_0x02023614(puVar4[0x82]);
    func_0x021efec8(puVar4 + 0x83,iVar2,iVar2 + -0x3e8000,0xa000,0x40);
    *param_2 = *param_2 + 1;
    break;
  case 8:
    iVar2 = func_0x021f0a4c(puVar4[0x81]);
    ScheduleWindowCopyToVram(puVar4[0x80]);
    func_0x021eff28(puVar4 + 0x83);
    func_0x020235d4(puVar4[0x83],puVar4[0x82]);
    if (iVar2 == 1) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 9:
    sub_0200FC20(0);
    if ((undefined4 *)param_2[5] != (undefined4 *)0x0) {
      *(undefined4 *)param_2[5] = 1;
    }
    iVar2 = 0;
    puVar5 = puVar4;
    do {
      Sprite_Delete(puVar5[0x5c]);
      iVar2 = iVar2 + 1;
      puVar5 = puVar5 + 1;
    } while (iVar2 < 3);
    func_0x021f06ec(puVar4,puVar4 + 0x4f);
    func_0x021f05f4(puVar4);
    func_0x021f09ec(puVar4[0x81]);
    ClearWindowTilemapAndCopyToVram(puVar4[0x80]);
    RemoveWindow(puVar4[0x80]);
    WindowArray_Delete(puVar4[0x80],1);
    BG_ClearCharDataRange(3,0x20,0,4);
    BgClearTilemapBufferAndCommit(*(undefined4 *)(param_2[4] + 8),3);
    func_0x021efcdc(param_2,param_1);
  }
  iStack_3c = 0;
  puStack_38 = puVar4 + 0x5f;
  puVar7 = puVar4 + 0x6e;
  puVar5 = puVar4;
  puVar6 = puVar4;
  do {
    if (puVar5[0x7d] == 1) {
      iVar2 = func_0x021efe44(puStack_38);
      func_0x021efe44(puVar7);
      if (iVar2 != 0) {
        puVar5[0x7d] = 0;
      }
      puVar3 = (undefined4 *)Sprite_GetMatrixPtr(puVar5[0x5c]);
      uStack_2c = *puVar3;
      uStack_24 = puVar3[2];
      iStack_28 = puVar6[0x5f] << 0xc;
      Sprite_SetMatrix(puVar5[0x5c],&uStack_2c);
      func_0x02024818(puVar5[0x5c],puVar6[0x6e] & 0xffff);
    }
    puVar5 = puVar5 + 1;
    puStack_38 = puStack_38 + 5;
    puVar7 = puVar7 + 5;
    iStack_3c = iStack_3c + 1;
    puVar6 = puVar6 + 5;
  } while (iStack_3c < 3);
  if (*param_2 != 9) {
    SpriteList_RenderAndAnimateSprites(*puVar4);
  }
  return;
}

