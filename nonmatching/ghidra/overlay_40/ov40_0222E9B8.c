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
undefined4 CopyU16ArrayToString();
undefined4 ov40_02230DCC();
undefined4 String_Delete();
undefined4 NewString_ReadMsgData();
undefined4 func_0x02026464() __asm__("sub_02026464");
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 AddWindowParameterized();
undefined4 FontID_String_GetWidth();
undefined4 String_New();
undefined4 FillWindowPixelBuffer();
undefined4 func_0x020f2998() __asm__("sub_020F2998");

void ov40_0222E9B8(undefined4 *param_1,int param_2,int param_3,int *param_4)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  int iStack_30;
  int iStack_2c;
  
  puVar1 = param_1 + 6;
  param_1[1] = param_4[1];
  *param_1 = 0;
  param_1[3] = 0;
  param_1[4] = param_4[9];
  param_1[10] = param_4;
  if (param_3 == 0) {
    param_1[0xd] = *(undefined4 *)(param_2 + 0x48);
  }
  else {
    param_1[0xd] = param_3;
  }
  iVar2 = func_0x020f2998(param_1[1],param_1[4]);
  param_1[5] = iVar2 + 1;
  param_1[0x10] = (int)param_1[4] / 2;
  param_1[0x11] = (int)param_1[4] / 2;
  iVar2 = param_1[1];
  if (iVar2 < (int)param_1[4]) {
    param_1[4] = iVar2;
    param_1[0x10] = iVar2 + -1;
    param_1[0x11] = param_1[4] + -1;
  }
  InitWindow(puVar1);
  AddWindowParameterized
            (*(undefined4 *)(param_2 + 0x24),puVar1,param_4[8] & 0xff,param_4[3] & 0xff,
             param_4[4] & 0xff,param_4[5] & 0xff,param_4[6] & 0xff,0xe,param_4[7] & 0xffff);
  FillWindowPixelBuffer(puVar1,0);
  if (*param_4 == 0) {
    iStack_30 = 0;
    if (0 < (int)param_1[4]) {
      iVar2 = 4;
      iStack_2c = param_2;
      do {
        uVar3 = String_New(0xff,0x6d);
        uVar4 = String_New(0xff,0x6d);
        uVar5 = NewString_ReadMsgData(*(undefined4 *)(param_2 + 0x48),99);
        func_0x02026464(uVar4,iStack_30 + 1,2,1,1);
        CopyU16ArrayToString(uVar3,*(undefined4 *)(iStack_2c + 0x2608));
        ov40_02230DCC(param_2,uVar3);
        iVar6 = FontID_String_GetWidth(0,uVar4,0);
        AddTextPrinterParameterizedWithColor(puVar1,0,uVar4,0x10 - iVar6,iVar2,0xff,0xf0d00,0);
        AddTextPrinterParameterizedWithColor(puVar1,0,uVar5,0x10,iVar2,0xff,0xf0d00,0);
        AddTextPrinterParameterizedWithColor(puVar1,0,uVar3,0x16,iVar2,0xff,0xf0d00,0);
        String_Delete(uVar3);
        String_Delete(uVar4);
        String_Delete(uVar5);
        iStack_2c = iStack_2c + 4;
        iVar2 = iVar2 + 0x18;
        iStack_30 = iStack_30 + 1;
      } while (iStack_30 < (int)param_1[4]);
    }
  }
  else {
    iVar2 = 0;
    if (0 < (int)param_1[4]) {
      iVar6 = 0;
      do {
        uVar3 = NewString_ReadMsgData(param_1[0xd],*(undefined4 *)(*param_4 + iVar6));
        AddTextPrinterParameterizedWithColor
                  (puVar1,0,uVar3,0,iVar2 * param_4[2] * 0x10,0xff,0xf0d00,0);
        String_Delete(uVar3);
        iVar2 = iVar2 + 1;
        iVar6 = iVar6 + 0x10;
      } while (iVar2 < (int)param_1[4]);
    }
  }
  ScheduleWindowCopyToVram(puVar1);
  return;
}

