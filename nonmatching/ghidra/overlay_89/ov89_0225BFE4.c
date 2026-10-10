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
undefined4 Camera_SetLookAtCamUp();

undefined4 ov89_0225BFE4(undefined4 param_1,int param_2,undefined4 param_3)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint *puVar4;

  puVar4 = (uint *)(param_2 + 8);
  if (*(char *)(param_2 + 0x14) == '\0') {
    PlaySE(0x5d5);
    *(char *)(param_2 + 0x14) = *(char *)(param_2 + 0x14) + '\x01';
  }
  else if (*(char *)(param_2 + 0x14) != '\x01') {
    return 1;
  }
  *(char *)(param_2 + 0x15) = *(char *)(param_2 + 0x15) + '\x01';
  uVar1 = (uint)*(byte *)(param_2 + 0x15);
  uVar2 = uVar1 * 0x400;
  if (uVar2 < 0x2000) {
    iVar3 = uVar1 * -0x400 + 0x1000;
  }
  else {
    iVar3 = uVar2 - 0x3000;
  }
  *(int *)(param_2 + 0xc) = iVar3;
  if (uVar2 < 0x1000) {
    *puVar4 = uVar2;
  }
  else if (uVar2 < 0x2000) {
    *puVar4 = uVar1 * -0x400 + 0x2000;
  }
  else if (uVar2 < 0x3000) {
    *puVar4 = -(uVar2 - 0x2000);
  }
  else {
    *puVar4 = uVar2 - 0x4000;
  }
  if (0xf < *(byte *)(param_2 + 0x15)) {
    *(undefined4 *)(param_2 + 0xc) = 0x1000;
    *puVar4 = 0;
    *(undefined1 *)(param_2 + 0x15) = 0;
    *(char *)(param_2 + 0x16) = *(char *)(param_2 + 0x16) + '\x01';
    if (1 < *(byte *)(param_2 + 0x16)) {
      *(char *)(param_2 + 0x14) = *(char *)(param_2 + 0x14) + '\x01';
    }
  }
  Camera_SetLookAtCamUp(puVar4,param_3);
  return 0;
}

