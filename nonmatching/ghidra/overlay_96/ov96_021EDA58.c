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
undefined4 ov96_021EDCEC();
undefined4 PokeathlonCourse_GetFieldData();
undefined4 MTRandom();
undefined4 ov96_021E8A20();
undefined4 GF_AssertFail();
undefined4 PokeathlonCourse_GetDataCopyArea();
undefined4 ov96_021ED954();
undefined4 ov96_021ED9CC();

void ov96_021EDA58(undefined4 param_1)

{
  undefined1 uVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  int *piVar7;
  uint uVar8;
  uint uStack_4c;
  int *piStack_48;
  uint uStack_44;
  int *piStack_40;
  int iStack_3c;
  uint uStack_30;
  uint uStack_2c;
  
  piStack_40 = (int *)PokeathlonCourse_GetFieldData();
  iVar2 = PokeathlonCourse_GetDataCopyArea(param_1);
  iVar2 = ov96_021E8A20(iVar2 + 0x28);
  uVar6 = 0;
  *(uint *)(iVar2 + 4) = *(uint *)(iVar2 + 4) & 0xf8000007;
  *(uint *)(iVar2 + 8) = *(uint *)(iVar2 + 8) & 0xf000ffff;
  do {
    uVar1 = ov96_021ED954(param_1,uVar6 & 0xff);
    *(undefined1 *)(iVar2 + uVar6) = uVar1;
    uVar6 = uVar6 + 1;
  } while ((int)uVar6 < 4);
  uVar6 = ov96_021ED9CC(param_1);
  uVar6 = uVar6 & 7;
  uStack_30 = 0;
  uStack_44 = 0;
  *(uint *)(iVar2 + 4) = *(uint *)(iVar2 + 4) & 0xfffffff8 | uVar6;
  uStack_2c = 0;
  piStack_48 = piStack_40;
  do {
    uVar8 = 0;
    piVar7 = piStack_48;
    do {
      if ((uVar6 != 4) &&
         (uVar3 = ov96_021EDCEC(param_1,uVar6,uStack_2c & 0xff,uVar8 & 0xff),
         (int)uStack_30 < (int)uVar3)) {
        uStack_30 = uVar3;
      }
      if (uStack_44 < (uint)piVar7[2]) {
        uStack_44 = piVar7[2];
      }
      uVar8 = uVar8 + 1;
      piVar7 = piVar7 + 8;
    } while ((int)uVar8 < 3);
    piStack_48 = piStack_48 + 0x18;
    uStack_2c = uStack_2c + 1;
  } while ((int)uStack_2c < 4);
  uStack_4c = 0;
  iStack_3c = 0;
  do {
    uVar8 = 0;
    piVar7 = piStack_40;
    do {
      uVar3 = uVar8 + iStack_3c & 0xff;
      if (((*piVar7 == 0) && (piVar7[4] == 0)) && (piVar7[7] == 0)) {
        *(uint *)(iVar2 + 4) =
             (((*(uint *)(iVar2 + 4) & 0x7ffffff) >> 0xf) + (1 << uVar3) & 0xfff) << 0xf |
             *(uint *)(iVar2 + 4) & 0xf8007fff;
      }
      if (uStack_44 == piVar7[2]) {
        uVar4 = *(uint *)(iVar2 + 8);
        *(uint *)(iVar2 + 8) =
             uVar4 & 0xf000ffff | (((uVar4 & 0xfffffff) >> 0x10) + (1 << uVar3) & 0xfff) << 0x10;
      }
      if (uVar6 != 4) {
        uVar4 = ov96_021EDCEC(param_1,uVar6,uStack_4c & 0xff,uVar8 & 0xff);
        if ((int)uStack_30 < (int)uVar4) {
          GF_AssertFail();
        }
        if (uStack_30 == uVar4) {
          *(uint *)(iVar2 + 4) =
               (((*(uint *)(iVar2 + 4) & 0x7fff) >> 3) + (1 << uVar3) & 0xfff) << 3 |
               *(uint *)(iVar2 + 4) & 0xffff8007;
        }
      }
      uVar8 = uVar8 + 1;
      piVar7 = piVar7 + 8;
    } while ((int)uVar8 < 3);
    iStack_3c = iStack_3c + 3;
    piStack_40 = piStack_40 + 0x18;
    uStack_4c = uStack_4c + 1;
  } while ((int)uStack_4c < 4);
  *(uint *)(iVar2 + 8) = uStack_30 & 0xffff | *(uint *)(iVar2 + 8) & 0xffff0000;
  uVar6 = MTRandom();
  iVar5 = 0;
  do {
    *(char *)(iVar2 + (uVar6 & 3) + 0xd) = (char)iVar5;
    uVar6 = (uVar6 & 3) + 1;
    iVar5 = iVar5 + 1;
  } while (iVar5 < 4);
  return;
}

