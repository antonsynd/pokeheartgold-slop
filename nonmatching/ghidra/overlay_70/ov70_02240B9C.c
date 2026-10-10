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
unsigned short Save_VarsFlags_GetVar404C(void *);
undefined4 PCStorage_FindFirstEmptySlot(void *, void *, void *);
undefined4 Party_GetCount(void *);
void * Save_VarsFlags_Get(void *);
undefined4 SetMonData(void *, int, void *);
undefined4 PCStorage_PlaceMonInBoxFirstEmptySlot(void *, unsigned int, void *);
undefined4 UpdatePokedexWithReceivedSpecies(void *, void *);
undefined4 Party_AddMon(void *, void *);
undefined4 ov70_02240CA0();
undefined4 GetMonData(void *, int, void *);
void * Mon_GetBoxMon(void *);
undefined4 Save_VarsFlags_SetVar404C(void *, unsigned short);

void ov70_02240B9C(int *param_1,undefined *param_2,uint param_3,undefined4 param_4)

{
  ushort uVar1;
  int iVar2;
  uint uVar3;
  undefined *puVar4;
  undefined local_28 [4];
  int local_24;
  uint local_8;
  undefined4 uStack_4;

  local_8 = param_3;
  uStack_4 = param_4;
  UpdatePokedexWithReceivedSpecies(*(undefined **)(*param_1 + 0x20),param_2);
  local_8 = 0x12;
  iVar2 = Party_GetCount(*(undefined **)(*param_1 + 8));
  if (iVar2 == 6) {
    local_8 = 0;
  }
  uVar3 = GetMonData(param_2,5,(undefined *)0x0);
  if ((uVar3 == 0x1ed) &&
     ((uVar3 = GetMonData(param_2,0x6e,(undefined *)0x0), uVar3 != 0 ||
      ((uVar3 = GetMonData(param_2,0x99,(undefined *)0x0), uVar3 == 0x56 &&
       (uVar3 = GetMonData(param_2,0x6e,(undefined *)0x0), uVar3 == 0)))))) {
    puVar4 = Save_VarsFlags_Get(*(undefined **)(*param_1 + 0x20));
    uVar1 = Save_VarsFlags_GetVar404C(puVar4);
    if (uVar1 == 0) {
      Save_VarsFlags_SetVar404C(puVar4,1);
    }
  }
  local_28[0] = 0x46;
  SetMonData(param_2,9,local_28);
  SetMonData(param_2,0x6f,(undefined *)0x0);
  if (local_8 == 0x12) {
    Party_AddMon(*(undefined **)(*param_1 + 8),param_2);
    iVar2 = Party_GetCount(*(undefined **)(*param_1 + 8));
    param_1[0x4d] = 0x12;
    param_1[0x4e] = iVar2 + -1;
  }
  else {
    local_24 = 0;
    PCStorage_FindFirstEmptySlot
              (*(undefined **)(*param_1 + 0xc),(undefined *)&local_8,(undefined *)&local_24);
    puVar4 = Mon_GetBoxMon(param_2);
    PCStorage_PlaceMonInBoxFirstEmptySlot(*(undefined **)(*param_1 + 0xc),local_8,puVar4);
    param_1[0x4d] = local_8;
    param_1[0x4e] = local_24;
  }
  ov70_02240CA0(*(undefined **)*param_1,1);
  return;
}

