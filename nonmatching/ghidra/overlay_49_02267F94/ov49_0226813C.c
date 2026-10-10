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
undefined4 ov49_022655F4();
undefined4 ov49_02259154();
undefined4 ov49_02268230();
undefined4 ov49_0226540C();

void ov49_0226813C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  int iVar2;
  int unaff_r5;
  int unaff_r6;
  int unaff_r7;
  int iStack_2c;
  int iStack_28;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  ov49_02259154(param_2,&iStack_24);
  iStack_24 = iStack_24 + 0x8000;
  iVar2 = 0;
  iStack_20 = iStack_20 + 0x8000;
  iStack_1c = iStack_1c + -0x8000;
  uVar1 = (uint)*(ushort *)(param_1 + 4);
  if (uVar1 != 0) {
    iStack_28 = param_1 + 8;
    iStack_2c = param_1 + 0xa8;
    do {
      switch(iVar2) {
      case 0:
        unaff_r7 = iStack_24 + -0x10000;
        unaff_r5 = iStack_1c + 0x10000;
        unaff_r6 = iStack_20;
        break;
      case 1:
        unaff_r7 = iStack_24 + 0x10000;
        unaff_r5 = iStack_1c + 0x10000;
        unaff_r6 = iStack_20;
        break;
      case 2:
        if (uVar1 == 3) {
          unaff_r5 = iStack_1c + -0x20000;
          unaff_r6 = iStack_20;
          unaff_r7 = iStack_24;
        }
        else {
          unaff_r7 = iStack_24 + -0x10000;
          unaff_r5 = iStack_1c + -0x10000;
          unaff_r6 = iStack_20;
        }
        break;
      case 3:
        unaff_r5 = iStack_1c + -0x10000;
        unaff_r6 = iStack_20;
        unaff_r7 = iStack_24 + 0x10000;
      }
      ov49_0226540C(iStack_28,iStack_24,unaff_r7,iStack_20,unaff_r6,iStack_1c,unaff_r5,0x13);
      ov49_022655F4(iStack_2c,0x1555,0x71c,0x20000);
      iVar2 = iVar2 + 1;
      iStack_28 = iStack_28 + 0x28;
      iStack_2c = iStack_2c + 0xc;
      uVar1 = (uint)*(ushort *)(param_1 + 4);
    } while (iVar2 < (int)uVar1);
  }
  ov49_02268230(param_1);
  return;
}

