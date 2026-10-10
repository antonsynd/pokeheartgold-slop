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
undefined4 sub_0208A520();
undefined4 thunk_Sprite_SetPaletteOverride();
undefined4 sub_0208BE00();
undefined4 Party_GetMonByIndex();
undefined4 Boxmon_GetIconPalette();
undefined4 Pokemon_GetIconPalette();
undefined4 thunk_Sprite_SetDrawFlag();

void sub_0208BECC(int param_1,undefined4 param_2,undefined4 param_3,uint param_4)

{
  char cVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 uStack_18;
  
  uVar2 = sub_0208A520();
  cVar1 = *(char *)(*(int *)(param_1 + 0x22c) + 0x11);
  if (cVar1 == '\0') {
    uStack_18 = 1;
  }
  else if (cVar1 == '\x01') {
    uStack_18 = (uint)*(byte *)(*(int *)(param_1 + 0x22c) + 0x13);
  }
  else {
    uStack_18 = param_4;
    if (cVar1 == '\x02') {
      uStack_18 = 0;
    }
  }
  iVar4 = 0;
  iVar5 = param_1;
  if (0 < (int)uStack_18) {
    do {
      cVar1 = *(char *)((int)*(undefined4 **)(param_1 + 0x22c) + 0x11);
      if (cVar1 == '\0') {
        uVar2 = sub_0208A520(param_1);
        iVar3 = Pokemon_GetIconPalette();
        thunk_Sprite_SetPaletteOverride(*(undefined4 *)(iVar5 + 0x528),iVar3 + 0xc);
      }
      else if (cVar1 == '\x01') {
        uVar2 = Party_GetMonByIndex(**(undefined4 **)(param_1 + 0x22c),iVar4);
        iVar3 = Pokemon_GetIconPalette();
        thunk_Sprite_SetPaletteOverride(*(undefined4 *)(iVar5 + 0x528),iVar3 + 0xc);
      }
      else if (cVar1 == '\x02') {
        iVar3 = Boxmon_GetIconPalette(uVar2);
        thunk_Sprite_SetPaletteOverride(*(undefined4 *)(iVar5 + 0x528),iVar3 + 0xc);
      }
      sub_0208BE00(param_1,uVar2,iVar4 + 0x49);
      iVar4 = iVar4 + 1;
      iVar5 = iVar5 + 4;
    } while (iVar4 < (int)uStack_18);
  }
  if (iVar4 < 6) {
    param_1 = param_1 + iVar4 * 4;
    do {
      thunk_Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x528),0);
      iVar4 = iVar4 + 1;
      param_1 = param_1 + 4;
    } while (iVar4 < 6);
  }
  return;
}

