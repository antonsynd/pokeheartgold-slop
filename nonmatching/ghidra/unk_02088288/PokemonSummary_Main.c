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
undefined4 sub_02088D48();
undefined4 sub_02088D18();
undefined4 OverlayManager_GetData();
undefined4 sub_02088E68();
undefined4 sub_0208942C();
undefined4 sub_02089028();
undefined4 sub_02088B08();
undefined4 sub_020880CC();
undefined4 sub_02088D34();
undefined4 sub_02089698();
undefined4 sub_020892F4();
undefined4 sub_02089478();
undefined4 sub_02089308();
undefined4 sub_0208931C();
undefined4 sub_02089454();
undefined4 sub_02088B40();
undefined4 sub_02088E98();
undefined4 sub_02089208();
undefined4 Pokepic_SetAttr();
undefined4 sub_0208DEDC();
undefined4 sub_02089680();
undefined4 sub_0208C3C0();
undefined4 SpriteSystem_DrawSprites();
undefined4 sub_02089670();
undefined4 sub_02089658();
undefined4 sub_02089608();
undefined4 sub_0208B278();
undefined4 sub_02089794();

undefined4 PokemonSummary_Main(undefined4 param_1,undefined4 *param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar1 = OverlayManager_GetData();
  switch(*param_2) {
  case 0:
    sub_020880CC(0,0x13);
    Pokepic_SetAttr(*(undefined4 *)(iVar1 + 0x2d0),6,0);
    *param_2 = 1;
    break;
  case 1:
    uVar2 = sub_02088B08();
    *param_2 = uVar2;
    break;
  case 2:
    uVar2 = sub_02088B40();
    *param_2 = uVar2;
    break;
  case 3:
    uVar2 = sub_02088D18();
    *param_2 = uVar2;
    break;
  case 4:
    uVar2 = sub_02088D34();
    *param_2 = uVar2;
    break;
  case 5:
    uVar2 = sub_02088D48();
    *param_2 = uVar2;
    break;
  case 6:
    uVar2 = sub_02088E98();
    *param_2 = uVar2;
    break;
  case 7:
    uVar2 = sub_02088E68();
    *param_2 = uVar2;
    break;
  case 8:
    uVar2 = sub_02089028();
    *param_2 = uVar2;
    break;
  case 9:
    uVar2 = sub_02089208();
    *param_2 = uVar2;
    break;
  case 10:
    uVar2 = sub_020892F4();
    *param_2 = uVar2;
    break;
  case 0xb:
    uVar2 = sub_02089308();
    *param_2 = uVar2;
    break;
  case 0xc:
    uVar2 = sub_0208931C();
    *param_2 = uVar2;
    break;
  case 0xd:
    uVar2 = sub_0208942C();
    *param_2 = uVar2;
    break;
  case 0xe:
    uVar2 = sub_02089454();
    *param_2 = uVar2;
    break;
  case 0xf:
    uVar2 = sub_02089698();
    *param_2 = uVar2;
    break;
  case 0x10:
    uVar2 = sub_02089478();
    *param_2 = uVar2;
    break;
  case 0x11:
    uVar2 = sub_02089608();
    *param_2 = uVar2;
    break;
  case 0x12:
    uVar2 = sub_02089658();
    *param_2 = uVar2;
    break;
  case 0x13:
    Pokepic_SetAttr(*(undefined4 *)(iVar1 + 0x2d0),6,0);
    *param_2 = 2;
    break;
  case 0x14:
    uVar2 = sub_02089794();
    *param_2 = uVar2;
    break;
  case 0x15:
    uVar2 = sub_02089670();
    *param_2 = uVar2;
    break;
  case 0x16:
    iVar3 = sub_02089680();
    if (iVar3 == 1) {
      return 1;
    }
  }
  sub_0208B278(iVar1);
  sub_0208C3C0(iVar1);
  SpriteSystem_DrawSprites(*(undefined4 *)(iVar1 + 0x400));
  sub_0208DEDC(iVar1);
  return 0;
}

