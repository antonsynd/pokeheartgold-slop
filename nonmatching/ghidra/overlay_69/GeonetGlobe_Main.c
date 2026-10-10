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
void * OverlayManager_GetData(void *);
void * NARC_New(int, int);
void * NewMsgDataFromNarc(int, int, int, int);
undefined4 BeginNormalPaletteFade(int, int, int, unsigned short, int, int, int);
undefined4 NARC_Delete(void *);
undefined4 ov69_021E64CC();
undefined4 GfGfx_EngineATogglePlanes(unsigned char, unsigned char);
undefined4 ov69_021E6810();
undefined4 ov69_021E6E88();
undefined4 ov69_021E6A54();
undefined4 IsPaletteFadeFinished(void);
undefined4 ListMenu_ProcessInput(void *);
undefined4 System_GetTouchNew(void);
undefined4 ov69_021E68EC();
undefined4 GfGfx_EngineBTogglePlanes(unsigned char, unsigned char);
extern undefined ov69_021E7698;
extern undefined UNK_021e7644 __asm__("sub_021E7644");
extern uint  uRam021d1168 __asm__("sub_021D1168");
extern undefined ov69_021E76E8;
undefined4 LocationGmmDatIndexGetByCountryMsgNo(int);
void * LocationGmmDatGetDistrictNameMsgIdsPtr(int);
void * Std_CreateYesNoMenu(void *, void *, unsigned short, unsigned char, int);
undefined4 LocationGmmDatGetGmmNo(int);
undefined4 PlaySE(unsigned short);
undefined4 ov69_021E758C();
undefined4 LocationGmmDatGetDistrictCount(int);
undefined4 ov69_021E6994();
undefined4 Handle2dMenuInput_DeleteOnFinish(void *, int);
extern undefined ov69_021E7674;
extern undefined ov69_021E7664;
extern undefined ov69_021E7708;
undefined4 ov69_021E6FE8();
undefined4 sub_0200E5D4(void *, int);
undefined4 ov69_021E6308();
undefined4 ov69_021E7198();
undefined4 DrawFrameAndWindow1(void *, int, unsigned short, unsigned char);
undefined4 WiFiHistory_SetPlayerGlobeInfo(void *, int, int);
undefined4 ov69_021E6B5C();
undefined4 ov69_021E6C30();
undefined4 ov69_021E6C14();
undefined4 ov69_021E706C();
undefined4 ov69_021E6F8C();
undefined4 ov69_021E62B0();
undefined4 FillWindowPixelRect(void *, unsigned char, unsigned short, unsigned short, unsigned short, unsigned short);
undefined4 ov69_021E6D5C();
undefined4 ov69_021E6A8C();
extern uint  uRam021d1154 __asm__("sub_021D1154");
undefined4 ov69_021E67B8();
undefined4 ov69_021E737C();
undefined4 ov69_021E6F48();
undefined4 ov69_021E7408();
undefined4 DestroyMsgData(void *);
extern uint  uRam021d1150 __asm__("sub_021D1150");



int GeonetGlobe_Main(undefined *param_1,undefined *param_2)

