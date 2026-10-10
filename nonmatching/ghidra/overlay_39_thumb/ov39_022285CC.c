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
undefined4 func_0x02007c48() __asm__("sub_02007C48");
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 func_0x020d47b8() __asm__("sub_020D47B8");
undefined4 SysTask_CreateOnVBlankQueue();
undefined4 GF_AssertFail();
undefined4 LoadUserFrameGfx2();
undefined4 func_0x0201c2d8() __asm__("sub_0201C2D8");
undefined4 NARC_New();
undefined4 Save_PlayerData_GetOptionsAddr();
undefined4 func_0x02003de8() __asm__("sub_02003DE8");
undefined4 Heap_Free();
undefined4 Options_GetFrame();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 GfGfxLoader_GXLoadPalFromOpenNarc();
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 LoadFontPal1();
undefined4 LoadUserFrameGfx1();
undefined4 NARC_Delete();
undefined4 func_0x020d4994() __asm__("sub_020D4994");

void ov39_022285CC(undefined4 *param_1)

{
  undefined4 *puVar1;
  bool bVar2;
  undefined1 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  int iVar8;
  undefined4 *puStack_3c;
  undefined4 *puStack_38;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  int iStack_18;

  uVar5 = param_1[1];
  uVar4 = NARC_New(0x58,0x7c);
  GfGfxLoader_GXLoadPalFromOpenNarc(uVar4,3,0,0,0,0x7c);
  GfGfxLoader_GXLoadPalFromOpenNarc(uVar4,3,4,0,0,0x7c);
  LoadFontPal1(0,0x1a0,0x7c);
  LoadFontPal1(4,0x1a0,0x7c);
  Save_PlayerData_GetOptionsAddr(*(undefined4 *)(*(int *)*param_1 + 4));
  uVar3 = Options_GetFrame();
  LoadUserFrameGfx2(uVar5,0,1,10,uVar3,0x7c);
  LoadUserFrameGfx1(uVar5,0,0x1f,0xb,0,0x7c);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar4,2,uVar5,1,0,0,0,0x7c);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar4,6,uVar5,1,0,0x600,0,0x7c);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar4,0xb,uVar5,5,0,0,0,0x7c);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar4,0xc,uVar5,5,0,0x600,0,0x7c);
  func_0x0201c2d8(0,0);
  func_0x0201c2d8(4,0);
  func_0x020d4994(param_1 + 0x2a,0,0x330);
  uVar5 = func_0x02007c48(uVar4,5,&iStack_18,0x7c);
  func_0x020d47b8(*(undefined4 *)(iStack_18 + 0xc),param_1 + 0x2c,0x80);
  func_0x020d47b8(*(undefined4 *)(iStack_18 + 0xc),param_1 + 0x4c,0x80);
  Heap_Free(uVar5);
  iStack_2c = 0;
  iStack_28 = 0;
  puStack_38 = param_1 + 0x4c;
  puStack_3c = param_1 + 0x2c;
  do {
    iStack_30 = 0;
    bVar2 = false;
    while( true ) {
      if (0x14 < iStack_2c) {
        GF_AssertFail();
      }
      iVar8 = 1;
      puVar6 = puStack_38;
      puVar7 = puStack_3c;
      puVar1 = param_1 + (iStack_28 + 1) * 8;
      do {
        puVar7 = (undefined4 *)((int)puVar7 + 2);
        puVar6 = (undefined4 *)((int)puVar6 + 2);
        func_0x02003de8(puVar7,puVar6,1,iStack_30 >> 8 & 0xff,*(undefined2 *)((int)puVar1 + 0xb2));
        iVar8 = iVar8 + 1;
        puVar1 = (undefined4 *)((int)puVar1 + 2);
      } while (iVar8 < 0x10);
      puStack_38 = puStack_38 + 8;
      iStack_2c = iStack_2c + 1;
      if (bVar2) break;
      iStack_30 = iStack_30 + 0x300;
      if (0xfff < iStack_30) {
        iStack_30 = 0x1000;
        bVar2 = true;
      }
    }
    puStack_3c = puStack_3c + 8;
    iStack_28 = iStack_28 + 1;
  } while (iStack_28 < 3);
  func_0x020d2894(param_1 + 0x4c,0x2a0);
  param_1[0x2b] = 1;
  param_1[0xf5] = 0;
  uVar5 = SysTask_CreateOnVBlankQueue(0x22287f9,param_1 + 0x2a,0x14);
  param_1[0x2a] = uVar5;
  NARC_Delete(uVar4);
  return;
}

