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
undefined4 func_0x020d07f0() __asm__("sub_020D07F0");
undefined4 PlaySE();
undefined4 func_0x020d078c() __asm__("sub_020D078C");
undefined4 func_0x020d05c4() __asm__("sub_020D05C4");
undefined4 func_0x020d0774() __asm__("sub_020D0774");
undefined4 Heap_Free();
undefined4 func_0x020d0524() __asm__("sub_020D0524");
undefined4 SysTask_Destroy();
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 ov71_02246EAC();
undefined4 func_0x020d0634() __asm__("sub_020D0634");

void ov71_02246D9C(undefined4 param_1,int param_2)

{
  if (*(int *)(param_2 + 0xe8) == 0) {
    *(int *)(param_2 + 0xf0) = *(int *)(param_2 + 0xf0) + -1;
    if (*(int *)(param_2 + 0xf0) < 1) {
      PlaySE(0x6ad);
      *(undefined4 *)(param_2 + 0xf0) = 0x1e;
      ov71_02246EAC(param_2);
    }
    if (*(int *)(param_2 + 0xec) != 0) {
      func_0x020d0524();
      func_0x020d0774();
      func_0x020d2894(param_2,0x60);
      func_0x020d05c4(param_2,0x6000,0x60);
      func_0x020d078c(param_2,0x6000,0x60);
      func_0x020d0634();
      func_0x020d07f0();
      *(undefined4 *)(param_2 + 0xec) = 0;
      return;
    }
  }
  else {
    if (*(int *)(param_2 + 0xec) != 0) {
      func_0x020d0524();
      func_0x020d0774();
      func_0x020d2894(param_2,0x60);
      func_0x020d05c4(param_2,0x6000,0x60);
      func_0x020d078c(param_2,0x6000,0x60);
      func_0x020d0634();
      func_0x020d07f0();
      *(undefined4 *)(param_2 + 0xec) = 0;
    }
    if (*(int *)(param_2 + 0xf4) == 0) {
      **(undefined4 **)(param_2 + 0xe4) = 0;
      Heap_Free(param_2);
      SysTask_Destroy(param_1);
    }
  }
  return;
}

