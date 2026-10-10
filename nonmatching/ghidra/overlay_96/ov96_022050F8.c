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
undefined4 ov96_021EB630();
undefined4 ov96_021EB564();
undefined4 ov96_021EB3E4();

void ov96_022050F8(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  iVar4 = 0;
  iVar2 = param_1;
  do {
    uVar1 = ov96_021EB3E4(param_2,2,1,0x68,6);
    *(undefined4 *)(iVar2 + 0x380) = uVar1;
    ov96_021EB564(*(undefined4 *)(iVar2 + 0x380),1);
    iVar4 = iVar4 + 1;
    iVar2 = iVar2 + 0xc;
  } while (iVar4 < 0x14);
  iVar4 = 0;
  iVar2 = param_1;
  do {
    uVar1 = ov96_021EB3E4(param_2,2,1,0x68,0x11);
    *(undefined4 *)(iVar2 + 0x470) = uVar1;
    ov96_021EB564(*(undefined4 *)(iVar2 + 0x470),6);
    uVar1 = ov96_021EB3E4(param_2,2,1,0x68,0x12);
    *(undefined4 *)(iVar2 + 0x474) = uVar1;
    ov96_021EB564(*(undefined4 *)(iVar2 + 0x474),5);
    iVar4 = iVar4 + 1;
    iVar2 = iVar2 + 0x10;
  } while (iVar4 < 10);
  uStack_18 = 0;
  iVar2 = param_1;
  do {
    uVar1 = ov96_021EB3E4(param_2,2,1,0x68,9);
    *(undefined4 *)(iVar2 + 0x6c) = uVar1;
    ov96_021EB564(uVar1,2);
    uVar3 = 0;
    do {
      iVar4 = iVar2 + uVar3 * 4;
      uVar1 = ov96_021EB3E4(param_2,2,1,0x68,0x17);
      *(undefined4 *)(iVar4 + 0x70) = uVar1;
      ov96_021EB564(uVar1,3);
      ov96_021EB630(*(undefined4 *)(iVar4 + 0x70),2);
      uVar3 = uVar3 + 1 & 0xff;
    } while (uVar3 < 2);
    uVar1 = ov96_021EB3E4(param_2,2,1,0x68,0x1b);
    *(undefined4 *)(iVar2 + 0x78) = uVar1;
    ov96_021EB564(uVar1,8);
    iVar2 = iVar2 + 0xb8;
    uStack_18 = uStack_18 + 1;
  } while (uStack_18 < 4);
  iVar4 = 0;
  iVar2 = param_1;
  do {
    uVar1 = ov96_021EB3E4(param_2,2,1,0x68,0xe);
    *(undefined4 *)(iVar2 + 0x34c) = uVar1;
    ov96_021EB564(*(undefined4 *)(iVar2 + 0x34c),7);
    ov96_021EB630(*(undefined4 *)(iVar2 + 0x34c),4);
    iVar4 = iVar4 + 1;
    iVar2 = iVar2 + 4;
  } while (iVar4 < 4);
  iVar4 = 0;
  iVar2 = param_1;
  do {
    uVar1 = ov96_021EB3E4(param_2,2,1,0x68,0x19);
    *(undefined4 *)(iVar2 + 0x35c) = uVar1;
    ov96_021EB564(*(undefined4 *)(iVar2 + 0x35c),4);
    iVar4 = iVar4 + 1;
    iVar2 = iVar2 + 4;
  } while (iVar4 < 4);
  iVar2 = 0;
  uStack_1c = param_1;
  do {
    uVar1 = ov96_021EB3E4(param_2,2,1,0x68,0x1a);
    *(undefined4 *)(uStack_1c + 0x56c) = uVar1;
    uVar1 = ov96_021EB3E4(param_2,2,1,0x68,0x10);
    *(undefined4 *)(uStack_1c + 0x568) = uVar1;
    ov96_021EB564(*(undefined4 *)(uStack_1c + 0x568),0);
    ov96_021EB564(*(undefined4 *)(uStack_1c + 0x56c),4);
    iVar2 = iVar2 + 1;
    uStack_1c = uStack_1c + 0x14;
  } while (iVar2 < 5);
  return;
}

