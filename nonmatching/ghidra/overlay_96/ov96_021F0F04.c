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

void ov96_021F0F04(int param_1,int param_2)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  int extraout_r1;
  int iVar4;
  uint uVar5;
  int iVar6;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;

  uStack_1c = 0;
  uStack_20 = 0;
  uStack_24 = 0;
  uVar5 = 0;
  do {
    iVar2 = func_0x020f2998(uVar5,3);
    func_0x020f2998(uVar5,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
    iVar6 = param_1 + 0x20 + iVar2 * 0x1b0 + extraout_r1 * 0x90;
    iVar2 = (int)(*(int *)(iVar6 + 0x28) + ((uint)(*(int *)(iVar6 + 0x28) >> 0xb) >> 0x14)) >> 0xc;
    iVar4 = (int)(*(int *)(iVar6 + 0x2c) + ((uint)(*(int *)(iVar6 + 0x2c) >> 0xb) >> 0x14)) >> 0xc;
    if (iVar2 < 0) {
      iVar2 = 0;
    }
    else if (0xff < iVar2) {
      iVar2 = 0xff;
    }
    if (iVar4 < 0) {
      iVar4 = 0;
    }
    else if (0xff < iVar4) {
      iVar4 = 0xff;
    }
    uVar3 = *(uint *)(iVar6 + 0x18);
    bVar1 = *(byte *)(iVar6 + 0x40);
    *(char *)(param_2 + uVar5) = (char)iVar2;
    *(char *)(param_2 + uVar5 + 0xc) = (char)iVar4;
    uStack_1c = uStack_1c + (bVar1 - 1 << (uVar5 << 1 & 0xff));
    uStack_20 = uStack_20 + ((uVar3 & 0xff) << (uVar5 << 1 & 0xff));
    uStack_24 = uStack_24 + ((uint)*(byte *)(iVar6 + 0x44) << uVar5);
    uVar5 = uVar5 + 1 & 0xff;
  } while (uVar5 < 0xc);
  *(int *)(param_2 + 0x18) = uStack_1c;
  *(uint *)(param_2 + 0x18) = uStack_1c + (uint)*(byte *)(param_1 + 0x726) * 0x1000000;
  *(int *)(param_2 + 0x1c) = uStack_20;
  uStack_20 = uStack_20 + (uint)*(ushort *)(param_1 + 0x732) * 0x1000000;
  *(int *)(param_2 + 0x1c) = uStack_20;
  *(uint *)(param_2 + 0x1c) = uStack_20 + (uint)*(byte *)(param_1 + 0x74b) * 0x10000000;
  uVar3 = (uint)*(byte *)(param_1 + 0x724);
  uVar5 = *(uint *)(param_1 + uVar3 * 4 + 0x6e0);
  *(byte *)(param_1 + 0x724) = (byte)((uVar3 + 1) * 0x40000000 >> 0x1e);
  *(int *)(param_2 + 0x20) = uStack_24;
  uStack_24 = uStack_24 + (uint)*(byte *)(param_1 + 0x729) * 0x1000;
  *(int *)(param_2 + 0x20) = uStack_24;
  uStack_24 = uStack_24 + (uint)*(byte *)(param_1 + 0x748) * 0x2000;
  *(int *)(param_2 + 0x20) = uStack_24;
  uStack_24 = uStack_24 + (uint)*(byte *)(param_1 + 0x74a) * 0x4000;
  *(int *)(param_2 + 0x20) = uStack_24;
  iVar2 = uStack_24 + (uint)*(byte *)(param_1 + 0x74c) * 0x8000 + (uVar5 & 0xff) * 0x40000 +
          uVar3 * 0x4000000;
  *(int *)(param_2 + 0x20) = iVar2;
  *(uint *)(param_2 + 0x20) = iVar2 + (uint)*(byte *)(param_1 + 0x727) * 0x10000000;
  *(undefined1 *)(param_1 + 0x748) = 0;
  *(undefined1 *)(param_1 + 0x74b) = 0xc;
  *(undefined1 *)(param_1 + 0x74c) = 0;
  return;
}

