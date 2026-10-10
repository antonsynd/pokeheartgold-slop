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
undefined4 PokeathlonCourse_GetFieldData_AtIndex();
undefined4 PokeathlonCourse_GetField1EF();
undefined4 PokeathlonCourse_ResetField1EF();
undefined4 PokeathlonCourse_IncrementField1EF();
undefined4 PokeathlonCourse_GetDataCopyArea();
undefined4 ov96_021E5F24();
undefined4 PokeathlonCourse_SetStateField07();
undefined4 PokeathlonCourse_GetParticipantCount();

void ov96_021E98F4(undefined1 param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  
  PokeathlonCourse_GetDataCopyArea(param_4);
  iVar1 = ov96_021E5F24(param_4);
  if (iVar1 == 0) {
    iVar1 = PokeathlonCourse_GetFieldData_AtIndex(param_4,param_1);
    uVar4 = 0;
    do {
      iVar3 = uVar4 * 0x20;
      iVar2 = param_3 + iVar3;
      *(int *)(iVar1 + iVar3) = *(int *)(iVar1 + iVar3) + *(int *)(param_3 + iVar3);
      iVar3 = iVar1 + iVar3;
      *(int *)(iVar3 + 4) = *(int *)(iVar3 + 4) + *(int *)(iVar2 + 4);
      *(int *)(iVar3 + 8) = *(int *)(iVar3 + 8) + *(int *)(iVar2 + 8);
      *(int *)(iVar3 + 0xc) = *(int *)(iVar3 + 0xc) + *(int *)(iVar2 + 0xc);
      *(int *)(iVar3 + 0x10) = *(int *)(iVar3 + 0x10) + *(int *)(iVar2 + 0x10);
      *(int *)(iVar3 + 0x14) = *(int *)(iVar3 + 0x14) + *(int *)(iVar2 + 0x14);
      *(int *)(iVar3 + 0x18) = *(int *)(iVar3 + 0x18) + *(int *)(iVar2 + 0x18);
      *(int *)(iVar3 + 0x1c) = *(int *)(iVar3 + 0x1c) + *(int *)(iVar2 + 0x1c);
      uVar4 = uVar4 + 1 & 0xff;
    } while (uVar4 < 3);
    PokeathlonCourse_IncrementField1EF(param_4);
    iVar1 = PokeathlonCourse_GetParticipantCount(param_4);
    iVar3 = PokeathlonCourse_GetField1EF(param_4);
    if (iVar1 == iVar3) {
      PokeathlonCourse_ResetField1EF(param_4);
      PokeathlonCourse_SetStateField07(param_4,0x1e);
    }
  }
  return;
}

