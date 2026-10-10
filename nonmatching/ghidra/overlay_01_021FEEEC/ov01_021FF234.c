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
undefined4 sub_0205F0F8(undefined4, undefined4, undefined4, undefined4);
undefined4 ov01_021F1640(undefined4);
undefined4 MapObject_GetZCoord(undefined4);
undefined4 sub_0206121C(undefined4, undefined4);
undefined4 MapObject_GetFacingDirection(undefined4);
undefined4 sub_02023F1C(undefined4, undefined4);
undefined4 sub_02023F04(undefined4, undefined4);
undefined4 MapObject_TestFlagsBits(undefined4, undefined4);
undefined4 func_0x02023ea4(undefined4, undefined4) __asm__("sub_02023EA4");
undefined4 sub_02068DA8(undefined4, undefined4);
undefined4 MapObject_GetXCoord(undefined4);
undefined4 func_0x02023f70(undefined4) __asm__("sub_02023F70");
undefined4 sub_02068DB8(undefined4, undefined4);

void ov01_021FF234(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iStack_30;
  undefined4 uStack_2c;
  int iStack_28;
  undefined1 auStack_24 [4];
  undefined4 uStack_20;
  undefined4 uStack_18;

  iVar4 = param_2[0xc];
  uStack_18 = param_4;
  iVar1 = sub_0205F0F8(iVar4,param_2[1],param_2[2],param_2[3]);
  if (iVar1 == 0) {
    ov01_021F1640(param_1);
    return;
  }
  iVar1 = MapObject_TestFlagsBits(iVar4,0x200);
  if (iVar1 == 1) {
    func_0x02023ea4(param_2[0xf],0);
  }
  else {
    func_0x02023ea4(param_2[0xf],1);
  }
  if (param_2[5] == 0) {
    sub_02068DB8(param_1,auStack_24);
    iStack_30 = param_2[6] << 0x10;
    iStack_28 = param_2[8] << 0x10;
    uStack_2c = uStack_20;
    iVar1 = sub_0206121C(param_2[9],&iStack_30);
    param_2[5] = iVar1;
    if (iVar1 == 1) {
      uStack_20 = uStack_2c;
      sub_02068DA8(param_1,auStack_24);
    }
  }
  iVar1 = *param_2;
  if (iVar1 == 0) {
    sub_02023F04(param_2[0xf],0x1000);
    iVar1 = func_0x02023f70(param_2[0xf]);
    if (0xb < (int)(iVar1 + ((uint)(iVar1 >> 0xb) >> 0x14)) >> 0xc) {
      *param_2 = 1;
      return;
    }
  }
  else {
    if (iVar1 == 1) {
      sub_02023F1C(param_2[0xf],0xc000);
      *param_2 = 2;
    }
    else if (iVar1 != 2) {
      return;
    }
    iVar1 = sub_0205F0F8(iVar4,param_2[1],param_2[2],param_2[3]);
    if (iVar1 == 0) {
      ov01_021F1640(param_1);
      return;
    }
    iVar2 = MapObject_GetXCoord(iVar4);
    iVar1 = param_2[0xd];
    iVar3 = MapObject_GetZCoord(iVar4);
    if ((param_2[6] != iVar2 - (short)iVar1) ||
       (param_2[8] != iVar3 - *(short *)((int)param_2 + 0x36))) {
      ov01_021F1640(param_1);
      return;
    }
    if ((char)param_2[0xe] != -1) {
      iVar1 = MapObject_GetFacingDirection(iVar4);
      if ((char)param_2[0xe] != iVar1) {
        ov01_021F1640(param_1);
      }
    }
  }
  return;
}

