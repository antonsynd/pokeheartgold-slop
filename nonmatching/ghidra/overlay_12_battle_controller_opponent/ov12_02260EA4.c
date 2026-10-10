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
typedef void code(void);
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
undefined4 ov12_0223AB0C(undefined4, undefined4);
undefined4 ov12_0223B688(undefined4);
undefined4 BattleSystem_GetBattleSpecial(undefined4);
undefined4 BattleSystem_GetBattleType(void);
undefined4 ov12_0223BFC0(undefined4);

void ov12_02260EA4(undefined4 param_1,undefined4 *param_2)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  
  uVar1 = BattleSystem_GetBattleType();
  uVar2 = BattleSystem_GetBattleSpecial(param_1);
  if ((uVar1 & 0x40) != 0) {
    if (*(char *)(param_2 + 0x65) != '\0') {
      *param_2 = 0x225e105;
      param_2[1] = 0x225e405;
      param_2[2] = 0x225e6fd;
      param_2[3] = 0x225f3a5;
      param_2[4] = 0x225f8ad;
      param_2[5] = 0x225fc81;
      *(undefined1 *)((int)param_2 + 0x196) = 1;
      return;
    }
    if ((uVar2 & 0x10) != 0) {
      *param_2 = 0x225e1fd;
      param_2[1] = 0x225e4ed;
      param_2[2] = 0x225e761;
      param_2[3] = 0x225f435;
      param_2[4] = 0x225f981;
      param_2[5] = 0x225fcc1;
      *(undefined1 *)((int)param_2 + 0x196) = 0;
      return;
    }
    *param_2 = 0x225dad5;
    param_2[1] = 0x225e251;
    param_2[2] = 0x225e569;
    param_2[3] = 0x225e831;
    param_2[4] = 0x225f4e1;
    param_2[5] = 0x225fa45;
    *(undefined1 *)((int)param_2 + 0x196) = 0;
    return;
  }
  if ((uVar1 & 0x88) == 0x88) {
    if ((*(byte *)((int)param_2 + 0x195) & 1) != 0) {
      iVar3 = ov12_0223B688(param_1);
      if (iVar3 != 0) {
        *param_2 = 0x225e105;
        param_2[1] = 0x225e405;
        param_2[2] = 0x225e6fd;
        param_2[3] = 0x225f3a5;
        param_2[4] = 0x225f8ad;
        param_2[5] = 0x225fc81;
        *(undefined1 *)((int)param_2 + 0x196) = 1;
        return;
      }
      *param_2 = 0x225e135;
      param_2[1] = 0x225e4cd;
      param_2[2] = 0x225e741;
      param_2[3] = 0x225f3fd;
      param_2[4] = 0x225f961;
      param_2[5] = 0x225fca1;
      *(undefined1 *)((int)param_2 + 0x196) = 2;
      return;
    }
    if ((uVar2 & 0x10) != 0) {
      *param_2 = 0x225e1fd;
      param_2[1] = 0x225e4ed;
      param_2[2] = 0x225e761;
      param_2[3] = 0x225f435;
      param_2[4] = 0x225f981;
      param_2[5] = 0x225fcc1;
      *(undefined1 *)((int)param_2 + 0x196) = 0;
      return;
    }
    iVar3 = ov12_0223BFC0(param_1);
    uVar1 = ov12_0223AB0C(param_1,iVar3 << 1);
    if (*(byte *)((int)param_2 + 0x195) != uVar1) {
      *param_2 = 0x225e135;
      param_2[1] = 0x225e4cd;
      param_2[2] = 0x225e741;
      param_2[3] = 0x225f3fd;
      param_2[4] = 0x225f961;
      param_2[5] = 0x225fca1;
      *(undefined1 *)((int)param_2 + 0x196) = 2;
      return;
    }
    *param_2 = 0x225dad5;
    param_2[1] = 0x225e251;
    param_2[2] = 0x225e569;
    param_2[3] = 0x225e831;
    param_2[4] = 0x225f4e1;
    param_2[5] = 0x225fa45;
    *(undefined1 *)((int)param_2 + 0x196) = 0;
    return;
  }
  if ((uVar1 & 8) != 0) {
    if ((uVar2 & 0x10) != 0) {
      *param_2 = 0x225e1fd;
      param_2[1] = 0x225e4ed;
      param_2[2] = 0x225e761;
      param_2[3] = 0x225f435;
      param_2[4] = 0x225f981;
      param_2[5] = 0x225fcc1;
      *(undefined1 *)((int)param_2 + 0x196) = 0;
      return;
    }
    uVar4 = ov12_0223BFC0(param_1);
    uVar1 = ov12_0223AB0C(param_1,uVar4);
    if (*(byte *)((int)param_2 + 0x195) != uVar1) {
      *param_2 = 0x225e135;
      param_2[1] = 0x225e4cd;
      param_2[2] = 0x225e741;
      param_2[3] = 0x225f3fd;
      param_2[4] = 0x225f961;
      param_2[5] = 0x225fca1;
      *(undefined1 *)((int)param_2 + 0x196) = 2;
      return;
    }
    *param_2 = 0x225dad5;
    param_2[1] = 0x225e251;
    param_2[2] = 0x225e569;
    param_2[3] = 0x225e831;
    param_2[4] = 0x225f4e1;
    param_2[5] = 0x225fa45;
    *(undefined1 *)((int)param_2 + 0x196) = 0;
    return;
  }
  if ((uVar1 & 4) == 0) {
    if ((uVar1 & 0x200) != 0) {
      if ((*(byte *)((int)param_2 + 0x195) & 1) != 0) {
        *param_2 = 0x225e1d5;
        param_2[1] = 0;
        param_2[2] = 0;
        param_2[3] = 0;
        param_2[4] = 0;
        param_2[5] = 0;
        *(undefined1 *)((int)param_2 + 0x196) = 1;
        return;
      }
      *param_2 = 0x225dad5;
      param_2[1] = 0;
      param_2[2] = 0;
      param_2[3] = 0;
      param_2[4] = 0;
      param_2[5] = 0;
      *(undefined1 *)((int)param_2 + 0x196) = 0;
      return;
    }
    if ((uVar1 & 0x20) != 0) {
      if ((*(byte *)((int)param_2 + 0x195) & 1) != 0) {
        *param_2 = 0x225e155;
        param_2[1] = 0;
        param_2[2] = 0;
        param_2[3] = 0;
        param_2[4] = 0;
        param_2[5] = 0;
        *(undefined1 *)((int)param_2 + 0x196) = 1;
        return;
      }
      *param_2 = 0x225dad5;
      param_2[1] = 0;
      param_2[2] = 0;
      param_2[3] = 0;
      param_2[4] = 0;
      param_2[5] = 0x225fa45;
      *(undefined1 *)((int)param_2 + 0x196) = 0;
      return;
    }
    if ((*(byte *)((int)param_2 + 0x195) & 1) != 0) {
      *param_2 = 0x225e105;
      param_2[1] = 0x225e405;
      param_2[2] = 0x225e6fd;
      param_2[3] = 0x225f3a5;
      param_2[4] = 0x225f8ad;
      param_2[5] = 0x225fc81;
      *(undefined1 *)((int)param_2 + 0x196) = 1;
      return;
    }
    if ((uVar2 & 0x10) != 0) {
      *param_2 = 0x225e1fd;
      param_2[1] = 0x225e4ed;
      param_2[2] = 0x225e761;
      param_2[3] = 0x225f435;
      param_2[4] = 0x225f981;
      param_2[5] = 0x225fcc1;
      *(undefined1 *)((int)param_2 + 0x196) = 0;
      return;
    }
    *param_2 = 0x225dad5;
    param_2[1] = 0x225e251;
    param_2[2] = 0x225e569;
    param_2[3] = 0x225e831;
    param_2[4] = 0x225f4e1;
    param_2[5] = 0x225fa45;
    *(undefined1 *)((int)param_2 + 0x196) = 0;
    return;
  }
  if ((uVar2 & 0x10) != 0) {
    *param_2 = 0x225e1fd;
    param_2[1] = 0x225e4ed;
    param_2[2] = 0x225e761;
    param_2[3] = 0x225f435;
    param_2[4] = 0x225f981;
    param_2[5] = 0x225fcc1;
    *(undefined1 *)((int)param_2 + 0x196) = 0;
    return;
  }
  if ((*(byte *)((int)param_2 + 0x195) & 1) != 0) {
    *param_2 = 0x225e135;
    param_2[1] = 0x225e4cd;
    param_2[2] = 0x225e741;
    param_2[3] = 0x225f3fd;
    param_2[4] = 0x225f961;
    param_2[5] = 0x225fca1;
    *(undefined1 *)((int)param_2 + 0x196) = 2;
    return;
  }
  *param_2 = 0x225dad5;
  param_2[1] = 0x225e251;
  param_2[2] = 0x225e569;
  param_2[3] = 0x225e831;
  param_2[4] = 0x225f4e1;
  param_2[5] = 0x225fa45;
  *(undefined1 *)((int)param_2 + 0x196) = 0;
  return;
}

