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
undefined4 sub_02095238();
undefined4 System_GetTouchHeld();
undefined4 sub_02095354();
undefined4 PlaySE();
undefined4 sub_02095DD8();
undefined4 sub_020955EC();
undefined4 sub_02094A70();
undefined4 sub_02095D40();
undefined4 sub_020949F4();
undefined4 sub_02094794();
undefined4 sub_020954CC();
undefined4 System_GetTouchNew();
undefined4 TouchscreenHitbox_FindRectAtTouchNew();
undefined4 sub_02095540();
undefined4 sub_02095D88();
extern int iRam021d1154 __asm__("sub_021D1154");
undefined4 sub_0209569C();
undefined4 sub_02094860();
undefined4 sub_020948C4();
undefined4 Sprite_SetMatrix();
undefined4 sub_020956B8();

int sub_02093630(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  iStack_28 = 0;
  uStack_18 = param_4;
  iVar1 = System_GetTouchHeld();
  iVar2 = iRam021d1154;
  iVar4 = 0;
  if (((iVar1 == 0) && (*(int *)(param_1 + 0x46c0) == 0)) && (iVar4 = iVar2, iRam021d1154 != 0)) {
    iVar6 = 0;
    iVar5 = 0;
    iVar1 = sub_02095DD8(*(undefined4 *)(param_1 + 0x46b8));
    if (iVar2 < 0x21) {
      if (iVar2 < 0x20) {
        if (iVar2 < 3) {
          if (0 < iVar2) {
            if (iVar2 == 1) {
              iStack_28 = sub_02095354(param_1);
              if ((iStack_28 != 0) && (iStack_28 != 3)) {
                PlaySE(0x5dd);
              }
            }
            else if (((iVar2 == 2) && (iStack_28 = sub_020954CC(param_1), iStack_28 != 0)) &&
                    (iStack_28 != 3)) {
              PlaySE(0x5dd);
            }
          }
        }
        else if (iVar2 == 0x10) {
          if (iVar1 == 5) {
            sub_020955EC(param_1);
          }
          else {
            iVar6 = 1;
          }
        }
      }
      else if (iVar1 == 5) {
        sub_02095540(param_1);
      }
      else {
        iVar6 = -1;
      }
    }
    else if (iVar2 < 0x41) {
      if (iVar2 == 0x40) {
        iVar5 = -1;
      }
    }
    else if (iVar2 == 0x80) {
      iVar5 = 1;
    }
    if ((iVar6 != 0) || (iVar5 != 0)) {
      iVar2 = sub_02095D88(*(undefined4 *)(param_1 + 0x46b8),iVar6,iVar5);
      sub_02095238(param_1);
      if (iVar2 != 0) {
        PlaySE(0x5dc);
      }
    }
  }
  if ((iVar4 == 0) && (*(int *)(param_1 + 0x46bc) == 0)) {
    iVar2 = System_GetTouchNew();
    if ((iVar2 == 0) || (*(int *)(param_1 + 0x4680) != 0)) {
      iVar2 = System_GetTouchHeld();
      if ((iVar2 == 0) || (*(int *)(param_1 + 0x46c4) == 0)) {
        sub_02094A70(param_1);
        *(undefined4 *)(param_1 + 0x46c0) = 0;
        *(undefined4 *)(param_1 + 0x46c4) = 0;
      }
      else {
        sub_020949F4(param_1);
        *(undefined4 *)(param_1 + 0x46c0) = 1;
      }
    }
    else {
      *(undefined4 *)(param_1 + 0x46c4) = 1;
      uVar3 = TouchscreenHitbox_FindRectAtTouchNew(*(undefined4 *)(param_1 + 0x7e4));
      if (uVar3 != 0xffffffff) {
        if ((int)uVar3 < 0x1e) {
          if ((*(char *)(param_1 + 0xf) != '\x12') || ((int)uVar3 < 6)) {
            sub_02095D40(*(undefined4 *)(param_1 + 0x46b8),2,uVar3 & 0xff);
            iVar2 = sub_02094794(param_1,uVar3);
            if (iVar2 == 1) {
              PlaySE(0x5eb);
              sub_020948C4(param_1,1,uVar3);
              iStack_28 = 1;
            }
          }
        }
        else if (((int)uVar3 < 0x21) || ((int)(*(byte *)(param_1 + 0xd) + 0x21) <= (int)uVar3)) {
          if (uVar3 == 0x1e) {
            if (*(char *)(param_1 + 0x13) != '\0') {
              uStack_24 = 0xe0000;
              uStack_20 = 0xb0000;
              uStack_1c = 0;
              Sprite_SetMatrix(*(undefined4 *)(param_1 + 0x8c0),&uStack_24);
              sub_02095D40(*(undefined4 *)(param_1 + 0x46b8),1,0);
              sub_0209569C(param_1);
              iStack_28 = 3;
            }
          }
          else if (uVar3 == 0x1f) {
            sub_02095540(param_1);
          }
          else if (uVar3 == 0x20) {
            sub_020955EC(param_1);
          }
        }
        else {
          sub_02095D40(*(undefined4 *)(param_1 + 0x46b8),3,uVar3 - 0x21 & 0xff);
          iVar2 = sub_02094860(param_1,uVar3 - 0x21);
          if (iVar2 == 1) {
            PlaySE(0x5eb);
            sub_020948C4(param_1,2,uVar3 - 0x21);
            iStack_28 = 1;
          }
        }
        sub_020956B8(param_1);
      }
      *(undefined4 *)(param_1 + 0x46c0) = 1;
    }
  }
  if (*(char *)(param_1 + 0xe) == *(char *)(param_1 + 0xd)) {
    *(undefined4 *)(param_1 + 0x14) = 1;
  }
  return iStack_28;
}

