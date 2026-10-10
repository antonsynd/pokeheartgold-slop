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
undefined4 func_0x02026860() __asm__("sub_02026860");
undefined4 String_Delete();
undefined4 func_0x02026820() __asm__("sub_02026820");
undefined4 ov40_0222DAB0();
undefined4 BufferECWord();
undefined4 String_New();
undefined4 BufferString();
undefined4 sub_0202BE60();
undefined4 FillWindowPixelBuffer();
undefined4 InitWindow();
undefined4 ScheduleWindowCopyToVram();
undefined4 ov40_02230DCC();
undefined4 NewString_ReadMsgData();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 AddWindowParameterized();
undefined4 FontID_String_GetWidth();
undefined4 WindowIsInUse();
undefined4 StringExpandPlaceholders();
undefined4 sub_0202BE98();
undefined4 MessageFormat_Delete();

void ov40_02235C7C(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  uint uVar7;
  int iVar8;
  uint uVar9;
  int iVar10;
  
  iVar10 = *(int *)(param_1 + 0x860);
  iVar1 = WindowIsInUse(iVar10 + 0x10);
  if (iVar1 != 1) {
    iVar1 = iVar10 + 0x10;
    InitWindow();
    AddWindowParameterized(*(undefined4 *)(param_1 + 0x24),iVar1,2,0x10,0x13,0x10,4,0xe,300);
    FillWindowPixelBuffer(iVar1,0);
    uVar2 = ov40_0222DAB0(0x6d);
    uVar3 = String_New(0xff,0x6d);
    uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x48),0x38);
    uVar5 = String_New(0xff,0x6d);
    sub_0202BE60(*(undefined4 *)(iVar10 + 0x238),uVar5);
    ov40_02230DCC(param_1,uVar5);
    uVar6 = sub_0202BE98(*(undefined4 *)(iVar10 + 0x238));
    BufferString(uVar2,0,uVar5,0,1,2);
    BufferECWord(uVar2,1,uVar6);
    StringExpandPlaceholders(uVar2,uVar3,uVar4);
    uVar7 = func_0x02026820(uVar3);
    uVar9 = 0;
    if (uVar7 != 0) {
      iVar10 = 0;
      do {
        func_0x02026860(uVar5,uVar3,uVar9);
        iVar8 = FontID_String_GetWidth(0,uVar5,0);
        AddTextPrinterParameterizedWithColor(iVar1,0,uVar5,0x80U - iVar8 >> 1,iVar10,0xff,0xf0d00,0)
        ;
        uVar9 = uVar9 + 1;
        iVar10 = iVar10 + 0x10;
      } while (uVar9 < uVar7);
    }
    ScheduleWindowCopyToVram(iVar1);
    String_Delete(uVar5);
    String_Delete(uVar4);
    String_Delete(uVar3);
    MessageFormat_Delete(uVar2);
  }
  return;
}

