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
undefined4 sub_02089D40();
undefined4 Save_SpecialRibbons_Get();
undefined4 SaveArray_IsNatDexEnabled();
undefined4 sub_0208AD34();
undefined4 sub_02088288();
undefined4 sub_0208828C();
undefined4 Save_PlayerData_GetProfile();
undefined4 ov14_021E60C0();
undefined4 OverlayManager_New();
undefined4 Heap_Alloc();
undefined4 Party_GetCount();
extern undefined ov14_021F7D0C;
extern undefined gOverlayTemplate_PokemonSummary;

undefined4 ov14_021E89B8(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  char cVar2;
  int *piVar3;
  int iVar4;
  undefined4 uVar5;
  
  piVar3 = (int *)Heap_Alloc(9,0x3c,param_3,param_4,param_4);
  param_1[6] = (int)piVar3;
  if (*(byte *)((int)param_1 + 0x21) < 0x1e) {
    iVar4 = ov14_021E60C0(param_1,*(undefined1 *)((int)param_1 + 0x1f),0);
    *piVar3 = iVar4;
    *(undefined1 *)((int)piVar3 + 0x11) = 2;
    *(undefined1 *)((int)piVar3 + 0x13) = 0x1e;
    cVar2 = *(char *)((int)param_1 + 0x21);
  }
  else {
    *piVar3 = param_1[2];
    *(undefined1 *)((int)piVar3 + 0x11) = 1;
    uVar1 = Party_GetCount(param_1[2]);
    *(undefined1 *)((int)piVar3 + 0x13) = uVar1;
    cVar2 = *(char *)((int)param_1 + 0x21) + -0x1e;
  }
  *(char *)(piVar3 + 5) = cVar2;
  piVar3[1] = param_1[4];
  uVar5 = Save_PlayerData_GetProfile(*(undefined4 *)*param_1);
  sub_0208AD34(piVar3,uVar5);
  *(undefined1 *)((int)piVar3 + 0x12) = 0;
  sub_02089D40(piVar3,&ov14_021F7D0C);
  *(undefined1 *)((int)piVar3 + 0x16) = 0;
  *(undefined1 *)((int)piVar3 + 0x17) = 0;
  *(undefined2 *)(piVar3 + 6) = 0;
  iVar4 = SaveArray_IsNatDexEnabled(*(undefined4 *)*param_1);
  piVar3[7] = iVar4;
  iVar4 = Save_SpecialRibbons_Get(*(undefined4 *)*param_1);
  piVar3[8] = iVar4;
  piVar3[9] = 0;
  piVar3[10] = 0;
  iVar4 = sub_02088288(*(undefined4 *)*param_1);
  piVar3[0xb] = iVar4;
  iVar4 = sub_0208828C(*(undefined4 *)*param_1);
  piVar3[0xd] = iVar4;
  piVar3[0xc] = *(int *)(*param_1 + 4);
  iVar4 = OverlayManager_New(&gOverlayTemplate_PokemonSummary,piVar3,9);
  param_1[5] = iVar4;
  return 0;
}

