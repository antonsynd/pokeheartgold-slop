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
undefined4 PlaySE();
undefined4 ov18_021F719C();
undefined4 GridInputHandler_SetNextLastUnk0FInputs();

void ov18_021F71DC(int param_1,uint param_2,int param_3)

{
  int iVar1;
  uint uVar2;

  if (param_3 == 0x12) {
    if (param_2 == 0) {
      uVar2 = *(uint *)(param_1 + 0x189c);
      if (((int)uVar2 < 0x10) || (0x11 < (int)uVar2)) {
        if ((-1 < (int)uVar2) && ((int)uVar2 < 2)) {
          GridInputHandler_SetNextLastUnk0FInputs
                    (*(undefined4 *)(param_1 + 0x1864),uVar2 & 0xff,0x12,0x12);
          param_2 = uVar2;
        }
      }
      else {
        iVar1 = (int)uVar2 >> 0x1f;
        param_2 = (uVar2 * 0x40000000 + iVar1 >> 0x1e | iVar1 << 2) - iVar1;
        GridInputHandler_SetNextLastUnk0FInputs
                  (*(undefined4 *)(param_1 + 0x1864),param_2 & 0xff,0x12,0x12);
      }
    }
    else if (param_2 == 0x10) {
      uVar2 = *(uint *)(param_1 + 0x189c);
      if (((int)uVar2 < 0) || (1 < (int)uVar2)) {
        if ((0xf < (int)uVar2) && ((int)uVar2 < 0x12)) {
          GridInputHandler_SetNextLastUnk0FInputs
                    (*(undefined4 *)(param_1 + 0x1864),uVar2 & 0xff,0x12,0x12);
          param_2 = uVar2;
        }
      }
      else {
        GridInputHandler_SetNextLastUnk0FInputs
                  (*(undefined4 *)(param_1 + 0x1864),uVar2 + 0x10 & 0xff,0x12,0x12);
        param_2 = uVar2 + 0x10;
      }
    }
  }
  else if (param_3 == 0x13) {
    if (param_2 == 3) {
      uVar2 = *(uint *)(param_1 + 0x189c);
      if (((int)uVar2 < 0xe) || (0xf < (int)uVar2)) {
        if ((1 < (int)uVar2) && ((int)uVar2 < 4)) {
          GridInputHandler_SetNextLastUnk0FInputs
                    (*(undefined4 *)(param_1 + 0x1864),uVar2 & 0xff,0x13,0x13);
          param_2 = uVar2;
        }
      }
      else {
        iVar1 = (int)uVar2 >> 0x1f;
        param_2 = (uVar2 * 0x40000000 + iVar1 >> 0x1e | iVar1 << 2) - iVar1;
        GridInputHandler_SetNextLastUnk0FInputs
                  (*(undefined4 *)(param_1 + 0x1864),param_2 & 0xff,0x13,0x13);
      }
    }
    else if (param_2 == 0xf) {
      uVar2 = *(uint *)(param_1 + 0x189c);
      if (((int)uVar2 < 2) || (3 < (int)uVar2)) {
        if ((0xd < (int)uVar2) && ((int)uVar2 < 0x10)) {
          GridInputHandler_SetNextLastUnk0FInputs
                    (*(undefined4 *)(param_1 + 0x1864),uVar2 & 0xff,0x13,0x13);
          param_2 = uVar2;
        }
      }
      else {
        GridInputHandler_SetNextLastUnk0FInputs
                  (*(undefined4 *)(param_1 + 0x1864),uVar2 + 0xc & 0xff,0x13,0x13);
        param_2 = uVar2 + 0xc;
      }
    }
  }
  ov18_021F719C(param_1,param_2);
  *(int *)(param_1 + 0x189c) = param_3;
  PlaySE(0x8e8);
  return;
}

