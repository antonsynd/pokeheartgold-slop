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
undefined4 ov74_02230D28();
undefined4 sub_0203A930();
undefined4 ov74_022295C8();
undefined4 sub_02034D8C();
undefined4 ov74_02230DB8();
undefined4 ov74_02228D20();
undefined4 sub_0203A880();
undefined4 ov74_02230FD4();
undefined4 ov74_02230D6C();
undefined4 ov74_02230E7C();
undefined4 ov74_02230E94();
undefined4 ov74_02230EB4();
undefined4 sub_02034DB8();
undefined4 ov74_022295D0();
undefined4 ov74_02230DF4();
undefined4 ov74_022310B8();
undefined4 ov74_02230A84();
undefined4 WaitingIcon_New();
extern undefined ov74_0223BD5C;
undefined4 Sprite_SetDrawFlag();
undefined4 ov74_02230F98();
undefined4 ov74_0222947C();
undefined4 func_0x020d3550() __asm__("sub_020D3550");
undefined4 ov74_02229084();
undefined4 ov74_022360B0();
undefined4 ov74_02230F40();
undefined4 ov74_02230F14();
undefined4 ov74_02230F6C();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 PlaySE();
undefined4 ov74_02235568();
undefined4 ov74_02230EE8();
undefined4 ov74_022360A0();
extern undefined ov74_0223C1F4;
undefined4 ov74_02231048();
undefined4 ov74_02231008();
undefined4 sub_0200F450();
undefined4 sub_0203A914();
undefined4 sub_02034DE0();
undefined4 ov74_0223615C();
undefined4 ov74_02236128();
extern uint uRam021d1154 __asm__("sub_021D1154");
undefined4 func_0x020d3b84() __asm__("sub_020D3B84");

