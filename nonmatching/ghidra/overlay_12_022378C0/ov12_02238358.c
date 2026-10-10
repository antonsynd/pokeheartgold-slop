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
undefined4 ov12_022621C4();
undefined4 ov12_02258E54();
undefined4 OverlayManager_GetData();
undefined4 BattleContext_Main();

undefined1 ov12_02238358(void)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 in_r3;
  int iVar3;
  int iVar4;

  iVar2 = OverlayManager_GetData();
  if (((*(uint *)(iVar2 + 0x2c) & 4) == 0) || ((*(uint *)(iVar2 + 0x240c) & 0x10) != 0)) {
    if (*(char *)(iVar2 + 0x23fc) != '\0') {
      uVar1 = BattleContext_Main(iVar2,*(undefined4 *)(iVar2 + 0x30));
      *(undefined1 *)(iVar2 + 0x23fe) = uVar1;
      ov12_022621C4(iVar2,1);
    }
    iVar4 = 0;
    iVar3 = iVar2;
    if (0 < *(int *)(iVar2 + 0x44)) {
      do {
        ov12_02258E54(iVar2,*(undefined4 *)(iVar3 + 0x34));
        ov12_022621C4(iVar2,0);
        iVar4 = iVar4 + 1;
        iVar3 = iVar3 + 4;
      } while (iVar4 < *(int *)(iVar2 + 0x44));
    }
    if (*(char *)(iVar2 + 0x23fe) == '\0') {
      if (*(char *)(iVar2 + 0x23fc) != '\0') {
        uVar1 = BattleContext_Main(iVar2,*(undefined4 *)(iVar2 + 0x30));
        *(undefined1 *)(iVar2 + 0x23fe) = uVar1;
        ov12_022621C4(iVar2,1);
      }
      iVar4 = 0;
      iVar3 = iVar2;
      if (0 < *(int *)(iVar2 + 0x44)) {
        do {
          ov12_02258E54(iVar2,*(undefined4 *)(iVar3 + 0x34));
          ov12_022621C4(iVar2,0);
          iVar4 = iVar4 + 1;
          iVar3 = iVar3 + 4;
        } while (iVar4 < *(int *)(iVar2 + 0x44));
      }
    }
  }
  else {
    if (*(char *)(iVar2 + 0x23fc) != '\0') {
      BattleContext_Main(iVar2,*(undefined4 *)(iVar2 + 0x30),0x10,*(uint *)(iVar2 + 0x240c),in_r3);
    }
    iVar4 = 0;
    iVar3 = iVar2;
    if (0 < *(int *)(iVar2 + 0x44)) {
      do {
        ov12_02258E54(iVar2,*(undefined4 *)(iVar3 + 0x34));
        iVar4 = iVar4 + 1;
        iVar3 = iVar3 + 4;
      } while (iVar4 < *(int *)(iVar2 + 0x44));
    }
  }
  return *(undefined1 *)(iVar2 + 0x23fe);
}

