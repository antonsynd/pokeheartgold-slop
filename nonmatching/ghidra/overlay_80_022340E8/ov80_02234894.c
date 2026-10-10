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
undefined4 BattleArcade_MultiplayerCheck();
undefined4 Party_GetMonByIndex();
undefined4 GetMonData();
extern undefined ov80_0223BE88;
extern undefined ov80_0223BE90;

int ov80_02234894(int param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;

  uVar3 = 0;
  uVar4 = 0;
  iVar5 = 0;
  if (0 < param_4) {
    do {
      uVar1 = Party_GetMonByIndex(param_2,iVar5);
      iVar2 = GetMonData(uVar1,0xac,0);
      if (iVar2 != 0) {
        iVar2 = GetMonData(uVar1,0xa3,0);
        if (iVar2 == 0) {
          uVar3 = uVar3 + 1 & 0xff;
        }
        iVar2 = GetMonData(uVar1,0xa0,0);
        if (iVar2 != 0) {
          uVar4 = uVar4 + 1 & 0xff;
        }
      }
      iVar5 = iVar5 + 1;
    } while (iVar5 < param_4);
  }
  iVar5 = BattleArcade_MultiplayerCheck(*(undefined1 *)(param_1 + 0x10));
  if ((iVar5 == 1) && (iVar5 = 0, 0 < param_4)) {
    do {
      uVar1 = Party_GetMonByIndex(param_3,iVar5);
      iVar2 = GetMonData(uVar1,0xac,0);
      if (iVar2 != 0) {
        iVar2 = GetMonData(uVar1,0xa3,0);
        if (iVar2 == 0) {
          uVar3 = uVar3 + 1 & 0xff;
        }
        iVar2 = GetMonData(uVar1,0xa0,0);
        if (iVar2 != 0) {
          uVar4 = uVar4 + 1 & 0xff;
        }
      }
      iVar5 = iVar5 + 1;
    } while (iVar5 < param_4);
  }
  return (uint)(byte)(&ov80_0223BE90)[uVar4] + (uint)(byte)(&ov80_0223BE88)[uVar3];
}

