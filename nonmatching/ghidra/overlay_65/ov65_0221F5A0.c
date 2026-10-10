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
undefined4 func_0x0202ce74() __asm__("sub_0202CE74");
undefined4 sub_0203769C();
undefined4 Party_GetMonByIndex();
undefined4 CopyPokemonToPokemon();
undefined4 func_0x0208f260() __asm__("sub_0208F260");
undefined4 func_0x0202ce64() __asm__("sub_0202CE64");
undefined4 Party_ResetMonAprijuiceModifiers();
undefined4 GetMonData();
undefined4 func_0x02066e28() __asm__("sub_02066E28");
undefined4 func_0x0202ecc0() __asm__("sub_0202ECC0");
undefined4 sub_02034818();
undefined4 AllocMonZeroed();
undefined4 func_0x02072894() __asm__("sub_02072894");
undefined4 GameStats_Inc();
undefined4 Save_VarsFlags_Get();
undefined4 SetMonData();
undefined4 func_0x020748cc() __asm__("sub_020748CC");
undefined4 func_0x02066e38() __asm__("sub_02066E38");
undefined4 PlayerProfile_Copy();
undefined4 Heap_Free();

void ov65_0221F5A0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  int param_5)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  undefined1 uStack_1c;
  undefined1 auStack_1b [3];
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  uVar1 = AllocMonZeroed(0x1a);
  uVar2 = AllocMonZeroed(0x1a);
  uVar3 = Party_GetMonByIndex(param_1,param_3);
  CopyPokemonToPokemon(uVar3,uVar1);
  uVar3 = Party_GetMonByIndex(param_2,param_4);
  CopyPokemonToPokemon(uVar3,uVar2);
  iVar4 = GetMonData(uVar2,5,0);
  if ((iVar4 == 0x1ed) &&
     ((iVar4 = GetMonData(uVar2,0x6e,0), iVar4 != 0 ||
      ((iVar4 = GetMonData(uVar2,0x99,0), iVar4 == 0x56 &&
       (iVar4 = GetMonData(uVar2,0x6e,0), iVar4 == 0)))))) {
    uVar3 = Save_VarsFlags_Get(*(undefined4 *)(param_5 + 0x10));
    iVar4 = func_0x02066e28();
    if (iVar4 == 0) {
      func_0x02066e38(uVar3,1);
    }
  }
  SetMonData(uVar2,0x6f,0);
  iVar4 = GetMonData(uVar2,0x4c,0);
  if (iVar4 == 0) {
    auStack_1b[0] = 0x46;
    uStack_1c = 0;
    SetMonData(uVar2,9,auStack_1b);
    SetMonData(uVar2,0xbb,&uStack_1c);
  }
  sub_0203769C();
  uVar3 = sub_02034818();
  func_0x0208f260(uVar2,uVar3,5,0,0xb);
  func_0x02072894(uVar2);
  CopyPokemonToPokemon(uVar1,*(undefined4 *)(param_5 + 0x38));
  CopyPokemonToPokemon(uVar2,*(undefined4 *)(param_5 + 0x3c));
  uVar5 = sub_0203769C();
  uVar3 = sub_02034818(uVar5 ^ 1);
  PlayerProfile_Copy(uVar3,*(undefined4 *)(param_5 + 0x34));
  *(undefined4 *)(param_5 + 0x28) = param_3;
  iVar4 = func_0x020748cc(param_1,0x1b9);
  if (iVar4 == 0) {
    func_0x0202ce64(*(undefined4 *)(param_5 + 0x10));
    func_0x0202ce74();
  }
  func_0x0202ecc0(*(undefined4 *)(param_5 + 0x10),uVar2);
  uVar3 = Party_GetMonByIndex(param_1,param_3);
  CopyPokemonToPokemon(uVar2,uVar3);
  uVar3 = Party_GetMonByIndex(param_2,param_4);
  CopyPokemonToPokemon(uVar1,uVar3);
  Party_ResetMonAprijuiceModifiers(param_1,param_3);
  Party_ResetMonAprijuiceModifiers(param_2,param_4);
  GameStats_Inc(*(undefined4 *)(param_5 + 0x1c),0x14);
  Heap_Free(uVar1);
  Heap_Free(uVar2);
  return;
}

