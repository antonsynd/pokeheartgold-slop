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
undefined4 func_0x020d4858() __asm__("sub_020D4858");
undefined4 CopyU16StringArrayN();
undefined4 Save_PlayerData_GetProfile();
undefined4 PlayerProfile_GetNamePtr();
undefined4 PlayerProfile_GetTrainerID();
undefined4 PlayerProfile_GetTrainerGender();

void ov73_021E7AC0(undefined4 param_1,undefined4 *param_2,undefined4 *param_3,int param_4)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  int iStack_1c;
  
  uVar2 = Save_PlayerData_GetProfile();
  iStack_1c = 0;
  if (0 < param_4) {
    do {
      func_0x020d4858(0,param_2,0x48);
      uVar3 = PlayerProfile_GetTrainerID(uVar2);
      *param_2 = uVar3;
      uVar1 = PlayerProfile_GetTrainerGender(uVar2);
      *(undefined1 *)(param_2 + 1) = uVar1;
      *(undefined1 *)((int)param_2 + 5) = 7;
      *(undefined1 *)((int)param_2 + 6) = 2;
      uVar3 = PlayerProfile_GetNamePtr(uVar2);
      CopyU16StringArrayN(param_2 + 2,uVar3,8);
      puVar6 = param_2 + 6;
      iVar5 = 6;
      puVar7 = param_3;
      do {
        uVar3 = *puVar7;
        uVar4 = puVar7[1];
        puVar7 = puVar7 + 2;
        *puVar6 = uVar3;
        puVar6[1] = uVar4;
        puVar6 = puVar6 + 2;
        iVar5 = iVar5 + -1;
      } while (iVar5 != 0);
      *(undefined1 *)((int)param_2 + 0x19) = 0;
      *(undefined1 *)(param_2 + 6) = 0;
      param_3 = param_3 + 0xc;
      iStack_1c = iStack_1c + 1;
      param_2 = param_2 + 0x12;
    } while (iStack_1c < param_4);
  }
  return;
}

