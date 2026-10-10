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
undefined4 ov67_021E6490();
undefined4 ov67_021E6530();
undefined4 ov67_021E6688();
undefined4 ov67_021E6C14();

void ov67_021E6C60(int param_1,int param_2,int param_3)

{
  short sVar1;
  int iVar2;
  
  *(undefined4 *)(param_1 + 0x4a8) = 0;
  if (((((param_2 == 2) && (param_3 == 0)) || ((param_2 == 5 && (param_3 == 3)))) ||
      ((param_2 == 8 && (param_3 == 6)))) || ((param_2 == 0xb && (param_3 == 9)))) {
    if (*(short *)(param_1 + 0x4a0) == 0) {
      sVar1 = 2;
    }
    else {
      sVar1 = *(short *)(param_1 + 0x4a0) + -1;
    }
    *(short *)(param_1 + 0x4a0) = sVar1;
    ov67_021E6490(param_1);
    ov67_021E6530(param_1);
    *(undefined4 *)(param_1 + 0x4a8) = 1;
  }
  if ((((param_2 == 0) && (param_3 == 2)) || ((param_2 == 3 && (param_3 == 5)))) ||
     (((param_2 == 6 && (param_3 == 8)) || ((param_2 == 9 && (param_3 == 0xb)))))) {
    if (*(ushort *)(param_1 + 0x4a0) < 2) {
      sVar1 = *(ushort *)(param_1 + 0x4a0) + 1;
    }
    else {
      sVar1 = 0;
    }
    *(short *)(param_1 + 0x4a0) = sVar1;
    ov67_021E6490(param_1);
    ov67_021E6530(param_1);
    *(undefined4 *)(param_1 + 0x4a8) = 2;
  }
  if (param_2 == 0xc) {
    iVar2 = 0x1e;
  }
  else {
    iVar2 = param_2 + (uint)*(ushort *)(param_1 + 0x4a0) * 0xc;
  }
  ov67_021E6688(param_1,iVar2);
  ov67_021E6C14(param_1,param_2);
  return;
}

