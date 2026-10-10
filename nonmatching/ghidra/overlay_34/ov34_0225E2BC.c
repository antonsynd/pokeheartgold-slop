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
undefined4 String_Delete();
undefined4 CopyU16ArrayToString();
undefined4 PalPad_GetNthEntry();
undefined4 String_New();
undefined4 PalPad_PlayerIdIsFriendOrMutual();
undefined4 PalPadEntry_GetFromUnk68Array();
undefined4 ReadMsgData_ExpandPlaceholders();
undefined4 PlayerProfile_GetTrainerID();
undefined4 BufferPlayersName();
undefined4 BufferString();

undefined4
ov34_0225E2BC(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,
             undefined4 param_5)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uStack_1c;
  
  iVar4 = 0;
  uStack_1c = 0;
  iVar1 = PlayerProfile_GetTrainerID(param_5);
  if (param_2 != iVar1) {
    iVar4 = PalPad_PlayerIdIsFriendOrMutual(param_1,param_2);
  }
  if (0 < iVar4) {
    if (iVar4 == 1) {
      BufferPlayersName(param_3,0,param_5);
    }
    else if (1 < iVar4) {
      uVar2 = String_New(10,0x57);
      uVar3 = PalPad_GetNthEntry(param_1,iVar4 + -2);
      CopyU16ArrayToString(uVar2,uVar3);
      uVar3 = PalPadEntry_GetFromUnk68Array(param_1,iVar4 + -2);
      BufferString(param_3,0,uVar2,0,0,uVar3);
      String_Delete(uVar2);
    }
    uStack_1c = ReadMsgData_ExpandPlaceholders(param_3,param_4,0xd0,0x57);
  }
  return uStack_1c;
}

