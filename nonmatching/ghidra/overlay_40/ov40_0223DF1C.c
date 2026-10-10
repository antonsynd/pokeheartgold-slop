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
undefined4 InitWindow();
undefined4 ScheduleWindowCopyToVram();
undefined4 String_Delete();
undefined4 NewString_ReadMsgData();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 AddWindowParameterized();
undefined4 ov40_0223DEB8();
undefined4 GF_AssertFail();
undefined4 FillWindowPixelBuffer();
extern undefined ov40_02245868;

void ov40_0223DF1C(int param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  uint *puVar6;
  uint *puVar7;
  int iStack_58;
  uint auStack_50 [15];
  
  iVar1 = *(int *)(param_1 + 0x860);
  puVar7 = (uint *)&ov40_02245868;
  puVar6 = auStack_50 + 3;
  iVar5 = 6;
  do {
    uVar2 = *puVar7;
    uVar4 = puVar7[1];
    puVar7 = puVar7 + 2;
    *puVar6 = uVar2;
    puVar6[1] = uVar4;
    puVar6 = puVar6 + 2;
    iVar5 = iVar5 + -1;
  } while (iVar5 != 0);
  auStack_50[0] = 0x30;
  auStack_50[1] = 0x31;
  auStack_50[2] = 0x32;
  if (param_2 != 0) {
    GF_AssertFail();
  }
  *(undefined4 *)(iVar1 + 0x798) = 3;
  iStack_58 = 0;
  puVar6 = auStack_50;
  uVar2 = 0x100;
  iVar5 = iVar1 + 0x6d4;
  puVar7 = auStack_50 + 3;
  do {
    InitWindow(iVar5);
    AddWindowParameterized
              (*(undefined4 *)(param_1 + 0x24),iVar5,6,*puVar7 & 0xff,puVar7[1] & 0xff,
               puVar7[2] & 0xff,puVar7[3] & 0xff,0xe,uVar2 & 0xffff);
    FillWindowPixelBuffer(iVar5,0);
    iVar5 = iVar5 + 0x10;
    uVar2 = uVar2 + puVar7[2] * puVar7[3];
    puVar7 = puVar7 + 4;
    iStack_58 = iStack_58 + 1;
  } while (iStack_58 < 3);
  iVar5 = 0;
  iVar1 = iVar1 + 0x6d4;
  do {
    uVar3 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x48),*puVar6);
    AddTextPrinterParameterizedWithColor(iVar1,0,uVar3,0,0,0xff,0xf0d00,0);
    ScheduleWindowCopyToVram(iVar1);
    String_Delete(uVar3);
    iVar5 = iVar5 + 1;
    iVar1 = iVar1 + 0x10;
    puVar6 = puVar6 + 1;
  } while (iVar5 < 2);
  ov40_0223DEB8(param_1);
  return;
}

