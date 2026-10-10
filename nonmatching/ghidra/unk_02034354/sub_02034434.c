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
void * sub_0202C6F4(void *);
undefined4 OS_GetMacAddress(void *);
void * Save_WiFiHistory_Get(void *);
void * Save_FriendGroup_Get(void *);
unsigned short sub_0203769C(void);
undefined4 WifiHistory_GetPlayerCountry();
void * sub_0202C7E0(void *, int, int);
undefined4 PlayerProfile_Copy(void *, void *);
undefined4 MI_CpuCopy8(void *, void *, unsigned int);
void * Save_PlayerData_GetProfile(void *);
extern int * piRam021d4130 __asm__("sub_021D4130");
unsigned char WiFiHistory_GetPlayerRegion(void *);
undefined4 sub_02037030(int, void *, int);
void * sub_0202C08C(void *);
undefined4 MI_CpuFill8(void *, unsigned char, unsigned int);
undefined4 LinkBattleRuleset_Copy(void *, void *);
undefined4 DWC_CreateExchangeToken(void *, void *);



void sub_02034434(void)

{
  byte bVar1;
  ushort uVar2;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  uint uVar3;

  uVar2 = sub_0203769C();
  uVar3 = (uint)uVar2;
  puVar4 = Save_FriendGroup_Get((undefined *)piRam021d4130[2]);
  puVar5 = sub_0202C6F4((undefined *)piRam021d4130[2]);
  puVar6 = Save_WiFiHistory_Get((undefined *)piRam021d4130[2]);
  puVar7 = (undefined *)*piRam021d4130;
  if (puVar7 == (undefined *)0x0) {
    puVar7 = Save_PlayerData_GetProfile((undefined *)piRam021d4130[2]);
  }
  PlayerProfile_Copy(puVar7,(undefined *)piRam021d4130[uVar3 + 0xd3]);
  OS_GetMacAddress((undefined *)(piRam021d4130 + uVar3 * 0x1a + 0x1a));
  puVar4 = sub_0202C7E0(puVar4,1,0);
  MI_CpuCopy8(puVar4,(undefined *)(piRam021d4130 + uVar3 * 0x1a + 0x16),0x10);
  bVar1 = WifiHistory_GetPlayerCountry(puVar6);
  *(byte *)((int)piRam021d4130 + uVar3 * 0x68 + 0x6f) = bVar1;
  bVar1 = WiFiHistory_GetPlayerRegion(puVar6);
  *(byte *)(piRam021d4130 + uVar3 * 0x1a + 0x1c) = bVar1;
  *(undefined1 *)((int)piRam021d4130 + uVar3 * 0x68 + 0x71) = 0;
  puVar4 = sub_0202C08C(puVar5);
  DWC_CreateExchangeToken(puVar4,(undefined *)(piRam021d4130 + uVar3 * 0x1a + 0x13));
  MI_CpuFill8((undefined *)(piRam021d4130 + uVar3 * 0x1a + 3),0,0x20);
  if ((undefined *)piRam021d4130[1] != (undefined *)0x0) {
    LinkBattleRuleset_Copy
              ((undefined *)piRam021d4130[1],(undefined *)(piRam021d4130 + uVar3 * 0x1a + 3));
  }
  sub_02037030(3,(undefined *)(piRam021d4130 + uVar3 * 0x1a + 3),0x68);
  return;
}

