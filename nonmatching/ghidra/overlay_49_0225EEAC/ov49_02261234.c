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
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 ov49_02258800();
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 func_0x0222ae08() __asm__("sub_0222AE08");
undefined4 func_0x020ccd78() __asm__("sub_020CCD78");
undefined4 ov49_02258E34();
undefined4 func_0x020f1520() __asm__("sub_020F1520");
undefined4 ov49_0225E420();
undefined4 func_0x020ccba0() __asm__("sub_020CCBA0");
undefined4 ov49_0225CC20();
undefined4 func_0x020f2948() __asm__("sub_020F2948");
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");
extern undefined FX_SinCosTable_;
undefined4 ov49_02259148();

bool ov49_02261234(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  short sVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  longlong lVar6;
  undefined2 uStack_44;
  undefined2 uStack_42;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  int iStack_34;
  undefined4 uStack_30;
  undefined1 auStack_2c [4];
  int iStack_28;
  int iStack_24;
  undefined1 auStack_20 [4];
  int iStack_1c;
  int iStack_18;
  
  *(short *)(param_1 + 2) = *(short *)(param_1 + 2) + 1;
  sVar1 = *(short *)(param_1 + 2);
  if (0x17 < sVar1) {
    *(undefined2 *)(param_1 + 2) = 0x18;
  }
  func_0x0222ae08(*param_1,&uStack_3c,&uStack_40);
  ov49_0225E420(param_2,uStack_3c,uStack_40,auStack_2c);
  uVar2 = ov49_02258E34(param_1[3]);
  uStack_44 = (undefined2)uVar2;
  uStack_42 = (undefined2)((uint)uVar2 >> 0x10);
  ov49_02258800(&uStack_44,auStack_20);
  uStack_38 = 0;
  iVar3 = (int)*(short *)(param_1 + 2);
  if (iVar3 < 1) {
    uVar2 = func_0x020f2178(iVar3 << 0xc);
    func_0x020f24c8(uVar2,0x3f000000);
  }
  else {
    uVar2 = func_0x020f2178(iVar3 << 0xc);
    func_0x020f1520(0x3f000000,uVar2);
  }
  iVar3 = func_0x020f2104();
  lVar6 = func_0x020f2948(iVar3,iVar3 >> 0x1f,iStack_28 - iStack_1c,iStack_28 - iStack_1c >> 0x1f);
  iStack_34 = func_0x020ccba0((uint)(lVar6 + 0x800) >> 0xc |
                              (int)((ulonglong)(lVar6 + 0x800) >> 0x20) * 0x100000,0x18000);
  if (*(short *)(param_1 + 2) < 4) {
    uStack_30 = 0;
  }
  else {
    iVar3 = *(short *)(param_1 + 2) + -4;
    if (iVar3 < 1) {
      uVar2 = func_0x020f2178(iVar3 * 0x1000);
      func_0x020f24c8(uVar2,0x3f000000);
    }
    else {
      uVar2 = func_0x020f2178(iVar3 * 0x1000);
      func_0x020f1520(0x3f000000,uVar2);
    }
    iVar3 = func_0x020f2104();
    lVar6 = func_0x020f2948(iVar3,iVar3 >> 0x1f,iStack_24 - iStack_18,iStack_24 - iStack_18 >> 0x1f)
    ;
    uStack_30 = func_0x020ccba0((uint)(lVar6 + 0x800) >> 0xc |
                                (int)((ulonglong)(lVar6 + 0x800) >> 0x20) * 0x100000,0x14000);
  }
  func_0x020ccd78(&uStack_38,auStack_20,&uStack_38);
  ov49_0225CC20(param_3,uStack_38,iStack_34,uStack_30);
  uVar4 = func_0x020f2998(*(short *)(param_1 + 2) * 0x7fff,0x18);
  uVar5 = *(short *)(&FX_SinCosTable_ + ((int)(uVar4 & 0xffff) >> 4) * 4) * 0x10000;
  iStack_34 = iStack_34 +
              (uVar5 + 0x800 >> 0xc |
              (((uint)(int)*(short *)(&FX_SinCosTable_ + ((int)(uVar4 & 0xffff) >> 4) * 4) >> 0x10)
              + (uint)(0xfffff7ff < uVar5)) * 0x100000);
  ov49_02259148(param_1[3],&uStack_38);
  return 0x17 < sVar1;
}

