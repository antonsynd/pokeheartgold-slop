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
undefined4 ConvertRSStringToDPStringInternational();
undefined4 GetItemNameIntoString(void *, unsigned short, int);
undefined4 String16_FormatInteger(void *, int, unsigned int, int, int);
undefined4 ov74_02234A0C();
undefined4 String_Delete(void *);
void * String_New(unsigned int, int);
undefined4 CopyWindowToVram(void *);
undefined4 ov74_02231A1C();
undefined4 ReadMsgDataIntoString(void *, int, void *);
undefined4 AGB_GetBoxMonData();
undefined4 PlayCry(unsigned short, unsigned char);
undefined4 ov74_02232700();
undefined4 TranslateAgbSpecies();
unsigned short UpConvertItemId_Gen3to4(unsigned short);
void * NewMsgDataFromNarc(int, int, int, int);
undefined4 DestroyMsgData(void *);

void ov74_02232758(int param_1,uint *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined **ppuVar1;
  ushort uVar2;
  uint uVar3;
  undefined *puVar4;
  undefined *puVar5;
  uint uVar6;
  int iVar7;
  undefined **ppuVar8;
  short asStack_88 [11];
  undefined1 auStack_72 [14];
  undefined *local_64 [13];
  undefined4 local_30;
  short *local_2c;
  undefined *local_28;
  undefined4 uStack_18;

  iVar7 = 4;
  ppuVar1 = local_64;
  uStack_18 = param_4;
  do {
    ppuVar8 = ppuVar1;
    *ppuVar8 = (undefined *)0x0;
    ppuVar8[1] = (undefined *)0x0;
    ppuVar8[2] = (undefined *)0x0;
    ppuVar8[3] = (undefined *)0x0;
    iVar7 = iVar7 + -1;
    ppuVar1 = ppuVar8 + 4;
  } while (iVar7 != 0);
  ppuVar8[4] = (undefined *)0x0;
  ppuVar8[5] = (undefined *)0x0;
  ppuVar8[6] = (undefined *)0x0;
  local_64[4] = (undefined *)0x20;
  local_64[9] = (undefined *)0x1;
  local_64[10] = (undefined *)0x1;
  local_64[8] = (undefined *)0xbc;
  local_64[0] = (undefined *)(param_1 + 0x488);
  local_64[0xb] = (undefined *)0xf0200;
  local_30 = 0x2c;
  local_64[6] = (undefined *)0x90;
  local_64[2] = (undefined *)0x0;
  local_64[3] = (undefined *)0x0;
  local_2c = (short *)0x0;
  local_64[7] = (undefined *)0x0;
  local_64[5] = (undefined *)0x4;
  ov74_02231A1C(param_1,local_64,4);
  local_30 = 0x2b;
  local_64[6] = (undefined *)0x50;
  local_64[7] = (undefined *)0x8;
  ov74_02231A1C(param_1,local_64,6);
  ov74_02232700(param_1,param_2);
  if (param_2 == (uint *)0x0) {
    CopyWindowToVram(local_64[0]);
    return;
  }
  AGB_GetBoxMonData(param_2,2,(int)auStack_72);
  uVar3 = AGB_GetBoxMonData(param_2,3,0);
  ConvertRSStringToDPStringInternational((int)auStack_72,asStack_88,0xb,uVar3);
  local_2c = asStack_88;
  local_30 = 0xffffffff;
  local_64[6] = (undefined *)0x8;
  local_64[7] = (undefined *)0x0;
  ov74_02231A1C(param_1,local_64,6);
  puVar4 = String_New(0x40,0x4c);
  puVar5 = NewMsgDataFromNarc(1,0x1b,0xed,0x4c);
  uVar3 = AGB_GetBoxMonData(param_2,0xb,0);
  uVar3 = TranslateAgbSpecies(uVar3);
  ReadMsgDataIntoString(puVar5,uVar3,puVar4);
  local_30 = 0xffffffff;
  local_64[6] = (undefined *)0x10;
  local_64[7] = (undefined *)0x10;
  local_28 = puVar4;
  ov74_02231A1C(param_1,local_64,6);
  DestroyMsgData(puVar5);
  String_Delete(puVar4);
  uVar6 = AGB_GetBoxMonData(param_2,0xc,0);
  if (uVar6 != 0) {
    uVar2 = UpConvertItemId_Gen3to4((ushort)uVar6);
    puVar4 = String_New(0x40,0x4c);
    GetItemNameIntoString(puVar4,uVar2,0x4c);
    local_30 = 0xffffffff;
    local_64[6] = (undefined *)0x98;
    local_64[7] = (undefined *)0x10;
    local_28 = puVar4;
    ov74_02231A1C(param_1,local_64,6);
    String_Delete(puVar4);
  }
  iVar7 = ov74_02234A0C(param_2);
  puVar4 = String_New(10,0x4c);
  String16_FormatInteger(puVar4,iVar7,3,1,1);
  local_30 = 0xffffffff;
  local_64[6] = (undefined *)0x64;
  local_64[7] = (undefined *)0x8;
  local_28 = puVar4;
  ov74_02231A1C(param_1,local_64,2);
  String_Delete(puVar4);
  PlayCry((ushort)uVar3,0);
  return;
}

