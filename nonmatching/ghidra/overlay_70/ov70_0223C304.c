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
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 PlaySE();
undefined4 ov70_0223C2EC();
undefined4 ov70_02238F9C();
extern uint uRam021d1154 __asm__("sub_021D1154");

void ov70_0223C304(int param_1)

{
  int iVar1;
  int iVar2;
  
  if ((uRam021d1154 & 0x40) == 0) {
    if ((uRam021d1154 & 0x80) == 0) {
      if ((uRam021d1154 & 0x10) == 0) {
        if ((uRam021d1154 & 0x20) != 0) {
          if (*(int *)(*(int *)(param_1 + 0x11c4) + 0x24) != 0) {
            PlaySE(0x5dc);
          }
          *(undefined4 *)(*(int *)(param_1 + 0x11c4) + 0x24) = 0;
        }
      }
      else {
        if (*(int *)(*(int *)(param_1 + 0x11c4) + 0x24) != 1) {
          PlaySE(0x5dc);
        }
        *(undefined4 *)(*(int *)(param_1 + 0x11c4) + 0x24) = 1;
      }
    }
    else {
      iVar2 = *(int *)(param_1 + 0x11c4);
      if (*(int *)(iVar2 + 0x24) == 0) {
        if (*(int *)(iVar2 + 0x28) < 3) {
          *(int *)(iVar2 + 0x28) = *(int *)(iVar2 + 0x28) + 1;
          PlaySE(0x5dc);
        }
      }
      else if (*(int *)(iVar2 + 0x2c) < 2) {
        PlaySE(0x5dc);
        *(int *)(*(int *)(param_1 + 0x11c4) + 0x2c) =
             *(int *)(*(int *)(param_1 + 0x11c4) + 0x2c) + 1;
      }
    }
  }
  else {
    iVar2 = *(int *)(param_1 + 0x11c4);
    if (*(int *)(iVar2 + 0x24) == 0) {
      if (0 < *(int *)(iVar2 + 0x28)) {
        *(int *)(iVar2 + 0x28) = *(int *)(iVar2 + 0x28) + -1;
        PlaySE(0x5dc);
      }
    }
    else if (0 < *(int *)(iVar2 + 0x2c)) {
      PlaySE(0x5dc);
      *(int *)(*(int *)(param_1 + 0x11c4) + 0x2c) = *(int *)(*(int *)(param_1 + 0x11c4) + 0x2c) + -1
      ;
    }
  }
  iVar2 = ov70_0223C2EC(param_1);
  iVar1 = ov70_0223C2EC(param_1);
  ov70_02238F9C(*(undefined4 *)(param_1 + 0xdcc),*(undefined2 *)(iVar2 * 6 + 0x22464fe),
                *(undefined2 *)(iVar1 * 6 + 0x2246500));
  iVar2 = ov70_0223C2EC(param_1);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0xdcc),*(undefined2 *)(iVar2 * 6 + 0x2246502));
  return;
}

