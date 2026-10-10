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
undefined4 ov96_021FBE9C();
undefined4 ov96_021FBEDC();
undefined4 ov96_021FBE44();
undefined4 ov96_021FBE54();
undefined4 GF_AssertFail();

undefined4 ov96_021FBF90(int param_1,int param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uStack_24;
  int iStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  iVar4 = param_2 * 8;
  uStack_18 = param_4;
  uVar1 = ov96_021FBE44(*(undefined4 *)(param_1 + iVar4),*(uint *)(param_1 + iVar4 + 4) & 0xff,
                        param_3,param_4,param_3);
  iVar2 = ov96_021FBE9C();
  if (iVar2 == 0) {
    iVar3 = *(int *)(param_1 + 4 + iVar4) + 1;
    iVar2 = iVar3 >> 0x1f;
    *(uint *)(param_1 + 4 + iVar4) =
         ((uint)(iVar3 * 0x40000000 + iVar2) >> 0x1e | iVar2 << 2) - iVar2;
    uStack_24 = 0;
    uStack_1c = 0;
    iStack_20 = param_3 * 0x1000 + -0x8000;
    if (param_2 == 0) {
      uStack_24 = 0x30000;
    }
    else if (param_2 == 1) {
      uStack_24 = 0x80000;
    }
    else if (param_2 == 2) {
      uStack_24 = 0xd0000;
    }
    ov96_021FBEDC(uVar1,&uStack_24);
    ov96_021FBE54(uVar1,1);
    return uVar1;
  }
  GF_AssertFail();
  return 0;
}

