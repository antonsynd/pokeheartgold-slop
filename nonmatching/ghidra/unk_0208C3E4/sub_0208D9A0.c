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
undefined4 GetMoveAttr();
undefined4 ScheduleWindowCopyToVram();
undefined4 sub_0208C87C();
undefined4 ReadMsgDataIntoString();
undefined4 FillWindowPixelBuffer();
undefined4 NewMsgDataFromNarc();
undefined4 sub_0208C778();
undefined4 DestroyMsgData();

void sub_0208D9A0(int param_1,undefined4 param_2)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  
  ScheduleWindowCopyToVram(param_1 + 0x184);
  ScheduleWindowCopyToVram(param_1 + 0x194);
  ScheduleWindowCopyToVram(param_1 + 0x1a4);
  FillWindowPixelBuffer(*(int *)(param_1 + 0x224) + 0xd0,0);
  FillWindowPixelBuffer(*(int *)(param_1 + 0x224) + 0xe0,0);
  FillWindowPixelBuffer(*(int *)(param_1 + 0x224) + 0xf0,0);
  uVar1 = GetMoveAttr(param_2,2);
  if (uVar1 < 2) {
    ReadMsgDataIntoString(*(undefined4 *)(param_1 + 0x7a0),0x9a,*(undefined4 *)(param_1 + 0x7ac));
  }
  else {
    sub_0208C87C(param_1,0x96,uVar1,3,0);
  }
  sub_0208C778(param_1,*(int *)(param_1 + 0x224) + 0xd0,0x10200,1);
  iVar2 = GetMoveAttr(param_2,4);
  if (iVar2 == 0) {
    ReadMsgDataIntoString(*(undefined4 *)(param_1 + 0x7a0),0x9a,*(undefined4 *)(param_1 + 0x7ac));
  }
  else {
    sub_0208C87C(param_1,0x97,iVar2,3,0);
  }
  sub_0208C778(param_1,*(int *)(param_1 + 0x224) + 0xe0,0x10200,1);
  uVar3 = NewMsgDataFromNarc(1,0x1b,0x2ed,0x13);
  ReadMsgDataIntoString(uVar3,param_2,*(undefined4 *)(param_1 + 0x7ac));
  sub_0208C778(param_1,*(int *)(param_1 + 0x224) + 0xf0,0x10200,0);
  DestroyMsgData(uVar3);
  ScheduleWindowCopyToVram(*(int *)(param_1 + 0x224) + 0xd0);
  ScheduleWindowCopyToVram(*(int *)(param_1 + 0x224) + 0xe0);
  ScheduleWindowCopyToVram(*(int *)(param_1 + 0x224) + 0xf0);
  return;
}

