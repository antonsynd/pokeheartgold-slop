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
undefined4 ov74_0222D9E0();
undefined4 sub_02037AC0();
undefined4 PlaySE();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 ov74_0222EB28();
undefined4 WaitingIcon_New();
extern uint uRam021d1154 __asm__("sub_021D1154");

void ov74_0222E0D4(int param_1,int param_2,undefined4 *param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  uint uVar4;
  
  uVar3 = uRam021d1154;
  iVar1 = *(int *)(param_1 + 0x3d4c);
  if (((uRam021d1154 & 0x10) != 0) && (iVar1 != 1)) {
    *(undefined4 *)(param_1 + 0x3d4c) = 1;
  }
  uVar4 = uRam021d1154;
  if (((uRam021d1154 & 0x20) != 0) && (uVar4 = 0, *(int *)(param_1 + 0x3d4c) != 0)) {
    uVar4 = 0;
    *(undefined4 *)(param_1 + 0x3d4c) = 0;
  }
  if (iVar1 != *(int *)(param_1 + 0x3d4c)) {
    Sprite_SetAnimCtrlSeq
              (*(undefined4 *)(param_1 + 0x2dc4),*(int *)(param_1 + 0x3d4c) == 0,uVar4,uVar3,param_4
              );
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x2dc8),*(int *)(param_1 + 0x3d4c) != 0);
  }
  iVar1 = 0;
  if ((uRam021d1154 & 2) == 0) {
    uVar3 = uRam021d1154 & 1;
    if (((uVar3 == 0) || (param_2 == 0)) || (*(int *)(param_1 + 0x3d4c) != 0)) {
      if ((uVar3 == 0) || (*(int *)(param_1 + 0x3d4c) != 1)) {
        if ((uVar3 != 0) && (param_2 == 0)) {
          iVar1 = 3;
        }
      }
      else {
        iVar1 = 2;
      }
    }
    else {
      iVar1 = 1;
    }
  }
  else {
    iVar1 = 2;
  }
  if (iVar1 == 1) {
    PlaySE(0x5dc);
    sub_02037AC0(0xab);
    *(undefined4 *)(param_1 + 0x2c34) = 1;
    *param_3 = 0x16;
    ov74_0222D9E0(param_1,param_1 + 0x2bd0,0x11,0x280);
    uVar2 = WaitingIcon_New(param_1 + 0x2bd0,0x13);
    *(undefined4 *)(param_1 + 0x3d50) = uVar2;
  }
  if (iVar1 == 2) {
    PlaySE(0x5dc);
    ov74_0222EB28(param_1,param_3,0x14);
  }
  if (iVar1 == 3) {
    PlaySE(0x5dc);
  }
  return;
}

