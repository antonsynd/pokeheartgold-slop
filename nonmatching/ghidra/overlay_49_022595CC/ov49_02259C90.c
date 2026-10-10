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
undefined4 ov49_0225B014();
undefined4 ov49_0225AC74();
undefined4 sub_020397FC();
undefined4 OverlayManager_GetData();
undefined4 func_0x0222d844() __asm__("sub_0222D844");
undefined4 ov49_0225B2F0();
undefined4 ov49_0225A038();
undefined4 sub_020393C8();
undefined4 func_0x0222a33c() __asm__("sub_0222A33C");
undefined4 ov49_0225B200();
undefined4 func_0x0222a1fc() __asm__("sub_0222A1FC");
undefined4 ov49_0225B2C0();
undefined4 ov49_0225B124();
undefined4 IsPaletteFadeFinished();
undefined4 OverlayManager_GetArgs();
undefined4 func_0x0222e7cc() __asm__("sub_0222E7CC");
undefined4 ov49_0225B284();
extern uint uRam021d1154 __asm__("sub_021D1154");
undefined4 ov49_0225AC5C();
undefined4 ov49_0225A98C();
undefined4 ov49_0225AB44();
undefined4 ov49_0225B388();
undefined4 ov49_0225B898();
undefined4 ov49_0225AA2C();

undefined4 ov49_02259C90(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  undefined4 uVar2;
  int iVar3;
  
  pcVar1 = (char *)OverlayManager_GetData();
  OverlayManager_GetArgs(param_1);
  switch(*param_2) {
  case 0:
    BeginNormalPaletteFade(0,1,1,0,6,1,0x77,param_4);
    pcVar1[3] = '\x01';
    *param_2 = *param_2 + 1;
    break;
  case 1:
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 == 1) {
      pcVar1[3] = '\0';
      *param_2 = *param_2 + 1;
    }
    break;
  case 2:
    if (((pcVar1[4] & 0xfU) == 1) &&
       ((iVar3 = func_0x0222d844(), iVar3 == 1 ||
        (iVar3 = func_0x0222a1fc(*(undefined4 *)(pcVar1 + 0x34)), iVar3 != 0)))) {
      pcVar1[4] = pcVar1[4] & 0xfU | 0x10;
    }
    if ((pcVar1[7] == '\0') && (iVar3 = func_0x0222a33c(*(undefined4 *)(pcVar1 + 0x34)), iVar3 == 1)
       ) {
      pcVar1[6] = '\x01';
      ov49_0225A038(pcVar1,8);
    }
    if (((*pcVar1 == '\x01') || ((byte)pcVar1[4] >> 4 == 1)) || (pcVar1[6] == '\x01')) {
      if ((byte)pcVar1[4] >> 4 == 0) {
        if (pcVar1[6] == '\x01') {
          *param_2 = 5;
        }
        else {
          *param_2 = 7;
        }
      }
      else {
        *param_2 = 3;
      }
    }
    break;
  case 3:
    ov49_0225AC74(pcVar1 + 0x2f8);
    ov49_0225B014(pcVar1 + 0x338,0,0);
    ov49_0225B124(pcVar1 + 0x3c4);
    ov49_0225B200(pcVar1 + 0x3a0);
    iVar3 = sub_020393C8();
    if (iVar3 == 0) {
      iVar3 = sub_020397FC();
      if (iVar3 == 0) {
        uVar2 = func_0x0222a1fc(*(undefined4 *)(pcVar1 + 0x34));
        ov49_0225B2F0(pcVar1 + 0x390,pcVar1 + 0x2dc,uVar2);
      }
      else {
        uVar2 = func_0x0222e7cc();
        ov49_0225B2C0(pcVar1 + 0x390,pcVar1 + 0x2dc,uVar2);
      }
    }
    else {
      ov49_0225B284(pcVar1 + 0x390,pcVar1 + 0x2dc);
    }
    *param_2 = 4;
    break;
  case 4:
    if ((uRam021d1154 & 1) != 0) {
      *param_2 = 7;
    }
    break;
  case 5:
    ov49_0225AC74(pcVar1 + 0x2f8);
    ov49_0225B014(pcVar1 + 0x338,0,0);
    ov49_0225B124(pcVar1 + 0x3c4);
    ov49_0225B200(pcVar1 + 0x3a0);
    uVar2 = ov49_0225B388(pcVar1 + 0x2dc,1,0x46);
    ov49_0225AB44(pcVar1 + 0x2f8,uVar2);
    *param_2 = 6;
    pcVar1[8] = '<';
    pcVar1[9] = '\0';
    pcVar1[10] = '\0';
    pcVar1[0xb] = '\0';
    break;
  case 6:
    iVar3 = ov49_0225AC5C(pcVar1 + 0x2f8);
    if ((iVar3 != 0) &&
       (iVar3 = *(int *)(pcVar1 + 8), *(int *)(pcVar1 + 8) = iVar3 + -1, iVar3 + -1 < 1)) {
      *param_2 = 7;
    }
    break;
  case 7:
    iVar3 = ov49_0225B898(pcVar1 + 0x184);
    if (iVar3 == 5) {
      BeginNormalPaletteFade(0,0,0,0,6,1,0x77,param_4);
      pcVar1[3] = '\x01';
      *param_2 = *param_2 + 1;
    }
    else if (iVar3 == 0) {
      BeginNormalPaletteFade(0,0,0,0,6,1,0x77,param_4);
      pcVar1[3] = '\x01';
      *param_2 = *param_2 + 1;
    }
    break;
  case 8:
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 == 1) {
      pcVar1[3] = '\0';
      return 1;
    }
  }
  ov49_0225A98C(pcVar1);
  ov49_0225AA2C(pcVar1);
  return 0;
}

