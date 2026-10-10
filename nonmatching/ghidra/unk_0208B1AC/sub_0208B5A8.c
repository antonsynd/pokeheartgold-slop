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
undefined4 Sprite_SetPositionXY(void *, short, short);
undefined4 GetMoveAttr(unsigned short, int);
undefined4 thunk_Sprite_SetDrawFlag(void *, int);
undefined4 sub_0208BA88();

void sub_0208B5A8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;

  uVar3 = 0xb;
  do {
    thunk_Sprite_SetDrawFlag(*(undefined **)(param_1 + uVar3 * 4 + 0x404),0);
    uVar3 = uVar3 + 1 & 0xffff;
  } while (uVar3 < 0x14);
  if (-1 < *(int *)(param_1 + 0x280) << 3) {
    if (*(char *)(param_1 + 0x7bc) == '\0') {
      thunk_Sprite_SetDrawFlag(*(undefined **)(param_1 + 0x430),1);
      if (*(char *)(param_1 + 0x240) != *(char *)(param_1 + 0x241)) {
        Sprite_SetPositionXY(*(undefined **)(param_1 + 0x430),0x5b,0x30);
        thunk_Sprite_SetDrawFlag(*(undefined **)(param_1 + 0x434),1);
        Sprite_SetPositionXY(*(undefined **)(param_1 + 0x434),0x7d,0x30);
        return;
      }
      Sprite_SetPositionXY(*(undefined **)(param_1 + 0x430),0x6c,0x30);
      return;
    }
    if (*(char *)(param_1 + 0x7bc) != '\x01') {
      return;
    }
    uVar3 = 0;
    do {
      uVar1 = *(ushort *)(param_1 + uVar3 * 2 + 0x264);
      if (uVar1 != 0) {
        uVar2 = GetMoveAttr(uVar1,3);
        sub_0208BA88(param_1,uVar3 + 0xd & 0xff,uVar3 + 5 & 0xff,uVar2 & 0xff,param_4);
        iVar4 = param_1 + uVar3 * 4;
        thunk_Sprite_SetDrawFlag(*(undefined **)(iVar4 + 0x438),1);
        Sprite_SetPositionXY
                  (*(undefined **)(iVar4 + 0x438),0x18,
                   (short)((uVar3 * 0x20 + 0x10) * 0x10000 >> 0x10));
      }
      uVar3 = uVar3 + 1 & 0xffff;
    } while (uVar3 < 4);
    uVar1 = *(ushort *)(*(int *)(param_1 + 0x22c) + 0x18);
    if (uVar1 == 0) {
      thunk_Sprite_SetDrawFlag(*(undefined **)(param_1 + 0x448),0);
    }
    else {
      uVar3 = GetMoveAttr(uVar1,3);
      sub_0208BA88(param_1,0x11,9,uVar3 & 0xff);
      thunk_Sprite_SetDrawFlag(*(undefined **)(param_1 + 0x448),1);
      Sprite_SetPositionXY(*(undefined **)(param_1 + 0x448),0x18,0xa0);
    }
    Sprite_SetPositionXY(*(undefined **)(param_1 + 0x430),200,0x18);
    Sprite_SetPositionXY(*(undefined **)(param_1 + 0x434),0xea,0x18);
    Sprite_SetPositionXY(*(undefined **)(param_1 + 0x44c),0xe8,0x28);
  }
  return;
}

