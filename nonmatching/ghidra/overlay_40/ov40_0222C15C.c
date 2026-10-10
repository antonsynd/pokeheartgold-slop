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
undefined4 PlaySE();
undefined4 func_0x0202c028() __asm__("sub_0202C028");
undefined4 ov40_0222DD9C();
undefined4 func_0x0202b9b8() __asm__("sub_0202B9B8");
undefined4 sub_0202BC10();
undefined4 ov40_0222DD94();

int ov40_0222C15C(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;

  uVar3 = *(uint *)(param_1[0x206] + param_1[0x1b9] * 0x24 + 0x18);
  iVar4 = 1;
  switch(*param_1) {
  default:
    if ((uVar3 < 4) && (param_1[uVar3 + 0x21f] == 0)) {
      ov40_0222DD9C(param_1,0x10d);
      iVar4 = 0;
    }
    break;
  case 2:
    if ((uVar3 == 9999) && (param_1[0x21f] == 0)) {
      ov40_0222DD9C(param_1,0x81);
      iVar4 = 0;
    }
    break;
  case 3:
  case 4:
    break;
  case 5:
    if (uVar3 == 0) {
      uVar1 = func_0x0202c028(param_1[0x20c]);
      func_0x0202b9b8(uVar1,0);
      iVar4 = sub_0202BC10();
      if (iVar4 == 0) {
        ov40_0222DD9C(param_1,0x122);
      }
    }
    break;
  case 6:
    if ((uVar3 == 100) && (iVar2 = ov40_0222DD94(), iVar2 != 0)) {
      ov40_0222DD9C(param_1,0x111);
      iVar4 = 0;
    }
  }
  if (iVar4 == 0) {
    PlaySE(0x57c);
  }
  else {
    PlaySE(0x57b);
  }
  return iVar4;
}

