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
undefined4 GF_AssertFail(void);

undefined4 MapNumToFloorNo(int param_1)

{
  if (param_1 < 0x176) {
    if (0x174 < param_1) {
      return 3;
    }
    if (param_1 < 0xe2) {
      if (0xe0 < param_1) {
        return 1;
      }
      if (param_1 < 0x74) {
        if (param_1 == 0x73) {
          return 0;
        }
      }
      else {
        switch(param_1) {
        case 0xbd:
          return 0;
        case 0xbe:
          return 1;
        case 0xbf:
          return 1;
        case 0xc0:
          return 2;
        case 0xc1:
          return 3;
        case 0xc2:
          return 4;
        case 0xc3:
          return 5;
        case 0xc4:
          return 6;
        case 200:
          return 0;
        }
      }
    }
    else if (param_1 < 0x174) {
      if (0x172 < param_1) {
        return 1;
      }
      if (param_1 == 0x172) {
        return 0;
      }
    }
    else if (param_1 == 0x174) {
      return 2;
    }
  }
  else if (param_1 < 0x17a) {
    if (0x178 < param_1) {
      return 1;
    }
    if (param_1 < 0x178) {
      if (0x176 < param_1) {
        return 5;
      }
      if (param_1 == 0x176) {
        return 4;
      }
    }
    else if (param_1 == 0x178) {
      return 0;
    }
  }
  else if (param_1 < 0x193) {
    if (0x191 < param_1) {
      return 0;
    }
    if ((param_1 < 0x17c) && (0x179 < param_1)) {
      if (param_1 == 0x17a) {
        return 2;
      }
      if (param_1 == 0x17b) {
        return 3;
      }
    }
  }
  else if (param_1 == 0x193) {
    return 1;
  }
  GF_AssertFail();
  return 0;
}

