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
undefined4 ov96_021E5F24();
undefined4 ov96_021EE264();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 PokeathlonCourse_GetFieldData();
undefined4 ov96_021ECC4C();
undefined4 GF_AssertFail();

void ov96_021EDE64(undefined4 param_1,undefined4 param_2)

{
  undefined2 uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  int iVar7;

  uVar2 = ov96_021E5F24();
  iVar3 = PokeathlonCourse_GetHeapAllocPtr4(param_1);
  iVar4 = PokeathlonCourse_GetFieldData(param_1);
  if ((*(uint *)(iVar3 + 0x9c) & 0xfffffff) >> 0x18 == uVar2) {
    *(ushort *)(iVar4 + 0x1d0) = *(ushort *)(iVar4 + 0x1d0) & 0xfffe | 1;
  }
  iVar7 = 999;
  uVar6 = 0;
  do {
    iVar5 = ov96_021ECC4C(param_2,uVar6 & 0xff);
    if (iVar5 <= iVar7) {
      iVar7 = iVar5;
    }
    uVar6 = uVar6 + 1;
  } while ((int)uVar6 < 4);
  iVar5 = ov96_021ECC4C(param_2,uVar2 & 0xff);
  if (iVar5 == iVar7) {
    *(ushort *)(iVar4 + 0x1d0) = *(ushort *)(iVar4 + 0x1d0) | 2;
  }
  *(uint *)(iVar4 + 0x180) = (uint)*(byte *)(iVar3 + uVar2 + 0xac);
  uVar1 = ov96_021ECC4C(*(undefined4 *)(iVar3 + 0x8c),uVar2 & 0xff);
  *(undefined2 *)(iVar4 + 0x1d2) = uVar1;
  uVar2 = ov96_021EE264(iVar3 + 0x9c,uVar2 & 0xff);
  if (uVar2 == 0xffffffff) {
    GF_AssertFail();
  }
  *(ushort *)(iVar4 + 0x1d0) = *(ushort *)(iVar4 + 0x1d0) & 0xfff3 | (ushort)((uVar2 & 3) << 2);
  return;
}

