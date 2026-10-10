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
undefined4 ov65_0221CB5C();
undefined4 PlaySE();
undefined4 ov65_0221DD34();
undefined4 TouchscreenHitbox_FindRectAtTouchNew();
extern undefined ov65_0221FE6C;

undefined4 ov65_0221DFB8(int param_1)

{
  int iVar1;
  
  iVar1 = TouchscreenHitbox_FindRectAtTouchNew(&ov65_0221FE6C);
  if (iVar1 != -1) {
    if (iVar1 == 0xc) {
      PlaySE(0x5dc);
      *(undefined4 *)(param_1 + 0x2220) = 0x221e145;
      *(undefined4 *)(param_1 + 0x94) = 0xc;
    }
    else if (*(short *)(param_1 + iVar1 * 0x10 + 0x69c) != 0) {
      *(int *)(param_1 + 0x94) = iVar1;
      iVar1 = *(int *)(param_1 + 0x94);
      if (iVar1 < 6) {
        *(undefined4 *)(param_1 + 0x2220) = 0x221e9a9;
      }
      else if ((5 < iVar1) && (iVar1 < 0xc)) {
        *(undefined4 *)(param_1 + 0x2220) = 0x221f3f5;
      }
    }
    ov65_0221DD34(*(undefined4 *)(param_1 + 0x94),*(undefined4 *)(param_1 + 0x344),0);
    ov65_0221CB5C(param_1);
    return 1;
  }
  return 0;
}

