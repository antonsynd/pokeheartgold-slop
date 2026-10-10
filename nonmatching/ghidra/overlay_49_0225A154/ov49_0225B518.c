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
undefined4 BeginNormalPaletteFade();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 func_0x0222ae08() __asm__("sub_0222AE08");
undefined4 ov49_0225CB68();
undefined4 func_0x0222ada8() __asm__("sub_0222ADA8");
undefined4 ov49_0225B99C();
undefined4 func_0x0222a5c0() __asm__("sub_0222A5C0");
undefined4 func_0x0222ae54() __asm__("sub_0222AE54");
undefined4 ov49_0225BA20();
undefined4 ov49_0225B444();
undefined4 ov49_0225B9AC();
undefined4 ov49_0225C8D4();
undefined4 ov49_02268968();
undefined4 IsPaletteFadeFinished();
undefined4 ov49_0225BBCC();
undefined4 func_0x0222a53c() __asm__("sub_0222A53C");
undefined4 func_0x0222add8() __asm__("sub_0222ADD8");
undefined4 func_0x0222ab48() __asm__("sub_0222AB48");
undefined4 func_0x0222a578() __asm__("sub_0222A578");
undefined4 func_0x0222ab28() __asm__("sub_0222AB28");
undefined4 ov49_0225B944();
undefined4 GF_AssertFail();
undefined4 ov49_0225B9F0();
undefined4 func_0x0222ab58() __asm__("sub_0222AB58");

void ov49_0225B518(char *param_1,int param_2,int param_3,undefined4 param_4)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uStack_48;
  undefined4 uStack_38;
  undefined4 uStack_28;
  undefined1 auStack_24 [4];
  char acStack_20 [4];
  undefined2 auStack_1c [2];
  undefined4 uStack_18;
  
  iVar2 = param_2 + 0x3c;
  uVar7 = *(undefined4 *)(param_2 + 0x34);
  uStack_18 = param_4;
  switch(*param_1) {
  case '\0':
    if (*(short *)(param_1 + 6) == 1) {
      *param_1 = *param_1 + '\x01';
      return;
    }
    break;
  case '\x01':
    BeginNormalPaletteFade(4,0,0,0x7fff,4,1,param_4);
    *param_1 = *param_1 + '\x01';
    return;
  case '\x02':
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 == 1) {
      uVar7 = func_0x0222a5c0(uVar7);
      ov49_0225B9AC(param_1,iVar2,param_2 + 0x2dc,param_4,uVar7);
      param_1[1] = '\x04';
      GfGfx_EngineBTogglePlanes(1,1);
      GfGfx_EngineBTogglePlanes(2,1);
      GfGfx_EngineBTogglePlanes(4,1);
      GfGfx_EngineBTogglePlanes(0x10,1);
      *param_1 = *param_1 + '\x01';
      return;
    }
    break;
  case '\x03':
    BeginNormalPaletteFade(4,1,1,0x7fff,6,1,param_4);
    *param_1 = *param_1 + '\x01';
    return;
  case '\x04':
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 == 1) {
      *param_1 = *param_1 + '\x01';
      return;
    }
    break;
  case '\x05':
    if (param_3 != 1) {
      switch(param_1[1]) {
      case '\x01':
        iVar2 = ov49_0225C8D4(param_1 + 0x114,iVar2,*(undefined4 *)(param_1 + 0x14c));
        if (iVar2 == 1) {
          ov49_0225B444(param_2);
        }
        break;
      case '\x02':
        ov49_0225BBCC(param_1 + 8,param_2 + 0x318);
        break;
      case '\x03':
        if ((param_1[0x153] != '\0') &&
           (iVar3 = ov49_02268968(*(undefined4 *)(param_2 + 0x3dc),*(undefined2 *)(param_1 + 0x150),
                                  param_1[0x152]), iVar3 == 0)) {
          param_1[0x153] = '\0';
          ov49_0225CB68(param_1 + 0x114);
        }
        iVar2 = ov49_0225C8D4(param_1 + 0x114,iVar2,*(undefined4 *)(param_1 + 0x14c),param_4);
        if (iVar2 == 1) {
          uVar6 = func_0x0222a53c(uVar7);
          func_0x0222add8(uVar7,uVar6);
          func_0x0222ae54(uVar7);
          uVar6 = func_0x0222a53c(uVar7);
          uVar7 = func_0x0222ada8(uVar7,uVar6);
          func_0x0222ae08(uVar7,auStack_1c,acStack_20);
          param_1[0x153] = '\x01';
          *(undefined2 *)(param_1 + 0x150) = auStack_1c[0];
          param_1[0x152] = acStack_20[0];
        }
      }
      if (param_1[2] != '\0') {
        *param_1 = *param_1 + '\x01';
        return;
      }
    }
    break;
  case '\x06':
    BeginNormalPaletteFade(4,1,0,0,3,1,param_4);
    *param_1 = *param_1 + '\x01';
    return;
  case '\a':
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 == 1) {
      switch(param_1[1]) {
      case '\x01':
      case '\x03':
      case '\x04':
        ov49_0225BA20(param_1,iVar2);
        break;
      case '\x02':
        ov49_0225B99C(param_1,param_2 + 0x318,iVar2);
      }
      *param_1 = *param_1 + '\x01';
      return;
    }
    break;
  case '\b':
    switch(param_1[2]) {
    case '\x01':
    case '\x04':
      uVar7 = func_0x0222a5c0(uVar7);
      ov49_0225B9AC(param_1,iVar2,param_2 + 0x2dc,param_4,uVar7);
      break;
    case '\x02':
      uVar6 = func_0x0222a5c0(uVar7);
      bVar1 = param_1[3];
      uVar4 = func_0x0222a53c(uVar7);
      if (bVar1 != uVar4) {
        uStack_48 = func_0x0222a578(uVar7);
      }
      else {
        uStack_48 = func_0x0222a5c0(uVar7);
      }
      uVar5 = func_0x0222ab28(uVar7,param_1[3]);
      if (*(short *)(param_1 + 4) == 1) {
        uStack_38 = func_0x0222ab48(uVar7,param_1[3]);
        iVar3 = func_0x0222ab58(uVar7,param_1[3]);
        if (iVar3 == 0) {
          uStack_38 = 0;
        }
      }
      else {
        iVar3 = 0;
        uStack_38 = 0;
      }
      ov49_0225B944(param_1,param_2 + 0x318,iVar2,param_2 + 0x2dc,bVar1 == uVar4,param_4,uStack_48,
                    uVar6,uVar5,uStack_38,iVar3,1);
      break;
    case '\x03':
      uVar6 = func_0x0222a53c(uVar7);
      iVar3 = func_0x0222ada8(uVar7,uVar6);
      if (iVar3 == -1) {
        GF_AssertFail();
        iVar3 = 0;
      }
      func_0x0222ae08(iVar3,auStack_24,&uStack_28);
      ov49_0225B9F0(param_1,iVar2,param_4,uStack_28);
    }
    param_1[2] = '\0';
    *param_1 = *param_1 + '\x01';
    return;
  case '\t':
    BeginNormalPaletteFade(4,1,1,0,3,1,param_4);
    if (param_1[1] == '\x02') {
      ov49_0225BBCC(param_1 + 8,param_2 + 0x318);
    }
    *param_1 = *param_1 + '\x01';
    return;
  case '\n':
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 == 1) {
      *param_1 = '\x05';
    }
  }
  return;
}

