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
undefined4 ov18_021F21FC();
undefined4 Pokedex_GetSeenFormByIdx(void *, int, int);
undefined4 ManagedSprite_SetDrawFlag(void *, int);
undefined4 GetMonBaseStat_HandleAlternateForm(int, int, int);

void ov18_021F209C(undefined *param_1,uint param_2,int param_3,int param_4)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;

  if (((param_1[0x185c] != '\x02') || (param_2 == 0)) ||
     (*(short *)(param_1 + param_3 * 4 + 0x1032) == 1)) {
    iVar4 = param_4 * 4;
    ManagedSprite_SetDrawFlag(*(undefined **)(param_1 + iVar4 + 0x670),0);
    ManagedSprite_SetDrawFlag(*(undefined **)(param_1 + iVar4 + 0x674),0);
    ManagedSprite_SetDrawFlag(*(undefined **)(param_1 + iVar4 + 0x678),0);
    ManagedSprite_SetDrawFlag(*(undefined **)(param_1 + iVar4 + 0x67c),0);
    return;
  }
  if ((byte)param_1[0x185f] >> 4 == 0) {
    ManagedSprite_SetDrawFlag(*(undefined **)(param_1 + param_4 * 4 + 0x670),0);
    ManagedSprite_SetDrawFlag(*(undefined **)(param_1 + param_4 * 4 + 0x674),0);
    param_4 = param_4 + 2;
  }
  else {
    ManagedSprite_SetDrawFlag(*(undefined **)(param_1 + param_4 * 4 + 0x678),0);
    ManagedSprite_SetDrawFlag(*(undefined **)(param_1 + param_4 * 4 + 0x67c),0);
  }
  param_1[0x185f] = param_1[0x185f] & 0xf | ((byte)param_1[0x185f] >> 4 ^ 1) << 4;
  iVar4 = Pokedex_GetSeenFormByIdx((undefined *)**(undefined4 **)param_1,param_2,0);
  if (param_2 == 0xac) {
    if (iVar4 == 2) {
      iVar4 = 1;
    }
    else {
      iVar4 = 0;
    }
  }
  uVar1 = GetMonBaseStat_HandleAlternateForm(param_2,iVar4,6);
  ov18_021F21FC((int)param_1,param_4,uVar1 & 0xffff);
  iVar2 = param_4 * 4;
  ManagedSprite_SetDrawFlag(*(undefined **)(param_1 + iVar2 + 0x670),1);
  uVar3 = GetMonBaseStat_HandleAlternateForm(param_2,iVar4,7);
  uVar3 = uVar3 & 0xffff;
  if ((uVar3 != 0) && ((uVar1 & 0xffff) != uVar3)) {
    ov18_021F21FC((int)param_1,param_4 + 1,uVar3);
    ManagedSprite_SetDrawFlag(*(undefined **)(param_1 + iVar2 + 0x674),1);
    return;
  }
  ManagedSprite_SetDrawFlag(*(undefined **)(param_1 + iVar2 + 0x674),0);
  return;
}

