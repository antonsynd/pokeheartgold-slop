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

void ov96_021EDF84(undefined4 *param_1,int param_2)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  int iVar4;

  iVar2 = 0;
  iVar1 = 0;
  iVar4 = param_2;
  do {
    iVar1 = iVar1 + 1;
    iVar2 = iVar2 + *(int *)(iVar4 + 0x44);
    iVar4 = iVar4 + 4;
  } while (iVar1 < 10);
  iVar1 = 0;
  *param_1 = *(undefined4 *)(param_2 + 4);
  param_1[1] = *(undefined4 *)(param_2 + 8);
  param_1[2] = *(undefined4 *)(param_2 + 0xc);
  param_1[3] = iVar2;
  param_1[4] = *(undefined4 *)(param_2 + 0x6c);
  param_1[5] = *(undefined4 *)(param_2 + 0x10);
  param_1[6] = *(undefined4 *)(param_2 + 0x14);
  param_1[7] = *(undefined4 *)(param_2 + 0x18);
  param_1[8] = *(undefined4 *)(param_2 + 0x1c);
  param_1[9] = *(undefined4 *)(param_2 + 0x20);
  param_1[10] = *(undefined4 *)(param_2 + 0x24);
  param_1[0xb] = *(undefined4 *)(param_2 + 0x28);
  param_1[0xc] = *(undefined4 *)(param_2 + 0x2c);
  param_1[0xd] = *(undefined4 *)(param_2 + 0x30);
  param_1[0xe] = *(undefined4 *)(param_2 + 0x38);
  param_1[0xf] = *(undefined4 *)(param_2 + 0x3c);
  param_1[0x10] = *(undefined4 *)(param_2 + 0x40);
  iVar4 = param_2;
  puVar3 = param_1;
  do {
    iVar1 = iVar1 + 1;
    puVar3[0x11] = *(undefined4 *)(iVar4 + 0x44);
    iVar4 = iVar4 + 4;
    puVar3 = puVar3 + 1;
  } while (iVar1 < 10);
  param_1[0x1b] = *(undefined4 *)(param_2 + 0x34);
  param_1[0x1c] = *(undefined4 *)(param_2 + 0x70);
  return;
}

