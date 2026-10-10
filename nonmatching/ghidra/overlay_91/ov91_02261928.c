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
undefined4 ov91_0225D46C();
undefined4 Sprite_SetDrawFlag();
undefined4 func_0x02013728() __asm__("sub_02013728");
undefined4 func_0x020137c0() __asm__("sub_020137C0");
undefined4 Sprite_SetMatrix();

void ov91_02261928(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_c;

  uStack_c = param_4;
  switch(*(undefined2 *)(param_1 + 0x98)) {
  case 1:
    if (*(short *)(param_1 + 0x94) < 8) {
      *(short *)(param_1 + 0x94) = *(short *)(param_1 + 0x94) + 1;
    }
    else {
      *(undefined2 *)(param_1 + 0x98) = 2;
    }
    break;
  case 3:
    if (*(short *)(param_1 + 0x9a) < 1) {
      if (*(short *)(param_1 + 0x94) < 1) {
        *(undefined2 *)(param_1 + 0x98) = 0;
        func_0x020137c0(*(undefined4 *)(param_1 + 0x48));
        Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x34),0);
      }
      else {
        *(short *)(param_1 + 0x94) = *(short *)(param_1 + 0x94) + -1;
      }
    }
    else {
      *(short *)(param_1 + 0x9a) = *(short *)(param_1 + 0x9a) + -1;
    }
  }
  if (*(short *)(param_1 + 0x96) < 4) {
    *(short *)(param_1 + 0x96) = *(short *)(param_1 + 0x96) + 1;
    *(int *)(param_1 + 0x8c) = (int)*(short *)(param_1 + 0x96);
    ov91_0225D46C(param_1 + 0x7c);
  }
  *(int *)(param_1 + 0x74) = (int)*(short *)(param_1 + 0x94);
  ov91_0225D46C(param_1 + 100);
  uStack_18 = *(undefined4 *)(param_1 + 100);
  uStack_14 = *(undefined4 *)(param_1 + 0x7c);
  Sprite_SetMatrix(*(undefined4 *)(param_1 + 0x34),&uStack_18);
  func_0x02013728(*(undefined4 *)(param_1 + 0x48));
  return;
}

