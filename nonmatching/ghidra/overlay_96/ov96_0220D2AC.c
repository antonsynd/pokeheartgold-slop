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
undefined4 func_0x020f2ba4(unsigned int, unsigned int) __asm__("sub_020F2BA4");

void ov96_0220D2AC(uint *param_1,int param_2,int param_3)

{
  int extraout_r1;
  int extraout_r1_00;
  uint uVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;

  iVar4 = 0;
  func_0x020f2ba4(param_2,0x3c);
  func_0x020f2ba4(param_2,0x1e); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc"); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1_00) : : "cc");
  do {
    uVar1 = *param_1;
    uVar2 = (uVar1 & 0x3ffffff) >> 0x12;
    uVar3 = (uVar1 & 0x3ffff) >> 9;
    if ((param_2 != 0) && (uVar2 < uVar3)) {
      if (iVar4 == param_3) {
        if (extraout_r1 == 0) {
          *param_1 = uVar1 & 0xfc03ffff | (uVar2 + 8 & 0xff) << 0x12;
        }
      }
      else if (extraout_r1_00 == 0) {
        *param_1 = uVar1 & 0xfc03ffff | (uVar2 + 5 & 0xff) << 0x12;
      }
      if (uVar3 < (*param_1 & 0x3ffffff) >> 0x12) {
        *param_1 = *param_1 & 0xfc03ffff | (uVar3 & 0xff) << 0x12;
      }
    }
    iVar4 = iVar4 + 1;
    param_1 = param_1 + 1;
  } while (iVar4 < 3);
  return;
}

