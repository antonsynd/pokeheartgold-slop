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
undefined4 GF_AssertFail();
undefined4 ov49_02267EF8();
undefined4 ov49_02267F40();

undefined4 ov49_02267E18(int param_1,uint param_2)

{
  undefined2 uVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined1 uStack_16;
  undefined1 uStack_15;
  
  uStack_20 = 0;
  uStack_1c = 0;
  if (*(short *)(param_1 + 0x3b4) != 0) {
    iVar4 = 0;
    do {
      uVar1 = *(undefined2 *)(*(int *)(param_1 + 0x3b0) + iVar4 + 2);
      if (*(ushort *)(*(int *)(param_1 + 0x3b0) + iVar4) == param_2) {
        uStack_16 = (byte)uVar1;
        if (3 < uStack_16) {
          GF_AssertFail();
        }
        uStack_15 = (byte)((ushort)uVar1 >> 8);
        if (4 < uStack_15) {
          GF_AssertFail();
        }
        ov49_02267EF8(param_1 + (uint)uStack_16 * 0xec,uStack_15);
        uStack_20 = 1;
      }
      iVar4 = iVar4 + 4;
      uStack_1c = uStack_1c + 1;
    } while (uStack_1c < (int)(uint)*(ushort *)(param_1 + 0x3b4));
  }
  bVar2 = true;
  iVar5 = 0;
  iVar4 = param_1;
  do {
    iVar3 = ov49_02267F40(iVar4);
    if (iVar3 == 0) {
      bVar2 = false;
    }
    iVar5 = iVar5 + 1;
    iVar4 = iVar4 + 0xec;
  } while (iVar5 < 4);
  if ((*(ushort *)(param_1 + 0x3b6) <= param_2) && (bVar2)) {
    uStack_20 = 2;
  }
  return uStack_20;
}

