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
undefined4 func_0x020d47b8() __asm__("sub_020D47B8");
undefined4 func_0x02003de8() __asm__("sub_02003DE8");
undefined4 LoadUserFrameGfx1();
undefined4 GF_AssertFail();
undefined4 NARC_Delete();
undefined4 LoadUserFrameGfx2();
undefined4 SysTask_CreateOnVBlankQueue();
undefined4 Heap_Free();
undefined4 func_0x02007c48() __asm__("sub_02007C48");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 GfGfxLoader_GXLoadPalFromOpenNarc();
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 func_0x0201c2d8() __asm__("sub_0201C2D8");
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 LoadFontPal1();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 Options_GetFrame();
undefined4 NARC_New();
undefined4 func_0x020d4994() __asm__("sub_020D4994");

void ov75_02247450(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  bool bVar2;
  undefined1 uVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int *piVar7;
  int *piVar8;
  int *piVar9;
  int iVar10;
  int *piStack_44;
  int *piStack_40;
  int iStack_38;
  int iStack_34;
  int iStack_30;
  int iStack_1c;
  undefined4 uStack_18;
  
  iVar4 = param_1[1];
  uStack_18 = param_4;
  uVar5 = NARC_New(0x58,0x74);
  GfGfxLoader_GXLoadPalFromOpenNarc(uVar5,3,0,0,0,0x74);
  GfGfxLoader_GXLoadPalFromOpenNarc(uVar5,3,4,0,0,0x74);
  LoadFontPal1(0,0x1a0,0x74);
  LoadFontPal1(4,0x1a0,0x74);
  uVar3 = Options_GetFrame(*(undefined4 *)(*param_1 + 8));
  LoadUserFrameGfx2(iVar4,0,1,10,uVar3,0x74);
  LoadUserFrameGfx1(iVar4,0,0x1f,0xb,0,0x74);
  LoadUserFrameGfx1(iVar4,2,0x1f,0xb,0,0x74);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar5,2,iVar4,1,0,0,0,0x74);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar5,6,iVar4,1,0,0x600,0,0x74);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar5,0xb,iVar4,5,0,0,0,0x74);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar5,0xc,iVar4,5,0,0x600,0,0x74);
  func_0x0201c2d8(0,0);
  func_0x0201c2d8(4,0);
  func_0x020d4994(param_1 + 0x3b,0,0x330);
  uVar6 = func_0x02007c48(uVar5,5,&iStack_1c,0x74);
  func_0x020d47b8(*(undefined4 *)(iStack_1c + 0xc),param_1 + 0x3d,0x80);
  func_0x020d47b8(*(undefined4 *)(iStack_1c + 0xc),param_1 + 0x5d,0x80);
  Heap_Free(uVar6);
  iStack_34 = 0;
  iStack_30 = 0;
  piStack_40 = param_1 + 0x5d;
  piStack_44 = param_1 + 0x3d;
  do {
    iStack_38 = 0;
    bVar2 = false;
    piVar7 = param_1 + (iStack_30 + 1) * 8;
    while( true ) {
      if (0x14 < iStack_34) {
        GF_AssertFail();
      }
      iVar10 = 1;
      piVar8 = piStack_40;
      piVar9 = piStack_44;
      piVar1 = piVar7;
      do {
        piVar9 = (int *)((int)piVar9 + 2);
        piVar8 = (int *)((int)piVar8 + 2);
        func_0x02003de8(piVar9,piVar8,1,iStack_38 >> 8 & 0xff,*(undefined2 *)((int)piVar1 + 0xf6));
        iVar10 = iVar10 + 1;
        piVar1 = (int *)((int)piVar1 + 2);
      } while (iVar10 < 0x10);
      piStack_40 = piStack_40 + 8;
      iStack_34 = iStack_34 + 1;
      if (bVar2) break;
      iStack_38 = iStack_38 + 0x300;
      if (0xfff < iStack_38) {
        iStack_38 = 0x1000;
        bVar2 = true;
      }
    }
    piStack_44 = piStack_44 + 8;
    iStack_30 = iStack_30 + 1;
  } while (iStack_30 < 3);
  func_0x020d2894(param_1 + 0x5d,0x2a0);
  param_1[0x3c] = 1;
  param_1[0x106] = 0;
  iVar10 = SysTask_CreateOnVBlankQueue(0x22476e9,param_1 + 0x3b,0x14);
  param_1 = param_1 + 0x3b;
  *param_1 = iVar10;
  NARC_Delete(uVar5);
  uVar5 = NARC_New(199,0x74);
  GfGfx_EngineATogglePlanes(8,0);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar5,0xb,iVar4,3,0,0,0,0x74,param_1);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar5,10,iVar4,3,0,0,0,0x74);
  GfGfxLoader_GXLoadPalFromOpenNarc(uVar5,0xc,0,0x120,0x20,0x74);
  NARC_Delete(uVar5);
  return;
}

