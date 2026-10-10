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
undefined4 ov57_022383F8();
undefined4 ov57_02239728();
undefined4 GiveOrTakeSeal2(void *, int, short);
undefined4 ov57_022394AC();
undefined4 ov57_0223AB58();
undefined4 GameStats_AddScore(void *, int);
undefined4 TouchHitboxController_IsTriggered(void *);
undefined4 ov57_0223853C();
undefined4 ov57_0223A8FC();
undefined4 ov57_02237EB8();
undefined4 ov57_0223A6B8();
void * SealCase_GetCapsuleI(void *, int);
undefined4 SetMonData(void *, int, void *);
undefined4 ov57_022399F8();
undefined4 System_GetTouchHeldCoords(void *, void *);
undefined4 ov57_0223B620();
undefined4 ov57_0223A7DC();
undefined4 ov57_022384C0();
void * Save_GameStats_Get(void *);
undefined4 ov57_02238438();
undefined4 PlaySE(unsigned short);
unsigned char sub_0209106C(unsigned char);
undefined4 ov57_02238FC4();
undefined4 ov57_02239B2C();
undefined4 ov57_02239558();
undefined4 ov57_0223921C();
undefined4 ov57_0223A058();
undefined4 ov57_02238508();
undefined4 ManagedSprite_SetPositionXY(void *, short, short);
undefined4 ov57_0223848C();

undefined4 ov57_0223A31C(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  byte bVar1;
  undefined *puVar2;
  int iVar3;
  undefined *puVar4;
  int iVar5;
  short asStack_20 [2];
  short asStack_1c [2];
  undefined4 uStack_18;

  uStack_18 = param_4;
  switch(param_1[0xff]) {
  case 0:
    iVar5 = ov57_0223A6B8();
    param_1[0xff] = iVar5;
    break;
  case 4:
    iVar5 = ov57_0223B620();
    param_1[0xff] = iVar5;
    break;
  case 5:
    iVar5 = ov57_0223AB58();
    param_1[0xff] = iVar5;
    break;
  case 6:
    ov57_02239728(param_1 + 0x3b,0,0xc,0);
    param_1[0x104] = 0x14;
    iVar5 = ov57_022384C0(param_1);
    if (iVar5 == 1) {
      param_1[0xa2] = 1;
    }
    ov57_0223853C(param_1);
    ov57_022394AC(param_1);
    puVar2 = Save_GameStats_Get(*(undefined **)(*param_1 + 0x28));
    GameStats_AddScore(puVar2,7);
    if (param_1[param_1[0xfb] * 3 + 0xa3] != 0xff) {
      puVar4 = *(undefined **)(*param_1 + param_1[param_1[0xfb] * 3 + 0xa3] * 4 + 4);
      puVar2 = SealCase_GetCapsuleI(*(undefined **)(*param_1 + 0x20),param_1[0xfb]);
      SetMonData(puVar4,0xab,puVar2);
    }
    param_1[0xff] = 0xb;
    break;
  case 7:
    iVar5 = ov57_0223A8FC();
    param_1[0xff] = iVar5;
    break;
  case 0xb:
    iVar5 = ov57_0223A7DC();
    if (iVar5 != 0) {
      return 1;
    }
  }
  if ((param_1[0xff] == 4) || (param_1[0xff] == 0)) {
    iVar5 = param_1[0x35];
    if (iVar5 == 0xff) {
      TouchHitboxController_IsTriggered((undefined *)param_1[0x7b]);
    }
    else {
      iVar3 = System_GetTouchHeldCoords((undefined *)asStack_1c,(undefined *)asStack_20);
      if (param_1[0xff] != 4) {
        iVar3 = 0;
      }
      if (iVar3 == 0) {
        iVar3 = ov57_022383F8(param_1,iVar5);
        ov57_02237EB8(param_1[iVar5 * 4 + 0xd6],param_1[iVar5 * 4 + 0xd5],0);
        if (iVar3 == 0) {
          GiveOrTakeSeal2(*(undefined **)(*param_1 + 0x20),
                          (uint)*(byte *)(param_1 + iVar5 * 4 + 0xd4),1);
          ov57_022399F8(param_1);
          ov57_02238438(param_1,iVar5);
        }
        PlaySE(0x5ea);
        param_1[0x35] = 0xff;
        ov57_02239B2C(param_1 + 0x3b,0xffff);
      }
      else {
        bVar1 = sub_0209106C(*(byte *)(param_1 + iVar5 * 4 + 0xd4));
        ov57_02239B2C(param_1 + 0x3b,bVar1);
        ManagedSprite_SetPositionXY
                  ((undefined *)param_1[iVar5 * 4 + 0xd5],asStack_1c[0],asStack_20[0]);
        ov57_0223848C(param_1,iVar5);
        ov57_02238508(param_1,iVar5);
      }
    }
  }
  ov57_0223A058(param_1);
  ov57_0223921C(param_1);
  ov57_02238FC4(param_1);
  ov57_02239558(param_1);
  return 1;
}

