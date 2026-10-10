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
undefined4 AGB_GetBoxMonAbility();
undefined4 ReleaseBoxMonLock();
undefined4 ConvertRSStringToDPStringInternational();
undefined4 AcquireBoxMonLock();
undefined4 GetBoxMonData();
undefined4 UpConvertItemId_Gen3to4();
undefined4 SetBoxMonData();
undefined4 ZeroBoxMonData();
undefined4 func_0x020f2ba4() __asm__("sub_020F2BA4");
undefined4 TranslateAgbSpecies();
undefined4 AGB_GetBoxMonData();
undefined4 GetBoxMonGender();
extern undefined1 uRam021d1176 __asm__("sub_021D1176");

void MigrateBoxMon(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  uint uVar2;
  uint extraout_r1;
  int iVar3;
  int iVar4;
  uint uVar5;
  undefined4 uStack_44;
  uint uStack_40;
  undefined1 auStack_3c [24];
  undefined1 auStack_24 [12];
  undefined4 uStack_18;

  uStack_18 = param_4;
  ZeroBoxMonData(param_2);
  uVar1 = AcquireBoxMonLock(param_2);
  uStack_40 = AGB_GetBoxMonData(param_1,0,0);
  SetBoxMonData(param_2,0,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0xb,0);
  uStack_40 = TranslateAgbSpecies();
  SetBoxMonData(param_2,5,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0xc,0);
  if (uStack_40 != 0) {
    uStack_40 = UpConvertItemId_Gen3to4(uStack_40 & 0xffff);
  }
  SetBoxMonData(param_2,6,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,1,0);
  SetBoxMonData(param_2,7,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x19,0);
  SetBoxMonData(param_2,8,&uStack_40);
  uStack_40 = 0x46;
  SetBoxMonData(param_2,9,&uStack_40);
  uStack_40 = AGB_GetBoxMonAbility(param_1,param_2);
  SetBoxMonData(param_2,10,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,8,0);
  SetBoxMonData(param_2,0xb,&uStack_40);
  uStack_44 = AGB_GetBoxMonData(param_1,3,0);
  SetBoxMonData(param_2,0xc,&uStack_44);
  uStack_40 = AGB_GetBoxMonData(param_1,0x1a,0);
  SetBoxMonData(param_2,0xd,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x1b,0);
  SetBoxMonData(param_2,0xe,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x1c,0);
  SetBoxMonData(param_2,0xf,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x1d,0);
  SetBoxMonData(param_2,0x10,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x1e,0);
  SetBoxMonData(param_2,0x11,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x1f,0);
  SetBoxMonData(param_2,0x12,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x16,0);
  SetBoxMonData(param_2,0x13,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x17,0);
  SetBoxMonData(param_2,0x14,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x18,0);
  SetBoxMonData(param_2,0x15,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x21,0);
  SetBoxMonData(param_2,0x16,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x2f,0);
  SetBoxMonData(param_2,0x17,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x30,0);
  SetBoxMonData(param_2,0x18,&uStack_40);
  iVar3 = 0;
  uVar5 = 0;
  do {
    uStack_40 = AGB_GetBoxMonData(param_1,iVar3 + 0xd,0);
    SetBoxMonData(param_2,iVar3 + 0x36,&uStack_40);
    uVar2 = AGB_GetBoxMonData(param_1,0x15,0);
    uStack_40 = (uVar2 & 3 << (uVar5 & 0xff)) >> (uVar5 & 0xff);
    SetBoxMonData(param_2,iVar3 + 0x3e,&uStack_40);
    uStack_40 = GetBoxMonData(param_2,iVar3 + 0x42,0);
    SetBoxMonData(param_2,iVar3 + 0x3a,&uStack_40);
    iVar3 = iVar3 + 1;
    uVar5 = uVar5 + 2;
  } while (iVar3 < 4);
  uStack_40 = AGB_GetBoxMonData(param_1,0x27,0);
  SetBoxMonData(param_2,0x46,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x28,0);
  SetBoxMonData(param_2,0x47,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x29,0);
  SetBoxMonData(param_2,0x48,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x2a,0);
  SetBoxMonData(param_2,0x49,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x2b,0);
  SetBoxMonData(param_2,0x4a,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x2c,0);
  SetBoxMonData(param_2,0x4b,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x2d,0);
  SetBoxMonData(param_2,0x4c,&uStack_40);
  iVar3 = AGB_GetBoxMonData(param_1,0x32,0);
  if ((iVar3 < 5) && (iVar4 = 0, 0 < iVar3)) {
    do {
      uStack_40 = 1;
      SetBoxMonData(param_2,iVar4 + 0x4e,&uStack_40);
      iVar4 = iVar4 + 1;
    } while (iVar4 < iVar3);
  }
  iVar3 = AGB_GetBoxMonData(param_1,0x33,0);
  if ((iVar3 < 5) && (iVar4 = 0, 0 < iVar3)) {
    do {
      uStack_40 = 1;
      SetBoxMonData(param_2,iVar4 + 0x52,&uStack_40);
      iVar4 = iVar4 + 1;
    } while (iVar4 < iVar3);
  }
  iVar3 = AGB_GetBoxMonData(param_1,0x34,0);
  if ((iVar3 < 5) && (iVar4 = 0, 0 < iVar3)) {
    do {
      uStack_40 = 1;
      SetBoxMonData(param_2,iVar4 + 0x56,&uStack_40);
      iVar4 = iVar4 + 1;
    } while (iVar4 < iVar3);
  }
  iVar3 = AGB_GetBoxMonData(param_1,0x35,0);
  if ((iVar3 < 5) && (iVar4 = 0, 0 < iVar3)) {
    do {
      uStack_40 = 1;
      SetBoxMonData(param_2,iVar4 + 0x5a,&uStack_40);
      iVar4 = iVar4 + 1;
    } while (iVar4 < iVar3);
  }
  iVar3 = AGB_GetBoxMonData(param_1,0x36,0);
  if ((iVar3 < 5) && (iVar4 = 0, 0 < iVar3)) {
    do {
      uStack_40 = 1;
      SetBoxMonData(param_2,iVar4 + 0x5e,&uStack_40);
      iVar4 = iVar4 + 1;
    } while (iVar4 < iVar3);
  }
  uStack_40 = AGB_GetBoxMonData(param_1,0x43,0);
  SetBoxMonData(param_2,0x62,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x44,0);
  SetBoxMonData(param_2,99,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x45,0);
  SetBoxMonData(param_2,100,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x46,0);
  SetBoxMonData(param_2,0x65,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x47,0);
  SetBoxMonData(param_2,0x66,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x48,0);
  SetBoxMonData(param_2,0x67,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x49,0);
  SetBoxMonData(param_2,0x68,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x4a,0);
  SetBoxMonData(param_2,0x69,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x4b,0);
  SetBoxMonData(param_2,0x6a,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x4c,0);
  SetBoxMonData(param_2,0x6b,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x4d,0);
  SetBoxMonData(param_2,0x6c,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x4e,0);
  SetBoxMonData(param_2,0x6d,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x50,0);
  SetBoxMonData(param_2,0x6e,&uStack_40);
  uStack_40 = GetBoxMonGender(param_2);
  SetBoxMonData(param_2,0x6f,&uStack_40);
  iVar3 = GetBoxMonData(param_2,5,0);
  if (iVar3 == 0xc9) {
    uStack_40 = AGB_GetBoxMonData(param_1,0,0);
    func_0x020f2ba4((uStack_40 & 0x30000) >> 0xc | (uStack_40 & 0x3000000) >> 0x12 |
                    (uStack_40 & 0x300) >> 6 | uStack_40 & 3,0x1c);
    uStack_40 = extraout_r1;
    SetBoxMonData(param_2,0x70,&uStack_40);
  }
  iVar3 = GetBoxMonData(param_2,5,0);
  if (iVar3 == 0x182) {
    switch(uRam021d1176) {
    default:
      uStack_40 = 0;
      break;
    case 3:
      uStack_40 = 3;
      break;
    case 4:
      uStack_40 = 1;
      break;
    case 5:
      uStack_40 = 2;
    }
    SetBoxMonData(param_2,0x70,&uStack_40);
  }
  AGB_GetBoxMonData(param_1,2,auStack_24);
  ConvertRSStringToDPStringInternational(auStack_24,auStack_3c,0xc,uStack_44);
  SetBoxMonData(param_2,0x76,auStack_3c);
  iVar3 = AGB_GetBoxMonData(param_1,3,0);
  if (iVar3 != 2) {
    uStack_40 = 1;
    SetBoxMonData(param_2,0x4d,&uStack_40);
  }
  uStack_40 = AGB_GetBoxMonData(param_1,0x25,0);
  SetBoxMonData(param_2,0x7a,&uStack_40);
  AGB_GetBoxMonData(param_1,7,auStack_24);
  ConvertRSStringToDPStringInternational(auStack_24,auStack_3c,8,uStack_44);
  SetBoxMonData(param_2,0x90,auStack_3c);
  uStack_40 = AGB_GetBoxMonData(param_1,0x23,0);
  SetBoxMonData(param_2,0x99,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x22,0);
  SetBoxMonData(param_2,0x9a,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x26,0);
  SetBoxMonData(param_2,0x9b,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x24,0);
  SetBoxMonData(param_2,0x9c,&uStack_40);
  uStack_40 = AGB_GetBoxMonData(param_1,0x31,0);
  SetBoxMonData(param_2,0x9d,&uStack_40);
  ReleaseBoxMonLock(param_2,uVar1);
  return;
}