undefined4 ov74_0222962C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int extraout_r1;
  
  if (*(int *)(param_1 + 0x158) == 1) {
    iVar1 = ov74_02230E7C();
    sub_0203A930(3 - iVar1);
    ov74_02230D28();
    ov74_022310B8(1);
  }
  switch(*(undefined4 *)(param_1 + 0x15c)) {
  case 0:
    ov74_02228D20(param_1);
    sub_02034D8C();
    *(undefined4 *)(param_1 + 0x148) = 1;
    *(undefined4 *)(param_1 + 0x15c) = 1;
    break;
  case 1:
    iVar1 = sub_02034DB8();
    if (iVar1 != 0) {
      ov74_02230A84(&ov74_0223BD5C,param_1 + 0x16c);
      *(undefined4 *)(param_1 + 0x158) = 1;
      sub_0203A880();
      *(undefined4 *)(param_1 + 0x15c) = 2;
    }
    break;
  case 2:
    ov74_02230D6C();
    ov74_022295C8(param_1,0x640);
    uVar2 = WaitingIcon_New(param_1 + 0x28,10);
    *(undefined4 *)(param_1 + 0x34d8) = uVar2;
    *(undefined4 *)(param_1 + 0x15c) = 3;
    break;
  case 3:
    iVar1 = ov74_02230E94();
    if (iVar1 != 0) {
      *(int *)(param_1 + 0x164) = iVar1 + -1;
      ov74_022295C8(param_1,0x708);
      *(undefined4 *)(param_1 + 0x15c) = 4;
    }
    ov74_022295D0(param_1,param_1 + 0x15c,0,2);
    break;
  case 4:
    iVar1 = ov74_02230DB8(*(undefined4 *)(param_1 + 0x164));
    if (iVar1 != 0) {
      ov74_02230DF4(*(undefined4 *)(param_1 + 0x164));
      *(undefined4 *)(param_1 + 0x15c) = 7;
      *(undefined4 *)(param_1 + 0x160) = 0x708;
    }
    ov74_022295D0(param_1,param_1 + 0x15c,0,2);
    break;
  case 7:
    ov74_022295D0(param_1,param_1 + 0x15c,0,2,param_4);
    iVar1 = ov74_02230FD4();
    if (iVar1 != 0) {
      *(undefined4 *)(param_1 + 0x15c) = 0x1d;
    }
    break;
  case 8:
    ov74_02230EB4();
    *(undefined4 *)(param_1 + 0x15c) = 9;
    *(undefined4 *)(param_1 + 0x160) = 0x708;
    ov74_022295D0(param_1,param_1 + 0x15c,1,2);
    break;
  case 9:
    iVar1 = ov74_02230F40();
    if (iVar1 != 0) {
      ov74_02230EE8();
      *(undefined4 *)(param_1 + 0x15c) = 10;
      *(undefined4 *)(param_1 + 0x160) = 0xc80;
      ov74_02235568(*(undefined4 *)(param_1 + 4),param_1 + 0x48,2,0x13,0x23);
      PlaySE(0x5dc);
      *(undefined4 *)(param_1 + 0x34d8) = 0;
      return 1;
    }
    ov74_022295D0(param_1,param_1 + 0x15c,1,2);
    break;
  case 10:
    iVar1 = ov74_02230F40();
    if (iVar1 != 0) {
      ov74_02235568(*(undefined4 *)(param_1 + 4),param_1 + 0x48,2,0x13,0x49);
      Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x3170),1);
      ov74_02229084(param_1);
      *(undefined4 *)(param_1 + 0x15c) = 0xb;
    }
    ov74_022295D0(param_1,param_1 + 0x15c,1,2);
    break;
  case 0xb:
    ov74_02230F14(&ov74_0223C1F4,0x2a,1);
    *(undefined4 *)(param_1 + 0x15c) = 0xc;
    *(undefined4 *)(param_1 + 0x160) = 0xc80;
    break;
  case 0xc:
    iVar1 = ov74_02230F6C();
    if (iVar1 != 0) {
      *(undefined4 *)(param_1 + 0x15c) = 0xd;
      *(undefined4 *)(param_1 + 0x160) = 0x3c;
      ov74_02235568(*(undefined4 *)(param_1 + 4),param_1 + 0x48,2,0x13,0x49);
    }
    ov74_022295D0(param_1,param_1 + 0x15c,1,2);
    break;
  case 0xd:
    *(int *)(param_1 + 0x160) = *(int *)(param_1 + 0x160) + -1;
    if (*(int *)(param_1 + 0x160) == 0) {
      ov74_02235568(*(undefined4 *)(param_1 + 4),param_1 + 0x48,2,0x13,0x4a);
      uVar2 = WaitingIcon_New(param_1 + 0x28,10);
      *(undefined4 *)(param_1 + 0x34d8) = uVar2;
      ov74_0222947C(param_1);
      ov74_022360A0(*(undefined4 *)(param_1 + 8));
      *(undefined4 *)(param_1 + 0x15c) = 0xe;
    }
    break;
  case 0xe:
    iVar1 = ov74_022360B0();
    if (iVar1 == 1) {
      *(undefined4 *)(param_1 + 0x15c) = 0xf;
      uVar2 = func_0x020d3550();
      func_0x020f2998(uVar2,0x36);
      *(int *)(param_1 + 0x160) = extraout_r1 + 6;
    }
    break;
  case 0xf:
    *(int *)(param_1 + 0x160) = *(int *)(param_1 + 0x160) + -1;
    if (*(int *)(param_1 + 0x160) == 0) {
      *(undefined4 *)(param_1 + 0x15c) = 0x10;
    }
    break;
  case 0x10:
    ov74_02230F14(&ov74_0223C1F4,0x2a,2);
    *(undefined4 *)(param_1 + 0x15c) = 0x11;
    *(undefined4 *)(param_1 + 0x160) = 0x4b0;
    break;
  case 0x11:
    iVar1 = ov74_02230F98();
    if (iVar1 == 0) {
      *(int *)(param_1 + 0x160) = *(int *)(param_1 + 0x160) + -1;
      if (*(int *)(param_1 + 0x160) == 0) {
        ov74_02231008();
        *(undefined4 *)(param_1 + 0x15c) = 0x17;
        *(undefined4 *)(param_1 + 0x160) = 0x78;
      }
      iVar1 = ov74_02230FD4();
      if (iVar1 == 0) {
        ov74_02231008();
        *(undefined4 *)(param_1 + 0x15c) = 0x16;
        *(undefined4 *)(param_1 + 0x160) = 0x78;
      }
    }
    else {
      ov74_02236128();
      *(undefined4 *)(param_1 + 0x15c) = 0x12;
      *(undefined4 *)(param_1 + 0x160) = 800;
    }
    break;
  case 0x12:
    iVar1 = ov74_0223615C();
    if (iVar1 == 3) {
      ov74_02231008();
      *(undefined4 *)(param_1 + 0x15c) = 0x16;
      *(undefined4 *)(param_1 + 0x160) = 0x78;
    }
    else {
      iVar1 = ov74_0223615C();
      if (iVar1 == 2) {
        iVar1 = ov74_02230F6C();
        if ((iVar1 != 0) || (iVar1 = ov74_02230FD4(), iVar1 == 0)) {
          *(undefined4 *)(param_1 + 0x15c) = 0x13;
          *(undefined4 *)(param_1 + 0x160) = 1;
          ov74_02231008();
          return 0;
        }
      }
      else {
        ov74_022360B0();
      }
    }
    *(int *)(param_1 + 0x160) = *(int *)(param_1 + 0x160) + -1;
    if (*(int *)(param_1 + 0x160) == 0) {
      ov74_02231008();
      *(undefined4 *)(param_1 + 0x15c) = 0x17;
      *(undefined4 *)(param_1 + 0x160) = 10;
    }
  case 0x13:
    *(int *)(param_1 + 0x160) = *(int *)(param_1 + 0x160) + -1;
    if (*(int *)(param_1 + 0x160) == 0) {
      *(undefined4 *)(param_1 + 0x15c) = 0x14;
      ov74_02235568(*(undefined4 *)(param_1 + 4),param_1 + 0x48,2,0x13,0x4b);
      Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x3170),0);
      sub_0200F450(*(undefined4 *)(param_1 + 0x34d8));
      PlaySE(0x5dc);
      *(undefined4 *)(param_1 + 0x34d8) = 0;
    }
    break;
  case 0x14:
    iVar1 = ov74_02231048();
    if (iVar1 != 0) {
      if (*(int *)(param_1 + 0x148) == 1) {
        sub_02034DE0();
        sub_0203A914();
        *(undefined4 *)(param_1 + 0x148) = 0;
      }
      if ((uRam021d1154 & 1) != 0) {
        *(undefined4 *)(param_1 + 0x15c) = 0x1b;
        return 4;
      }
    }
    break;
  case 0x16:
    *(undefined4 *)(param_1 + 0x15c) = 0x17;
  case 0x17:
    ov74_02235568(*(undefined4 *)(param_1 + 4),param_1 + 0x48,2,0x13,0x4c);
    Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x3170),0);
    if (*(int *)(param_1 + 0x34d8) != 0) {
      sub_0200F450();
    }
    *(undefined4 *)(param_1 + 0x34d8) = 0;
    *(undefined4 *)(param_1 + 0x15c) = 0x1c;
    break;
  case 0x1a:
    iVar1 = ov74_02231048();
    if ((iVar1 != 0) && (*(int *)(param_1 + 0x148) == 1)) {
      sub_02034DE0();
      sub_0203A914();
      *(undefined4 *)(param_1 + 0x148) = 0;
      if (*(int *)(param_1 + 0x34d8) != 0) {
        sub_0200F450();
      }
      return 5;
    }
    break;
  case 0x1c:
    iVar1 = ov74_02231048();
    if (iVar1 != 0) {
      if (*(int *)(param_1 + 0x148) == 1) {
        sub_02034DE0();
        sub_0203A914();
        *(undefined4 *)(param_1 + 0x148) = 0;
      }
      if ((uRam021d1154 & 1) != 0) {
        func_0x020d3b84(0);
      }
    }
    break;
  case 0x1d:
    ov74_02235568(*(undefined4 *)(param_1 + 4),param_1 + 0x48,2,0x13,0x1f);
    Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x3170),0);
    sub_0200F450(*(undefined4 *)(param_1 + 0x34d8));
    *(undefined4 *)(param_1 + 0x34d8) = 0;
    PlaySE(0x5dc);
    *(undefined4 *)(param_1 + 0x160) = 0x708;
    *(undefined4 *)(param_1 + 0x15c) = 0x1e;
    break;
  case 0x1e:
    if ((uRam021d1154 & 1) != 0) {
      *(undefined4 *)(param_1 + 0x15c) = 8;
    }
    ov74_022295D0(param_1,param_1 + 0x15c,1,2,param_4);
  }
  return 0;
}

