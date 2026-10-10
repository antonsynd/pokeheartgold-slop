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
undefined4 BufferIntegerAsString();
undefined4 BufferString();
undefined4 CopyU16ArrayToString();
undefined4 ov109_021E7850();
undefined4 FillWindowPixelBuffer();
undefined4 MapID_GetLandmarkName();
undefined4 ScheduleWindowCopyToVram();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 StringExpandPlaceholders();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 BufferPlayersName();
undefined4 Save_PlayerData_GetProfile();
undefined4 ov109_021E7114();
undefined4 ScheduleBgTilemapBufferTransfer();

void ov109_021E7248(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  uint uVar2;
  
  ScheduleBgTilemapBufferTransfer(param_1[5],6);
  ScheduleBgTilemapBufferTransfer(param_1[5],7);
  FillWindowPixelBuffer(param_1 + 0x1c,0);
  BgClearTilemapBufferAndCommit(param_1[5],4);
  BgClearTilemapBufferAndCommit(param_1[5],7);
  if (param_2 == 0) {
    ScheduleWindowCopyToVram(param_1 + 0x1c);
    return;
  }
  uVar1 = Save_PlayerData_GetProfile(*(undefined4 *)(param_1[4] + 0xc));
  BufferPlayersName(param_1[10],0,uVar1);
  MapID_GetLandmarkName(*(undefined2 *)(param_2 + 0x32),*param_1,param_1[0xb]);
  BufferString(param_1[10],1,param_1[0xb],2,0,2);
  CopyU16ArrayToString(param_1[0xb],param_2 + 0x18);
  BufferString(param_1[10],2,param_1[0xb],2,0,2);
  BufferIntegerAsString(param_1[10],3,(*(uint *)(param_2 + 0x38) >> 0x18) + 2000,4,2,1);
  BufferIntegerAsString(param_1[10],4,*(uint *)(param_2 + 0x38) >> 0x10 & 0xff,2,2,1);
  BufferIntegerAsString(param_1[10],5,*(uint *)(param_2 + 0x38) >> 8 & 0xff,2,2,1);
  uVar2 = ov109_021E7850(param_2);
  if (uVar2 < 2) {
    StringExpandPlaceholders(param_1[10],param_1[0xb],param_1[0x12]);
  }
  else {
    StringExpandPlaceholders(param_1[10],param_1[0xb],param_1[0x13]);
  }
  AddTextPrinterParameterizedWithColor(param_1 + 0x1c,0,param_1[0xb],0,0,0xff,0x30200,0);
  ScheduleWindowCopyToVram(param_1 + 0x1c);
  ov109_021E7114(param_1,(*(byte *)(param_2 + 4) >> 1) + 1,7,0xd,8);
  return;
}

