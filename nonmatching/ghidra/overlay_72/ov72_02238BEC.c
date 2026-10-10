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
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 func_0x02007c48() __asm__("sub_02007C48");
undefined4 NARC_Delete();
undefined4 func_0x0201c2d8() __asm__("sub_0201C2D8");
undefined4 GF_AssertFail();
undefined4 NARC_New();
undefined4 LoadUserFrameGfx2();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 func_0x02003de8() __asm__("sub_02003DE8");
undefined4 SysTask_CreateOnVBlankQueue();
undefined4 LoadFontPal1();
undefined4 Heap_Free();
undefined4 Options_GetFrame();
undefined4 LoadUserFrameGfx1();
undefined4 func_0x020d47b8() __asm__("sub_020D47B8");
undefined4 GfGfxLoader_GXLoadPalFromOpenNarc();

void ov72_02238BEC(int *param_1)

{
  int *piVar1;
  bool bVar2;
  undefined1 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  int *piVar7;
  int *piVar8;
  int *piStack_3c;
  int *piStack_38;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  int iStack_18;
  
  iVar6 = param_1[1];
  uVar4 = NARC_New(0x58,0x43);
  GfGfxLoader_GXLoadPalFromOpenNarc(uVar4,3,0,0,0,0x43);
  GfGfxLoader_GXLoadPalFromOpenNarc(uVar4,3,4,0,0,0x43);
  LoadFontPal1(0,0x1a0,0x43);
  LoadFontPal1(4,0x1a0,0x43);
  uVar3 = Options_GetFrame(*(undefined4 *)(*param_1 + 0x10));
  LoadUserFrameGfx2(iVar6,0,1,0xe,uVar3,0x43);
  uVar3 = Options_GetFrame(*(undefined4 *)(*param_1 + 0x10));
  LoadUserFrameGfx2(iVar6,4,1,0xe,uVar3,0x43);
  LoadUserFrameGfx1(iVar6,0,0x1f,0xb,0,0x43);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar4,2,iVar6,1,0,0,0,0x43);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar4,6,iVar6,1,0,0x600,0,0x43);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar4,0xb,iVar6,5,0,0,0,0x43);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar4,0xc,iVar6,5,0,0x600,0,0x43);
  func_0x0201c2d8(0,0);
  func_0x0201c2d8(4,0);
  func_0x020d4994(param_1 + 0x3f6,0,0x330);
  uVar5 = func_0x02007c48(uVar4,5,&iStack_18,0x43);
  func_0x020d47b8(*(undefined4 *)(iStack_18 + 0xc),param_1 + 0x3f8,0x80);
  func_0x020d47b8(*(undefined4 *)(iStack_18 + 0xc),param_1 + 0x418,0x80);
  Heap_Free(uVar5);
  iStack_2c = 0;
  iStack_28 = 0;
  piStack_38 = param_1 + 0x418;
  piStack_3c = param_1 + 0x3f8;
  do {
    iStack_30 = 0;
    bVar2 = false;
    while( true ) {
      if (0x14 < iStack_2c) {
        GF_AssertFail();
      }
      iVar6 = 1;
      piVar1 = param_1 + (iStack_28 + 1) * 8;
      piVar7 = piStack_3c;
      piVar8 = piStack_38;
      do {
        piVar8 = (int *)((int)piVar8 + 2);
        piVar7 = (int *)((int)piVar7 + 2);
        func_0x02003de8(piVar7,piVar8,1,iStack_30 >> 8 & 0xff,*(undefined2 *)((int)piVar1 + 0xfe2));
        iVar6 = iVar6 + 1;
        piVar1 = (int *)((int)piVar1 + 2);
      } while (iVar6 < 0x10);
      piStack_38 = piStack_38 + 8;
      iStack_2c = iStack_2c + 1;
      if (bVar2) break;
      iStack_30 = iStack_30 + 0x300;
      if (0xfff < iStack_30) {
        iStack_30 = 0x1000;
        bVar2 = true;
      }
    }
    piStack_3c = piStack_3c + 8;
    iStack_28 = iStack_28 + 1;
  } while (iStack_28 < 3);
  func_0x020d2894(param_1 + 0x418,0x2a0);
  param_1[0x3f7] = 1;
  param_1[0x4c1] = 0;
  iVar6 = SysTask_CreateOnVBlankQueue(0x2238e3d,param_1 + 0x3f6,0x14);
  param_1[0x3f6] = iVar6;
  NARC_Delete(uVar4);
  return;
}

