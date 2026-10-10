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
undefined4 func_0x020ccdac() __asm__("sub_020CCDAC");
undefined4 func_0x020ccf80() __asm__("sub_020CCF80");

void ov96_02203754(int param_1)

{
  int iVar1;
  int iVar2;
  char *pcVar3;
  int iVar4;
  int iVar5;
  int iStack_48;
  int iStack_44;
  char *pcStack_40;
  int iStack_3c;
  int iStack_38;
  undefined1 auStack_2c [12];
  char acStack_20 [12];
  
  iVar2 = 0;
  pcVar3 = acStack_20;
  iStack_44 = 0;
  do {
    iVar2 = iVar2 + 1;
    *pcVar3 = '\0';
    pcVar3 = pcVar3 + 1;
  } while (iVar2 < 0xc);
  pcStack_40 = acStack_20;
  iStack_3c = param_1 + 200;
  iStack_38 = param_1;
  do {
    if ((*(int *)(iStack_38 + 0xc4) == 1) || (*(int *)(iStack_38 + 0xc4) == 2)) {
      iVar4 = 0;
      pcVar3 = acStack_20;
      iVar2 = param_1 + 200;
      iVar5 = param_1;
      do {
        if ((iStack_44 != iVar4) && ((*(int *)(iVar5 + 0xc4) == 1 || (*(int *)(iVar5 + 0xc4) == 2)))
           ) {
          func_0x020ccdac(iStack_3c,iVar2,auStack_2c);
          iVar1 = func_0x020ccf80(auStack_2c);
          if (iVar1 < 0x4000) {
            *pcStack_40 = '\x01';
            *pcVar3 = '\x01';
          }
        }
        iVar4 = iVar4 + 1;
        iVar5 = iVar5 + 0x48;
        iVar2 = iVar2 + 0x48;
        pcVar3 = pcVar3 + 1;
      } while (iVar4 < 0xc);
    }
    iStack_38 = iStack_38 + 0x48;
    iStack_3c = iStack_3c + 0x48;
    pcStack_40 = pcStack_40 + 1;
    iStack_44 = iStack_44 + 1;
  } while (iStack_44 < 0xc);
  iVar2 = 0;
  pcVar3 = acStack_20;
  iStack_48 = param_1;
  do {
    if (*pcVar3 != '\0') {
      *(undefined4 *)(iStack_48 + 0xc4) = 3;
      *(undefined2 *)(iStack_48 + 0xfe) = 0;
      *(undefined2 *)(iStack_48 + 0xfc) = 0;
    }
    iVar2 = iVar2 + 1;
    iStack_48 = iStack_48 + 0x48;
    pcVar3 = pcVar3 + 1;
  } while (iVar2 < 0xc);
  return;
}

