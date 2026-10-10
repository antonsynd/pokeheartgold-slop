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
undefined4 Sprite_Delete();
undefined4 RemoveWindow();
undefined4 ClearWindowTilemapAndCopyToVram();
undefined4 ov120_0225F9D4();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 func_0x021efcf8() __asm__("sub_021EFCF8");
undefined4 AllocWindows();
undefined4 FillWindowPixelBuffer();
undefined4 ov120_0225F6FC();
undefined4 func_0x021f06ec() __asm__("sub_021F06EC");
undefined4 ov120_0225F704();
undefined4 ScheduleWindowCopyToVram();
undefined4 BG_LoadPlttData();
undefined4 sub_0200FC20();
undefined4 AddWindowParameterized();
undefined4 WindowArray_Delete();
undefined4 func_0x021f05c4() __asm__("sub_021F05C4");
undefined4 Heap_Alloc();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 func_0x021f05f4() __asm__("sub_021F05F4");
undefined4 func_0x021efcdc() __asm__("sub_021EFCDC");

void ov120_0225F714(undefined4 param_1,int *param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined2 auStack_14 [2];

  puVar3 = (undefined4 *)param_2[3];
  switch(*param_2) {
  case 0:
    iVar2 = Heap_Alloc(4,0x19c);
    param_2[3] = iVar2;
    func_0x020e5b44(iVar2,0,0x19c);
    puVar3 = (undefined4 *)param_2[3];
    uVar1 = AllocWindows(4,1);
    *puVar3 = uVar1;
    AddWindowParameterized(*(undefined4 *)(param_2[4] + 8),*puVar3,3,0,0,0x20,0x20,0,0);
    auStack_14[0] = 0;
    BG_LoadPlttData(3,auStack_14,2,0x1e);
    FillWindowPixelBuffer(*puVar3,0);
    ScheduleWindowCopyToVram(*puVar3);
    func_0x021f05c4(puVar3 + 4,2,1);
    ov120_0225F9D4(param_2[8],puVar3 + 0x60,puVar3 + 4,puVar3 + 0x53,0);
    GfGfx_EngineATogglePlanes(0x10,1);
    puVar3[2] = *(undefined4 *)(*(int *)(param_2[4] + 4) + 0x1c);
    ov120_0225F6FC(puVar3 + 0x61,0x225f8b1);
    ov120_0225F6FC(puVar3 + 99,0x225f90d);
    ov120_0225F6FC(puVar3 + 0x65,0x225f971);
    *param_2 = 1;
    break;
  case 1:
    func_0x021efcf8(1,0xfffffff0,0xfffffff0,param_2 + 1,2);
    *param_2 = 2;
    break;
  case 2:
    if (param_2[1] != 0) {
      *param_2 = 3;
    }
    break;
  case 3:
    puVar3[3] = 0;
    *param_2 = 4;
    break;
  case 4:
    iVar2 = ov120_0225F704(puVar3 + puVar3[3] * 2 + 0x61,puVar3);
    if (iVar2 != 0) {
      *param_2 = 5;
    }
    break;
  case 5:
    sub_0200FC20(0);
    if ((undefined4 *)param_2[5] != (undefined4 *)0x0) {
      *(undefined4 *)param_2[5] = 1;
    }
    ClearWindowTilemapAndCopyToVram(*puVar3);
    RemoveWindow(*puVar3);
    WindowArray_Delete(*puVar3,1);
    Sprite_Delete(puVar3[0x60]);
    func_0x021f06ec(puVar3 + 4,puVar3 + 0x53);
    func_0x021f05f4(puVar3 + 4);
    func_0x021efcdc(param_2,param_1);
    return;
  }
  if (*param_2 != 5) {
    SpriteList_RenderAndAnimateSprites(puVar3[4]);
  }
  return;
}