{
  int *piVar1;
  int iVar2;
  undefined *puVar3;
  int iVar4;
  uint uVar5;
  int iStack_24;
  undefined1 auStack_1c [8];

  piVar1 = (int *)OverlayManager_GetData(param_1);
  iStack_24 = 0;
  iVar2 = *(int *)param_2;
  if ((((iVar2 != 0xe) && (iVar2 != 0xf)) && (iVar2 != 0x10)) &&
     (iVar2 = System_GetTouchNew(), iVar2 != 0)) {
    uRam021d1168 = 1;
  }
  switch(*(undefined4 *)param_2) {
  case 0:
    puVar3 = NewMsgDataFromNarc(1,0x1b,0xba,*piVar1);
    piVar1[0x301c] = (int)puVar3;
    puVar3 = NARC_New(0x7b,*piVar1);
    ov69_021E6E88(piVar1,puVar3);
    ov69_021E64CC(piVar1,puVar3);
    NARC_Delete(puVar3);
    piVar1[0x30bf] = 0;
    BeginNormalPaletteFade(0,1,1,0,6,1,*piVar1);
    GfGfx_EngineATogglePlanes(4,1);
    GfGfx_EngineBTogglePlanes(4,1);
    GfGfx_EngineATogglePlanes(8,1);
    GfGfx_EngineBTogglePlanes(8,1);
    *(undefined4 *)param_2 = 1;
    break;
  case 1:
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 == 1) {
      *(undefined4 *)param_2 = 2;
    }
    break;
  case 2:
    iVar2 = ov69_021E6810(piVar1,0,1);
    if (iVar2 == 1) {
      if (piVar1[0x30c9] == 0) {
        *(undefined4 *)param_2 = 3;
      }
      else {
        *(undefined4 *)param_2 = 0xe;
      }
    }
    break;
  case 3:
    iVar2 = ov69_021E6810(piVar1,1,1);
    if (iVar2 == 1) {
      ov69_021E68EC(piVar1,piVar1 + 0x3009,&UNK_021e7644,&ov69_021E76E8,&ov69_021E7698);
      *(undefined4 *)param_2 = 4;
    }
    break;
  case 4:
    iVar2 = ListMenu_ProcessInput((undefined *)piVar1[0x3019]);
    if (iVar2 != -1) {
      ov69_021E6A54(piVar1);
      PlaySE(0x5dc);
      switch(iVar2) {
      case 1:
        *(undefined4 *)param_2 = 5;
        break;
      case -2:
      case 2:
        *(undefined4 *)param_2 = 0x11;
        break;
      default:
        *(undefined4 *)param_2 = 0xe;
      }
    }
    break;
  case 5:
    iVar2 = ov69_021E6810(piVar1,2,1);
    if (iVar2 == 1) {
      puVar3 = Std_CreateYesNoMenu((undefined *)piVar1[0x3004],&ov69_021E7664,0x1d9,7,*piVar1);
      piVar1[0x301b] = (int)puVar3;
      *(undefined4 *)param_2 = 6;
    }
    break;
  case 6:
    iVar2 = Handle2dMenuInput_DeleteOnFinish((undefined *)piVar1[0x301b],*piVar1);
    if (iVar2 == 0) {
      if (piVar1[0x30c0] == 1) {
        piVar1[0x30cb] = 0x67;
        *(undefined4 *)param_2 = 9;
      }
      else {
        *(undefined4 *)param_2 = 7;
      }
    }
    else if (iVar2 == -2) {
      *(undefined4 *)param_2 = 3;
    }
    break;
  case 7:
    iVar2 = ov69_021E6810(piVar1,3,1);
    if (iVar2 == 1) {
      piVar1[0x30cb] = 0;
      puVar3 = LocationGmmDatGetDistrictNameMsgIdsPtr(0);
      iVar2 = LocationGmmDatGetDistrictCount(0);
      ov69_021E6994(piVar1,piVar1 + 0x3009,&ov69_021E7674,&ov69_021E7708,0x31e,puVar3,iVar2);
      *(undefined4 *)param_2 = 8;
    }
    break;
  case 8:
    uVar5 = ListMenu_ProcessInput((undefined *)piVar1[0x3019]);
    if (uVar5 != 0xffffffff) {
      ov69_021E6A54(piVar1);
      PlaySE(0x5dc);
      if (uVar5 != 0xfffffffe) {
        puVar3 = LocationGmmDatGetDistrictNameMsgIdsPtr(0);
        uVar5 = (uint)(byte)puVar3[uVar5];
      }
      if (uVar5 == 0xfffffffe) {
        *(undefined4 *)param_2 = 3;
      }
      else {
        piVar1[0x30cb] = uVar5;
        iVar2 = ov69_021E758C(piVar1[0x30cb]);
        if (iVar2 == 1) {
          *(undefined4 *)param_2 = 9;
        }
        else {
          piVar1[0x30cc] = 0;
          *(undefined4 *)param_2 = 0xb;
        }
      }
    }
    break;
  case 9:
    iVar2 = ov69_021E6810(piVar1,4,1);
    if (iVar2 == 1) {
      piVar1[0x30cc] = 0;
      iVar2 = LocationGmmDatIndexGetByCountryMsgNo(piVar1[0x30cb]);
      iVar4 = LocationGmmDatGetGmmNo(iVar2);
      puVar3 = LocationGmmDatGetDistrictNameMsgIdsPtr(iVar2);
      iVar2 = LocationGmmDatGetDistrictCount(iVar2);
      ov69_021E6994(piVar1,piVar1 + 0x3009,&ov69_021E7674,&ov69_021E7708,iVar4,puVar3,iVar2);
      *(undefined4 *)param_2 = 10;
    }
    break;
  case 10:
    uVar5 = ListMenu_ProcessInput((undefined *)piVar1[0x3019]);
    if (uVar5 != 0xffffffff) {
      ov69_021E6A54(piVar1);
      PlaySE(0x5dc);
      if (uVar5 != 0xfffffffe) {
        iVar2 = LocationGmmDatIndexGetByCountryMsgNo(piVar1[0x30cb]);
        puVar3 = LocationGmmDatGetDistrictNameMsgIdsPtr(iVar2);
        uVar5 = (uint)(byte)puVar3[uVar5];
      }
      if (uVar5 == 0xfffffffe) {
        if (piVar1[0x30c0] == 1) {
          *(undefined4 *)param_2 = 3;
        }
        else {
          *(undefined4 *)param_2 = 7;
        }
      }
      else {
        piVar1[0x30cc] = uVar5;
        *(undefined4 *)param_2 = 0xb;
      }
    }
    break;
  case 0xb:
    ov69_021E6B5C(piVar1,piVar1[0x30cb],piVar1[0x30cc]);
    *(undefined4 *)param_2 = 0xc;
    break;
  case 0xc:
    iVar2 = ov69_021E6810(piVar1,5,1);
    if (iVar2 == 1) {
      puVar3 = Std_CreateYesNoMenu((undefined *)piVar1[0x3004],&ov69_021E7664,0x1d9,7,*piVar1);
      piVar1[0x301b] = (int)puVar3;
      *(undefined4 *)param_2 = 0xd;
    }
    break;
  case 0xd:
    iVar2 = Handle2dMenuInput_DeleteOnFinish((undefined *)piVar1[0x301b],*piVar1);
    if (iVar2 == 0) {
      ov69_021E6C14(piVar1);
      WiFiHistory_SetPlayerGlobeInfo((undefined *)piVar1[1],piVar1[0x30cb],piVar1[0x30cc]);
      piVar1[0x30c9] = piVar1[0x30cb];
      piVar1[0x30ca] = piVar1[0x30cc];
      *(undefined4 *)param_2 = 0xe;
    }
    else if (iVar2 == -2) {
      ov69_021E6C14(piVar1);
      *(undefined4 *)param_2 = 3;
    }
    break;
  case 0xe:
    if ((piVar1[0x30c0] == 1) && (piVar1[0x30cd] == 0)) {
      *(undefined2 *)(piVar1 + 0x30c1) = 0;
    }
    else {
      *(undefined2 *)(piVar1 + 0x30c1) = 1;
    }
    ov69_021E6F8C(piVar1);
    ov69_021E62B0(piVar1);
    ov69_021E6FE8(piVar1);
    ov69_021E706C(piVar1);
    FillWindowPixelRect((undefined *)(piVar1 + 0x3005),0xf,0,0,0xd8,0x20);
    DrawFrameAndWindow1((undefined *)(piVar1 + 0x300d),0,0x1d9,7);
    if (piVar1[0x30c9] != 0) {
      ov69_021E6A8C(piVar1);
    }
    ov69_021E6D5C(piVar1);
    piVar1[0x30ce] = 0;
    piVar1[0x30be] = 1;
    *(undefined4 *)param_2 = 0xf;
    break;
  case 0xf:
    iVar2 = piVar1[0x30ba];
    ov69_021E6308(piVar1);
    iVar4 = ov69_021E6C30(piVar1,auStack_1c);
    if (iVar4 == 0) {
      sub_0200E5D4((undefined *)(piVar1 + 0x3011),0);
    }
    else {
      DrawFrameAndWindow1((undefined *)(piVar1 + 0x3011),0,0x1d9,7);
    }
    if (((uRam021d1154 & 2) == 0) && (uVar5 = piVar1[0x30c2], (uVar5 & 2) == 0)) {
      if ((((uRam021d1154 & 0x400) == 0) && ((uVar5 & 0x400) == 0)) || (piVar1[0x30ce] != 0)) {
        if ((((uRam021d1154 & 0x403) == 0) && ((uVar5 & 0x400) == 0)) || (piVar1[0x30ce] != 1)) {
          iVar4 = ov69_021E7198(piVar1,uRam021d1154,uRam021d1150);
          if ((iVar4 == 1) && (piVar1[0x30ce] == 1)) {
            piVar1[0x30ce] = 0;
            ov69_021E6D5C(piVar1);
          }
          if ((short)iVar2 != (short)piVar1[0x30ba]) {
            *(undefined4 *)param_2 = 0x10;
            PlaySE(0x5d9);
          }
        }
        else {
          piVar1[0x30ce] = 0;
          ov69_021E6D5C(piVar1);
        }
      }
      else {
        piVar1[0x30ce] = 1;
        ov69_021E6D5C(piVar1);
        if (piVar1[0x30ce] == 1) {
          PlaySE(0x5dd);
        }
      }
    }
    else {
      sub_0200E5D4((undefined *)(piVar1 + 0x300d),0);
      sub_0200E5D4((undefined *)(piVar1 + 0x3011),0);
      PlaySE(0x5dd);
      FillWindowPixelRect((undefined *)(piVar1 + 0x3005),0xf,0,0,0xd8,0x20);
      if (piVar1[0x30c9] == 0) {
        piVar1[0x30be] = 2;
        *(undefined4 *)param_2 = 3;
      }
      else {
        ov69_021E6C14(piVar1);
        *(undefined4 *)param_2 = 0x11;
      }
    }
    break;
  case 0x10:
    iVar2 = ov69_021E737C(piVar1);
    if (iVar2 == 1) {
      *(undefined4 *)param_2 = 0xf;
    }
    break;
  case 0x11:
    piVar1[0x30bf] = 0;
    BeginNormalPaletteFade(0,0,0,0,6,1,*piVar1);
    *(undefined4 *)param_2 = 0x12;
    break;
  case 0x12:
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 == 1) {
      piVar1[0x30be] = 1;
      ov69_021E67B8(piVar1);
      ov69_021E6F48(piVar1);
      DestroyMsgData((undefined *)piVar1[0x301c]);
      *(undefined4 *)param_2 = 0;
      iStack_24 = 1;
    }
  }
  ov69_021E7408(piVar1);
  return iStack_24;
}

