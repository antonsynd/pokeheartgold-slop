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
undefined4 GetMonData();
undefined4 ov80_02236A88();
undefined4 BattleSetup_New();
undefined4 BattleSetup_AddMonToParty();
undefined4 sub_02051D18();
undefined4 ov80_02236A34();
undefined4 Heap_Free();
undefined4 Party_GetMonByIndex();
undefined4 Party_InitWithMaxSize();
undefined4 GetMonExpBySpeciesAndLevel();
undefined4 SaveArray_Party_Get();
undefined4 CopyPokemonToPokemon();
undefined4 CalcMonLevelAndStats();
undefined4 SetMonData();
undefined4 AllocMonZeroed();
undefined4 BattleSetup_SetAllySideBattlersToPlayer();

int ov80_0223690C(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  uVar2 = ov80_02236A88(*(undefined1 *)(param_1 + 0xf));
  iVar3 = BattleSetup_New(*(undefined4 *)(param_1 + 4),uVar2);
  uVar2 = SaveArray_Party_Get(*(undefined4 *)(param_2 + 8));
  sub_02051D18(iVar3,0,*(undefined4 *)(param_2 + 8),*(undefined4 *)(param_2 + 0x18),
               *(undefined4 *)(param_2 + 0xc),*(undefined4 *)(param_2 + 0x1c));
  *(undefined4 *)(iVar3 + 0x14c) = 0x12;
  *(undefined4 *)(iVar3 + 0x150) = 0x12;
  uVar4 = AllocMonZeroed(*(undefined4 *)(param_1 + 4));
  Party_InitWithMaxSize(*(undefined4 *)(iVar3 + 4),*(undefined1 *)(param_1 + 0xe));
  iVar8 = 0;
  if (*(char *)(param_1 + 0xe) != '\0') {
    do {
      uVar5 = Party_GetMonByIndex(uVar2,*(undefined1 *)(param_1 + iVar8 + 0x2a));
      CopyPokemonToPokemon(uVar5,uVar4);
      uVar6 = GetMonData(uVar4,0xa1,0);
      if (0x32 < uVar6) {
        uVar5 = GetMonData(uVar4,5,0);
        uStack_1c = GetMonExpBySpeciesAndLevel(uVar5,0x32);
        SetMonData(uVar4,8,&uStack_1c);
        CalcMonLevelAndStats(uVar4);
      }
      BattleSetup_AddMonToParty(iVar3,uVar4,0);
      iVar8 = iVar8 + 1;
    } while (iVar8 < (int)(uint)*(byte *)(param_1 + 0xe));
  }
  Heap_Free(uVar4);
  BattleSetup_SetAllySideBattlersToPlayer(iVar3);
  ov80_02236A34(iVar3,param_1 + 0x78,*(undefined1 *)(param_1 + 0xe),1,*(undefined4 *)(param_1 + 4));
  iVar7 = 0;
  iVar8 = iVar3;
  do {
    iVar7 = iVar7 + 1;
    *(undefined4 *)(iVar8 + 0x34) = 7;
    iVar8 = iVar8 + 0x34;
  } while (iVar7 < 4);
  cVar1 = *(char *)(param_1 + 0xf);
  if (cVar1 == '\x02') {
    ov80_02236A34(iVar3,param_1 + 0x298 + (uint)(*(byte *)(param_1 + 0x10) >> 5) * 0x110,
                  *(undefined1 *)(param_1 + 0xe),2,*(undefined4 *)(param_1 + 4));
  }
  else if ((cVar1 != '\x03') && (cVar1 != '\x06')) {
    return iVar3;
  }
  ov80_02236A34(iVar3,param_1 + 0x188,*(undefined1 *)(param_1 + 0xe),3,*(undefined4 *)(param_1 + 4))
  ;
  return iVar3;
}

