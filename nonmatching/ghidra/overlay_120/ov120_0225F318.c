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
undefined4 ov120_0225F040();
undefined4 ov120_0225F08C();
undefined4 GF_AssertFail();
extern undefined ov120_0226032C;
extern undefined ov120_022602FC;

undefined4 ov120_0225F318(undefined4 *param_1)

{
  byte bVar1;
  int iVar2;
  undefined *puVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  byte *pbVar8;
  byte *pbVar9;
  uint uStack_24;
  
  if (param_1 == (undefined4 *)0x0) {
    GF_AssertFail();
  }
  if (*(char *)((int)param_1 + 0xca) == '\0') {
    return 1;
  }
  if ((*(byte *)(param_1 + 0x31) < 0x18) &&
     (*(char *)(param_1 + 0x32) = *(char *)(param_1 + 0x32) + -1, *(char *)(param_1 + 0x32) < '\x01'
     )) {
    *(undefined1 *)(param_1 + 0x32) = *(undefined1 *)((int)param_1 + 0xc6);
    if ((int)((uint)*(byte *)((int)param_1 + 0xcb) << 0x1f) < 0) {
      bVar1 = *(byte *)(param_1 + 0x31);
      puVar3 = &ov120_0226032C;
    }
    else {
      bVar1 = *(byte *)(param_1 + 0x31);
      puVar3 = &ov120_022602FC;
    }
    uVar6 = (uint)(byte)puVar3[bVar1];
    ov120_0225F040(param_1[uVar6 + 1],(uVar6 & 7) * 0x20 + 0x10,((int)uVar6 >> 3) * 0x20 + 0x10,
                   *(undefined1 *)((int)param_1 + 199),*param_1,0,0x20,0x20,0x20,
                   *(undefined1 *)((int)param_1 + 0xc9));
    if ((int)((uint)*(byte *)((int)param_1 + 0xcb) << 0x1f) < 0) {
      bVar1 = *(byte *)(param_1 + 0x31);
      puVar3 = &ov120_0226032C;
    }
    else {
      bVar1 = *(byte *)(param_1 + 0x31);
      puVar3 = &ov120_022602FC;
    }
    iVar7 = -(uint)(byte)puVar3[bVar1] + 0x2f;
    iVar2 = iVar7 >> 0x1f;
    ov120_0225F040(param_1[-(uint)(byte)puVar3[bVar1] + 0x30],
                   (((uint)(iVar7 * 0x20000000 + iVar2) >> 0x1d | iVar2 << 3) - iVar2) * 0x20 + 0x10
                   ,((int)(iVar7 + ((uint)(iVar7 >> 2) >> 0x1d)) >> 3) * 0x20 + 0x10,
                   *(undefined1 *)((int)param_1 + 199),*param_1,0,0x20,0x20,0x20,
                   *(undefined1 *)((int)param_1 + 0xc9));
    *(char *)(param_1 + 0x31) = *(char *)(param_1 + 0x31) + '\x01';
  }
  uVar6 = (uint)*(byte *)((int)param_1 + 0xc5);
  if (uVar6 < *(byte *)(param_1 + 0x31)) {
    pbVar9 = &ov120_0226032C + uVar6;
    pbVar8 = &ov120_022602FC + uVar6;
    do {
      if ((int)((uint)*(byte *)((int)param_1 + 0xcb) << 0x1f) < 0) {
        bVar1 = *pbVar9;
      }
      else {
        bVar1 = *pbVar8;
      }
      uVar4 = ov120_0225F08C(param_1[bVar1 + 1]);
      uVar5 = ov120_0225F08C(param_1[0x30 - (uint)bVar1]);
      uStack_24 = uVar5 | uVar4;
      if (uStack_24 == 1) {
        *(char *)((int)param_1 + 0xc5) = *(char *)((int)param_1 + 0xc5) + '\x01';
      }
      uVar6 = uVar6 + 1;
      pbVar9 = pbVar9 + 1;
      pbVar8 = pbVar8 + 1;
    } while ((int)uVar6 < (int)(uint)*(byte *)(param_1 + 0x31));
  }
  if ((0x17 < *(byte *)((int)param_1 + 0xc5)) && (uStack_24 == 1)) {
    *(undefined1 *)((int)param_1 + 0xca) = 0;
    return 1;
  }
  return 0;
}

