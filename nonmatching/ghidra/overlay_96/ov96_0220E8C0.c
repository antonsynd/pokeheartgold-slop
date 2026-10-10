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
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");
undefined4 func_0x020f1520() __asm__("sub_020F1520");
undefined4 GF_AssertFail();
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 ov96_0220E888();
undefined4 func_0x020f1cc8() __asm__("sub_020F1CC8");
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 func_0x020f2998() __asm__("sub_020F2998");

int ov96_0220E8C0(byte *param_1,int param_2,undefined4 *param_3)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  
  iVar6 = 0;
  uVar7 = 0x3f800000;
  if (param_1 == (byte *)0x0) {
    GF_AssertFail();
  }
  bVar1 = *param_1;
  iVar2 = ov96_0220E888(param_2 - (uint)bVar1);
  iVar3 = ov96_0220E888((uint)bVar1);
  if (iVar2 - iVar3 != 0) {
    if (param_1[1] == 0) {
      uVar4 = func_0x020f2178(0);
      func_0x020f24c8(uVar4,0x3f000000);
    }
    else {
      uVar4 = func_0x020f2178((uint)param_1[1] << 0xc);
      func_0x020f1520(0x3f000000,uVar4);
    }
    iVar5 = func_0x020f2104();
    if (iVar5 != 0) {
      iVar6 = func_0x020f2998(iVar5,10);
      iVar6 = (iVar2 - iVar3) * iVar6;
      if (iVar6 < -0x17fff) {
        iVar6 = -0x18000;
      }
      func_0x020f2998(iVar6 + -0x4000,100);
      uVar7 = func_0x020f2178();
      uVar7 = func_0x020f1cc8(uVar7,0x45800000);
      uVar7 = func_0x020f24c8(0x3f800000,uVar7);
    }
  }
  *param_3 = uVar7;
  return iVar6 >> 0xc;
}

