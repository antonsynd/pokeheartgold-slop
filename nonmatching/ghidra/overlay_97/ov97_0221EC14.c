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
undefined4 ov97_0221EA88();
undefined4 CopyU16StringArrayN();
undefined4 Mon_GetBoxMon();
undefined4 Save_Pokeathlon_Get();
undefined4 ov97_0221EFD0();
undefined4 Party_GetMonByIndex();
undefined4 Party_GetMonAprijuiceModifiers();
undefined4 ov97_0221EBD8();
undefined4 SaveArray_PCStorage_Get();
undefined4 GetMonData();
undefined4 MonIsShiny();
undefined4 PokeathlonSave_GetUnkDC_AtIndex();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 ov97_0221E898();
undefined4 SaveArray_Party_Get();
undefined4 PCStorage_GetMonByIndexPair();
undefined4 ov97_0221EDE4();
undefined4 ov97_0221EB38();

void ov97_0221EC14(int param_1,uint param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  undefined1 auStack_d8 [6];
  undefined1 auStack_d2 [8];
  undefined1 auStack_ca [8];
  undefined1 auStack_c2 [6];
  undefined1 auStack_bc [8];
  undefined1 auStack_b4 [8];
  undefined2 auStack_ac [2];
  undefined4 uStack_a8;
  undefined1 auStack_94 [24];
  undefined4 auStack_7c [6];
  undefined2 uStack_64;
  undefined1 uStack_62;
  undefined1 uStack_61;
  undefined1 uStack_60;
  undefined1 uStack_5f;
  undefined1 auStack_5e [22];
  undefined1 auStack_48 [48];
  undefined4 uStack_18;

  auStack_7c[0] = 0;
  auStack_7c[1] = 1;
  auStack_7c[2] = 2;
  auStack_7c[3] = 3;
  auStack_7c[4] = 4;
  uStack_18 = param_4;
  if ((param_1 != -1) && (param_2 != 0xffffffff)) {
    uStack_5f = 2;
    if (param_1 == 0x12) {
      uVar1 = SaveArray_Party_Get();
      uVar2 = Party_GetMonByIndex(uVar1,param_2);
      auStack_7c[5] = GetMonData(uVar2,0,0);
      uStack_64 = GetMonData(uVar2,5,0);
      uStack_61 = GetMonData(uVar2,0x70,0);
      GetMonData(uVar2,0x75,auStack_5e);
      uStack_62 = MonIsShiny(uVar2);
      uStack_60 = GetMonData(uVar2,0x6f,0);
      Party_GetMonByIndex(uVar1,param_2);
      uVar2 = Mon_GetBoxMon();
      ov97_0221EA88(uVar1,param_2 & 0xff,auStack_b4);
      ov97_0221EBD8(uVar2,auStack_bc);
      Party_GetMonAprijuiceModifiers(uVar1,auStack_c2,param_2);
      ov97_0221EDE4(auStack_bc,auStack_b4,auStack_c2,auStack_7c + 5);
      uVar4 = 0;
      do {
        uVar1 = Save_Pokeathlon_Get(*(undefined4 *)(param_3 + 0x2c));
        iVar3 = PokeathlonSave_GetUnkDC_AtIndex(uVar1,auStack_7c[uVar4],uStack_64);
        auStack_48[uVar4] = iVar3 != 0;
        uVar4 = uVar4 + 1 & 0xff;
      } while (uVar4 < 5);
      ov97_0221EFD0(*(undefined4 *)(param_3 + 0xc),auStack_7c + 5);
      return;
    }
    uVar1 = SaveArray_PCStorage_Get(*(undefined4 *)(param_3 + 0x2c));
    ov97_0221E898(uVar1,param_1,param_2,auStack_ac);
    auStack_7c[5] = uStack_a8;
    uStack_64 = auStack_ac[0];
    CopyU16StringArrayN(auStack_5e,auStack_94,0xb);
    uVar1 = SaveArray_PCStorage_Get(*(undefined4 *)(param_3 + 0x2c));
    uVar1 = PCStorage_GetMonByIndexPair(uVar1,param_1,param_2);
    ov97_0221EB38(uVar1,auStack_ca);
    ov97_0221EBD8(uVar1,auStack_d2);
    func_0x020d4994(auStack_d8,0,5);
    ov97_0221EDE4(auStack_d2,auStack_ca,auStack_d8,auStack_7c + 5);
    uVar4 = 0;
    do {
      uVar1 = Save_Pokeathlon_Get(*(undefined4 *)(param_3 + 0x2c));
      iVar3 = PokeathlonSave_GetUnkDC_AtIndex(uVar1,auStack_7c[uVar4],uStack_64);
      auStack_48[uVar4] = iVar3 != 0;
      uVar4 = uVar4 + 1 & 0xff;
    } while (uVar4 < 5);
    ov97_0221EFD0(*(undefined4 *)(param_3 + 0xc),auStack_7c + 5);
    return;
  }
  uStack_5f = 0;
  ov97_0221EFD0(*(undefined4 *)(param_3 + 0xc));
  return;
}

