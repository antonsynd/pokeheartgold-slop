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
undefined4 func_0x020ccba0() __asm__("sub_020CCBA0");
undefined4 func_0x020182c4() __asm__("sub_020182C4");
undefined4 func_0x020bf0cc() __asm__("sub_020BF0CC");
undefined4 func_0x020182a8() __asm__("sub_020182A8");
undefined4 ov91_0225E9AC();
undefined4 ov91_0225E990();

void ov91_02260950(int param_1)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = ov91_0225E9AC(*(undefined4 *)(param_1 + 0xf8));
  if (iVar1 == 1) {
    iVar1 = -0x12c000;
  }
  else {
    iVar1 = ov91_0225E990(*(undefined4 *)(param_1 + 0xf8));
    if (iVar1 == 0) {
      iVar1 = -0x33000;
    }
    else {
      iVar1 = -0x12c000;
    }
  }
  func_0x020182a8(param_1 + 0x7c,*(undefined4 *)(*(int *)(param_1 + 0xf8) + 0x2c),iVar1,
                  *(undefined4 *)(*(int *)(param_1 + 0xf8) + 0x34));
  uVar2 = *(int *)(*(int *)(param_1 + 0xf8) + 0x30) - iVar1;
  iVar1 = func_0x020ccba0(uVar2 * 0x1000 + 0x800 >> 0xc |
                          ((uVar2 >> 0x14) + (uint)(0xfffff7ff < uVar2 * 0x1000)) * 0x100000,
                          0x12c000);
  func_0x020182c4(param_1 + 0x7c,iVar1 + 0x1000,iVar1 + 0x1000,iVar1 + 0x1000);
  iVar1 = func_0x020ccba0(uVar2 * 0x10000 + 0x800 >> 0xc |
                          ((uVar2 >> 0x10) + (uint)(0xfffff7ff < uVar2 * 0x10000)) * 0x100000,
                          0x12c000);
  func_0x020bf0cc(0,0,0,0,0x18 - (iVar1 >> 0xc),0);
  return;
}

