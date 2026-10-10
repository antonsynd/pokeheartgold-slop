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
undefined4 sub_02037958(void);
undefined4 ov27_0225BDAC();
undefined4 PlayerAvatar_GetPlayerMoveState(void *);
undefined4 TouchscreenHitbox_FindRectAtTouchNew(void *);
unsigned short sub_0203769C(void);
undefined4 ov27_0225C170();
unsigned short Bag_GetRegisteredItem1(void *);
undefined4 ov27_0225B398();
undefined4 sub_02058740(void);
undefined4 sub_02057A0C(void);
undefined4 sub_02058258();
undefined4 sub_02056EE0();
unsigned char sub_02057F18(int);
undefined4 IsPaletteFadeFinished(void);
unsigned short Bag_GetRegisteredItem2(void *);
void * Save_Bag_Get(void *);
extern undefined _DAT_021d1154 __asm__("sub_021D1154");
extern undefined ov27_0225CF68;



undefined4 ov27_0225B4D8(int param_1)

{
  byte bVar1;
  ushort uVar2;
  uint uVar3;
  int iVar4;
  undefined *puVar5;
  int iVar6;

  uVar3 = PlayerAvatar_GetPlayerMoveState(*(undefined **)(*(int *)(param_1 + 0x10) + 0x40));
  if ((uVar3 != 0) || ((_DAT_021d1154 & 0xf0) != 0)) {
    return 1;
  }
  if ((*(uint *)(param_1 + 0x51c) & 0x1f) >> 1 == 5) {
    uVar2 = sub_0203769C();
    iVar4 = sub_02058740();
    if (((((iVar4 == 0) || (iVar4 = sub_02058258(), iVar4 == 0)) ||
         (iVar4 = sub_02056EE0(), iVar4 == 0)) ||
        ((iVar4 = sub_02057A0C(), iVar4 == 0 || (bVar1 = sub_02057F18((uint)uVar2), bVar1 != 0))))
       || (iVar4 = sub_02037958(), iVar4 != 0)) {
      return 1;
    }
  }
  iVar4 = IsPaletteFadeFinished();
  if (iVar4 == 0) {
    return 1;
  }
  if ((*(uint *)(param_1 + 0x51c) & 0x3f) >> 5 == 1) {
    return 1;
  }
  iVar4 = TouchscreenHitbox_FindRectAtTouchNew(&ov27_0225CF68);
  if (((0 < iVar4) && (iVar4 < 8)) && (*(char *)(param_1 + (iVar4 + -1) * 8 + 0x470) == '\0')) {
    return 0;
  }
  puVar5 = Save_Bag_Get(*(undefined **)(*(int *)(param_1 + 0x10) + 0xc));
  if (iVar4 - 8U < 2) {
    if (-1 < *(int *)(param_1 + 0x51c) << 0x1f) {
      return 1;
    }
    iVar6 = ov27_0225BDAC(param_1);
    if (iVar6 == 0) {
      return 1;
    }
  }
  if (iVar4 == 8) {
    uVar2 = Bag_GetRegisteredItem1(puVar5);
    if (uVar2 == 0) {
      return 1;
    }
  }
  else if ((iVar4 == 9) && (uVar2 = Bag_GetRegisteredItem2(puVar5), uVar2 == 0)) {
    return 1;
  }
  if (iVar4 != -1) {
    if (iVar4 == 0) {
      **(undefined2 **)(param_1 + 0xc) = 1;
    }
    else {
      iVar6 = iVar4 + -1;
      if (*(int *)(param_1 + iVar6 * 4 + 0x390) != 0) {
        if (iVar4 < 8) {
          *(int *)(param_1 + 0x14) = iVar6;
          iVar6 = ov27_0225C170(param_1,iVar6);
          *(char *)(*(int *)(param_1 + 0x10) + 0xd3) = (char)iVar6;
          ov27_0225B398(param_1,*(int *)(param_1 + 0x14));
        }
        iVar4 = ov27_0225C170(param_1,iVar4 + -1);
        **(short **)(param_1 + 0xc) = (short)iVar4 + 2;
      }
    }
    return 0;
  }
  return 1;
}

