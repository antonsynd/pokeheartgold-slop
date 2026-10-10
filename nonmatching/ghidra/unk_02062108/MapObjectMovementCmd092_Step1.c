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
undefined4 MapObject_SetFlagsBits(void *, int);
undefined4 sub_0205F484(void *);
undefined4 MapObject_CheckVisible(void *);
undefined4 MapObject_SetFacingVector(void *, void *);
undefined4 sub_0205F328(void *, unsigned int);
undefined4 sub_02061070(void *);
void * sub_0205F3E4(void *);
undefined4 sub_0206101C();
undefined4 PlaySE(unsigned short);
undefined4 sub_02060F24();
undefined4 MapObject_IncrementMovementStep(void *);
undefined4 sub_02060F78(void *);
extern undefined UNK_0210facc __asm__("sub_0210FACC");

undefined4
MapObjectMovementCmd092_Step1
          (undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;

  uStack_10 = param_4;
  piVar1 = (int *)sub_0205F3E4(param_1);
  if (*piVar1 != 0) {
    sub_0206101C(param_1,(int)(char)piVar1[3]);
    sub_02061070(param_1);
    if (0xffff < piVar1[1]) {
      piVar1[1] = 0;
      sub_02060F24(param_1,(int)(char)piVar1[3]);
      MapObject_SetFlagsBits(param_1,4);
    }
    iVar2 = *piVar1;
    if (iVar2 < 0) {
      iVar2 = -iVar2;
    }
    piVar1[1] = piVar1[1] + iVar2;
  }
  *(short *)((int)piVar1 + 10) = *(short *)((int)piVar1 + 10) + (short)piVar1[2];
  if (0xf00 < *(ushort *)((int)piVar1 + 10)) {
    *(undefined2 *)((int)piVar1 + 10) = 0xf00;
  }
  uStack_1c = 0;
  uStack_18 = *(undefined4 *)
               (*(int *)(&UNK_0210facc + *(char *)((int)piVar1 + 0xf) * 4) +
               (uint)(*(ushort *)((int)piVar1 + 10) >> 8) * 4);
  uStack_14 = 0;
  MapObject_SetFacingVector(param_1,(undefined *)&uStack_1c);
  *(char *)((int)piVar1 + 0xd) = *(char *)((int)piVar1 + 0xd) + -1;
  if ('\0' < *(char *)((int)piVar1 + 0xd)) {
    return 0;
  }
  uStack_28 = 0;
  uStack_24 = 0;
  uStack_20 = 0;
  MapObject_SetFacingVector(param_1,(undefined *)&uStack_28);
  MapObject_SetFlagsBits(param_1,0x20028);
  sub_02060F78(param_1);
  sub_0205F484(param_1);
  sub_0205F328(param_1,0);
  MapObject_IncrementMovementStep(param_1);
  iVar2 = MapObject_CheckVisible(param_1);
  if (iVar2 == 0) {
    PlaySE(0x646);
  }
  return 1;
}

