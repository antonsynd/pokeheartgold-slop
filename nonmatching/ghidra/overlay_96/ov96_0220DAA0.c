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
undefined4 ov96_021EB0CC();
undefined4 func_0x020ccf80() __asm__("sub_020CCF80");

int ov96_0220DAA0(int param_1,int param_2,int param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  int iStack_34;
  int iStack_30;
  int iStack_2c;
  undefined4 uStack_28;
  int aiStack_24 [4];

  iStack_34 = 0xc;
  piVar2 = aiStack_24;
  aiStack_24[0] = 0x100000;
  aiStack_24[1] = 0x100000;
  aiStack_24[2] = 0x100000;
  iVar4 = 0x100000;
  iVar3 = 0;
  aiStack_24[3] = param_4;
  do {
    iVar1 = ov96_021EB0CC(*(undefined4 *)(param_1 + 4),*(undefined4 *)(param_1 + 0x1c),
                          *(undefined4 *)(param_1 + 0x20),param_2,param_3);
    if (iVar1 != 0) {
      uStack_28 = 0;
      iStack_30 = param_2 * 0x1000 - *(int *)(param_1 + 0x1c);
      if (iStack_30 < 0) {
        iStack_30 = -iStack_30;
      }
      iStack_2c = param_3 * 0x1000 - *(int *)(param_1 + 0x20);
      if (iStack_2c < 0) {
        iStack_2c = -iStack_2c;
      }
      iVar1 = func_0x020ccf80(&iStack_30);
      *piVar2 = iVar1;
    }
    iVar3 = iVar3 + 1;
    param_1 = param_1 + 0x48;
    piVar2 = piVar2 + 1;
  } while (iVar3 < 3);
  iVar3 = 0;
  piVar2 = aiStack_24;
  do {
    if (*piVar2 < iVar4) {
      iVar4 = *piVar2;
      iStack_34 = iVar3;
    }
    iVar3 = iVar3 + 1;
    piVar2 = piVar2 + 1;
  } while (iVar3 < 3);
  return (int)(char)iStack_34;
}

