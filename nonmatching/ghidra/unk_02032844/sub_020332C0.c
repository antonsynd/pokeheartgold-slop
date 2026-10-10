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
undefined4 sub_02032858();
undefined4 sub_02032844();
undefined4 sub_0203335C();
undefined4 func_0x020d3c40() __asm__("sub_020D3C40");
undefined4 sub_02039AD8();
extern int iRam021d4128 __asm__("sub_021D4128");
extern int iRam027ffc3c __asm__("sub_027FFC3C");

undefined4 sub_020332C0(void)

{
  int iVar1;
  undefined4 in_r3;
  ushort uStack_18;
  ushort uStack_16;
  ushort uStack_14;
  undefined4 uStack_10;
  
  uStack_10 = in_r3;
  func_0x020d3c40(&uStack_18);
  *(uint *)(iRam021d4128 + 0x1338) =
       (uint)uStack_14 + (uint)uStack_16 + (uint)uStack_18 + iRam027ffc3c;
  *(int *)(iRam021d4128 + 0x1338) = *(int *)(iRam021d4128 + 0x1338) * 0x10dcd + 0x3039;
  *(undefined2 *)(iRam021d4128 + 0x133c) = 0;
  *(undefined2 *)(iRam021d4128 + 0x133e) = 0x65;
  sub_02032844(3);
  iVar1 = sub_0203335C(1);
  if (iVar1 == 0x18) {
    sub_02032858(0x18);
    sub_02032844(9);
    sub_02039AD8(1);
    return 0;
  }
  if (iVar1 != 2) {
    sub_02032858();
    sub_02032844(9);
    return 0;
  }
  return 1;
}

