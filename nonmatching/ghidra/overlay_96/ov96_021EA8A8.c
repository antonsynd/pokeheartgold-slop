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
undefined4 ov96_021EAA88();
undefined4 ov96_021E9CF4();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 ov96_021E8B1C();
undefined4 SysTask_CreateOnMainQueue();
undefined4 Sprite_SetDrawFlag();
undefined4 GF_AssertFail();

void ov96_021EA8A8(int param_1,undefined4 param_2,short *param_3,int param_4,int param_5,
                  undefined4 param_6)

{
  undefined4 uVar1;
  int iVar2;
  short *psVar3;
  int iVar4;
  int iStack_20;
  int iStack_1c;
  int iStack_18;

  iStack_1c = param_5;
  iStack_18 = 0;
  psVar3 = param_3;
  iVar4 = param_1;
  iStack_20 = param_4;
  if (0 < *(int *)(param_1 + 4)) {
    do {
      if (psVar3[2] == 0) {
        uVar1 = 0x10;
      }
      else {
        uVar1 = 0x20;
      }
      *(undefined4 *)(iVar4 + 0x30) = uVar1;
      *(undefined4 *)(iVar4 + 0x34) = uVar1;
      iVar2 = *(int *)(iStack_20 + 0x14);
      if (iVar2 == 1) {
        *(undefined4 *)(iVar4 + 0x2c) = 3;
      }
      else if (iVar2 == 2) {
        *(undefined4 *)(iVar4 + 0x2c) = 4;
      }
      else if (iVar2 == 3) {
        *(undefined4 *)(iVar4 + 0x2c) = 5;
      }
      else {
        GF_AssertFail();
        *(undefined4 *)(iVar4 + 0x2c) = 3;
      }
      iVar2 = ov96_021E9CF4(*(undefined4 *)(param_1 + 0x18),2);
      if (iVar2 != 0) {
        uVar1 = ov96_021EAA88(param_1,*(undefined4 *)(param_4 + 4),*(undefined4 *)(param_4 + 0x10),
                              0x16);
        *(undefined4 *)(iVar4 + 0x20) = uVar1;
        if (psVar3[2] == 0) {
          Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar4 + 0x20),0);
        }
        else {
          Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar4 + 0x20),1);
        }
        if ((ushort)(*psVar3 - 0x32U) < 2) {
          *(undefined4 *)(iVar4 + 0x5c) = 1;
          Sprite_SetDrawFlag(*(undefined4 *)(iVar4 + 0x20),0);
        }
        else {
          *(undefined4 *)(iVar4 + 0x5c) = 0;
        }
      }
      iVar2 = ov96_021E9CF4(*(undefined4 *)(param_1 + 0x18),4);
      if (iVar2 != 0) {
        uVar1 = ov96_021EAA88(param_1,*(undefined4 *)(param_4 + 4),*(undefined4 *)(param_4 + 0x10),
                              0x15);
        *(undefined4 *)(iVar4 + 0x24) = uVar1;
        if (3 < *(int *)(psVar3 + 4)) {
          GF_AssertFail();
        }
        Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar4 + 0x24),*(undefined4 *)(psVar3 + 4));
        iVar2 = *(int *)(iStack_20 + 0x14);
        if (iVar2 == 1) {
          *(undefined4 *)(iVar4 + 0x28) = 3;
        }
        else if (iVar2 == 2) {
          *(undefined4 *)(iVar4 + 0x28) = 4;
        }
        else if (iVar2 == 3) {
          *(undefined4 *)(iVar4 + 0x28) = 5;
        }
        else {
          GF_AssertFail();
          *(undefined4 *)(iVar4 + 0x28) = 3;
        }
      }
      *(undefined4 *)(iVar4 + 0x58) = 0xc;
      iStack_20 = iStack_20 + 4;
      iStack_18 = iStack_18 + 1;
      psVar3 = psVar3 + 8;
      iVar4 = iVar4 + 0x44;
    } while (iStack_18 < *(int *)(param_1 + 4));
  }
  if (param_5 < 1) {
    iStack_1c = 1;
  }
  ov96_021E8B1C(*(undefined4 *)(param_1 + 0x14),param_2,param_3,param_4,iStack_1c + -1,param_6);
  SysTask_CreateOnMainQueue(0x21eaa25,param_1,iStack_1c);
  return;
}

