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
undefined4 ov96_021EB0A4();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
extern undefined ov96_0221CFBE;
extern undefined ov96_0221CFBC;

void ov96_0220D910(int param_1)

{
  uint uVar1;
  int iVar2;
  int extraout_r1;
  int iStack_24;
  int aiStack_20 [4];
  
  uVar1 = (*(uint *)(param_1 + 0x40) & 0xfffff) >> 0x10;
  func_0x020f2998(uVar1,3);
  { __auto_type nug_result = func_0x020f2998(uVar1,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc"); iVar2 = nug_result; }
  ov96_021EB0A4(*(undefined4 *)(param_1 + 4),
                (int)*(short *)(&ov96_0221CFBC + extraout_r1 * 4 + iVar2 * 0xc),
                (int)*(short *)(&ov96_0221CFBE + extraout_r1 * 4 + iVar2 * 0xc),aiStack_20,
                &iStack_24);
  *(int *)(param_1 + 0x1c) = aiStack_20[0] << 0xc;
  *(int *)(param_1 + 0x20) = iStack_24 << 0xc;
  *(int *)(param_1 + 0x10) = aiStack_20[0] << 0xc;
  *(int *)(param_1 + 0x14) = iStack_24 << 0xc;
  *(undefined4 *)(param_1 + 0x34) = 0;
  *(undefined4 *)(param_1 + 0x38) = 0;
  *(undefined4 *)(param_1 + 0x3c) = 0;
  *(uint *)(param_1 + 0x40) = *(uint *)(param_1 + 0x40) & 0xfb0fffff | 0x200000;
  return;
}

