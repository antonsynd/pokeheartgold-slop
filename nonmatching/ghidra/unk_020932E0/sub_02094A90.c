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
undefined4 sub_02095D40();
undefined4 Sprite_SetAnimCtrlSeq(void *, int);
undefined4 Sprite_SetDrawPriority(void *, unsigned int);
undefined4 Sprite_SetMatrix(void *, void *);
undefined4 Sprite_SetDrawFlag(void *, int);

void sub_02094A90(int param_1,int param_2)

{
  uint uVar1;
  undefined4 uStack_18;
  int iStack_14;
  undefined4 uStack_10;

  if (param_2 == 0) {
    uStack_18 = *(undefined4 *)(param_1 + 0x4688);
    iStack_14 = *(int *)(param_1 + 0x468c);
    uStack_10 = *(undefined4 *)(param_1 + 0x4690);
    if (*(int *)(param_1 + 0x469c) == 2) {
      sub_02095D40(*(undefined4 *)(param_1 + 0x46b8),3,*(uint *)(param_1 + 0x4684) & 0xff);
    }
    else {
      sub_02095D40(*(undefined4 *)(param_1 + 0x46b8),2,*(uint *)(param_1 + 0x4684) & 0xff);
    }
  }
  else {
    if (*(int *)(param_1 + 0x469c) == 2) {
      if (param_2 == 2) {
        uStack_18 = *(undefined4 *)(param_1 + 0x4688);
        iStack_14 = *(int *)(param_1 + 0x468c);
        uStack_10 = *(undefined4 *)(param_1 + 0x4690);
        uVar1 = *(uint *)(param_1 + 0x4684) & 0xff;
      }
      else {
        uStack_18 = 0xd4000;
        iStack_14 = ((*(uint *)(param_1 + 0x46b0) & 0xff) + 1) * 0x28000;
        uStack_10 = 0;
        uVar1 = *(uint *)(param_1 + 0x46b0) & 0xff;
      }
    }
    else {
      uStack_18 = 0xd4000;
      iStack_14 = ((*(uint *)(param_1 + 0x46b0) & 0xff) + 1) * 0x28000;
      uStack_10 = 0;
      uVar1 = *(uint *)(param_1 + 0x46b0) & 0xff;
    }
    sub_02095D40(*(undefined4 *)(param_1 + 0x46b8),3,uVar1);
  }
  Sprite_SetMatrix(*(undefined **)(*(int *)(param_1 + 0x46a0) + *(int *)(param_1 + 0x4684) * 0x34),
                   (undefined *)(param_1 + 0x4688));
  Sprite_SetDrawPriority
            (*(undefined **)(*(int *)(param_1 + 0x46a0) + *(int *)(param_1 + 0x4684) * 0x34),6);
  Sprite_SetMatrix(*(undefined **)(param_1 + 0x8c0),(undefined *)&uStack_18);
  Sprite_SetAnimCtrlSeq(*(undefined **)(param_1 + 0x8c0),0x2d);
  if (*(int *)(param_1 + 0x46bc) != 0) {
    *(undefined4 *)(param_1 + 0x46bc) = 0;
  }
  *(undefined4 *)(param_1 + 0x4680) = 0;
  *(undefined4 *)(param_1 + 0x4684) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x4688) = 0;
  *(undefined4 *)(param_1 + 0x468c) = 0;
  *(undefined4 *)(param_1 + 0x4690) = 0;
  *(undefined4 *)(param_1 + 0x4694) = 0;
  *(undefined4 *)(param_1 + 0x4698) = 0;
  *(undefined4 *)(param_1 + 0x46a0) = 0;
  *(undefined4 *)(param_1 + 0x469c) = 0;
  Sprite_SetDrawFlag(*(undefined **)(param_1 + 0x7b0),0);
  return;
}

