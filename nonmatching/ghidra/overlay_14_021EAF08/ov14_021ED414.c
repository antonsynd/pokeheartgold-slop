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
typedef void code(void);
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
undefined4 ov14_021F0244();
undefined4 ov14_021F1170();
undefined4 ov14_021F29E4();
undefined4 PlaySE();
undefined4 ov14_021F2270();
undefined4 ov14_021F11F8();
undefined4 func_0x02019d18() __asm__("sub_02019D18");

undefined4 ov14_021ED414(int param_1)

{
  uint uVar1;
  undefined4 uVar2;

  uVar1 = func_0x02019d18(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c));
  if (uVar1 < 0xfffffffd) {
    if (uVar1 < 0xfffffffc) {
      switch(uVar1) {
      case 0:
        PlaySE(0x5dd);
        uVar2 = ov14_021F1170(param_1,0);
        return uVar2;
      case 1:
        PlaySE(0x5dd);
        uVar2 = ov14_021F1170(param_1,1);
        return uVar2;
      case 2:
        PlaySE(0x5dd);
        uVar2 = ov14_021F1170(param_1,2);
        return uVar2;
      case 3:
        PlaySE(0x5dd);
        uVar2 = ov14_021F1170(param_1,3);
        return uVar2;
      case 4:
        PlaySE(0x5dd);
        uVar2 = ov14_021F1170(param_1,4);
        return uVar2;
      case 5:
        PlaySE(0x5dd);
        uVar2 = ov14_021F1170(param_1,5);
        return uVar2;
      case 6:
        PlaySE(0x5dc);
        uVar2 = ov14_021F11F8(param_1,0xffffffff);
        return uVar2;
      case 7:
        PlaySE(0x5dc);
        uVar2 = ov14_021F11F8(param_1,1);
        return uVar2;
      case 8:
        ov14_021F29E4(*(undefined4 *)(param_1 + 0x34),9,8);
        if (*(char *)(param_1 + 0x1f) != *(char *)(param_1 + 0x25)) {
          PlaySE(0x5dc);
          uVar2 = ov14_021F2270(param_1,0xc,0xa2);
          return uVar2;
        }
        PlaySE(0x5f3);
        uVar2 = ov14_021F2270(param_1,0xc,0x3d);
        return uVar2;
      case 9:
        ov14_021F29E4(*(undefined4 *)(param_1 + 0x34),9,8);
        PlaySE(0x5dd);
        uVar2 = ov14_021F2270(param_1,6,0xa3);
        return uVar2;
      case 10:
        ov14_021F29E4(*(undefined4 *)(param_1 + 0x34),9,8);
        PlaySE(0x5dd);
        uVar2 = ov14_021F2270(param_1,7,0xa4);
        return uVar2;
      case 0xb:
        ov14_021F29E4(*(undefined4 *)(param_1 + 0x34),9,8);
LAB_021ed58e:
        PlaySE(0x5dc);
        uVar2 = ov14_021F2270(param_1,10,0x39);
        return uVar2;
      }
    }
    else {
      PlaySE(0x5dc);
    }
  }
  else if (uVar1 < 0xfffffffe) {
    if ((uVar1 == 0xfffffffd) && (PlaySE(0x5dc), *(int *)(*(int *)(param_1 + 0x34) + 8) != 0)) {
      PlaySE(0x5dc);
      uVar2 = ov14_021F0244(param_1,0x3e);
      return uVar2;
    }
  }
  else if (uVar1 == 0xfffffffe) goto LAB_021ed58e;
  return 0x3d;
}

