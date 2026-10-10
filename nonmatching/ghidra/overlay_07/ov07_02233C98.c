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
undefined4 ov07_022223F0(undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x0200e074(undefined4, undefined4) __asm__("sub_0200E074");
undefined4 ov07_02222440(undefined4);

undefined4 ov07_02233C98(int param_1)

{
  int iVar1;
  
  if (*(int *)(param_1 + 8) == 0) {
    if (*(int *)(param_1 + 0x10) == 0) {
      ov07_022223F0(param_1 + 0x34,0xffffe001,0x1fff,10);
    }
    else {
      ov07_022223F0(param_1 + 0x34,0x1fff,0xffffe001,10);
    }
    *(uint *)(param_1 + 0x10) = *(uint *)(param_1 + 0x10) ^ 1;
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  }
  else {
    if (*(int *)(param_1 + 8) != 1) {
      *(undefined4 *)(param_1 + 0xc4) = 0;
      return 0;
    }
    func_0x0200e074(*(undefined4 *)(param_1 + 0x30),*(uint *)(param_1 + 0x34) & 0xffff);
    iVar1 = ov07_02222440(param_1 + 0x34);
    if (iVar1 == 0) {
      if (*(int *)(param_1 + 0xc) < 1) {
        *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0xc) + 1;
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + -1;
      }
      else {
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
    }
  }
  return 1;
}

