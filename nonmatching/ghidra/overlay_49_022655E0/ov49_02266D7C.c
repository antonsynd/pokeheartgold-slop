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
undefined4 ov49_02265628();
undefined4 ov49_022655E0();
undefined4 ov49_02259148();
undefined4 ov49_0226747C();
undefined4 ov49_02258E04();
undefined4 ov49_02265434();
undefined4 ov49_02259154();
undefined4 ov49_02265660();
undefined4 ov49_0226789C();
undefined4 ov49_02259160();
undefined4 ov49_02258E34();
undefined4 ov49_02258DAC();
extern uint uRam021d1154 __asm__("sub_021D1154");

int ov49_02266D7C(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iStack_28;
  int iStack_24;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  iVar1 = ov49_02265434(param_2 + 0xa04,(int)*(short *)(param_2 + 0x956));
  ov49_02265628(param_2 + 0xa2c);
  *(short *)(param_2 + 0x956) = *(short *)(param_2 + 0x956) + 1;
  ov49_02259154(*(undefined4 *)(param_2 + 8),&iStack_24);
  ov49_022655E0(param_2 + 0xa04,&iStack_24,auStack_20,auStack_1c);
  ov49_02265660(param_2 + 0xa2c,&iStack_28);
  if (iVar1 == 0) {
    iStack_24 = iStack_24 + iStack_28;
  }
  ov49_02259148(*(undefined4 *)(param_2 + 8),&iStack_24);
  ov49_0226747C(param_2);
  iVar3 = 0;
  if ('\0' < *(char *)(param_2 + 0x955)) {
    do {
      ov49_0226789C(param_1,param_2,iVar3);
      iVar3 = iVar3 + 1;
    } while (iVar3 < *(char *)(param_2 + 0x955));
  }
  iVar4 = *(int *)(param_2 + 8);
  iVar3 = ov49_02258DAC(*(undefined4 *)(param_1 + 4));
  if (iVar4 == iVar3) {
    iVar3 = 4;
    if ((uRam021d1154 & 0x40) != 0) {
      iVar3 = 0;
    }
    if ((uRam021d1154 & 0x80) != 0) {
      iVar3 = 1;
    }
    if ((uRam021d1154 & 0x10) != 0) {
      iVar3 = 3;
    }
    if ((uRam021d1154 & 0x20) != 0) {
      iVar3 = 2;
    }
    if (iVar3 != 4) {
      ov49_02259160(iVar4,iVar3);
      uVar2 = ov49_02258E34(*(undefined4 *)(param_2 + 8));
      ov49_02258E04(*(undefined4 *)(param_2 + 8),uVar2,iVar3);
    }
  }
  return iVar1;
}

