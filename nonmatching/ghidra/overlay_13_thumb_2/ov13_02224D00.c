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

undefined4 ov13_02224D00(int param_1,int param_2,int param_3)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;

  iVar3 = 0;
  iVar4 = 0;
  if (0 < param_3) {
    do {
      iVar2 = (int)*(char *)(param_2 + iVar4);
      if (iVar2 < 100) {
        if (0x62 < iVar2) goto LAB_02224d7e;
        if (0x61 < iVar2) {
          if (iVar2 != 0x62) {
            return 0;
          }
          goto LAB_02224d7e;
        }
        if (0x60 < iVar2) goto LAB_02224d7e;
        switch(iVar2) {
        case 0x30:
        case 0x31:
        case 0x32:
        case 0x33:
        case 0x34:
        case 0x35:
        case 0x36:
        case 0x37:
        case 0x38:
        case 0x39:
          iVar3 = iVar3 + iVar2 + -0x30;
          break;
        default:
          goto LAB_02224d8a;
        case 0x41:
        case 0x42:
        case 0x43:
        case 0x44:
        case 0x45:
        case 0x46:
          iVar3 = iVar3 + iVar2 + -0x37;
        }
      }
      else {
        if (iVar2 < 0x66) {
          if ((iVar2 < 0x65) && (iVar2 != 100)) {
LAB_02224d8a:
            return 0;
          }
        }
        else if (iVar2 != 0x66) {
          return 0;
        }
LAB_02224d7e:
        iVar3 = iVar3 + iVar2 + -0x57;
      }
      uVar1 = iVar4 >> 0x1f;
      if ((iVar4 * -0x80000000 + uVar1 >> 0x1f | uVar1 << 1) == uVar1) {
        iVar3 = iVar3 << 4;
      }
      else {
        *(char *)(param_1 + iVar4 / 2) = (char)iVar3;
        iVar3 = 0;
      }
      iVar4 = iVar4 + 1;
    } while (iVar4 < param_3);
  }
  return 1;
}

