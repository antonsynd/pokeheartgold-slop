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
undefined4 ov82_0223E2EC();
undefined4 ov82_0223E2A4();
undefined4 ov82_0223E7E8();
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 ov82_0223E888();
undefined4 ov82_0223F834();
undefined4 OverlayManager_GetData();
undefined4 ov82_0223E820();
undefined4 func_0x0223792c() __asm__("sub_0223792C");
undefined4 ov82_0223F2F8();
undefined4 ov82_0223E5D4();
undefined4 ov82_0223DFBC();

undefined4 ov82_0223DE20(undefined4 param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = OverlayManager_GetData();
  if (((*(char *)(iVar1 + 0x18) != -1) && (*param_2 == 2)) && (*(short *)(iVar1 + 0x10) == 0)) {
    ov82_0223F834();
    ov82_0223F2F8(iVar1,param_2,3);
  }
  switch(*param_2) {
  case 1:
    iVar2 = ov82_0223E2A4(iVar1);
    if (iVar2 != 1) {
      return 0;
    }
    ov82_0223F2F8(iVar1,param_2,0);
  case 0:
    iVar2 = ov82_0223DFBC(iVar1);
    if (iVar2 == 1) {
      ov82_0223F2F8(iVar1,param_2,2);
    }
    break;
  case 2:
    iVar2 = ov82_0223E2EC(iVar1);
    if (iVar2 == 1) {
      if (*(char *)(iVar1 + 0x17) == '\x01') {
        ov82_0223F2F8(iVar1,param_2,3);
      }
      else {
        if (*(char *)(iVar1 + 0xb) == '\x01') {
          ov82_0223F2F8(iVar1,param_2,1);
          return 0;
        }
        iVar2 = func_0x0223792c(*(undefined1 *)(iVar1 + 9));
        if (iVar2 == 1) {
          ov82_0223F2F8(iVar1,param_2,4);
        }
        else {
          ov82_0223F2F8(iVar1,param_2,5);
        }
      }
    }
    break;
  case 3:
    iVar2 = ov82_0223E5D4(iVar1);
    if (iVar2 == 1) {
      if (*(char *)(iVar1 + 0x19) == '\x01') {
        *(undefined1 *)(iVar1 + 0x19) = 0;
        ov82_0223F2F8(iVar1,param_2,2);
      }
      else {
        iVar2 = func_0x0223792c(*(undefined1 *)(iVar1 + 9));
        if (iVar2 == 1) {
          ov82_0223F2F8(iVar1,param_2,4);
        }
        else {
          ov82_0223F2F8(iVar1,param_2,5);
        }
      }
    }
    break;
  case 4:
    iVar2 = ov82_0223E7E8(iVar1);
    if (iVar2 == 1) {
      ov82_0223F2F8(iVar1,param_2,5);
    }
    break;
  case 5:
    iVar2 = ov82_0223E820(iVar1);
    if (iVar2 == 1) {
      return 1;
    }
    break;
  case 6:
    iVar2 = ov82_0223E888(iVar1);
    if (iVar2 == 1) {
      ov82_0223F2F8(iVar1,param_2,4);
    }
  }
  SpriteList_RenderAndAnimateSprites(*(undefined4 *)(iVar1 + 0xa8));
  return 0;
}

