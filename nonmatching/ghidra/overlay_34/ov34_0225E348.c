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
undefined4 PlayerProfile_GetTrainerGender();
undefined4 String_Delete();
undefined4 CopyU16ArrayToString();
undefined4 PlayerProfile_GetNamePtr();
undefined4 func_0x02015898() __asm__("sub_02015898");
undefined4 ov34_0225E2BC();

void ov34_0225E348(int param_1,undefined4 param_2,undefined2 *param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  
  uVar1 = *(undefined4 *)(*(int *)(param_1 + 4) + 0x4d8);
  iVar4 = *(int *)(param_1 + 0x270);
  if (*(int *)(iVar4 + 0x348) == 0x1e) {
    iVar3 = 0x34c;
  }
  else {
    iVar3 = 0x348;
  }
  piVar5 = (int *)(iVar4 + iVar3);
  if (*(int *)(iVar4 + *piVar5 * 0x1c + 4) != 0) {
    String_Delete();
  }
  if (*(int *)(iVar4 + *piVar5 * 0x1c + 8) != 0) {
    String_Delete();
  }
  uVar2 = PlayerProfile_GetNamePtr(param_4);
  CopyU16ArrayToString(*(undefined4 *)(iVar4 + *piVar5 * 0x1c),uVar2);
  iVar3 = iVar4 + *piVar5 * 0x1c;
  *(undefined2 *)(iVar3 + 0x14) = *param_3;
  *(undefined2 *)(iVar3 + 0x16) = param_3[1];
  *(undefined2 *)(iVar3 + 0x18) = param_3[2];
  *(undefined2 *)(iVar3 + 0x1a) = param_3[3];
  *(undefined4 *)(iVar4 + *piVar5 * 0x1c + 0xc) = param_2;
  uVar2 = PlayerProfile_GetTrainerGender(param_4);
  *(undefined4 *)(iVar4 + *piVar5 * 0x1c + 0x10) = uVar2;
  uVar2 = func_0x02015898(param_3,0x57);
  *(undefined4 *)(iVar4 + *piVar5 * 0x1c + 4) = uVar2;
  uVar1 = ov34_0225E2BC(uVar1,param_2,*(undefined4 *)(param_1 + 0x18),
                        *(undefined4 *)(param_1 + 0x1c),*(undefined4 *)(param_1 + 0x10));
  *(undefined4 *)(iVar4 + *piVar5 * 0x1c + 8) = uVar1;
  *piVar5 = *piVar5 + 1;
  if (*(int *)(iVar4 + 0x34c) == 0x1e) {
    *(undefined4 *)(iVar4 + 0x34c) = 0;
  }
  return;
}

