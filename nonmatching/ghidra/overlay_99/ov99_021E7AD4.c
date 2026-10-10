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
undefined4 GridInputHandler_GetNextInput();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 GridInputHandler_SetNextInput();
undefined4 ov99_021E7C58();
undefined4 PlaySE();

void ov99_021E7AD4(int param_1,int param_2,int param_3)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;

  uVar2 = *(uint *)(param_1 + 0x3f4);
  uVar3 = (uVar2 & 0x7ffff) >> 0xe;
  if (param_2 == 0) {
    if (uVar3 != 0) {
      *(uint *)(param_1 + 0x3f4) = uVar2 & 0xfff83fff | (uVar3 - 1 & 0x1f) << 0xe;
    }
  }
  else {
    *(uint *)(param_1 + 0x3f4) = uVar2 & 0xfff83fff | (uVar3 + 1 & 0x1f) << 0xe;
  }
  uVar2 = *(uint *)(param_1 + 0x3f4) & 0x1f;
  uVar1 = (*(uint *)(param_1 + 0x3f4) & 0x7ffff) >> 0xe;
  if (uVar1 <= uVar2) {
    uVar2 = uVar1;
  }
  *(uint *)(param_1 + 0x3f4) = *(uint *)(param_1 + 0x3f4) & 0xfff83fff | uVar2 << 0xe;
  if ((*(uint *)(param_1 + 0x3f4) & 0x7ffff) >> 0xe != uVar3) {
    PlaySE(0x5dc);
    *(uint *)(param_1 + 0x3f4) =
         *(uint *)(param_1 + 0x3f4) & 0xf7ffffff | (uint)(param_2 == 0) << 0x1b;
    *(uint *)(param_1 + 0x3f4) = *(uint *)(param_1 + 0x3f4) | 0x10000000;
    uVar3 = 0;
    uVar2 = GridInputHandler_GetNextInput(*(undefined4 *)(param_1 + 0x3fc));
    if (param_3 == 0) {
      if (param_2 == 0) {
        uVar3 = (uVar2 & 0xff) + 5 & 0xff;
      }
      else {
        uVar3 = (uVar2 & 0xff) - 5 & 0xff;
      }
    }
    else if (uVar2 == 0x1e) {
      uVar3 = 0x1e;
    }
    GridInputHandler_SetNextInput(*(undefined4 *)(param_1 + 0x3fc),uVar3);
    ov99_021E7C58(param_1,uVar3);
    ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x408),0);
  }
  return;
}

