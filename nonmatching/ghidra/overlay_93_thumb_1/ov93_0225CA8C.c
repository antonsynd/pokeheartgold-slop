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
undefined4 OverlayManager_GetData();
undefined4 IsPaletteFadeFinished();
undefined4 sub_02037B38();
undefined4 ov93_0225E764();
undefined4 ov93_0225E10C();
undefined4 sub_0200FC20();
undefined4 ov93_02262250();
undefined4 BeginNormalPaletteFade();
undefined4 func_0x02258b98() __asm__("sub_02258B98");
undefined4 sub_02037AC0();
undefined4 ov93_022627A4();
undefined4 sub_0200FB70();
extern undefined2 uRam04000042 __asm__("sub_04000042");
extern uint uRam04000000 __asm__("sub_04000000");
extern undefined2 uRam04000046 __asm__("sub_04000046");
undefined4 ov93_0225E300();
undefined4 func_0x02258ce0() __asm__("sub_02258CE0");
undefined4 func_0x02258c8c() __asm__("sub_02258C8C");
undefined4 ov93_0225E7AC();
undefined4 func_0x02258cb0() __asm__("sub_02258CB0");
undefined4 ov93_0225E4B0();
undefined4 ov93_02262310();
undefined4 ov93_0225D4B8();
undefined4 ov93_02262374();
undefined4 ov93_0225E370();
undefined4 ov93_0225D5AC();
extern ushort uRam0400004a __asm__("sub_0400004A");
extern ushort uRam04000048 __asm__("sub_04000048");

undefined4 ov93_0225CA8C(undefined4 param_1,int *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)OverlayManager_GetData();
  iVar2 = *piVar1;
  if (*(char *)(iVar2 + 0x3d) == '\x01') {
    if (*(char *)(iVar2 + 0x3e) == '\0') {
      iVar2 = IsPaletteFadeFinished();
      if (iVar2 == 1) {
        sub_0200FB70();
      }
      sub_0200FC20(0);
      uRam04000000 = uRam04000000 & 0xffff1fff;
      *(char *)(*piVar1 + 0x3e) = *(char *)(*piVar1 + 0x3e) + '\x01';
    }
    else {
      iVar2 = func_0x02258b98(iVar2);
      if (iVar2 == 1) {
        return 1;
      }
    }
    return 0;
  }
  switch(*param_2) {
  case 0:
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 == 1) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 1:
    sub_02037AC0(0xd3);
    *param_2 = *param_2 + 1;
    break;
  case 2:
    iVar2 = sub_02037B38(0xd3);
    if (iVar2 == 1) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 3:
    iVar2 = ov93_022627A4();
    if (iVar2 == 1) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 4:
    if ((uint)*(byte *)(iVar2 + 0x30) <= (uint)piVar1[2]) {
      ov93_0225E10C();
      *param_2 = *param_2 + 1;
    }
    break;
  case 5:
    if (piVar1[0xbf0] == 1) {
      ov93_02262250();
      BeginNormalPaletteFade(0,0x1a,0x1a,0,6,1,0x75);
      *param_2 = *param_2 + 1;
    }
    ov93_0225E764(piVar1);
    switch(piVar1[8]) {
    case 1:
      uRam04000000 = uRam04000000 & 0xffff1fff | 0x4000;
      uRam04000042 = 0x44c;
      uRam04000046 = 0xa8b8;
      uRam04000048 = uRam04000048 & 0xc0ff | 0x1000;
      uRam0400004a = uRam0400004a & 0xffc0 | 0x3f;
      ov93_02262310(piVar1);
      piVar1[8] = 2;
    case 2:
      iVar2 = ov93_02262374(piVar1,piVar1 + 0x5d3);
      if (iVar2 == 1) {
        piVar1[0x5da] = 1;
        piVar1[8] = 0;
      }
      break;
    case 3:
      func_0x02258c8c(piVar1[7]);
      piVar1[8] = 4;
      break;
    case 4:
      iVar2 = func_0x02258ce0(piVar1[7]);
      if (iVar2 == 1) {
        piVar1[0xbee] = 1;
        *(undefined1 *)((int)piVar1 + 0x1559) = 0;
        piVar1[8] = 5;
        ov93_0225D4B8(piVar1);
        ov93_0225D5AC(piVar1,1);
      }
      break;
    case 6:
      func_0x02258cb0(piVar1[7]);
      piVar1[8] = 7;
      break;
    case 7:
      iVar2 = func_0x02258ce0(piVar1[7]);
      if (iVar2 == 1) {
        piVar1[8] = 8;
      }
    }
    ov93_0225E4B0(piVar1);
    ov93_0225E370(piVar1);
    if (piVar1[0xbef] != 1) {
      iVar2 = ov93_0225E300(piVar1);
      if (iVar2 == 1) {
        piVar1[0xbf1] = 0xd;
      }
      if ((piVar1[0xbee] == 1) && ((uint)piVar1[0xbed] < 0x517)) {
        piVar1[0xbed] = piVar1[0xbed] + 1;
      }
    }
    break;
  case 6:
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 == 1) {
      return 1;
    }
  }
  ov93_0225E7AC(piVar1[0x27]);
  piVar1[0xe13] = piVar1[0xe13] + 1;
  return 0;
}

