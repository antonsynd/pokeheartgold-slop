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
undefined4 ov83_022479E4();
undefined4 Save_PlayerData_GetProfile();
undefined4 String_Delete();
undefined4 ov83_02240C48();
undefined4 GetWindowWidth();
undefined4 ScheduleWindowCopyToVram();
undefined4 FillWindowPixelBuffer();
undefined4 CopyU16ArrayToString();
undefined4 PlayerProfile_GetNamePtr();
undefined4 func_0x0205c1f0() __asm__("sub_0205C1F0");
undefined4 ov83_02247998();
undefined4 sub_0205C268();
undefined4 FrontierSave_GetStat();
undefined4 ov83_02241DD8();
undefined4 String_New();
undefined4 PlayerProfile_GetTrainerGender();

void ov83_02240528(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  
  FillWindowPixelBuffer(param_1 + 0x3f0,0);
  FillWindowPixelBuffer(param_1 + 0x400,0);
  FillWindowPixelBuffer(param_1 + 0x410,0);
  if (param_2 == 6) {
    ov83_022479E4(param_1 + 0x3f0,*(undefined4 *)(param_1 + 0x20),0x6a,0,0,0,0x10200,0);
  }
  else {
    ov83_022479E4(param_1 + 0x3f0,*(undefined4 *)(param_1 + 0x20),0x6b,0,0,0,0x10200,0);
  }
  uVar1 = Save_PlayerData_GetProfile(*(undefined4 *)(param_1 + 0x50c));
  uVar2 = String_New(8,0x6b);
  uVar3 = PlayerProfile_GetNamePtr(uVar1);
  CopyU16ArrayToString(uVar2,uVar3);
  iVar4 = PlayerProfile_GetTrainerGender(uVar1);
  if (iVar4 == 0) {
    uVar1 = 0x70800;
  }
  else {
    uVar1 = 0x30400;
  }
  ov83_02247998(param_1 + 0x400,uVar2,0,0,0,uVar1,0);
  String_Delete(uVar2);
  uVar1 = func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
  func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
  uVar2 = sub_0205C268();
  uVar1 = FrontierSave_GetStat(*(undefined4 *)(param_1 + 4),uVar1,uVar2);
  ov83_02240C48(param_1,0,uVar1,4,1);
  iVar4 = GetWindowWidth(param_1 + 0x410);
  ov83_02241DD8(param_1,param_1 + 0x410,*(undefined4 *)(param_1 + 0x20),2,iVar4 << 3,0,0,0x10200,1);
  ScheduleWindowCopyToVram(param_1 + 0x3f0);
  ScheduleWindowCopyToVram(param_1 + 0x400);
  ScheduleWindowCopyToVram(param_1 + 0x410);
  return;
}

