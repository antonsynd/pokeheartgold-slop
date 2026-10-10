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
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 Heap_Alloc();
undefined4 func_0x020b535c() __asm__("sub_020B535C");
undefined4 GF_AssertFail();
extern int uRam0221a680 __asm__("sub_0221A680");
undefined4 func_0x0202c23c() __asm__("sub_0202C23C");
undefined4 func_0x020a0100() __asm__("sub_020A0100");
undefined4 func_0x020a0130() __asm__("sub_020A0130");
undefined4 sub_0202C08C();
undefined4 sub_0202C6F4();
undefined4 ov00_021E700C();

undefined4 ov00_021E5900(int param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  
  if (uRam0221a680 != 0) {
    GF_AssertFail();
  }
  iVar1 = Heap_Alloc(param_2,0x1108);
  func_0x020d4994(iVar1,0,0x1108);
  uRam0221a680 = iVar1 + 0x1fU & 0xffffffe0;
  *(int *)(uRam0221a680 + 0xf7c) = iVar1;
  *(int *)(uRam0221a680 + 0xf78) = param_1;
  *(undefined4 *)(uRam0221a680 + 0xfa4) = 0;
  *(undefined4 *)(uRam0221a680 + 0xfa8) = 0;
  *(undefined4 *)(uRam0221a680 + 0xfc0) = 0;
  *(undefined4 *)(uRam0221a680 + 0x1070) = 0;
  *(undefined4 *)(uRam0221a680 + 0x1084) = param_2;
  *(undefined4 *)(uRam0221a680 + 0x1088) = param_2;
  *(int *)(uRam0221a680 + 0x108c) = param_3;
  uVar2 = Heap_Alloc(param_2,param_3 + 0x3020);
  *(undefined4 *)(uRam0221a680 + 0xf90) = uVar2;
  *(undefined4 *)(uRam0221a680 + 0xf98) = 0;
  uVar2 = func_0x020b535c(*(int *)(uRam0221a680 + 0xf90) + 0x1fU & 0xffffffe0,param_3);
  *(undefined4 *)(uRam0221a680 + 0xf94) = uVar2;
  *(undefined4 *)(uRam0221a680 + 0xf9c) = 0;
  *(undefined4 *)(uRam0221a680 + 0x10a4) = 0;
  *(undefined4 *)(uRam0221a680 + 0x1094) = 0xffffffff;
  *(undefined4 *)(uRam0221a680 + 0x106c) = 0;
  *(undefined4 *)(uRam0221a680 + 0x107c) = param_4;
  *(undefined4 *)(uRam0221a680 + 0x1080) = 0;
  *(undefined4 *)(uRam0221a680 + 0x10d8) = 0;
  *(undefined4 *)(uRam0221a680 + 0x1098) = 0xffffffff;
  *(undefined4 *)(uRam0221a680 + 0x109c) = 1;
  *(undefined1 *)(uRam0221a680 + 0x10de) = 0;
  *(undefined4 *)(uRam0221a680 + 0x10cc) = 0;
  *(undefined1 *)(uRam0221a680 + 0x10dc) = 0;
  *(undefined1 *)(uRam0221a680 + 0x10dd) = 0;
  *(undefined2 *)(uRam0221a680 + 0x10d4) = 1;
  *(undefined4 *)(uRam0221a680 + 0x10d0) = 1;
  *(undefined2 *)(uRam0221a680 + 0x10d6) = 1;
  if (param_1 != 0) {
    sub_0202C6F4(*(undefined4 *)(uRam0221a680 + 0xf78));
    uVar2 = sub_0202C08C();
    *(undefined4 *)(uRam0221a680 + 0xf10) = uVar2;
    uVar2 = sub_0202C6F4(*(undefined4 *)(uRam0221a680 + 0xf78));
    uVar2 = func_0x0202c23c(uVar2,0);
    *(undefined4 *)(uRam0221a680 + 0x100) = uVar2;
  }
  *(undefined1 *)(uRam0221a680 + 0x10e5) = 1;
  iVar1 = 0;
  *(undefined4 *)(uRam0221a680 + 0x1064) = 0;
  do {
    iVar3 = uRam0221a680 + iVar1;
    iVar1 = iVar1 + 1;
    *(undefined1 *)(iVar3 + 0x1044) = 0;
  } while (iVar1 < 0x20);
  ov00_021E700C();
  iVar1 = func_0x020a0100(*(undefined4 *)(uRam0221a680 + 0xf10));
  if (iVar1 == 0) {
    return 1;
  }
  iVar1 = func_0x020a0130(*(undefined4 *)(uRam0221a680 + 0xf10));
  if (iVar1 != 0) {
    return 0;
  }
  return 2;
}

