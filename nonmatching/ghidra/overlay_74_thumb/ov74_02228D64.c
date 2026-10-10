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
undefined4 GfGfxLoader_LoadScrnData();
undefined4 SetBothScreensModesAndDisable();
undefined4 GfGfxLoader_LoadCharData();
undefined4 Options_GetFrame();
undefined4 BgTilemapRectChangePalette();
undefined4 ov74_02228E98();
undefined4 ov74_02235308();
undefined4 BgCommitTilemapBufferToVram();
undefined4 GfGfxLoader_GXLoadPal();
undefined4 LoadFontPal0();
undefined4 LoadUserFrameGfx1();
undefined4 func_0x02020080() __asm__("sub_02020080");
undefined4 GfGfx_SetBanks();
undefined4 LoadUserFrameGfx2();
extern undefined UNK_0223b340 __asm__("sub_0223B340");

void ov74_02228D64(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 auStack_38 [10];
  undefined4 uStack_10;
  
  puVar6 = (undefined4 *)&UNK_0223b340;
  puVar5 = auStack_38;
  iVar4 = 5;
  uStack_10 = param_4;
  do {
    uVar2 = *puVar6;
    uVar3 = puVar6[1];
    puVar6 = puVar6 + 2;
    *puVar5 = uVar2;
    puVar5[1] = uVar3;
    puVar5 = puVar5 + 2;
    iVar4 = iVar4 + -1;
  } while (iVar4 != 0);
  uStack_48 = 1;
  uStack_44 = 0;
  uStack_40 = 0;
  uStack_3c = 0;
  GfGfx_SetBanks(auStack_38,0,auStack_38,&UNK_0223b340);
  SetBothScreensModesAndDisable(&uStack_48);
  ov74_02235308(param_1[1],0,1,0xf000,0);
  ov74_02235308(param_1[1],1,1,0xf800,0x4000);
  ov74_02235308(param_1[1],4,1,0x7800,0);
  ov74_02235308(param_1[1],5,1,0x7000,0x4000);
  func_0x02020080();
  LoadFontPal0(0,0,*param_1);
  LoadUserFrameGfx1(param_1[1],0,1,1,0,*param_1);
  uVar1 = Options_GetFrame(param_1[5]);
  LoadUserFrameGfx2(param_1[1],0,10,2,uVar1,*param_1);
  GfGfxLoader_GXLoadPal(0x71,0,0,0x100,0x20,*param_1);
  GfGfxLoader_LoadCharData(0x71,1,param_1[1],1,0,0x1400,1,*param_1);
  GfGfxLoader_LoadScrnData(0x71,2,param_1[1],1,0,0x600,1,*param_1);
  BgTilemapRectChangePalette(param_1[1],1,0,0,0x20,0x18,8);
  BgCommitTilemapBufferToVram(param_1[1],1);
  ov74_02228E98(param_1);
  return;
}

