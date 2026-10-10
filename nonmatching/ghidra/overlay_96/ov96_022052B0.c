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
undefined4 ReadWholeNarcMemberByIdPair();
undefined4 GF_AssertFail();
undefined4 PokeathlonCourse_GetDataCopyArea();
undefined4 ov96_021E5F24();
undefined4 ov96_02208AF8();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 GF_heap_c_dummy_return_true();
undefined4 ov96_02208AF0();
undefined4 PokeathlonCourse_SetStateTransitionType();
undefined4 ov96_021EB52C();
undefined4 ov96_021E8A20();
undefined4 ov96_0220764C();
undefined4 BeginNormalPaletteFade();
undefined4 IsPaletteFadeFinished();
undefined4 PokeathlonCourse_SetStateField07();
undefined4 ov96_02207870();
undefined4 ov96_02205D30();

undefined4 ov96_022052B0(undefined4 param_1,char *param_2)

{
  char cVar1;
  byte bVar2;
  byte bVar3;
  short sVar4;
  int iVar5;
  int iVar6;
  byte *pbVar7;
  byte *pbVar8;
  int iVar9;
  int iVar10;
  byte *pbStack_84;
  int iStack_7c;
  byte abStack_78 [20];
  byte abStack_64 [40];
  byte abStack_3c [40];
  
  iVar5 = PokeathlonCourse_GetHeapAllocPtr4();
  cVar1 = *param_2;
  if (cVar1 == '\0') {
    iVar6 = PokeathlonCourse_GetDataCopyArea(param_1);
    ov96_021E8A20(iVar6 + 0xf0);
    ReadWholeNarcMemberByIdPair(abStack_78,0xe3,*(undefined4 *)(iVar5 + 0x378));
    pbStack_84 = abStack_3c;
    pbVar8 = abStack_78;
    iStack_7c = 0;
    pbVar7 = abStack_64;
    iVar6 = iVar5;
    iVar9 = iVar5;
    do {
      bVar2 = pbVar7[1];
      bVar3 = *pbVar7;
      sVar4 = (ushort)bVar3 * 8;
      *(short *)(iVar9 + 0x61c) = sVar4;
      *(ushort *)(iVar9 + 0x61e) = (ushort)pbVar7[1] << 3;
      if ((bVar3 != 0) && (bVar2 != 0)) {
        *(undefined4 *)(iVar6 + 0x37c) = 1;
        *(short *)(iVar6 + 900) = sVar4;
        *(ushort *)(iVar6 + 0x386) = (ushort)bVar2 * 8;
        ov96_021EB52C(*(undefined4 *)(iVar6 + 0x380),1,1);
      }
      pbVar7 = pbVar7 + 2;
      iStack_7c = iStack_7c + 1;
      iVar9 = iVar9 + 4;
      iVar6 = iVar6 + 0xc;
    } while (iStack_7c < 0x14);
    iVar10 = 0;
    iVar6 = iVar5;
    iVar9 = iVar5;
    do {
      bVar2 = pbVar8[1];
      bVar3 = *pbVar8;
      sVar4 = (ushort)bVar3 * 8;
      *(short *)(iVar9 + 0x66c) = sVar4;
      *(ushort *)(iVar9 + 0x66e) = (ushort)pbVar8[1] << 3;
      if ((bVar3 != 0) && (bVar2 != 0)) {
        *(undefined4 *)(iVar6 + 0x46c) = 1;
        *(short *)(iVar6 + 0x478) = sVar4;
        *(ushort *)(iVar6 + 0x47a) = (ushort)bVar2 * 8;
        ov96_021EB52C(*(undefined4 *)(iVar6 + 0x470),1,1);
        ov96_021EB52C(*(undefined4 *)(iVar6 + 0x474),1,1);
      }
      iVar10 = iVar10 + 1;
      pbVar8 = pbVar8 + 2;
      iVar9 = iVar9 + 4;
      iVar6 = iVar6 + 0x10;
    } while (iVar10 < 10);
    iVar9 = 0;
    iVar6 = iVar5;
    do {
      iVar9 = iVar9 + 1;
      *(ushort *)(iVar6 + 0x5c8) = (ushort)*pbStack_84 << 3;
      *(ushort *)(iVar6 + 0x5ca) = (ushort)pbStack_84[1] << 3;
      iVar6 = iVar6 + 4;
      pbStack_84 = pbStack_84 + 2;
    } while (iVar9 < 0x14);
    iVar6 = ov96_021E5F24(param_1);
    if (iVar6 == 0) {
      ov96_02207870(iVar5);
      ov96_02208AF8(*(undefined4 *)(iVar5 + 0x36c),abStack_64);
      ov96_02208AF8(*(undefined4 *)(iVar5 + 0x36c),abStack_78);
      ov96_02208AF0(*(undefined4 *)(iVar5 + 0x36c),iVar5 + 0x564);
    }
    ov96_0220764C(iVar5);
    iVar5 = GF_heap_c_dummy_return_true(0x5c);
    if (iVar5 == 0) {
      GF_AssertFail();
    }
    *param_2 = *param_2 + '\x01';
    PokeathlonCourse_SetStateTransitionType(param_1,0x13);
  }
  else if (cVar1 == '\x01') {
    BeginNormalPaletteFade(2,3,3,0,6,1,*(undefined4 *)(iVar5 + 0x14));
    *param_2 = *param_2 + '\x01';
  }
  else if ((cVar1 == '\x02') && (iVar5 = IsPaletteFadeFinished(), iVar5 != 0)) {
    PokeathlonCourse_SetStateField07(param_1,1);
  }
  ov96_02205D30(param_1);
  return 0;
}

