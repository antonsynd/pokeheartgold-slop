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
undefined4 Pokemon_GetStatusIconId();
undefined4 GetMonExpBySpeciesAndLevel();
undefined4 GetMonNature();
undefined4 ReadMsgDataIntoString();
undefined4 GetRibbonAttr();
undefined4 MonIsShiny();
undefined4 BufferBoxMonSpeciesName();
undefined4 AcquireMonLock();
undefined4 ReleaseMonLock();
undefined4 BufferBoxMonNickname();
undefined4 BufferBoxMonOTName();
undefined4 Pokemon_HasPokerus();
undefined4 GetMonGender();
undefined4 GetMoveMaxPP();
undefined4 MonGetFlavorPreference();
undefined4 StringExpandPlaceholders();
undefined4 Mon_GetBoxMon();
undefined4 GetMonData();
undefined4 Pokemon_IsImmuneToPokerus();

void sub_0208981C(int param_1,undefined4 param_2,int param_3)

{
  byte bVar1;
  char cVar2;
  undefined1 uVar3;
  undefined2 uVar4;
  ushort uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  uint uVar8;
  int iVar9;

  uVar6 = AcquireMonLock(param_2);
  uVar4 = GetMonData(param_2,5,0);
  *(undefined2 *)(param_3 + 0xc) = uVar4;
  uVar7 = Mon_GetBoxMon(param_2);
  ReadMsgDataIntoString(*(undefined4 *)(param_1 + 0x7a0),0xb,*(undefined4 *)(param_1 + 0x7ac));
  BufferBoxMonSpeciesName(*(undefined4 *)(param_1 + 0x7a8),0,uVar7);
  StringExpandPlaceholders
            (*(undefined4 *)(param_1 + 0x7a8),*(undefined4 *)(param_1 + 0x230),
             *(undefined4 *)(param_1 + 0x7ac));
  ReadMsgDataIntoString(*(undefined4 *)(param_1 + 0x7a0),0,*(undefined4 *)(param_1 + 0x7ac));
  BufferBoxMonNickname(*(undefined4 *)(param_1 + 0x7a8),0,uVar7);
  StringExpandPlaceholders
            (*(undefined4 *)(param_1 + 0x7a8),*(undefined4 *)(param_1 + 0x234),
             *(undefined4 *)(param_1 + 0x7ac));
  ReadMsgDataIntoString(*(undefined4 *)(param_1 + 0x7a0),0xe,*(undefined4 *)(param_1 + 0x7ac));
  BufferBoxMonOTName(*(undefined4 *)(param_1 + 0x7a8),0,uVar7);
  StringExpandPlaceholders
            (*(undefined4 *)(param_1 + 0x7a8),*(undefined4 *)(param_1 + 0x238),
             *(undefined4 *)(param_1 + 0x7ac));
  uVar4 = GetMonData(param_2,6,0);
  *(undefined2 *)(param_3 + 0xe) = uVar4;
  bVar1 = GetMonData(param_2,0xa1,0);
  *(byte *)(param_3 + 0x12) = bVar1 & 0x7f | *(byte *)(param_3 + 0x12) & 0x80;
  uVar8 = GetMonData(param_2,0x4c,0);
  *(uint *)(param_3 + 0x50) = (uVar8 & 1) << 0x1c | *(uint *)(param_3 + 0x50) & 0xefffffff;
  iVar9 = GetMonData(param_2,0xb0,0);
  if ((iVar9 == 1) && (-1 < *(int *)(param_3 + 0x50) << 3)) {
    *(byte *)(param_3 + 0x12) = *(byte *)(param_3 + 0x12) & 0x7f;
  }
  else {
    *(byte *)(param_3 + 0x12) = *(byte *)(param_3 + 0x12) | 0x80;
  }
  bVar1 = GetMonGender(param_2);
  *(byte *)(param_3 + 0x13) = bVar1 & 3 | *(byte *)(param_3 + 0x13) & 0xfc;
  cVar2 = GetMonData(param_2,0x9b,0);
  *(byte *)(param_3 + 0x13) = cVar2 << 2 | *(byte *)(param_3 + 0x13) & 3;
  uVar3 = GetMonData(param_2,0xb1,0);
  *(undefined1 *)(param_3 + 0x10) = uVar3;
  uVar3 = GetMonData(param_2,0xb2,0);
  *(undefined1 *)(param_3 + 0x11) = uVar3;
  uVar7 = GetMonData(param_2,7,0);
  *(undefined4 *)(param_3 + 0x14) = uVar7;
  uVar7 = GetMonData(param_2,8,0);
  *(undefined4 *)(param_3 + 0x18) = uVar7;
  uVar3 = GetMonData(param_2,0x9d,0);
  *(undefined1 *)(param_3 + 0x44) = uVar3;
  uVar7 = GetMonExpBySpeciesAndLevel
                    (*(undefined2 *)(param_3 + 0xc),*(byte *)(param_3 + 0x12) & 0x7f);
  *(undefined4 *)(param_3 + 0x1c) = uVar7;
  bVar1 = *(byte *)(param_3 + 0x12) & 0x7f;
  if (bVar1 == 100) {
    uVar7 = *(undefined4 *)(param_3 + 0x1c);
  }
  else {
    uVar7 = GetMonExpBySpeciesAndLevel(*(undefined2 *)(param_3 + 0xc),bVar1 + 1);
  }
  *(undefined4 *)(param_3 + 0x20) = uVar7;
  uVar4 = GetMonData(param_2,0xa3,0);
  *(undefined2 *)(param_3 + 0x24) = uVar4;
  uVar4 = GetMonData(param_2,0xa4,0);
  *(undefined2 *)(param_3 + 0x26) = uVar4;
  uVar4 = GetMonData(param_2,0xa5,0);
  *(undefined2 *)(param_3 + 0x28) = uVar4;
  uVar4 = GetMonData(param_2,0xa6,0);
  *(undefined2 *)(param_3 + 0x2a) = uVar4;
  uVar4 = GetMonData(param_2,0xa8,0);
  *(undefined2 *)(param_3 + 0x2c) = uVar4;
  uVar4 = GetMonData(param_2,0xa9,0);
  *(undefined2 *)(param_3 + 0x2e) = uVar4;
  uVar4 = GetMonData(param_2,0xa7,0);
  *(undefined2 *)(param_3 + 0x30) = uVar4;
  uVar3 = GetMonData(param_2,10,0);
  *(undefined1 *)(param_3 + 0x32) = uVar3;
  uVar3 = GetMonNature(param_2);
  *(undefined1 *)(param_3 + 0x33) = uVar3;
  uVar8 = 0;
  do {
    iVar9 = param_3 + uVar8 * 2;
    uVar4 = GetMonData(param_2,uVar8 + 0x36,0);
    *(undefined2 *)(iVar9 + 0x34) = uVar4;
    uVar3 = GetMonData(param_2,uVar8 + 0x3a,0);
    *(undefined1 *)(param_3 + uVar8 + 0x3c) = uVar3;
    uVar3 = GetMonData(param_2,uVar8 + 0x3e,0);
    uVar3 = GetMoveMaxPP(*(undefined2 *)(iVar9 + 0x34),uVar3);
    *(undefined1 *)(param_3 + uVar8 + 0x40) = uVar3;
    uVar8 = uVar8 + 1 & 0xffff;
  } while (uVar8 < 4);
  uVar3 = GetMonData(param_2,0x13,0);
  *(undefined1 *)(param_3 + 0x45) = uVar3;
  uVar3 = GetMonData(param_2,0x14,0);
  *(undefined1 *)(param_3 + 0x46) = uVar3;
  uVar3 = GetMonData(param_2,0x15,0);
  *(undefined1 *)(param_3 + 0x47) = uVar3;
  uVar3 = GetMonData(param_2,0x16,0);
  *(undefined1 *)(param_3 + 0x48) = uVar3;
  uVar3 = GetMonData(param_2,0x17,0);
  *(undefined1 *)(param_3 + 0x49) = uVar3;
  uVar3 = GetMonData(param_2,0x18,0);
  *(undefined1 *)(param_3 + 0x4a) = uVar3;
  *(undefined1 *)(param_3 + 0x4b) = 5;
  uVar5 = 0;
  do {
    iVar9 = MonGetFlavorPreference(param_2,uVar5);
    if (iVar9 == 1) {
      *(char *)(param_3 + 0x4b) = (char)uVar5;
      break;
    }
    uVar5 = uVar5 + 1;
  } while (uVar5 < 5);
  uVar4 = GetMonData(param_2,0xb,0);
  *(undefined2 *)(param_3 + 0x4c) = uVar4;
  uVar4 = GetMonData(param_2,0x70,0);
  *(undefined2 *)(param_3 + 0x4e) = uVar4;
  uVar8 = Pokemon_GetStatusIconId(param_2);
  *(uint *)(param_3 + 0x50) = uVar8 & 0xfffffff | *(uint *)(param_3 + 0x50) & 0xf0000000;
  iVar9 = Pokemon_IsImmuneToPokerus(param_2);
  if (iVar9 == 1) {
    *(uint *)(param_3 + 0x50) = *(uint *)(param_3 + 0x50) & 0x3fffffff | 0x80000000;
  }
  else {
    iVar9 = Pokemon_HasPokerus(param_2);
    if (iVar9 == 1) {
      uVar8 = *(uint *)(param_3 + 0x50);
      *(uint *)(param_3 + 0x50) = uVar8 & 0x3fffffff | 0x40000000;
      if ((uVar8 & 0xfffffff) == 7) {
        *(uint *)(param_3 + 0x50) = *(uint *)(param_3 + 0x50) & 0xf0000000;
      }
    }
    else {
      *(uint *)(param_3 + 0x50) = *(uint *)(param_3 + 0x50) & 0x3fffffff;
    }
  }
  iVar9 = MonIsShiny(param_2);
  if (iVar9 == 1) {
    uVar8 = *(uint *)(param_3 + 0x50) | 0x20000000;
  }
  else {
    uVar8 = *(uint *)(param_3 + 0x50) & 0xdfffffff;
  }
  *(uint *)(param_3 + 0x50) = uVar8;
  uVar8 = 0;
  *(undefined4 *)(param_3 + 0x54) = 0;
  *(undefined4 *)(param_3 + 0x58) = 0;
  *(undefined4 *)(param_3 + 0x5c) = 0;
  *(undefined4 *)(param_3 + 0x60) = 0;
  *(undefined1 *)(param_1 + 0x7c6) = 0;
  do {
    uVar7 = GetRibbonAttr(uVar8 & 0xff,0);
    iVar9 = GetMonData(param_2,uVar7,0);
    if (iVar9 != 0) {
      iVar9 = param_3 + (uVar8 >> 5) * 4;
      *(uint *)(iVar9 + 0x54) = 1 << (uVar8 & 0x1f) | *(uint *)(iVar9 + 0x54);
      *(char *)(param_1 + 0x7c6) = *(char *)(param_1 + 0x7c6) + '\x01';
    }
    uVar8 = uVar8 + 1 & 0xffff;
  } while (uVar8 < 0x50);
  uVar8 = 0;
  do {
    uVar3 = GetMonData(param_2,uVar8 + 0xb5,0);
    *(undefined1 *)(param_1 + uVar8 + 0x294) = uVar3;
    uVar8 = uVar8 + 1 & 0xffff;
  } while (uVar8 < 6);
  ReleaseMonLock(param_2,uVar6);
  return;
}

