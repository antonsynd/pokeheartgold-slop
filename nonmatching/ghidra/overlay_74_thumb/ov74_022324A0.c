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
undefined4 Sprite_GetMatrixPtr();
undefined4 Sprite_SetDrawFlag();
undefined4 ov74_02232424();
undefined4 ov74_02232398();
undefined4 Sprite_GetDrawFlag();
undefined4 Sprite_SetMatrix();
undefined4 ov74_02232474();
undefined4 ov74_022323D0();

undefined4 ov74_022324A0(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int iStack_20;
  int iStack_1c;
  int iStack_18;

  if ((*(int *)(param_1 + 0x1a8 + param_2 * 0xc) != 0) && (iVar1 = Sprite_GetDrawFlag(), iVar1 == 0)
     ) {
    return 3;
  }
  iVar5 = -1;
  iVar1 = param_1;
  for (iVar4 = 0; (iVar5 == -1 && (iVar4 < 6)); iVar4 = iVar4 + 1) {
    if ((*(int *)(param_1 + 0xe884) == *(int *)(iVar1 + 0x3d0)) &&
       (param_2 == *(int *)(iVar1 + 0x3cc))) {
      iVar5 = iVar4;
    }
    iVar1 = iVar1 + 0xc;
  }
  iVar1 = ov74_02232398(param_1,param_2);
  if (iVar1 == 1) {
    return 4;
  }
  iVar1 = ov74_022323D0(param_1,param_2);
  if (iVar1 == 1) {
    return 5;
  }
  iVar1 = ov74_02232424(param_1,param_2);
  if (iVar1 == 1) {
    return 6;
  }
  iVar1 = ov74_02232474(param_1,param_2);
  if (iVar1 == 1) {
    return 7;
  }
  if (iVar5 == -1) {
    if (*(int *)(param_1 + 0x410) == 6) {
      return 0;
    }
    iVar5 = 0;
    iVar1 = param_1;
    do {
      if (*(int *)(iVar1 + 0x3cc) == -1) {
        uVar2 = Sprite_GetMatrixPtr(*(undefined4 *)(param_1 + 0x1a8 + param_2 * 0xc));
        iVar5 = iVar5 * 0xc;
        iVar1 = param_1 + 0x3c8;
        Sprite_SetMatrix(*(undefined4 *)(iVar1 + iVar5),uVar2);
        piVar3 = (int *)Sprite_GetMatrixPtr(*(undefined4 *)(iVar1 + iVar5));
        iStack_18 = piVar3[2];
        iStack_20 = *piVar3 + -0x8000;
        iStack_1c = piVar3[1] + -0x4000;
        Sprite_SetMatrix(*(undefined4 *)(iVar1 + iVar5),&iStack_20);
        Sprite_SetDrawFlag(*(undefined4 *)(iVar1 + iVar5),1);
        *(int *)(param_1 + iVar5 + 0x3cc) = param_2;
        *(undefined4 *)(param_1 + iVar5 + 0x3d0) = *(undefined4 *)(param_1 + 0xe884);
        *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
        return 1;
      }
      iVar5 = iVar5 + 1;
      iVar1 = iVar1 + 0xc;
    } while (iVar5 < 6);
    return 0;
  }
  Sprite_SetDrawFlag(*(undefined4 *)(param_1 + iVar5 * 0xc + 0x3c8),0);
  *(undefined4 *)(param_1 + iVar5 * 0xc + 0x3cc) = 0xffffffff;
  *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + -1;
  return 2;
}

