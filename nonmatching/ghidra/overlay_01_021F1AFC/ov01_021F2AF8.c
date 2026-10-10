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
typedef void code(void);
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
undefined4 MapObject_CopyPositionVector(undefined4, undefined4);
undefined4 MapObject_SetCurrentY(undefined4, undefined4);
undefined4 sub_02060F78(undefined4);
undefined4 MapObject_SetPositionVector(undefined4, undefined4);
undefined4 MapObject_SetCurrentX(undefined4, undefined4);
undefined4 GF_AssertFail(void);
undefined4 MapObject_SetCurrentZ(undefined4, undefined4);
undefined4 func_0x0224d5ac(undefined4) __asm__("sub_0224D5AC");

undefined4 ov01_021F2AF8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined1 auStack_18 [4];
  int iStack_14;
  int iStack_10;
  undefined4 uStack_c;

  uStack_c = param_4;
  MapObject_CopyPositionVector(*(undefined4 *)(param_1 + 0x3c),auStack_18);
  iStack_14 = iStack_14 + *(int *)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x2c) < iStack_14) {
    iStack_14 = *(int *)(param_1 + 0x2c);
  }
  iStack_10 = iStack_10 + *(int *)(param_1 + 0x24);
  if (iStack_10 < *(int *)(param_1 + 0x30)) {
    iStack_10 = *(int *)(param_1 + 0x30);
  }
  MapObject_SetPositionVector(*(undefined4 *)(param_1 + 0x3c),auStack_18);
  iVar1 = *(int *)(param_1 + 8) + 1;
  *(int *)(param_1 + 8) = iVar1;
  if (iVar1 < 0x40) {
    return 0;
  }
  if (iStack_10 != *(int *)(param_1 + 0x30)) {
    GF_AssertFail();
  }
  if (iStack_14 != *(int *)(param_1 + 0x2c)) {
    GF_AssertFail();
  }
  MapObject_SetCurrentX(*(undefined4 *)(param_1 + 0x3c),*(undefined4 *)(param_1 + 0xc));
  MapObject_SetCurrentY(*(undefined4 *)(param_1 + 0x3c),*(undefined4 *)(param_1 + 0x10));
  MapObject_SetCurrentZ(*(undefined4 *)(param_1 + 0x3c),*(undefined4 *)(param_1 + 0x14));
  sub_02060F78(*(undefined4 *)(param_1 + 0x3c));
  func_0x0224d5ac(*(undefined4 *)(param_1 + 0x50));
  return 1;
}

