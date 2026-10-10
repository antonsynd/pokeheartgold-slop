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
undefined4 sub_02033F90();
undefined4 sub_02034044();
undefined4 sub_0203507C();
undefined4 Heap_Free();
undefined4 sub_0203993C();
undefined4 SysTask_Destroy();
undefined4 func_0x021e6cb8() __asm__("sub_021E6CB8");
undefined4 sub_020343E4();
undefined4 sub_020379F8();
extern int iRam021d4148 __asm__("sub_021D4148");
extern undefined1 uRam021d4141 __asm__("sub_021D4141");
extern undefined4 uRam021d4144 __asm__("sub_021D4144");

void sub_02036024(void)

{
  bool bVar1;
  int iVar2;
  
  bVar1 = false;
  if (iRam021d4148 != 0) {
    sub_0203993C();
    iVar2 = sub_02034044();
    if (iVar2 == 0) {
      iVar2 = sub_0203507C();
      if (iVar2 != 0) {
        bVar1 = true;
      }
    }
    else {
      func_0x021e6cb8();
      bVar1 = true;
    }
  }
  if (bVar1) {
    sub_020379F8();
    sub_020343E4();
    uRam021d4141 = 0;
    SysTask_Destroy(*(undefined4 *)(iRam021d4148 + 0x57c));
    *(undefined4 *)(iRam021d4148 + 0x57c) = 0;
    Heap_Free(*(undefined4 *)(iRam021d4148 + 0x490));
    Heap_Free(*(undefined4 *)(iRam021d4148 + 0x494));
    Heap_Free(*(undefined4 *)(iRam021d4148 + 0x48c));
    Heap_Free(*(undefined4 *)(iRam021d4148 + 0x488));
    sub_02033F90(iRam021d4148 + 0x5a0);
    sub_02033F90(iRam021d4148 + 0x580);
    Heap_Free(uRam021d4144);
    iRam021d4148 = 0;
    uRam021d4144 = 0;
  }
  return;
}

