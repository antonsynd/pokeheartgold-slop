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
undefined4 OverlayManager_GetData();
undefined4 ov74_02228F14();
undefined4 ov74_0223539C();
undefined4 TextPrinterCheckActive();
undefined4 ov74_0222962C();
undefined4 ov74_02228D64();
undefined4 ov74_02235390();
undefined4 ov74_02228F8C();
undefined4 Pokedex_IsEnabled();
undefined4 ov74_02235568();
undefined4 SaveMysteryGift_FindAvailable();
extern uint uRam021d1154 __asm__("sub_021D1154");
undefined4 ov74_0222EC08();
undefined4 ov74_022353FC();
undefined4 ov74_022358BC();
undefined4 ov74_02229190();
undefined4 func_0x020d3b84() __asm__("sub_020D3B84");
undefined4 ov74_02228E98();
undefined4 GfGfx_EngineBTogglePlanes();

undefined4
ov74_02229294(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  
  iVar1 = OverlayManager_GetData();
  switch(*param_2) {
  case 0:
    ov74_02228D64();
    iVar1 = Pokedex_IsEnabled(*(undefined4 *)(iVar1 + 0xc));
    if (iVar1 == 0) {
      ov74_0223539C(1,1,param_2,0xd);
    }
    else {
      *param_2 = 2;
    }
    break;
  case 1:
    iVar1 = ov74_02228F14();
    if (iVar1 == 0) {
      ov74_02235390(1);
      ov74_0223539C(0,0xc,param_2,0xd);
    }
    break;
  case 2:
    ov74_02228F8C();
    iVar2 = SaveMysteryGift_FindAvailable(*(undefined4 *)(iVar1 + 0x3174));
    if (iVar2 == 0) {
      *(undefined4 *)(iVar1 + 0x98) = 1;
      uVar3 = ov74_02235568(*(undefined4 *)(iVar1 + 4),iVar1 + 0x48,2,0x13,0x16,param_4);
      *(undefined4 *)(iVar1 + 0x317c) = uVar3;
      ov74_0223539C(1,3,param_2,0xd);
    }
    else {
      *(undefined4 *)(iVar1 + 0x14c) = 7;
      ov74_0223539C(1,4,param_2,0xd);
    }
    break;
  case 3:
    iVar1 = TextPrinterCheckActive(*(uint *)(iVar1 + 0x317c) & 0xff);
    if ((iVar1 == 0) && ((uRam021d1154 & 1) != 0)) {
      ov74_02235390();
      ov74_0223539C(0,0xc,param_2,0xd);
    }
    break;
  case 4:
    uVar3 = ov74_0222962C();
    *(undefined4 *)(iVar1 + 0x150) = uVar3;
    if (*(int *)(iVar1 + 0x150) == 5) {
      ov74_02235390(1);
      ov74_0223539C(0,0xc,param_2,0xd);
    }
    else if (*(int *)(iVar1 + 0x150) == 4) {
      ov74_02235390(1);
      ov74_0223539C(0,0xc,param_2,0xd);
    }
    break;
  case 5:
    ov74_02228E98();
    GfGfx_EngineBTogglePlanes(1,1);
    GfGfx_EngineBTogglePlanes(2,0);
    ov74_0222EC08(*(undefined4 *)(iVar1 + 4),iVar1 + 0x3180,0x53);
    ov74_0223539C(1,6,param_2,0xd);
    *(byte *)(iVar1 + 0x32d2) = *(byte *)(iVar1 + 0x32d2) & 0xfb;
    break;
  case 6:
    if (uRam021d1154 != 0) {
      ov74_0223539C(0,0xb,param_2,0xd);
    }
    break;
  case 0xb:
    func_0x020d3b84(0);
    break;
  case 0xc:
    ov74_02229190(param_1);
    return 1;
  case 0xd:
    ov74_022353FC(param_2);
  }
  ov74_022358BC();
  return 0;
}

