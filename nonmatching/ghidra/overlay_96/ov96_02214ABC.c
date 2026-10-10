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

void ov96_02214ABC(int param_1)

{
  char cVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  byte abStack_18 [12];

  uVar4 = 0;
  do {
    iVar3 = *(int *)(param_1 + uVar4 * 4 + 0x18);
    cVar1 = *(char *)(iVar3 + 0x73);
    abStack_18[uVar4 + 3] = cVar1 + *(char *)(iVar3 + 0x70);
    abStack_18[uVar4] = cVar1 + *(char *)(iVar3 + 0x75);
    uVar4 = uVar4 + 1 & 0xff;
  } while (uVar4 < 3);
  uVar4 = 0;
  uVar5 = 1;
  do {
    if (abStack_18[uVar5 + 2] < abStack_18[uVar5 + 3]) {
      uVar4 = uVar5;
    }
    uVar5 = uVar5 + 1 & 0xff;
  } while (uVar5 < 3);
  if (uVar4 == 0) {
    if (abStack_18[1] < abStack_18[2]) {
      iVar2 = 2;
      iVar3 = 1;
    }
    else {
      iVar2 = 1;
      iVar3 = 2;
    }
  }
  else if (uVar4 == 1) {
    if (abStack_18[0] < abStack_18[2]) {
      iVar2 = 2;
      iVar3 = 0;
    }
    else {
      iVar2 = 0;
      iVar3 = 2;
    }
  }
  else if (abStack_18[0] < abStack_18[1]) {
    iVar2 = 1;
    iVar3 = 0;
  }
  else {
    iVar2 = 0;
    iVar3 = 1;
  }
  *(undefined4 *)(param_1 + 4) = *(undefined4 *)(param_1 + uVar4 * 4 + 0x18);
  *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_1 + iVar2 * 4 + 0x18);
  *(undefined4 *)(param_1 + 0x14) = *(undefined4 *)(param_1 + iVar3 * 4 + 0x18);
  return;
}

