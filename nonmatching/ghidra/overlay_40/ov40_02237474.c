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
unsigned char CalcShininessByOtIdAndPersonality(unsigned int, unsigned int);
undefined4 GetMonSpriteCharAndPlttNarcIdsEx(void *, unsigned short, unsigned char, unsigned char, unsigned char, unsigned char, unsigned int);
void * AllocAndLoadMonPersonal(int, int);
undefined4 ov40_022371D4();
unsigned char GetMonPicHeightBySpeciesGenderForm(unsigned short, unsigned char, unsigned char, unsigned char, unsigned int);
void * PokepicManager_CreatePokepic(void *, void *, int, int, int, int, void *, void *);
unsigned char GetGenderBySpeciesAndPersonality(unsigned short, unsigned int);
undefined4 FreeMonPersonal(void *);

void ov40_02237474(int param_1)

{
  byte bVar1;
  byte bVar2;
  undefined *puVar4;
  undefined *puVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  uint uVar10;
  uint uVar11;
  byte bVar12;
  undefined auStack_24 [16];
  ushort uVar3;
  
  iVar9 = *(int *)(param_1 + 0x860);
  uVar7 = *(uint *)(iVar9 + 0x1b0);
  iVar6 = iVar9 + uVar7 * 4;
  uVar8 = *(uint *)(iVar6 + 0xe0);
  bVar12 = *(byte *)(iVar9 + uVar7 + 0x15c);
  uVar10 = (uint)*(ushort *)(iVar9 + uVar7 * 2 + 0x2c);
  uVar11 = *(uint *)(iVar6 + 0x68);
  if (uVar10 == 0) {
    *(undefined4 *)(iVar9 + 0x32c) = 0;
    return;
  }
  iVar6 = ov40_022371D4(*(undefined4 *)(iVar9 + 0x158),1 << (uVar7 & 0xff));
  if (iVar6 == 1) {
    bVar12 = uVar10 == 0x1ea;
    uVar10 = 0x1ee;
  }
  puVar4 = AllocAndLoadMonPersonal(uVar10,0x6d);
  uVar3 = (ushort)uVar10;
  bVar1 = GetGenderBySpeciesAndPersonality(uVar3,uVar11);
  bVar2 = CalcShininessByOtIdAndPersonality(uVar8,uVar11);
  GetMonPicHeightBySpeciesGenderForm(uVar3,bVar1,2,bVar12,uVar11);
  GetMonSpriteCharAndPlttNarcIdsEx(auStack_24,uVar3,bVar1,2,bVar2,bVar12,uVar11);
  puVar5 = PokepicManager_CreatePokepic
                     (*(undefined **)(param_1 + 100),auStack_24,0x2a,0x5b,0,0,(undefined *)0x0,
                      (undefined *)0x0);
  *(undefined **)(iVar9 + 0x32c) = puVar5;
  FreeMonPersonal(puVar4);
  return;
}

