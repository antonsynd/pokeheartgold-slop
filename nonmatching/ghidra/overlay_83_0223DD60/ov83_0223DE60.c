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
undefined4 ov83_02247944();
undefined4 ov83_0223EEA0();
undefined4 OverlayManager_GetData();
undefined4 ov83_0223E14C();
undefined4 func_0x02237d8c() __asm__("sub_02237D8C");
undefined4 ov83_022412A0();
undefined4 Options_GetFrame();
undefined4 ov83_0224753C();
undefined4 func_0x0222a7cc() __asm__("sub_0222A7CC");
undefined4 ov83_0223FD14();
undefined4 ov83_02240DA8();
undefined4 ov83_0223E008();
undefined4 ov83_02241B30();
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 ov83_0223EFA4();
undefined4 ov83_0223F010();

undefined4 ov83_0223DE60(undefined4 param_1,int *param_2)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;

  iVar2 = OverlayManager_GetData();
  if (*(char *)(iVar2 + 0x7fe) == '\x01') {
    if (*param_2 == 1) {
      *(undefined1 *)(iVar2 + 0x7fe) = 0;
      ov83_022412A0();
      if (*(int *)(iVar2 + 0x75c) != 0) {
        ov83_0224753C();
        *(byte *)(iVar2 + 0xe) = *(byte *)(iVar2 + 0xe) & 0xfb;
      }
      uVar3 = Options_GetFrame(*(undefined4 *)(iVar2 + 0x508));
      ov83_02247944(iVar2 + 0xb0,uVar3);
      func_0x0222a7cc(*(undefined4 *)(iVar2 + 0x24),0);
      uVar1 = ov83_0223FD14(iVar2,8,1);
      *(undefined1 *)(iVar2 + 10) = uVar1;
      ov83_02240DA8(iVar2,param_2,3);
    }
  }
  else if ((*(char *)(iVar2 + 0x12) != -1) && ((*param_2 == 1 || (*param_2 == 3)))) {
    *(undefined1 *)(iVar2 + 0x7fe) = 0;
    ov83_022412A0(iVar2);
    ov83_02240DA8(iVar2,param_2,2);
  }
  switch(*param_2) {
  case 0:
    iVar4 = ov83_0223E008(iVar2);
    if (iVar4 == 1) {
      ov83_02240DA8(iVar2,param_2,1);
    }
    break;
  case 1:
    iVar4 = ov83_0223E14C(iVar2);
    if (iVar4 == 1) {
      if ((*(byte *)(iVar2 + 0xe) & 3) >> 1 == 1) {
        ov83_02240DA8(iVar2,param_2,2);
      }
      else {
        iVar4 = func_0x02237d8c(*(undefined1 *)(iVar2 + 9));
        if (iVar4 == 1) {
          ov83_02240DA8(iVar2,param_2,3);
        }
        else {
          ov83_02240DA8(iVar2,param_2,4);
        }
      }
    }
    break;
  case 2:
    iVar4 = ov83_0223EEA0(iVar2);
    if (iVar4 == 1) {
      ov83_02240DA8(iVar2,param_2,1);
    }
    break;
  case 3:
    iVar4 = ov83_0223EFA4(iVar2);
    if (iVar4 == 1) {
      ov83_02240DA8(iVar2,param_2,4);
    }
    break;
  case 4:
    iVar4 = ov83_0223F010(iVar2);
    if (iVar4 == 1) {
      return 1;
    }
  }
  ov83_02241B30(iVar2);
  SpriteList_RenderAndAnimateSprites(*(undefined4 *)(iVar2 + 0x518));
  return 0;
}

