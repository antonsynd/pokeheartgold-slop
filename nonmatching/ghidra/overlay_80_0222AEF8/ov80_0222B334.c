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
undefined4 sub_0203769C();

void ov80_0222B334(int param_1,undefined4 param_2,undefined2 *param_3,int param_4)

{
  undefined2 *puVar1;
  ushort *puVar2;
  undefined2 uVar3;
  int iVar4;
  int iVar5;
  undefined2 *puVar6;
  ushort *puVar7;

  *(char *)(param_4 + 0x702) = *(char *)(param_4 + 0x702) + '\x01';
  iVar4 = sub_0203769C();
  if ((param_1 != iVar4) && (iVar4 = sub_0203769C(), iVar4 != 0)) {
    iVar5 = 0;
    puVar6 = param_3;
    iVar4 = param_4;
    do {
      uVar3 = *puVar6;
      iVar5 = iVar5 + 1;
      puVar6 = puVar6 + 1;
      *(undefined2 *)(iVar4 + 0x3d2) = uVar3;
      iVar4 = iVar4 + 2;
    } while (iVar5 < 4);
    iVar4 = 0;
    puVar6 = param_3;
    do {
      puVar1 = puVar6 + 4;
      iVar5 = param_4 + iVar4;
      iVar4 = iVar4 + 1;
      puVar6 = puVar6 + 1;
      *(char *)(iVar5 + 0x3da) = (char)*puVar1;
    } while (iVar4 < 4);
    iVar4 = 0;
    puVar7 = param_3 + 8;
    do {
      iVar4 = iVar4 + 1;
      *(uint *)(param_4 + 0x3e0) = (uint)*puVar7;
      puVar2 = puVar7 + 4;
      puVar7 = puVar7 + 1;
      *(uint *)(param_4 + 0x3e0) = *(uint *)(param_4 + 0x3e0) | (uint)*puVar2 << 0x10;
      param_4 = param_4 + 4;
    } while (iVar4 < 4);
  }
  return;
}

