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
undefined4 BeginNormalPaletteFade();
undefined4 OverlayManager_GetData();
undefined4 ov41_02247828();
undefined4 ov41_022476B8();
undefined4 IsPaletteFadeFinished();
undefined4 ov41_0224B4E8();
undefined4 ov41_02247578();
undefined4 ov41_0224ABF0();
undefined4 ov41_0224AC08();
undefined4 ov41_02247D44();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 OverlayManager_GetArgs();
undefined4 TextPrinterCheckActive();
undefined4 ov41_0224AC80();
undefined4 ov41_02248E44();
undefined4 ov41_0224AC40();
extern uint uRam021d1154 __asm__("sub_021D1154");
extern short sRam021d1170 __asm__("sub_021D1170");
undefined4 ov41_0224B50C();
undefined4 ov41_0224726C();
undefined4 ov41_02247D64();
undefined4 ov41_02247B7C();
undefined4 ov41_02247DF8();
undefined4 ov41_0224B518();

undefined4 ov41_02246F08(undefined4 param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;

  iVar1 = OverlayManager_GetData();
  uVar4 = 0;
  iVar2 = OverlayManager_GetArgs(param_1);
  switch(*param_2) {
  case 0:
  case 1:
    BeginNormalPaletteFade(1,5,5,0,6,1,0xd);
    *param_2 = 2;
    break;
  case 2:
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 != 0) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 3:
    if (*(int *)(iVar2 + 0x1c) == 1) {
      TextFlags_SetCanTouchSpeedUpPrint(1);
      uVar3 = ov41_0224AC40(iVar1 + 0x568,0x1b,0xd7,0x2f);
      *(undefined4 *)(iVar1 + 0x6e0) = uVar3;
      *param_2 = *param_2 + 1;
    }
    else {
      *param_2 = 6;
    }
    break;
  case 4:
    iVar2 = TextPrinterCheckActive(*(uint *)(iVar1 + 0x6e0) & 0xff);
    if (iVar2 == 0) {
      ov41_0224AC80(iVar1 + 0x568);
      *param_2 = *param_2 + 1;
    }
    break;
  case 5:
    if (sRam021d1170 != 0 || (uRam021d1154 & 3) != 0) {
      ov41_0224AC08(iVar1 + 0x568,0x1b,0xd7,0x30);
      TextFlags_SetCanTouchSpeedUpPrint(0);
      *param_2 = *param_2 + 1;
    }
    break;
  case 6:
    if (*(int *)(iVar1 + 0x6b0) == 3) {
      ov41_022476B8(iVar1,iVar1 + 0x6b4);
      *param_2 = 7;
    }
    ov41_02248E44(iVar1 + 0x498);
    ov41_02247D44(iVar1);
    ov41_0224ABF0(iVar1 + 0x568);
    ov41_02247578(iVar1);
    break;
  case 7:
    if (*(int *)(iVar1 + 0x6b4) != 0) {
      *(undefined4 *)(iVar1 + 0x6b4) = 0;
      *param_2 = 8;
      *(undefined4 *)(iVar1 + 0x6b0) = 4;
      ov41_0224B4E8(iVar1 + 0x47c,iVar1 + 0x3f4,0xe);
    }
    break;
  case 8:
    if (*(int *)(iVar1 + 0x6b0) == 9) {
      ov41_02247828(iVar1,iVar1 + 0x6b4);
      *param_2 = 10;
    }
    else if (*(int *)(iVar1 + 0x6b0) == 8) {
      *param_2 = 9;
      *(undefined4 *)(iVar1 + 0x6b0) = 5;
      ov41_02247D64(iVar1);
    }
    else {
      uVar3 = ov41_02247B7C(iVar1);
      *(undefined4 *)(iVar1 + 0x6b0) = uVar3;
      ov41_0224B50C(iVar1 + 0x47c);
    }
    break;
  case 9:
    if (*(int *)(iVar1 + 0x6b0) == 6) {
      *(undefined4 *)(iVar1 + 0x6c0) = 1;
      *param_2 = 0xb;
    }
    else if (*(int *)(iVar1 + 0x6b0) == 7) {
      *(undefined4 *)(iVar1 + 0x6c0) = 0;
      *param_2 = 0xb;
    }
    else {
      uVar3 = ov41_02247DF8(iVar1);
      *(undefined4 *)(iVar1 + 0x6b0) = uVar3;
      ov41_0224B50C(iVar1 + 0x47c);
    }
    break;
  case 10:
    if (*(int *)(iVar1 + 0x6b4) != 0) {
      *(undefined4 *)(iVar1 + 0x6b4) = 0;
      *param_2 = 6;
      *(undefined4 *)(iVar1 + 0x6b0) = 0;
      ov41_0224B518(iVar1 + 0x47c);
    }
    break;
  case 0xb:
    BeginNormalPaletteFade(1,0,0,0,6,1,0xd);
    *param_2 = *param_2 + 1;
    break;
  case 0xc:
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 != 0) {
      *param_2 = 0;
      *(undefined4 *)(iVar1 + 0x6b0) = 10;
      uVar4 = 1;
      ov41_0224B518(iVar1 + 0x47c);
    }
  }
  ov41_0224726C(iVar1);
  return uVar4;
}

