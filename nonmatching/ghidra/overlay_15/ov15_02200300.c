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
undefined4 ManagedSprite_SetAnim();
undefined4 func_0x0200dcc0() __asm__("sub_0200DCC0");
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov15_022002EC();

void ov15_02200300(int param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;
  int iVar5;
  int iStack_1c;

  iStack_1c = param_3;
  if ((param_2 == 2) && (99 < param_3)) {
    iStack_1c = 99;
  }
  iVar1 = (param_2 + -2) * 4;
  iVar5 = 0;
  if (0 < *(int *)(iVar1 + 0x2200998)) {
    iVar2 = (param_2 + -2) * 0x18;
    piVar3 = (int *)(iVar2 + 0x2200a58);
    puVar4 = (undefined4 *)(iVar2 + 0x2200a88);
    do {
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + *piVar3 * 4 + 0x2d0),1);
      ManagedSprite_SetAnim(*(undefined4 *)(param_1 + *piVar3 * 4 + 0x2d0),*puVar4);
      iVar5 = iVar5 + 1;
      piVar3 = piVar3 + 1;
      puVar4 = puVar4 + 1;
    } while (iVar5 < *(int *)(iVar1 + 0x2200998));
  }
  iVar1 = ov15_022002EC(iStack_1c);
  if (iVar1 != 0) {
    if ((param_2 == 2) && (iVar1 == 2)) {
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x2d0),0);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x2dc),0);
    }
    else if (param_2 == 3) {
      iVar2 = (iVar1 + -1) * 4;
      iVar5 = 0;
      if (0 < *(int *)(iVar2 + 0x22009a0)) {
        piVar3 = (int *)((iVar1 + -1) * 0x10 + 0x2200a14);
        do {
          ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + *piVar3 * 4 + 0x2d0),0);
          iVar5 = iVar5 + 1;
          piVar3 = piVar3 + 1;
        } while (iVar5 < *(int *)(iVar2 + 0x22009a0));
      }
    }
  }
  ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x2e8),1);
  func_0x0200dcc0(*(undefined4 *)(param_1 + 0x2e8),0);
  ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0x2e8),0x25);
  func_0x0200dcc0(*(undefined4 *)(param_1 + 0x29c),0);
  ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0x29c),0x27);
  return;
}

