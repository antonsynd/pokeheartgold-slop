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
undefined4 func_0x020da830() __asm__("sub_020DA830");
undefined4 func_0x020b1d6c() __asm__("sub_020B1D6C");
undefined4 func_0x020db39c() __asm__("sub_020DB39C");
undefined4 func_0x020d4858() __asm__("sub_020D4858");
undefined4 func_0x020c78d0() __asm__("sub_020C78D0");
undefined4 func_0x020c8a78() __asm__("sub_020C8A78");
undefined4 func_0x020db358() __asm__("sub_020DB358");
undefined4 func_0x020dade8() __asm__("sub_020DADE8");
undefined4 func_0x020b1d9c() __asm__("sub_020B1D9C");
extern int iRam0221a688 __asm__("sub_0221A688");
extern int uRam0221a684 __asm__("sub_0221A684");

void ov00_021E733C(void)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  func_0x020da830();
  func_0x020dade8();
  func_0x020db358(1);
  func_0x020db39c(3);
  iVar1 = 0;
  iVar3 = 0;
  *(undefined4 *)(iRam0221a688 + 0x1a78) = 0;
  *(undefined4 *)(iRam0221a688 + 0x1a84) = 0;
  *(undefined4 *)(iRam0221a688 + 0x1a7c) = 0;
  *(undefined4 *)(iRam0221a688 + 0x1a80) = 0;
  *(undefined4 *)(iRam0221a688 + 0x1a88) = 0;
  do {
    iVar1 = iVar1 + 1;
    iVar2 = iRam0221a688 + iVar3;
    iVar3 = iVar3 + 2;
    *(undefined2 *)(iVar2 + 0x1a8c) = 0;
  } while (iVar1 < 0x10);
  *(undefined4 *)(iRam0221a688 + 0x1aac) = 0;
  func_0x020b1d6c(1);
  func_0x020c78d0();
  func_0x020c8a78(iRam0221a688 + 0x19f8);
  func_0x020d4858(0,iRam0221a688 + 0x110c,0x880);
  uRam0221a684 = 0;
  func_0x020b1d9c(1);
  return;
}

