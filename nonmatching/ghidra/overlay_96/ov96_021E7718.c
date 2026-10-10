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
undefined4 Save_VarsFlags_CheckFlagInArray(void *, unsigned short);
undefined4 PokeathlonSave_GetUnkAEC();
undefined4 ov96_021E7FA8();
undefined4 ov96_021E7BA8();
void * Save_Pokeathlon_Get(void *);
undefined4 ov96_021E786C();
void * PokeathlonSave_GetRecordsSolo2(void *);
undefined4 ov96_021E8060();
void * PokeathlonSave_GetRecordsSolo(void *);
void * PokeathlonCourse_GetFieldData(void *);
undefined4 Save_VarsFlags_SetFlagInArray(void *, unsigned short);
void * Save_VarsFlags_Get(void *);
void * PokeathlonSave_GetRecordsLink2(void *);
undefined4 PokeathlonSave_AddAthletePoints(void *, unsigned short);
void * PokeathlonSave_dummy2(void *);
undefined4 ov96_021E8084();
undefined4 ov96_021E7A2C();
undefined4 ov96_021E80C4();
void * PokeathlonSave_GetAgainUnkB00(void *);
undefined4 ov96_021E7938();
undefined4 ov96_021E7D6C();

void ov96_021E7718(undefined *param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  undefined *puVar5;
  undefined *puVar6;
  ushort uVar7;

  puVar1 = Save_Pokeathlon_Get((undefined *)**(undefined4 **)(param_1 + 0x1f8));
  puVar2 = PokeathlonCourse_GetFieldData(param_1);
  puVar3 = Save_VarsFlags_Get((undefined *)**(undefined4 **)(param_1 + 0x1f8));
  if ((int)((uint)*(ushort *)(puVar2 + 0x1d0) << 0x1f) < 0) {
    ov96_021E7FA8(param_1);
    iVar4 = Save_VarsFlags_CheckFlagInArray(puVar3,0xf0);
    if ((iVar4 == 0) && (iVar4 = ov96_021E8084(param_1), iVar4 != 0)) {
      Save_VarsFlags_SetFlagInArray(puVar3,0xf0);
    }
  }
  uVar7 = *(ushort *)(puVar2 + 0x1d2);
  if (*(char *)(*(int *)(param_1 + 0x1f8) + 0xc) == '\n') {
    uVar7 = uVar7 << 1;
  }
  PokeathlonSave_AddAthletePoints(puVar1,uVar7);
  if (*(int *)(*(int *)(param_1 + 0x1f8) + 4) == 1) {
    puVar5 = PokeathlonSave_GetRecordsLink2(puVar1);
    ov96_021E7A2C(param_1,puVar5);
  }
  else {
    puVar5 = PokeathlonSave_GetRecordsSolo(puVar1);
    puVar6 = PokeathlonSave_GetUnkAEC(puVar1);
    ov96_021E7BA8(param_1,puVar5,puVar6);
    if ((int)((uint)*(ushort *)(puVar2 + 0x1d0) << 0x1f) < 0) {
      puVar5 = PokeathlonSave_dummy2(puVar1);
      ov96_021E786C(param_1,puVar5);
      iVar4 = Save_VarsFlags_CheckFlagInArray(puVar3,0xef);
      if (iVar4 == 0) {
        PokeathlonSave_dummy2(puVar1);
        iVar4 = ov96_021E8060();
        if (iVar4 != 0) {
          Save_VarsFlags_SetFlagInArray(puVar3,0xef);
        }
      }
    }
    puVar5 = PokeathlonSave_GetRecordsSolo2(puVar1);
    ov96_021E7938(param_1,puVar5);
  }
  puVar1 = PokeathlonSave_GetAgainUnkB00(puVar1);
  ov96_021E7D6C(param_1,puVar1);
  if (((*(int *)(*(int *)(param_1 + 0x1f8) + 4) == 0) &&
      (iVar4 = Save_VarsFlags_CheckFlagInArray(puVar3,0xf1), iVar4 == 0)) &&
     (iVar4 = ov96_021E80C4(param_1), iVar4 != 0)) {
    Save_VarsFlags_SetFlagInArray(puVar3,0xf1);
  }
  *(undefined2 *)(*(int *)(param_1 + 0x1f8) + 10) = *(undefined2 *)(puVar2 + 0x1d2);
  *(ushort *)(*(int *)(param_1 + 0x1f8) + 8) = uVar7;
  *(char *)(*(int *)(param_1 + 0x1f8) + 0xd) = (char)((*(ushort *)(puVar2 + 0x1d0) & 0xf) >> 2);
  return;
}

