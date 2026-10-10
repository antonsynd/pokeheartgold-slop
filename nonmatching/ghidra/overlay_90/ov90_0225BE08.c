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
extern ushort uRam0400004a __asm__("sub_0400004A");
extern uint uRam04000000 __asm__("sub_04000000");
extern ushort uRam04000006 __asm__("sub_04000006");
extern ushort uRam04000004 __asm__("sub_04000004");

void ov90_0225BE08(int param_1)

{
  uint uVar1;
  uint uVar2;
  
  uVar1 = uRam04000006 + 1 & 0xff;
  if ((uVar1 < 0xc0) && (uVar2 = (uRam04000000 & 0xe000) >> 0xd, (uRam04000004 & 2) != 0)) {
    if ((uVar1 < 0x49) || (0x79 < uVar1)) {
      uRam0400004a = uRam0400004a & 0xffc0 | *(byte *)(param_1 + 400) & 0x1f;
      if ((int)((uint)*(byte *)(param_1 + 400) << 0x1a) < 0) {
        uRam0400004a = uRam0400004a | 0x20;
      }
      uVar2 = uVar2 | *(uint *)(param_1 + 0x194);
    }
    else {
      uRam0400004a = uRam0400004a & 0xffc0 | *(byte *)(param_1 + 0x191) & 0x1f;
      if ((int)((uint)*(byte *)(param_1 + 0x191) << 0x1a) < 0) {
        uRam0400004a = uRam0400004a | 0x20;
      }
      uVar2 = uVar2 & ~(*(uint *)(param_1 + 0x194) | 2);
    }
    if (*(char *)(param_1 + uVar1 + 0xc) == '\x01') {
      uRam04000000 = (uVar2 | 1) << 0xd | uRam04000000 & 0xffff1fff;
      return;
    }
    uRam04000000 = (uVar2 & 0xfffffffe) << 0xd | uRam04000000 & 0xffff1fff;
  }
  return;
}

