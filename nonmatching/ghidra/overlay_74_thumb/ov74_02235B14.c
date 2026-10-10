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
undefined4 MonIsShiny();
undefined4 func_0x020cfecc() __asm__("sub_020CFECC");
undefined4 func_0x020b8078() __asm__("sub_020B8078");
undefined4 func_0x02024b34() __asm__("sub_02024B34");
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 func_0x02014494() __asm__("sub_02014494");
undefined4 func_0x020b802c() __asm__("sub_020B802C");
undefined4 GfGfxLoader_GXLoadPal();
undefined4 GetMonData();
undefined4 GetMonGender();
undefined4 GetMonSpriteCharAndPlttNarcIdsEx();
undefined4 Sprite_GetImageProxy();
extern undefined4 uRam0223d45c __asm__("sub_0223D45C");

void ov74_02235B14(undefined4 param_1,undefined4 param_2,uint param_3,uint param_4,
                  undefined4 param_5,undefined2 *param_6)

{
  undefined1 uVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  
  uVar5 = param_4;
  uVar2 = GetMonGender(param_2);
  uVar1 = MonIsShiny(param_2);
  GetMonSpriteCharAndPlttNarcIdsEx(param_6,param_3 & 0xffff,uVar2 & 0xff,2,uVar1,param_4 & 0xff,0);
  uVar3 = GetMonData(param_2,0,0);
  func_0x02014494(*param_6,param_6[1],uRam0223d45c,0,0,10,10,param_5,uVar3,0,2,param_3,param_1,uVar2
                  ,uVar5);
  func_0x020d2894(param_5,0xc80);
  uVar3 = Sprite_GetImageProxy(param_1);
  iVar4 = func_0x020b802c(uVar3,2);
  func_0x020cfecc(param_5,iVar4 + 0xc80);
  uVar3 = func_0x02024b34(param_1);
  iVar4 = func_0x020b8078(uVar3,2);
  GfGfxLoader_GXLoadPal(*param_6,param_6[2],5,iVar4 + 0x60,0x20,uRam0223d45c);
  return;
}

