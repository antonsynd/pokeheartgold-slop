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
undefined4 CTRDG_IsAgbCartridge();
undefined4 CTRDG_CpuCopy32();
undefined4 CTRDG_GetAgbGameCode();
undefined4 CTRDG_Enable();
extern undefined1 sAgbCartNintendoLogo;
extern undefined4 sPmAgbCartridgeSpec;

undefined4 IdentifyPmAgbCartridge(int *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  char *pcVar6;
  char acStack_d0 [4];
  char local_cc [156];
  char acStack_30 [29];
  char local_13;
  undefined4 uStack_10;
  
  sPmAgbCartridgeSpec = (int *)0x0;
  uStack_10 = param_4;
  iVar2 = CTRDG_IsAgbCartridge();
  if (iVar2 == 0) {
    return 1;
  }
  iVar2 = CTRDG_GetAgbGameCode();
  iVar3 = 0;
  piVar5 = param_1;
  if (0 < param_2) {
    do {
      if (iVar2 == *piVar5) {
        sPmAgbCartridgeSpec = param_1 + iVar3 * 2;
        break;
      }
      iVar3 = iVar3 + 1;
      piVar5 = piVar5 + 2;
    } while (iVar3 < param_2);
  }
  if (sPmAgbCartridgeSpec == (int *)0x0) {
    return 2;
  }
  CTRDG_Enable(1);
  CTRDG_CpuCopy32((undefined *)0x8000000,acStack_d0,0xc0);
  pcVar6 = &sAgbCartNintendoLogo;
  uVar4 = 0;
  do {
    if (*pcVar6 != local_cc[uVar4]) {
      return 4;
    }
    uVar4 = uVar4 + 1;
    pcVar6 = pcVar6 + 1;
  } while (uVar4 < 0x9c);
  cVar1 = '\0';
  iVar2 = 0xa0;
  do {
    pcVar6 = acStack_d0 + iVar2;
    iVar2 = iVar2 + 1;
    cVar1 = cVar1 + *pcVar6;
  } while (iVar2 < 0xbd);
  if (local_13 == (char)-(cVar1 + '\x19')) {
    return 0;
  }
  return 4;
}

