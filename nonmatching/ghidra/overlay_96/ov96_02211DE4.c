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
undefined4 ov96_02213EC4();
undefined4 func_0x020f2998() __asm__("sub_020F2998");

void ov96_02211DE4(int param_1,int param_2)

{
  ushort uVar1;
  undefined1 uVar2;
  int iVar3;
  byte *pbVar4;
  int extraout_r1;
  uint uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  uint uVar9;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;

  uStack_24 = 0;
  uStack_28 = 0;
  uStack_2c = 0;
  iVar8 = 0;
  uVar9 = 0;
  do {
    iVar3 = func_0x020f2998(iVar8,3);
    func_0x020f2998(iVar8,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
    iVar3 = param_1 + 0x5c + iVar3 * 0x174 + extraout_r1 * 0x7c;
    uVar1 = *(ushort *)(iVar3 + 0x5c);
    iVar6 = *(int *)(iVar3 + 0x34);
    uVar5 = *(uint *)(iVar3 + 0x78);
    *(char *)(param_2 + iVar8) =
         (char)((int)(*(int *)(iVar3 + 0x30) + ((uint)(*(int *)(iVar3 + 0x30) >> 0xb) >> 0x14)) >>
               0xc);
    *(char *)(param_2 + iVar8 + 0xc) = (char)((int)(iVar6 + ((uint)(iVar6 >> 0xb) >> 0x14)) >> 0xc);
    uStack_24 = uStack_24 + ((uVar1 - 1 & 0xff) << (uVar9 & 0xff));
    iVar8 = iVar8 + 1;
    uStack_28 = uStack_28 + ((uVar5 & 0xff) << (uVar9 & 0xff));
    uVar9 = uVar9 + 2;
  } while (iVar8 < 0xc);
  iVar3 = 0;
  iVar8 = param_1 + 0x62c;
  uVar9 = 0;
  do {
    iVar6 = *(int *)(iVar8 + 8);
    uVar2 = ov96_02213EC4(iVar8);
    iVar7 = param_2 + iVar3;
    iVar3 = iVar3 + 1;
    *(char *)(iVar7 + 0x18) = (char)((int)(iVar6 + ((uint)(iVar6 >> 0xb) >> 0x14)) >> 0xc);
    *(undefined1 *)(iVar7 + 0x1a) = uVar2;
    pbVar4 = (byte *)(iVar8 + 0x39);
    iVar8 = iVar8 + 0x4c;
    uVar5 = uVar9 & 0xff;
    uVar9 = uVar9 + 2;
    uStack_2c = uStack_2c + ((uint)*pbVar4 << uVar5);
  } while (iVar3 < 2);
  uVar9 = (uint)*(byte *)(param_1 + 0x73c);
  iVar8 = *(int *)(param_1 + uVar9 * 4 + 0x6f4);
  *(byte *)(param_1 + 0x73c) = (byte)((uVar9 + 1) * 0x40000000 >> 0x1e);
  *(uint *)(param_2 + 0x1c) = uStack_24 + uStack_2c * 0x1000000 + uVar9 * 0x10000000;
  if (*(char *)(param_1 + 0x664) == '\x02') {
    *(int *)(param_2 + 0x1c) = *(int *)(param_2 + 0x1c) + 0x40000000;
  }
  if (*(char *)(param_1 + 0x6b0) != '\0') {
    *(int *)(param_2 + 0x1c) = *(int *)(param_2 + 0x1c) + -0x80000000;
  }
  *(int *)(param_2 + 0x20) = uStack_28;
  *(uint *)(param_2 + 0x20) =
       uStack_28 + (uint)*(byte *)(param_1 + 0x73e) * 0x1000000 + iVar8 * 0x2000000;
  return;
}

