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
undefined4 ov96_022155A0();
undefined4 func_0x020f2998() __asm__("sub_020F2998");

void ov96_02214B84(undefined4 param_1,int param_2)

{
  undefined1 extraout_r1;
  int iVar1;
  int iVar2;

  if (*(char *)(param_2 + 0x9e) != '\x04') {
    *(char *)(param_2 + 0x9a) = *(char *)(param_2 + 0x9a) + '\x01';
    if (*(byte *)(param_2 + 0x9b) <= *(byte *)(param_2 + 0x9a)) {
      *(undefined4 *)(param_2 + 0x94) = 1;
      *(undefined1 *)(param_2 + 0x9a) = 0;
    }
    if (*(int *)(param_2 + 0x94) != 0) {
      iVar1 = param_2 + ((uint)*(byte *)(param_2 + 0x9d) + (uint)*(byte *)(param_2 + 0x99)) * 0x24;
      iVar2 = (uint)*(byte *)(param_2 + 0x9c) * 8;
      if (*(int *)(iVar1 + iVar2) == 0) {
        ov96_022155A0(param_1,param_2,iVar1 + iVar2);
      }
      else {
        *(int *)(iVar1 + iVar2) = *(int *)(iVar1 + iVar2) + -1;
      }
      *(char *)(param_2 + 0x99) = *(char *)(param_2 + 0x99) + '\x01';
      if (*(byte *)(param_2 + 0x98) <= *(byte *)(param_2 + 0x99)) {
        *(undefined1 *)(param_2 + 0x99) = 0;
        func_0x020f2998(*(byte *)(param_2 + 0x9c) + 1,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
        *(undefined1 *)(param_2 + 0x9c) = extraout_r1;
        *(undefined4 *)(param_2 + 0x94) = 0;
      }
    }
  }
  return;
}

