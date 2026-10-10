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
undefined4 ov15_021FA1BC();
undefined4 ov15_021FB5AC();
undefined4 ov15_021FBFC0();
undefined4 ov15_021FBF98();
undefined4 ov15_021FC140();
undefined4 ov15_021FA93C();
undefined4 ov15_021FC41C();
undefined4 IsPaletteFadeFinished();
undefined4 OverlayManager_GetData();
undefined4 ov15_021FC784();
undefined4 ov15_021FC7EC();
undefined4 ov15_021FC164();
undefined4 ov15_021FB700();
undefined4 ov15_021FCD80();
undefined4 ov15_021FAE48();
undefined4 ov15_021FB820();
undefined4 ov15_021FBFF8();
undefined4 ov15_021FBD50();
undefined4 ov15_021FC01C();
undefined4 ov15_021FD850();
undefined4 ov15_021FCDE4();
undefined4 ov15_021FD2FC();
undefined4 ov15_021FB604();
undefined4 ov15_021FA578();
undefined4 ov15_021FD058();
undefined4 sub_020880CC();
undefined4 ov15_021FA4F8();
undefined4 ov15_021FB060();
undefined4 ov15_021FAFFC();
undefined4 ov15_021FD3AC();
undefined4 ov15_021FF8D4();
undefined4 ov15_021FCB64();
undefined4 ov15_021FD0E8();
undefined4 ov15_021FC2E0();
undefined4 ov15_021FD24C();
undefined4 ov15_021FB654();
undefined4 ov15_021FD10C();
undefined4 ov15_021FCFC8();
undefined4 SpriteSystem_DrawSprites();
undefined4 ov15_021FDC88();

undefined4 Bag_Main(undefined4 param_1,undefined4 *param_2)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;

  iVar2 = OverlayManager_GetData();
  switch(*param_2) {
  case 0:
    iVar4 = IsPaletteFadeFinished();
    if (iVar4 == 1) {
      cVar1 = *(char *)(*(int *)(iVar2 + 0x234) + 0x65);
      if (cVar1 == '\x01') {
        *param_2 = 0xe;
      }
      else if (cVar1 == '\x02') {
        *param_2 = 0x10;
      }
      else if (cVar1 == '\x03') {
        *param_2 = 0x1a;
      }
      else {
        *param_2 = 1;
      }
    }
    break;
  case 1:
    uVar3 = ov15_021FA1BC();
    *param_2 = uVar3;
    break;
  case 2:
    iVar4 = ov15_021FA93C();
    if (iVar4 == 1) {
      cVar1 = *(char *)(*(int *)(iVar2 + 0x234) + 0x65);
      if (cVar1 == '\x02') {
        *param_2 = 0x10;
      }
      else if (cVar1 == '\x01') {
        *param_2 = 0xe;
      }
      else if (cVar1 == '\x03') {
        *param_2 = 0x1a;
      }
      else {
        *param_2 = 1;
      }
    }
    break;
  case 3:
    uVar3 = ov15_021FAE48();
    *param_2 = uVar3;
    break;
  case 4:
    uVar3 = ov15_021FB5AC();
    *param_2 = uVar3;
    break;
  case 5:
    uVar3 = ov15_021FBD50();
    *param_2 = uVar3;
    break;
  case 6:
    uVar3 = ov15_021FBF98();
    *param_2 = uVar3;
    break;
  case 7:
    uVar3 = ov15_021FBFC0();
    *param_2 = uVar3;
    break;
  case 8:
    uVar3 = ov15_021FBFF8();
    *param_2 = uVar3;
    break;
  case 9:
    uVar3 = ov15_021FC01C();
    *param_2 = uVar3;
    break;
  case 10:
    uVar3 = ov15_021FC140();
    *param_2 = uVar3;
    break;
  case 0xb:
    uVar3 = ov15_021FC164();
    *param_2 = uVar3;
    break;
  case 0xc:
    uVar3 = ov15_021FB700();
    *param_2 = uVar3;
    break;
  case 0xd:
    uVar3 = ov15_021FB820();
    *param_2 = uVar3;
    break;
  case 0xe:
    uVar3 = ov15_021FC41C();
    *param_2 = uVar3;
    break;
  case 0xf:
    uVar3 = ov15_021FC784();
    *param_2 = uVar3;
    break;
  case 0x10:
    uVar3 = ov15_021FC7EC();
    *param_2 = uVar3;
    break;
  case 0x11:
    uVar3 = ov15_021FCD80();
    *param_2 = uVar3;
    break;
  case 0x12:
    uVar3 = ov15_021FCDE4();
    *param_2 = uVar3;
    break;
  case 0x13:
    uVar3 = ov15_021FCFC8();
    *param_2 = uVar3;
    break;
  case 0x14:
    uVar3 = ov15_021FD058();
    *param_2 = uVar3;
    break;
  case 0x15:
    uVar3 = ov15_021FD0E8();
    *param_2 = uVar3;
    break;
  case 0x16:
    uVar3 = ov15_021FD10C();
    *param_2 = uVar3;
    break;
  case 0x17:
    uVar3 = ov15_021FD24C();
    *param_2 = uVar3;
    break;
  case 0x18:
    uVar3 = ov15_021FD2FC();
    *param_2 = uVar3;
    break;
  case 0x19:
    uVar3 = ov15_021FC2E0();
    *param_2 = uVar3;
    break;
  case 0x1a:
    uVar3 = ov15_021FD3AC();
    *param_2 = uVar3;
    break;
  case 0x1b:
    uVar3 = ov15_021FA4F8();
    *param_2 = uVar3;
    break;
  case 0x1c:
    uVar3 = ov15_021FB604();
    *param_2 = uVar3;
    break;
  case 0x1d:
    uVar3 = ov15_021FB654();
    *param_2 = uVar3;
    break;
  case 0x1e:
    uVar3 = ov15_021FA578(iVar2,1);
    *param_2 = uVar3;
    break;
  case 0x1f:
    uVar3 = ov15_021FA578(iVar2,0xffffffff);
    *param_2 = uVar3;
    break;
  case 0x20:
    uVar3 = ov15_021FB060();
    *param_2 = uVar3;
    break;
  case 0x21:
    uVar3 = ov15_021FAFFC();
    *param_2 = uVar3;
    break;
  case 0x22:
    uVar3 = ov15_021FCB64();
    *param_2 = uVar3;
    break;
  case 0x23:
    uVar3 = ov15_021FD850();
    *param_2 = uVar3;
    break;
  case 0x24:
    sub_020880CC(1,6);
    *param_2 = 0x25;
    break;
  case 0x25:
    iVar4 = IsPaletteFadeFinished();
    if (iVar4 == 1) {
      return 1;
    }
  }
  ov15_021FF8D4(iVar2);
  SpriteSystem_DrawSprites(*(undefined4 *)(iVar2 + 0x24c));
  ov15_021FDC88(iVar2);
  return 0;
}

