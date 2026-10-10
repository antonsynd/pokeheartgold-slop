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
undefined4 ov40_02235DAC();
undefined4 ScheduleWindowCopyToVram();
undefined4 String_Delete();
undefined4 NewString_ReadMsgData();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 ov40_022306C0();
undefined4 AddWindowParameterized();
undefined4 FillWindowPixelBuffer();
extern undefined ov40_02245708;

void ov40_02235FFC(int param_1)

{
  byte bVar1;
  byte bVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  byte *pbVar9;
  uint uVar10;
  uint uVar11;
  uint uStack_20;
  
  uStack_20 = 1;
  pbVar9 = &ov40_02245708;
  uVar11 = 0;
  iVar8 = *(int *)(param_1 + 0x860) + 0xd0;
  do {
    bVar1 = pbVar9[2];
    bVar2 = *pbVar9;
    uVar3 = (uint)(byte)((pbVar9[3] >> 3) - (bVar1 >> 3));
    uVar10 = (uint)(byte)((pbVar9[1] >> 3) - (bVar2 >> 3));
    InitWindow(iVar8);
    AddWindowParameterized
              (*(undefined4 *)(param_1 + 0x24),iVar8,6,bVar1 >> 3,bVar2 >> 3,uVar3,uVar10,0xe,
               uStack_20 & 0xffff);
    FillWindowPixelBuffer(iVar8,0);
    uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x48),uVar11 + 0x44);
    uVar5 = ov40_022306C0(iVar8,uVar4);
    iVar6 = (int)(uVar10 * 8 + -0x10) / 2;
    iVar7 = ov40_02235DAC(param_1,uVar11);
    if (iVar7 == 1) {
      AddTextPrinterParameterizedWithColor(iVar8,0,uVar4,uVar5,iVar6,0xff,0xf0d00,0);
    }
    else {
      AddTextPrinterParameterizedWithColor(iVar8,0,uVar4,uVar5,iVar6,0xff,0xc0b00,0);
    }
    ScheduleWindowCopyToVram(iVar8);
    String_Delete(uVar4);
    uVar11 = uVar11 + 1;
    uStack_20 = uStack_20 + uVar10 * uVar3;
    iVar8 = iVar8 + 0x10;
    pbVar9 = pbVar9 + 4;
  } while (uVar11 < 9);
  return;
}

