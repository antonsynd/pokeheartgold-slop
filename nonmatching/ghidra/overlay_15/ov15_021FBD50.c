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
undefined4 PlaySE();
undefined4 ov15_022002EC();
undefined4 func_0x0200dcc0() __asm__("sub_0200DCC0");
undefined4 ov15_021FAC2C();
undefined4 ov15_021FEDEC();
undefined4 ov15_021FBD28();
undefined4 ManagedSprite_SetAnim();
undefined4 sub_020881C0();
undefined4 ov15_021FD7D0();
extern uint uRam021d1154 __asm__("sub_021D1154");

undefined4 ov15_021FBD50(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined2 uVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  
  iVar5 = 0;
  iVar2 = ov15_021FAC2C(param_1,3);
  if (iVar2 == -1) {
    iVar5 = sub_020881C0(param_1 + 0x680,*(undefined2 *)(param_1 + 0x682));
    if (iVar5 == 0) {
      if ((uRam021d1154 & 1) == 0) {
        if ((uRam021d1154 & 2) != 0) {
          iVar5 = 4;
        }
      }
      else {
        iVar5 = 3;
      }
    }
  }
  else {
    iVar3 = ov15_022002EC(*(undefined2 *)(param_1 + 0x682));
    if (iVar3 == 1) {
      if ((iVar2 == 0) || (iVar2 == 3)) {
        iVar2 = -1;
      }
    }
    else if ((iVar3 == 2) && (((iVar2 == 0 || (iVar2 == 1)) || (iVar2 - 3U < 2)))) {
      iVar2 = -1;
    }
    switch(iVar2) {
    case 0:
      uVar1 = ov15_021FBD28((int)*(short *)(param_1 + 0x680),*(undefined2 *)(param_1 + 0x682),100);
      *(undefined2 *)(param_1 + 0x680) = uVar1;
      func_0x0200dcc0(*(undefined4 *)(param_1 + 0x2d0),0);
      ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0x2d0),0x1a);
      iVar5 = 1;
      break;
    case 1:
      uVar1 = ov15_021FBD28((int)*(short *)(param_1 + 0x680),*(undefined2 *)(param_1 + 0x682),10);
      *(undefined2 *)(param_1 + 0x680) = uVar1;
      func_0x0200dcc0(*(undefined4 *)(param_1 + 0x2d4),0);
      ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0x2d4),0x1a);
      iVar5 = 1;
      break;
    case 2:
      uVar1 = ov15_021FBD28((int)*(short *)(param_1 + 0x680),*(undefined2 *)(param_1 + 0x682),1);
      *(undefined2 *)(param_1 + 0x680) = uVar1;
      func_0x0200dcc0(*(undefined4 *)(param_1 + 0x2d8),0);
      ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0x2d8),0x1a);
      iVar5 = 1;
      break;
    case 3:
      uVar1 = ov15_021FBD28((int)*(short *)(param_1 + 0x680),*(undefined2 *)(param_1 + 0x682),
                            0xffffff9c);
      *(undefined2 *)(param_1 + 0x680) = uVar1;
      func_0x0200dcc0(*(undefined4 *)(param_1 + 0x2dc),0);
      ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0x2dc),0x1c);
      iVar5 = 2;
      break;
    case 4:
      uVar1 = ov15_021FBD28((int)*(short *)(param_1 + 0x680),*(undefined2 *)(param_1 + 0x682),
                            0xfffffff6);
      *(undefined2 *)(param_1 + 0x680) = uVar1;
      func_0x0200dcc0(*(undefined4 *)(param_1 + 0x2e0),0);
      ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0x2e0),0x1c);
      iVar5 = 2;
      break;
    case 5:
      uVar1 = ov15_021FBD28((int)*(short *)(param_1 + 0x680),*(undefined2 *)(param_1 + 0x682),
                            0xffffffff);
      *(undefined2 *)(param_1 + 0x680) = uVar1;
      func_0x0200dcc0(*(undefined4 *)(param_1 + 0x2e4),0);
      ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0x2e4),0x1c);
      iVar5 = 2;
      break;
    case 6:
      iVar5 = 3;
      break;
    case 7:
      iVar5 = 4;
    }
  }
  switch(iVar5) {
  default:
    return 5;
  case 1:
  case 2:
    ov15_021FEDEC(param_1,3);
    PlaySE(0x637);
    return 5;
  case 3:
    PlaySE(0x5dc);
    uVar4 = ov15_021FD7D0(param_1,0x26,9,8,6,param_4);
    return uVar4;
  case 4:
    PlaySE(0x940);
    uVar4 = ov15_021FD7D0(param_1,0x13,9,8,7,param_4);
    return uVar4;
  }
}

