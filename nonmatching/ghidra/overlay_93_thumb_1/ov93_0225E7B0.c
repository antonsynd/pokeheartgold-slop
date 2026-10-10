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
undefined4 func_0x0225f9d8() __asm__("sub_0225F9D8");
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 func_0x0225fb6c() __asm__("sub_0225FB6C");
undefined4 func_0x0225fb00() __asm__("sub_0225FB00");
undefined4 func_0x0225ef0c() __asm__("sub_0225EF0C");
undefined4 ov93_0225EC98();
undefined4 Heap_Alloc();
undefined4 func_0x0225ef5c() __asm__("sub_0225EF5C");

int ov93_0225E7B0(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;

  iVar1 = Heap_Alloc(0x75,0x278,param_3,param_4,param_4);
  func_0x020d4994(iVar1,0,0x278);
  *(undefined4 *)(iVar1 + 0x270) = *(undefined4 *)(*param_1 + 0x34);
  ov93_0225EC98(iVar1);
  func_0x0225ef0c(iVar1);
  func_0x0225ef5c(iVar1);
  if (*(int *)(*param_1 + 0x34) == 1) {
    *(undefined4 *)(iVar1 + 0x260) = 0x90000;
    *(undefined4 *)(iVar1 + 0x264) = 0x70000;
  }
  else if (*(int *)(*param_1 + 0x34) == 2) {
    *(undefined4 *)(iVar1 + 0x260) = 0x40000;
    *(undefined4 *)(iVar1 + 0x264) = 0x68000;
  }
  else {
    *(undefined4 *)(iVar1 + 0x260) = 0x60000;
    *(undefined4 *)(iVar1 + 0x264) = 0x60000;
  }
  *(undefined4 *)(iVar1 + 0x21c) = 0x80;
  *(undefined4 *)(iVar1 + 0x220) = 0x28;
  func_0x0225f9d8(param_1);
  uVar2 = func_0x0225fb00(param_1);
  *(undefined4 *)(iVar1 + 0x234) = uVar2;
  func_0x0225fb6c(iVar1,*(undefined4 *)(iVar1 + 0x234));
  *(undefined4 *)(iVar1 + 0x248) = 0x2000;
  return iVar1;
}

