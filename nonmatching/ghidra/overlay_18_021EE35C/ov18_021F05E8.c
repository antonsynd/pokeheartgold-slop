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
undefined4 ov18_021F95FC();
undefined4 PlayerProfile_GetTrainerGender();
undefined4 ScheduleWindowCopyToVram();
undefined4 String_Delete();
undefined4 ov18_021EEB34();
undefined4 FillWindowPixelBuffer();
undefined4 ov18_021E590C();
undefined4 func_0x02028f68() __asm__("sub_02028F68");
undefined4 ov18_021F9648();
undefined4 Pokedex_CheckMonCaughtFlag();
undefined4 ov18_021EE35C();
undefined4 ov18_021EEA84();
extern undefined ov18_021F9DE4;

void ov18_021F05E8(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 uVar4;
  uint uVar5;
  
  ov18_021EE35C(param_1,&ov18_021F9DE4,0xd);
  uVar5 = 0;
  piVar3 = param_1 + 3;
  do {
    FillWindowPixelBuffer(piVar3,0);
    uVar5 = uVar5 + 1;
    piVar3 = piVar3 + 4;
  } while (uVar5 < 0xd);
  iVar1 = Pokedex_CheckMonCaughtFlag(*(undefined4 *)*param_1,*(undefined2 *)((int)param_1 + 0x18a2))
  ;
  if (iVar1 == 0) {
    uVar4 = 1;
  }
  else {
    uVar4 = 2;
  }
  ov18_021F9648(param_1 + 3,param_1[0x197],0x8f,0,0,4,0x20100,0,param_4);
  ov18_021F9648(param_1 + 0xf,param_1[0x197],0x88,0x30,0,0,0x20100,2);
  ov18_021F9648(param_1 + 0x13,param_1[0x197],10,0x10,0,0,0x20100,2);
  ov18_021F9648(param_1 + 0x1b,param_1[0x197],10,0x10,0,0,0x20100,2);
  uVar2 = ov18_021E590C(*(undefined2 *)((int)param_1 + 0x18a2),2,0x25);
  ov18_021F95FC(param_1 + 7,uVar2,0x20,0,0,0x20100,2);
  String_Delete(uVar2);
  uVar2 = func_0x02028f68(*(undefined4 *)(*param_1 + 4),0x25);
  ov18_021F95FC(param_1 + 0xb,uVar2,0x20,0,0,0x20100,2);
  String_Delete(uVar2);
  ov18_021EEA84(param_1,*(undefined2 *)((int)param_1 + 0x18a2),uVar4,5,0x20,0,0x20100,2);
  ov18_021F9648(param_1 + 0x23,param_1[0x197],0x89,0x30,0,0,0x50900,2);
  ov18_021F9648(param_1 + 0x27,param_1[0x197],0xb,0x10,0,0,0xf0500,2);
  ov18_021F9648(param_1 + 0x2f,param_1[0x197],0xb,0x10,0,0,0xf0500,2);
  ov18_021EEB34(param_1,*(undefined2 *)((int)param_1 + 0x18a2),uVar4,10,0x20,0,0xf0500,2);
  iVar1 = PlayerProfile_GetTrainerGender(*(undefined4 *)(*param_1 + 4));
  if (iVar1 == 0) {
    ov18_021F9648(param_1 + 0x1f,param_1[0x197],0x8a,0x20,0,0,0x20100,2);
    ov18_021F9648(param_1 + 0x33,param_1[0x197],0x8c,0x20,0,0,0xf0500,2);
  }
  else {
    ov18_021F9648(param_1 + 0x1f,param_1[0x197],0x8b,0x20,0,0,0x20100,2);
    ov18_021F9648(param_1 + 0x33,param_1[0x197],0x8d,0x20,0,0,0xf0500,2);
  }
  uVar5 = 0;
  param_1 = param_1 + 3;
  do {
    ScheduleWindowCopyToVram(param_1);
    uVar5 = uVar5 + 1;
    param_1 = param_1 + 4;
  } while (uVar5 < 0xd);
  return;
}

