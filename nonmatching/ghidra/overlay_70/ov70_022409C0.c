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
void * PCStorage_GetMonByIndexPair(void *, unsigned int, unsigned int);
undefined4 CopyBoxPokemonToPokemon(void *, void *);
undefined4 PCStorage_DeleteBoxMonByIndexPair(void *, unsigned int, unsigned int);
undefined4 Heap_Free(void *);
undefined4 sub_0202DB70(void *, void *);
void * Party_GetMonByIndex(void *, int);
undefined4 sub_0202DB5C(void *, unsigned short);
undefined4 Party_RemoveMon(void *, int);
void * AllocMonZeroed(int);
undefined4 Chatot_Invalidate(void *);
undefined4 Party_HasMon(void *, unsigned short);
undefined4 Pokemon_RemoveCapsule(void *);
void * Save_Chatot_Get(void *);

void ov70_022409C0(int *param_1,int param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;

  if ((short)param_1[0x48] == 0x12) {
    puVar1 = Party_GetMonByIndex(*(undefined **)(*param_1 + 8),
                                 (uint)*(ushort *)((int)param_1 + 0x122));
    Pokemon_RemoveCapsule(puVar1);
    sub_0202DB70(*(undefined **)*param_1,puVar1);
    Party_RemoveMon(*(undefined **)(*param_1 + 8),(uint)*(ushort *)((int)param_1 + 0x122));
    iVar3 = Party_HasMon(*(undefined **)(*param_1 + 8),0x1b9);
    if (iVar3 == 0) {
      puVar1 = Save_Chatot_Get(*(undefined **)(*param_1 + 0x20));
      Chatot_Invalidate(puVar1);
    }
  }
  else {
    puVar1 = AllocMonZeroed(0x3d);
    puVar2 = PCStorage_GetMonByIndexPair
                       (*(undefined **)(*param_1 + 0xc),(uint)*(ushort *)(param_1 + 0x48),
                        (uint)*(ushort *)((int)param_1 + 0x122));
    CopyBoxPokemonToPokemon(puVar2,puVar1);
    sub_0202DB70(*(undefined **)*param_1,puVar1);
    PCStorage_DeleteBoxMonByIndexPair
              (*(undefined **)(*param_1 + 0xc),(uint)*(ushort *)(param_1 + 0x48),
               (uint)*(ushort *)((int)param_1 + 0x122));
    Heap_Free(puVar1);
  }
  if (param_2 != 0) {
    sub_0202DB5C(*(undefined **)*param_1,1);
  }
  return;
}

