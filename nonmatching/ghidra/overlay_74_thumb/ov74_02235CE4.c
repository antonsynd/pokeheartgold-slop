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
undefined4 GetItemIndexMapping(unsigned short, int);
undefined4 ov74_0223589C();
undefined4 GetItemIconAnim(void);
void * ov74_02235930(unsigned int, void *, unsigned int, unsigned int, unsigned int);
undefined4 GetItemIconCell(void);
undefined4 ov74_02235728(int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);

void ov74_02235CE4(int param_1,undefined4 param_2,int param_3)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  undefined *puVar5;
  ushort unaff_r4;
  __asm__ volatile("movs %0, r4" : "=l"(unaff_r4) : : "cc");


  switch(param_2) {
  case 3:
    unaff_r4 = (ushort)*(undefined4 *)(param_3 + 4);
    break;
  case 8:
    unaff_r4 = 0x1c6;
    break;
  case 9:
    unaff_r4 = 0x1c4;
    break;
  case 10:
    unaff_r4 = 0x1c7;
    break;
  case 0xc:
    unaff_r4 = 0x1d3;
    break;
  case 0xe:
    unaff_r4 = 0x1ba;
    break;
  case 0xf:
    unaff_r4 = 0x1f5;
  }
  uVar1 = GetItemIndexMapping(unaff_r4,1);
  uVar2 = GetItemIndexMapping(unaff_r4,2);
  uVar3 = GetItemIconCell();
  uVar4 = GetItemIconAnim();
  ov74_02235728(0x12,uVar1,uVar2,uVar3,uVar4,1);
  ov74_0223589C(0,0x100000);
  puVar5 = ov74_02235930(1,*(undefined **)(param_1 + 0x208),0x80,0,0);
  *(undefined **)(param_1 + 0x208) = puVar5;
  return;
}

