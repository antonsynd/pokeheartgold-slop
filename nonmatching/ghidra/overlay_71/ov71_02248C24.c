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
undefined4 Sprite_SetDrawFlag();
undefined4 Sprite_SetMatrix();

void ov71_02248C24(undefined4 param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iStack_28;
  int iStack_24;
  undefined4 uStack_20;
  int iStack_1c;
  undefined4 uStack_18;
  
  *(int *)(param_2 + 0x148) = *(int *)(param_2 + 0x148) + 1;
  if (0xc < *(int *)(param_2 + 0x148)) {
    *(undefined4 *)(param_2 + 0x148) = 0;
    if (*(int *)(param_2 + 0x14c) < 0x14) {
      *(undefined4 *)(param_2 + *(int *)(param_2 + 0x14c) * 4 + 8) = 1;
      *(int *)(param_2 + 0x14c) = *(int *)(param_2 + 0x14c) + 1;
    }
  }
  iStack_24 = 0;
  iVar2 = 0;
  iVar4 = param_2 + 0x58;
  iVar3 = param_2;
  iStack_28 = param_2;
  do {
    iVar1 = *(int *)(iVar3 + 0x5c) + 0x21000;
    *(int *)(iVar3 + 0x5c) = iVar1;
    if (0x1a7fff < iVar1) {
      *(int *)(iVar3 + 0x5c) = *(int *)(iVar3 + 0x5c) + -0x1c4000;
      if (*(int *)(iStack_28 + 8) != 0) {
        Sprite_SetDrawFlag(*(undefined4 *)(*(int *)(param_2 + 4) + iVar2 + 0x1c),1);
        Sprite_SetDrawFlag(*(undefined4 *)(*(int *)(param_2 + 4) + iVar2 + 0x20),1);
      }
    }
    Sprite_SetMatrix(*(undefined4 *)(*(int *)(param_2 + 4) + iVar2 + 0x1c),iVar4);
    uStack_20 = *(undefined4 *)(iVar3 + 0x58);
    uStack_18 = *(undefined4 *)(iVar3 + 0x60);
    iStack_1c = *(int *)(iVar3 + 0x5c) + 0x38000;
    Sprite_SetMatrix(*(undefined4 *)(*(int *)(param_2 + 4) + iVar2 + 0x20),&uStack_20);
    iVar3 = iVar3 + 0xc;
    iStack_28 = iStack_28 + 4;
    iVar2 = iVar2 + 8;
    iStack_24 = iStack_24 + 1;
    iVar4 = iVar4 + 0xc;
  } while (iStack_24 < 0x14);
  return;
}

