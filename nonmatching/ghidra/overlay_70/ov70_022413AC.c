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
undefined4 sub_02088288(void *);
void * Save_SpecialRibbons_Get(void *);
undefined4 ov70_0223E49C();
undefined4 sub_0208828C(void *);
void * OverlayManager_New(void *, void *, int);
undefined4 sub_02089D40(void *, void *);
undefined4 sub_0208AD34(void *, void *);
extern undefined gOverlayTemplate_PokemonSummary;
extern undefined ov70_02245D48;

undefined4 ov70_022413AC(int *param_1)

{
  undefined *puVar1;
  uint uVar2;
  int iVar3;
  
  puVar1 = ov70_0223E49C(*(undefined **)(*param_1 + 8),*(undefined **)(*param_1 + 0xc),
                         (uint)*(ushort *)(param_1 + 0x48),(uint)*(ushort *)((int)param_1 + 0x122));
  param_1[0x2f] = (int)puVar1;
  *(undefined1 *)((int)param_1 + 0xcd) = 2;
  *(undefined1 *)((int)param_1 + 0xcf) = 1;
  *(undefined1 *)(param_1 + 0x34) = 0;
  *(undefined1 *)((int)param_1 + 0xce) = 1;
  *(undefined2 *)(param_1 + 0x35) = 0;
  uVar2 = sub_02088288(*(undefined **)(*param_1 + 0x20));
  param_1[0x3a] = uVar2;
  param_1[0x36] = *(int *)(*param_1 + 0x30);
  param_1[0x30] = *(int *)(*param_1 + 0x24);
  puVar1 = Save_SpecialRibbons_Get(*(undefined **)(*param_1 + 0x20));
  param_1[0x37] = (int)puVar1;
  iVar3 = sub_0208828C(*(undefined **)(*param_1 + 0x20));
  param_1[0x3c] = iVar3;
  sub_02089D40((undefined *)(param_1 + 0x2f),&ov70_02245D48);
  sub_0208AD34((undefined *)(param_1 + 0x2f),*(undefined **)(*param_1 + 0x1c));
  puVar1 = OverlayManager_New(&gOverlayTemplate_PokemonSummary,(undefined *)(param_1 + 0x2f),0x3d);
  param_1[0x2e] = (int)puVar1;
  param_1[0x45] = 1;
  return 2;
}

