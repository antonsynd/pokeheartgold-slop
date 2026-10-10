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
extern undefined ov120_02260314;
extern undefined ov120_022602E4;

undefined4 ov120_0225F4DC(undefined4 *param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  byte *pbVar5;
  byte *pbVar6;
  uint uStack_28;
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
      uVar4 = (uint)(byte)(&ov120_02260314)[*(byte *)(param_1 + 0x31)];
    }
    else {
      uVar4 = 0x2f - (byte)(&ov120_02260314)[*(byte *)(param_1 + 0x31)];
    }
    iVar1 = (int)uVar4 >> 0x1f;
    ov120_0225F040(param_1[uVar4 + 1],
                   ((uVar4 * 0x20000000 + iVar1 >> 0x1d | iVar1 << 3) - iVar1) * 0x20 + 0x10,
                   ((int)(uVar4 + ((uint)((int)uVar4 >> 2) >> 0x1d)) >> 3) * 0x20 + 0x10,
                   *(undefined1 *)((int)param_1 + 199),*param_1,0,0,0x20,0x20,
                   *(undefined1 *)((int)param_1 + 0xc9));
    if ((int)((uint)*(byte *)((int)param_1 + 0xcb) << 0x1f) < 0) {
      uVar4 = (uint)(byte)(&ov120_022602E4)[*(byte *)(param_1 + 0x31)];
    }
    else {
      uVar4 = 0x2f - (byte)(&ov120_022602E4)[*(byte *)(param_1 + 0x31)];
    }
    iVar1 = (int)uVar4 >> 0x1f;
    ov120_0225F040(param_1[uVar4 + 1],
                   ((uVar4 * 0x20000000 + iVar1 >> 0x1d | iVar1 << 3) - iVar1) * 0x20 + 0x10,
                   ((int)(uVar4 + ((uint)((int)uVar4 >> 2) >> 0x1d)) >> 3) * 0x20 + 0x10,
                   *(undefined1 *)((int)param_1 + 199),*param_1,0,0,0x20,0x20,
                   *(undefined1 *)((int)param_1 + 0xc9));
    *(char *)(param_1 + 0x31) = *(char *)(param_1 + 0x31) + '\x01';
  }
  uVar4 = (uint)*(byte *)((int)param_1 + 0xc5);
  if (uVar4 < *(byte *)(param_1 + 0x31)) {
    pbVar6 = &ov120_02260314 + uVar4;
    pbVar5 = &ov120_022602E4 + uVar4;
    do {
      if ((int)((uint)*(byte *)((int)param_1 + 0xcb) << 0x1f) < 0) {
        uStack_28 = (uint)*pbVar5;
        uVar2 = (uint)*pbVar6;
      }
      else {
        uVar2 = 0x2f - *pbVar6;
        uStack_28 = 0x2f - *pbVar5;
      }
      uVar2 = ov120_0225F08C(param_1[uVar2 + 1]);
      uVar3 = ov120_0225F08C(param_1[uStack_28 + 1]);
      uStack_24 = uVar3 | uVar2;
      if (uStack_24 == 1) {
        *(char *)((int)param_1 + 0xc5) = *(char *)((int)param_1 + 0xc5) + '\x01';
      }
      uVar4 = uVar4 + 1;
      pbVar6 = pbVar6 + 1;
      pbVar5 = pbVar5 + 1;
    } while ((int)uVar4 < (int)(uint)*(byte *)(param_1 + 0x31));
  }
  if ((0x17 < *(byte *)((int)param_1 + 0xc5)) && (uStack_24 == 1)) {
    *(undefined1 *)((int)param_1 + 0xca) = 0;
    return 1;
  }
  return 0;
}

