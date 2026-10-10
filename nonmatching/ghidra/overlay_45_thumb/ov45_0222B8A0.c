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
undefined4 PlayerProfile_GetAvatar();
undefined4 Party_GetMonByIndex();
undefined4 Pokedex_GetNatDexFlag();
undefined4 Save_WiFiHistory_Get();
undefined4 ov45_0222CCE4();
undefined4 func_0x02026a68() __asm__("sub_02026A68");
undefined4 PlayerProfile_GetLanguage();
undefined4 func_0x0202a634() __asm__("sub_0202A634");
undefined4 String_Delete();
undefined4 PlayerProfile_GetTrainerGender();
undefined4 Save_PlayerData_GetProfile();
undefined4 SaveArray_Party_Get();
undefined4 Save_SysInfo_RTC_Get();
undefined4 func_0x02028f68() __asm__("sub_02028F68");
undefined4 WiFiHistory_GetPlayerRegion();
undefined4 WifiHistory_GetPlayerCountry();
undefined4 PlayerProfile_GetTrainerID();
undefined4 GetMonData();
undefined4 Party_GetCount();
undefined4 ov45_0222BAC4();
undefined4 PlayerProfile_GetGameClearFlag();

void ov45_0222B8A0(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 uVar1;
  undefined2 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int iVar7;
  undefined4 uVar8;
  int iVar9;
  undefined2 *puVar10;
  int iVar11;
  int iVar12;

  uVar3 = Save_PlayerData_GetProfile(param_2);
  uVar4 = SaveArray_Party_Get(param_2);
  uVar5 = func_0x0202a634(param_2);
  uVar6 = Save_WiFiHistory_Get(param_2);
  iVar7 = Save_SysInfo_RTC_Get(param_2);
  uVar8 = func_0x02028f68(uVar3,param_3);
  func_0x02026a68(uVar8,param_1 + 0x28,8);
  func_0x02026a68(uVar8,param_1,8);
  String_Delete(uVar8);
  *(undefined4 *)(param_1 + 0x20) = 0xffffffff;
  uVar8 = PlayerProfile_GetTrainerID(uVar3);
  *(undefined4 *)(param_1 + 0x24) = uVar8;
  iVar9 = Party_GetCount(uVar4);
  iVar11 = 0;
  iVar12 = param_1;
  do {
    if (iVar11 < iVar9) {
      uVar8 = Party_GetMonByIndex(uVar4,iVar11);
      uVar2 = GetMonData(uVar8,5,0);
      *(undefined2 *)(iVar12 + 0x40) = uVar2;
      uVar1 = GetMonData(uVar8,0x70,0);
      *(undefined1 *)(param_1 + iVar11 + 0x4c) = uVar1;
      uVar1 = GetMonData(uVar8,0x4c,0);
      *(undefined1 *)(param_1 + iVar11 + 0x52) = uVar1;
    }
    else {
      *(undefined2 *)(iVar12 + 0x40) = 0x1ef;
    }
    iVar11 = iVar11 + 1;
    iVar12 = iVar12 + 2;
  } while (iVar11 < 6);
  uVar1 = PlayerProfile_GetTrainerGender(uVar3);
  *(undefined1 *)(param_1 + 0x58) = uVar1;
  uVar1 = PlayerProfile_GetLanguage(uVar3);
  *(undefined1 *)(param_1 + 0x59) = uVar1;
  uVar2 = PlayerProfile_GetAvatar(uVar3);
  *(undefined2 *)(param_1 + 0x5a) = uVar2;
  uVar2 = ov45_0222CCE4(*(undefined2 *)(param_1 + 0x5a));
  *(undefined2 *)(param_1 + 0x5a) = uVar2;
  uVar2 = WifiHistory_GetPlayerCountry(uVar6);
  *(undefined2 *)(param_1 + 0x5c) = uVar2;
  uVar1 = WiFiHistory_GetPlayerRegion(uVar6);
  *(undefined1 *)(param_1 + 0x5e) = uVar1;
  uVar1 = Pokedex_GetNatDexFlag(uVar5);
  *(undefined1 *)(param_1 + 0x5f) = uVar1;
  uVar1 = PlayerProfile_GetGameClearFlag(uVar3);
  *(undefined1 *)(param_1 + 0x60) = uVar1;
  *(undefined1 *)(param_1 + 0x61) = 0xff;
  iVar9 = 0;
  *(undefined1 *)(param_1 + 99) = 0;
  *(undefined1 *)(param_1 + 0x62) = 7;
  uVar3 = *(undefined4 *)(iVar7 + 0x28);
  *(undefined4 *)(param_1 + 100) = *(undefined4 *)(iVar7 + 0x24);
  *(undefined4 *)(param_1 + 0x68) = uVar3;
  iVar12 = param_1;
  do {
    *(undefined1 *)(param_1 + iVar9 + 0x6c) = 0x18;
    *(undefined4 *)(iVar12 + 0x78) = 0xffffffff;
    iVar9 = iVar9 + 1;
    iVar12 = iVar12 + 4;
  } while (iVar9 < 0xc);
  iVar7 = 0;
  iVar12 = param_1;
  do {
    puVar10 = (undefined2 *)(iVar12 + 0xa8);
    iVar7 = iVar7 + 1;
    iVar12 = iVar12 + 2;
    *puVar10 = 0;
  } while (iVar7 < 2);
  *(undefined4 *)(param_1 + 0xac) = 0xffffffff;
  *(undefined4 *)(param_1 + 0xb0) = 3;
  ov45_0222BAC4(param_1,param_2);
  return;
}

