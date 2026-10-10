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
undefined4 ov74_02231A1C();
undefined4 ConvertRSStringToDPStringInternational();
undefined4 PmAgbCartridge_GetLanguage();

void ov74_02232678(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  int *piVar4;
  undefined1 auStack_70 [20];
  int aiStack_5c [13];
  undefined4 uStack_28;
  undefined1 *puStack_24;
  undefined4 uStack_10;

  iVar3 = 4;
  piVar1 = aiStack_5c;
  uStack_10 = param_4;
  do {
    piVar4 = piVar1;
    *piVar4 = 0;
    piVar4[1] = 0;
    piVar4[2] = 0;
    piVar4[3] = 0;
    iVar3 = iVar3 + -1;
    piVar1 = piVar4 + 4;
  } while (iVar3 != 0);
  piVar4[4] = 0;
  piVar4[5] = 0;
  piVar4[6] = 0;
  aiStack_5c[0] = param_1 + 0x478;
  aiStack_5c[2] = 6;
  aiStack_5c[3] = 0x15;
  aiStack_5c[4] = 0xd;
  aiStack_5c[5] = 2;
  uStack_28 = 0xffffffff;
  aiStack_5c[6] = 0;
  aiStack_5c[7] = 0;
  aiStack_5c[9] = 1;
  aiStack_5c[10] = 1;
  aiStack_5c[0xb] = 0x10200;
  aiStack_5c[8] = 0xa0;
  uVar2 = PmAgbCartridge_GetLanguage();
  ConvertRSStringToDPStringInternational
            (*(int *)(param_1 + 0xe880) + 0x8344 + param_2 * 9,auStack_70,9,uVar2);
  puStack_24 = auStack_70;
  ov74_02231A1C(param_1,aiStack_5c,1);
  return;
}

