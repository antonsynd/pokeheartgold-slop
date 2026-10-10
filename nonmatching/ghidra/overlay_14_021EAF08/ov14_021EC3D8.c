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
undefined4 System_GetTouchNewCoords();
undefined4 ov14_021F0594();
undefined4 ov14_021F2A18(void *, int, int);
undefined4 GridInputHandler_SetNextInput(void *, int);
undefined4 ov14_021E8544();
undefined4 ov14_021F6A24();
undefined4 PlaySE(unsigned short);
undefined4 GridInputHandler_GetNextInput(void *);
undefined4 ov14_021F5EE4(void *, void *, unsigned int);
undefined4 ov14_021E84A4();
undefined4 ov14_021E6070();
undefined4 ov14_021F7AC4();
undefined4 ov14_021E765C();
undefined4 ov14_021E8328();
undefined4 ov14_021E7588();
undefined4 GridInputHandler_SetButtonInputMode(void *, int);
extern undefined ov14_021F7D3C;
undefined4 ov14_021F2330();
undefined4 ov14_021F0244();
undefined4 ov14_021F7388();
undefined4 System_GetTouchNew(void);
undefined4 ov14_021F07F0();
undefined4 ov14_021F0234();
undefined4 ov14_021F40E8();
undefined4 ov14_021E884C();
undefined4 ov14_021F2270();
undefined4 ov14_021F2490();



