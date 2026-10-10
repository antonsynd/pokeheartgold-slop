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
void * PokeathlonCourse_GetDataCopyArea(void *);
undefined4 ov96_0220B708();
undefined4 ov96_02209E70();
undefined4 ov96_0220A840();
undefined4 ov96_021EB144();
undefined4 ov96_02209BF8();
undefined4 ov96_021E8228();
void * ov96_021E8A20(void *);
undefined4 System_GetTouchNew(void);
undefined4 ov96_021E5F24(void *);
undefined4 ov96_0220AD4C();
undefined4 ov96_0220B8F0();
undefined4 ov96_0220B528();
undefined4 ov96_0220A5DC();
undefined4 ov96_0220C9A0();
undefined4 ov96_0220AD34();
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 ov96_0220A87C();
undefined4 ov96_0220A298();
undefined4 ov96_0220B7B4();
undefined4 ov96_021E6454();
undefined4 ov96_0220A8CC();
undefined4 ov96_0220B634();
undefined4 ov96_02209BB0();
undefined4 ov96_0220B774();
undefined4 ov96_0220B8D8();
undefined4 ov96_0220A910();
undefined4 ov96_0220B7CC();
undefined4 ov96_0220A704();
undefined4 ov96_0220AAEC();
undefined4 ov96_0220B758();

undefined4
ov96_022091B4(undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  uint *puVar8;
  undefined4 uVar9;
  int iStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  puVar1 = PokeathlonCourse_GetHeapAllocPtr4(param_1);
  puVar2 = PokeathlonCourse_GetDataCopyArea(param_1);
  puVar2 = ov96_021E8A20(puVar2 + 0xf0);
  if ((*(uint *)(puVar2 + 0x10) & 0x1ffff) >> 0x10 == 1) {
    uVar3 = ov96_0220AD4C(*(undefined4 *)(puVar1 + 0x40));
    ov96_0220A5DC(param_1,uVar3);
    ov96_02209BF8(puVar1);
    ov96_0220B708(*(undefined4 *)(puVar1 + 0x4c),0);
    ov96_0220B8F0(*(undefined4 *)(puVar1 + 0x44));
    ov96_0220A87C(*(undefined4 *)(puVar1 + 0x40));
    ov96_021EB144(*(undefined4 *)(puVar1 + 0x10),1);
    return 1;
  }
  iVar4 = System_GetTouchNew();
  if (iVar4 != 0) {
    uVar5 = ov96_021E5F24(param_1);
    ov96_021E8228(param_1,uVar5 & 0xff,3,0,1);
  }
  ov96_02209E70(puVar1);
  ov96_0220A840(*(undefined4 *)(puVar1 + 0x40));
  iVar4 = ov96_0220AD34(*(undefined4 *)(puVar1 + 0x40));
  ov96_0220B528(*(undefined4 *)(puVar1 + 0x4c),iVar4 == 1);
  iVar6 = ov96_021E5F24(param_1);
  if (iVar6 == 0) {
    ov96_0220C9A0(*(undefined4 *)(puVar1 + 0x48));
  }
  ov96_0220B8D8(*(undefined4 *)(puVar1 + 0x44));
  iVar6 = ov96_0220A910(*(undefined4 *)(puVar1 + 0x40));
  ov96_0220A298(puVar1,iVar6);
  iVar7 = ov96_0220B7CC(*(undefined4 *)(puVar1 + 0x4c));
  if (((iVar7 != 0) && (iVar4 == 2)) && (iVar6 != 0)) {
    puVar8 = (uint *)ov96_0220B758(*(undefined4 *)(puVar1 + 0x4c));
    uVar3 = ov96_0220B774(*(undefined4 *)(puVar1 + 0x4c));
    iVar4 = ov96_0220A8CC(*(undefined4 *)(puVar1 + 0x40),*puVar8 >> 0x1a);
    uVar9 = ov96_0220B7B4(*(undefined4 *)(puVar1 + 0x4c));
    uVar3 = ov96_0220AAEC(*(undefined4 *)(puVar1 + 0x40),uVar9,(ushort)*puVar8 & 0x1ff,iVar4,uVar3,
                          &iStack_1c);
    ov96_0220B634(*(undefined4 *)(puVar1 + 0x4c),iVar4,uVar3);
    ov96_02209BB0(puVar1);
    if (iVar4 == 0) {
      if (iStack_1c == 0) {
        iVar4 = ov96_0220B774(*(undefined4 *)(puVar1 + 0x4c));
        if (iVar4 != 0) {
          ov96_0220A704(puVar1,4,1);
        }
      }
      else {
        ov96_0220A704(puVar1,4,1);
      }
    }
    else {
      ov96_0220A704(puVar1,0x10,2);
    }
  }
  if (0 < *(int *)(puVar1 + 0x260)) {
    *(int *)(puVar1 + 0x260) = *(int *)(puVar1 + 0x260) + -1;
  }
  ov96_021E6454(param_1,*(undefined4 *)(puVar1 + 0x260));
  if ((*(int *)(puVar1 + 0x260) == 0) && (iVar4 = ov96_021E5F24(param_1), iVar4 == 0)) {
    puVar1 = PokeathlonCourse_GetDataCopyArea(param_1);
    puVar1 = ov96_021E8A20(puVar1 + 0x28);
    *(uint *)(puVar1 + 0x10) = *(uint *)(puVar1 + 0x10) | 0x10000;
  }
  return 0;
}

