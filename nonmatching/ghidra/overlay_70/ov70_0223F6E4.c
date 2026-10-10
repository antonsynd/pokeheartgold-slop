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
undefined4 MIi_CpuCopyFast(void *, void *, unsigned int);
unsigned char WiFiHistory_GetPlayerRegion(void *);
unsigned short PlayerProfile_GetTrainerID_VisibleHalf(void *);
undefined4 ov70_0223E490();
undefined4 PlayerProfile_GetTrainerGender(void *);
undefined4 Mon_UpdateShayminForm(void *, int);
void * CopyU16StringArrayN(void *, void *, unsigned int);
unsigned char PlayerProfile_GetAvatar(void *);
unsigned char WifiHistory_GetPlayerCountry(void *);
undefined4 SizeOfStructPokemon(void);
undefined4 BoxMon_UpdateShayminForm(void *, int);
undefined4 CopyBoxPokemonToPokemon(void *, void *);
void * PlayerProfile_GetNamePtr(void *);

void ov70_0223F6E4(undefined *param_1,int *param_2)

{
  byte bVar1;
  ushort uVar2;
  int iVar3;
  uint uVar4;
  undefined *puVar5;
  
  iVar3 = ov70_0223E490((uint)*(ushort *)(param_2 + 0x48));
  if (iVar3 == 0) {
    BoxMon_UpdateShayminForm((undefined *)param_2[0x49],0);
    CopyBoxPokemonToPokemon((undefined *)param_2[0x49],param_1);
  }
  else {
    Mon_UpdateShayminForm((undefined *)param_2[0x49],0);
    uVar4 = SizeOfStructPokemon();
    MIi_CpuCopyFast((undefined *)param_2[0x49],param_1,uVar4);
  }
  puVar5 = PlayerProfile_GetNamePtr(*(undefined **)(*param_2 + 0x1c));
  CopyU16StringArrayN(param_1 + 0x10c,puVar5,8);
  uVar2 = PlayerProfile_GetTrainerID_VisibleHalf(*(undefined **)(*param_2 + 0x1c));
  *(ushort *)(param_1 + 0x11c) = uVar2;
  bVar1 = WifiHistory_GetPlayerCountry(*(undefined **)(*param_2 + 0x18));
  param_1[0x11e] = bVar1;
  bVar1 = WiFiHistory_GetPlayerRegion(*(undefined **)(*param_2 + 0x18));
  param_1[0x11f] = bVar1;
  bVar1 = PlayerProfile_GetAvatar(*(undefined **)(*param_2 + 0x1c));
  param_1[0x120] = bVar1;
  uVar4 = PlayerProfile_GetTrainerGender(*(undefined **)(*param_2 + 0x1c));
  param_1[0xf6] = (char)uVar4;
  param_1[0x122] = 7;
  param_1[0x123] = 2;
  return;
}

