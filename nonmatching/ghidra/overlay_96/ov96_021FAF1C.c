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
undefined4 ov96_021FB0F4();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 ov96_021FB400();
undefined4 ov96_021E8A20();
undefined4 PokeathlonCourse_GetParticipantCount();

void ov96_021FAF1C(undefined4 param_1)

{
  undefined2 uVar1;
  int iVar2;
  int iVar3;
  undefined2 *puVar4;
  undefined4 *puVar5;
  undefined2 *puVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  undefined4 *puVar10;
  undefined4 *puVar11;
  uint uVar12;
  int iStack_1c;

  iVar2 = PokeathlonCourse_GetHeapAllocPtr4();
  iVar3 = PokeathlonCourse_GetDataCopyArea(param_1);
  puVar4 = (undefined2 *)ov96_021E8A20();
  iVar8 = 0;
  iVar9 = iVar2;
  do {
    *puVar4 = *(undefined2 *)(iVar9 + 0xe0);
    if ((*(char *)(iVar9 + 0xe8) != '\0') && (puVar4[8] == 0)) {
      puVar4[8] = 1;
      puVar4[5] = (short)*(undefined4 *)(iVar2 + 0x230);
    }
    iVar8 = iVar8 + 1;
    iVar9 = iVar9 + 0x6c;
    puVar4 = puVar4 + 1;
  } while (iVar8 < 3);
  iVar9 = ov96_021E5F24(param_1);
  if (iVar9 == 0) {
    uVar12 = 0;
    puVar5 = (undefined4 *)ov96_021E8A20(iVar3 + 0x28);
    puVar4 = (undefined2 *)ov96_021E8A20(iVar3 + 0x50);
    puVar6 = (undefined2 *)ov96_021E8A20(iVar3);
    iVar9 = 0x12;
    do {
      uVar1 = *puVar6;
      puVar6 = puVar6 + 1;
      *puVar4 = uVar1;
      puVar4 = puVar4 + 1;
      iVar9 = iVar9 + -1;
    } while (iVar9 != 0);
    iStack_1c = 0;
    iVar3 = iVar3 + 0x50;
    puVar11 = puVar5;
    do {
      puVar6 = (undefined2 *)ov96_021E8A20(iVar3);
      iVar9 = 0;
      puVar4 = puVar6;
      puVar10 = puVar11;
      do {
        uVar1 = *puVar4;
        iVar9 = iVar9 + 1;
        puVar4 = puVar4 + 1;
        *(undefined2 *)(puVar10 + 1) = uVar1;
        puVar10 = (undefined4 *)((int)puVar10 + 2);
      } while (iVar9 < 3);
      if (*(char *)((int)puVar6 + 9) != '\0') {
        uVar12 = uVar12 + 1 & 0xff;
      }
      iVar3 = iVar3 + 0x28;
      iStack_1c = iStack_1c + 1;
      puVar11 = (undefined4 *)((int)puVar11 + 6);
    } while (iStack_1c < 4);
    uVar7 = PokeathlonCourse_GetParticipantCount(param_1);
    if (uVar12 == uVar7) {
      *puVar5 = 1;
    }
    ov96_021FB400(param_1);
  }
  ov96_021FB0F4(param_1);
  return;
}

