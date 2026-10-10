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
typedef void code(void);
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
undefined4 ov12_02262240(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 GetMonExpBySpeciesAndLevel(undefined4, undefined4);
undefined4 GetMonData(undefined4, undefined4, undefined4);
undefined4 BattleSystem_GetPartyMon(undefined4, undefined4, undefined4);

void BattleController_EmitHealthbarUpdate
               (undefined4 param_1,int param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined1 uStack_2c;
  undefined1 uStack_2b;
  undefined2 uStack_2a;
  undefined2 uStack_28;
  byte bStack_25;
  undefined4 uStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  uVar1 = BattleSystem_GetPartyMon(param_1,param_3,*(undefined1 *)(param_2 + param_3 + 0x219c));
  uVar2 = GetMonData(uVar1,5,0);
  iVar3 = GetMonData(uVar1,0xa1,0);
  uStack_2c = 0x18;
  iVar5 = param_3 * 0xc0;
  iVar4 = param_2 + iVar5;
  uStack_2b = *(undefined1 *)(iVar4 + 0x2d74);
  uStack_2a = (undefined2)*(undefined4 *)(iVar4 + 0x2d8c);
  uStack_28 = (undefined2)*(undefined4 *)(iVar4 + 0x2d90);
  uStack_24 = *(undefined4 *)(param_2 + 0x215c);
  if (((*(short *)(iVar4 + 0x2d40) == 0x1d) || (*(short *)(iVar4 + 0x2d40) == 0x20)) &&
     (-1 < *(int *)(param_2 + iVar5 + 0x2d54))) {
    bStack_25 = 2;
  }
  else {
    bStack_25 = *(byte *)(param_2 + iVar5 + 0x2dbe) & 0xf;
  }
  iStack_20 = GetMonExpBySpeciesAndLevel(uVar2,iVar3);
  iStack_20 = *(int *)(param_2 + iVar5 + 0x2da4) - iStack_20;
  iVar4 = GetMonExpBySpeciesAndLevel(uVar2,iVar3 + 1);
  iStack_1c = GetMonExpBySpeciesAndLevel(uVar2,iVar3);
  iStack_1c = iVar4 - iStack_1c;
  ov12_02262240(param_1,1,param_3,&uStack_2c,0x14);
  return;
}