undefined4
ov14_021EC3D8(undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;

  uVar1 = ov14_021F6A24();
  if (uVar1 != 0xffffffff) {
    iVar2 = ov14_021E6070(param_1,uVar1 + 0x1e,0xac,0,param_4);
    if (iVar2 != 0) {
      PlaySE(0x5eb);
      System_GetTouchNewCoords
                ((undefined *)(*(int *)(param_1 + 0x34) + 0x40b8),
                 (undefined *)(*(int *)(param_1 + 0x34) + 0x40bc));
      iVar2 = ov14_021E8544(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
      if (iVar2 == 0) {
        ov14_021F5EE4(param_1,&ov14_021F7D3C,5);
      }
      ov14_021E7588(param_1,uVar1 + 0x1e);
      ov14_021F2A18(*(undefined **)(param_1 + 0x34),9,0);
      uVar3 = ov14_021F0594(param_1,uVar1 + 0x1e);
      return uVar3;
    }
    iVar2 = ov14_021E8544(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
    if (iVar2 != 1) {
      GridInputHandler_SetNextInput(*(undefined **)(*(int *)(param_1 + 0x34) + 0x2c),uVar1 & 0xff);
      GridInputHandler_SetButtonInputMode(*(undefined **)(*(int *)(param_1 + 0x34) + 0x2c),1);
      ov14_021E765C(param_1);
      return 0x24;
    }
    uVar1 = (byte)param_1[0x21] - 0x1e & 0xff;
    iVar2 = GridInputHandler_GetNextInput(*(undefined **)(*(int *)(param_1 + 0x34) + 0x2c));
    ov14_021F7AC4(*(undefined4 *)(param_1 + 0x34),uVar1,iVar2);
    GridInputHandler_SetNextInput(*(undefined **)(*(int *)(param_1 + 0x34) + 0x2c),uVar1);
    ov14_021E84A4(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
    ov14_021E8328(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
    ov14_021E884C(*(undefined4 *)(param_1 + 0x34));
    ov14_021F40E8(param_1,0);
    uVar3 = ov14_021F0234(param_1,0x21ea181,0x4c);
    return uVar3;
  }
  uVar1 = ov14_021F7388(param_1);
  if (uVar1 < 0xfffffffe) {
    if (0xfffffffc < uVar1) {
      uVar1 = GridInputHandler_GetNextInput(*(undefined **)(*(int *)(param_1 + 0x34) + 0x2c));
      if (uVar1 < 6) {
        ov14_021E7588(param_1,uVar1 + 0x1e);
      }
      else if ((((uVar1 != 8) && (uVar1 != 9)) && (uVar1 != 10)) &&
              (((uVar1 != 0xb && (uVar1 != 0xc)) && (uVar1 != 0xd)))) {
        ov14_021E765C(param_1);
      }
      PlaySE(0x5dc);
      uVar3 = ov14_021F0244(param_1,0x4c);
      return uVar3;
    }
    switch(uVar1) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      break;
    case 6:
      PlaySE(0x5dd);
      param_1[0x2a] = 0;
      param_1[0x2b] = 0;
      uVar3 = ov14_021F2490(param_1,0,0x9d);
      return uVar3;
    case 7:
LAB_021ec610:
      PlaySE(0x633);
      uVar3 = ov14_021F2270(param_1,10,0x9f);
      return uVar3;
    case 8:
      PlaySE(0x5dd);
      iVar2 = System_GetTouchNew();
      if (iVar2 == 0) {
        param_1[0x2a] = 2;
      }
      param_1[0x2b] = param_1[0x21];
      uVar3 = ov14_021F2330(param_1,3,0x9d);
      return uVar3;
    case 9:
      PlaySE(0x5dd);
      *(undefined4 *)(param_1 + 0x2c) = 9;
      uVar3 = ov14_021F2270(param_1,4,0x97);
      return uVar3;
    case 10:
      PlaySE(0x5dd);
      uVar3 = ov14_021F2270(param_1,5,0x98);
      return uVar3;
    case 0xb:
      PlaySE(0x5dd);
      uVar3 = ov14_021F2270(param_1,6,0x99);
      return uVar3;
    case 0xc:
      PlaySE(0x5dd);
      uVar3 = ov14_021F2270(param_1,7,0x9b);
      return uVar3;
    case 0xd:
      PlaySE(0x5dc);
      uVar1 = (byte)param_1[0x21] - 0x1e & 0xff;
      iVar2 = GridInputHandler_GetNextInput(*(undefined **)(*(int *)(param_1 + 0x34) + 0x2c));
      ov14_021F7AC4(*(undefined4 *)(param_1 + 0x34),uVar1,iVar2);
      GridInputHandler_SetNextInput(*(undefined **)(*(int *)(param_1 + 0x34) + 0x2c),uVar1);
      uVar3 = ov14_021F2270(param_1,0xb,0x9e);
      return uVar3;
    default:
      if (uVar1 == 0xfffffffc) {
        uVar1 = GridInputHandler_GetNextInput(*(undefined **)(*(int *)(param_1 + 0x34) + 0x2c));
        if (uVar1 < 6) {
          ov14_021E7588(param_1,uVar1 + 0x1e);
        }
        else if (((uVar1 != 8) && (uVar1 != 9)) &&
                ((uVar1 != 10 && (((uVar1 != 0xb && (uVar1 != 0xc)) && (uVar1 != 0xd)))))) {
          ov14_021E765C(param_1);
        }
        PlaySE(0x5dc);
        return 0x24;
      }
    }
  }
  else {
    if (uVar1 == 0xffffffff) {
      return 0x24;
    }
    if (uVar1 == 0xfffffffe) goto LAB_021ec610;
  }
  iVar2 = ov14_021E6070(param_1,uVar1 + 0x1e,0xac,0,param_4);
  if (iVar2 == 0) {
    return 0x24;
  }
  PlaySE(0x5dd);
  ov14_021F5EE4(param_1,&ov14_021F7D3C,5);
  ov14_021E7588(param_1,uVar1 + 0x1e);
  iVar2 = GridInputHandler_GetNextInput(*(undefined **)(*(int *)(param_1 + 0x34) + 0x2c));
  ov14_021F7AC4(*(undefined4 *)(param_1 + 0x34),8,iVar2);
  GridInputHandler_SetNextInput(*(undefined **)(*(int *)(param_1 + 0x34) + 0x2c),8);
  uVar3 = ov14_021F07F0(param_1,uVar1 + 0x1e);
  return uVar3;
}

