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
undefined4 PokeathlonCourse_GetDataCopyArea();
undefined4 ov96_021E5F24();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 ov96_021EEA80();
undefined4 ov96_021E8A20();
undefined4 PokeathlonCourse_GetParticipantCount();

undefined4 ov96_021EE324(undefined4 param_1)

{
  byte bVar1;
  undefined1 uVar2;
  bool bVar3;
  char cVar4;
  byte bVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  undefined1 *puVar10;
  undefined1 *puVar11;
  byte *pbVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  byte bStack_2c;

  iVar6 = PokeathlonCourse_GetHeapAllocPtr4();
  iVar7 = PokeathlonCourse_GetDataCopyArea(param_1);
  iVar8 = ov96_021E8A20(iVar7 + 0x28);
  iVar9 = ov96_021E8A20(iVar7 + 0xf0);
  cVar4 = ov96_021E5F24(param_1);
  bVar1 = *(byte *)(iVar6 + 0xb7);
  bStack_2c = 0;
  if (cVar4 == '\0') {
    bVar3 = true;
    *(byte *)(iVar8 + 0x20) = bVar1;
    puVar10 = (undefined1 *)ov96_021E8A20(iVar7 + 0x50);
    puVar11 = (undefined1 *)ov96_021E8A20(iVar7);
    iVar14 = 0x24;
    do {
      uVar2 = *puVar11;
      puVar11 = puVar11 + 1;
      *puVar10 = uVar2;
      puVar10 = puVar10 + 1;
      iVar14 = iVar14 + -1;
    } while (iVar14 != 0);
    iVar15 = 0;
    iVar14 = PokeathlonCourse_GetParticipantCount(param_1);
    if (0 < iVar14) {
      iVar14 = iVar7 + 0x50;
      bStack_2c = 0;
      do {
        pbVar12 = (byte *)ov96_021E8A20(iVar14);
        if ((*pbVar12 < bVar1) || (pbVar12[1] == 1)) {
          bStack_2c = 1;
        }
        if (pbVar12[2] == 0) {
          bVar3 = false;
        }
        iVar14 = iVar14 + 0x28;
        iVar15 = iVar15 + 1;
        iVar13 = PokeathlonCourse_GetParticipantCount(param_1);
      } while (iVar15 < iVar13);
    }
    if (bVar3) {
      *(byte *)(iVar8 + 0x21) = *(byte *)(iVar8 + 0x21) | 2;
    }
    *(byte *)(iVar8 + 0x21) = bStack_2c | *(byte *)(iVar8 + 0x21) & 0xfe;
  }
  pbVar12 = (byte *)ov96_021E8A20(iVar7);
  *pbVar12 = bVar1;
  bVar5 = ov96_021EEA80(*(undefined4 *)(iVar6 + 0xc));
  pbVar12[1] = bVar5;
  pbVar12[2] = (byte)*(undefined4 *)(iVar6 + 0xb8);
  if (((int)((uint)*(byte *)(iVar9 + 0x21) << 0x1f) < 0) && (*(byte *)(iVar9 + 0x20) <= bVar1)) {
    return 1;
  }
  return 0;
}

