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
unsigned short LCRandom(void);
undefined4 func_0x020f2998() __asm__("sub_020F2998");

void ov96_02213E60(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  byte bVar1;
  undefined4 uVar2;
  uint extraout_r1;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  byte abStack_28 [16];
  undefined4 uStack_18;
  
  bVar1 = *(byte *)(param_1 + 0x66e);
  uVar4 = 0;
  uVar5 = 0;
  uStack_18 = param_4;
  do {
    uVar6 = uVar5;
    if ((bVar1 != uVar4) && (*(byte *)(param_1 + 0x6ba) != uVar4)) {
      uVar6 = uVar5 + 1 & 0xff;
      abStack_28[uVar5] = (byte)uVar4;
    }
    uVar4 = uVar4 + 1;
    uVar5 = uVar6;
  } while ((int)uVar4 < 0xf);
  uVar2 = LCRandom();
  func_0x020f2998(uVar2,uVar6); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
  bVar1 = abStack_28[extraout_r1 & 0xff];
  iVar3 = (uint)bVar1 * 4;
  *(int *)(param_2 + 8) = (int)*(short *)(iVar3 + 0x221d438) << 0xc;
  *(int *)(param_2 + 0xc) = (int)*(short *)(iVar3 + 0x221d43a) << 0xc;
  *(byte *)(param_2 + 0x42) = bVar1;
  return;
}

