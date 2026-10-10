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
undefined4 PokeathlonCourse_SetStateTransitionType(void *, unsigned int);
void * PokeathlonSave_GetUnkB00(void *);
void * sub_020320E0(void *, void *, unsigned int, int);
undefined4 sub_02031B10(void);
void * Save_Pokeathlon_Get(void *);
void * Heap_AllocAtEnd(int, unsigned int);
undefined4 PokeathlonCourse_SetStateField07(void *, unsigned char);
void * Save_PlayerData_GetProfile(void *);
void * Save_ApricornBox_Get(void *);
undefined4 GF_AssertFail(void);
void * memset(void *, int, unsigned int);

undefined4
ov96_021E73F8(undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  undefined *puVar5;

  (**(code **)(*(int *)(param_1 + 0x1e0) + 0xc))
            (param_1,0,*(code **)(*(int *)(param_1 + 0x1e0) + 0xc),param_4,param_4);
  if (*(int *)(param_1 + 0x1e4) != 0) {
    GF_AssertFail();
  }
  puVar1 = Save_ApricornBox_Get((undefined *)**(undefined4 **)(param_1 + 0x1f8));
  puVar2 = Save_PlayerData_GetProfile((undefined *)**(undefined4 **)(param_1 + 0x1f8));
  puVar3 = Save_Pokeathlon_Get((undefined *)**(undefined4 **)(param_1 + 0x1f8));
  puVar3 = PokeathlonSave_GetUnkB00(puVar3);
  uVar4 = sub_02031B10();
  puVar5 = Heap_AllocAtEnd(*(int *)(param_1 + 0x284),uVar4 * 4);
  *(undefined **)(param_1 + 0xd68) = puVar5;
  memset(*(undefined **)(param_1 + 0xd68),0,uVar4 * 4);
  puVar1 = sub_020320E0(puVar1,puVar2,*(uint *)(puVar3 + 0x70),*(int *)(param_1 + 0x284));
  *(undefined **)(param_1 + 0xd64) = puVar1;
  if (*(int *)(*(int *)(param_1 + 0x1f8) + 4) == 1) {
    PokeathlonCourse_SetStateTransitionType(param_1,0xe);
    PokeathlonCourse_SetStateField07(param_1,0x23);
  }
  else {
    PokeathlonCourse_SetStateField07(param_1,0x25);
  }
  return 0;
}

