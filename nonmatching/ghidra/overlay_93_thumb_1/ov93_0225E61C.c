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
undefined4 ov93_02262884();
undefined4 ov93_0225FDF4();
undefined4 ov93_0225E548();
undefined4 ov93_0225E3B8();
undefined4 ov93_02262830();

undefined4 ov93_0225E61C(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;

  uVar3 = *(uint *)(param_1 + 0x2fb4);
  if ((((0x516 < uVar3) && (*(int *)(param_1 + 0x2fd4) == 0)) && (*(int *)(param_1 + 0x2edc) == 0))
     && (*(int *)(param_1 + 0x2ef0) == 0)) {
    return 1;
  }
  switch(*(undefined4 *)(param_2 + 0xc)) {
  case 0:
    uVar1 = ov93_0225FDF4(*(undefined4 *)(param_1 + 0x2fc8));
    ov93_02262884(param_1,*(undefined4 *)(param_1 + 0x2fc8),uVar1,*(undefined1 *)(param_2 + 0x18));
    *(int *)(param_2 + 0xc) = *(int *)(param_2 + 0xc) + 1;
    break;
  case 1:
    iVar2 = ov93_0225E548(param_1,*(undefined1 *)(param_2 + 0x18),uVar3,param_4,param_4);
    if (iVar2 == 1) {
      *(char *)(param_2 + 0x18) = *(char *)(param_2 + 0x18) + '\x01';
      *(int *)(param_2 + 0xc) = *(int *)(param_2 + 0xc) + 1;
    }
    break;
  case 2:
    if ((*(int *)(param_1 + 0x1434) != 0) &&
       (*(int *)(param_1 + 0x1434) <= *(int *)(param_1 + 0x1430))) {
      *(int *)(param_1 + 0x2fc8) = *(int *)(param_1 + 0x2fc8) + 1;
      uVar1 = ov93_0225E3B8(param_1);
      ov93_02262830(param_1,uVar1,*(undefined1 *)(param_2 + 0x18));
      *(int *)(param_2 + 0xc) = *(int *)(param_2 + 0xc) + 1;
    }
    break;
  case 3:
    iVar2 = ov93_0225E548(param_1,*(undefined1 *)(param_2 + 0x18),uVar3,param_4,param_4);
    if (iVar2 == 1) {
      *(char *)(param_2 + 0x18) = *(char *)(param_2 + 0x18) + '\x01';
      *(undefined4 *)(param_2 + 0xc) = 0;
    }
  }
  return 0;
}

