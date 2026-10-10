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
unsigned char ov83_0224777C(void *, unsigned char, unsigned char);
undefined4 ov83_022447E0(int, int, int, int, int, int, unsigned char, unsigned char, unsigned char, unsigned char, ...);
extern undefined ov83_02248028;
extern undefined ov83_02248024;
extern undefined ov83_02248030;
extern undefined ov83_0224802C;

void ov83_02246D40(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  byte bVar1;
  uint uVar2;
  uint uVar3;
  uint unaff_r4;
  __asm__ volatile("movs %0, r4" : "=l"(unaff_r4) : : "cc");


  if (*(uint *)(param_1 + 0x600) != (uint)*(byte *)(*(int *)(param_1 + 0x5f8) + 0x24)) {
    bVar1 = ov83_0224777C(*(undefined **)(param_1 + 700),*(byte *)(param_1 + 9),2);
    uVar2 = (uint)(bVar1 != 1);
    uVar3 = *(uint *)(*(int *)(param_1 + 0x5fc) +
                      (uint)*(byte *)(*(int *)(param_1 + 0x5f8) + 0x24) * 8 + 4);
    if (uVar3 < 6) {
      if (2 < uVar3) {
        if (uVar3 == 3) {
          unaff_r4 = (uint)*(ushort *)(&ov83_02248024 + uVar2 * 2);
        }
        else if (uVar3 == 4) {
          unaff_r4 = (uint)*(ushort *)(&ov83_02248028 + uVar2 * 2);
        }
        else if (uVar3 == 5) {
          unaff_r4 = (uint)*(ushort *)(&ov83_0224802C + uVar2 * 2);
        }
      }
    }
    else if (uVar3 == 0xfffffffe) {
      unaff_r4 = (uint)*(ushort *)(&ov83_02248030 + uVar2 * 2);
    }
    ov83_022447E0(param_1,param_1 + 0xc0,unaff_r4,1,1,0xff,1,2,0xf,1,param_4);
    *(uint *)(param_1 + 0x600) = (uint)*(byte *)(*(int *)(param_1 + 0x5f8) + 0x24);
  }
  return;
}

