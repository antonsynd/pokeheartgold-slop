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
undefined4 Options_GetTextFrameDelay();
undefined4 FillWindowPixelBuffer();
undefined4 FontID_String_GetWidth();
undefined4 BufferPlayersName();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 InitWindow();
undefined4 StringExpandPlaceholders();
undefined4 Save_PlayerData_GetOptionsAddr();
undefined4 ReadMsgDataIntoString();
undefined4 GfGfxLoader_GetScrnDataFromOpenNarc();
undefined4 Save_PlayerData_GetProfile();
undefined4 String_New();
undefined4 AddWindowParameterized();

void ov43_0222B0A0(int param_1,int param_2,undefined4 *param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iVar6;

  InitWindow(param_1 + 8);
  AddWindowParameterized(*param_3,param_1 + 8,3,4,4,0x18,0x14,0xb,1);
  InitWindow(param_1 + 0x20);
  AddWindowParameterized(*param_3,param_1 + 0x20,1,2,0x13,0x1b,4,0xb,0xac);
  FillWindowPixelBuffer(param_1 + 8,0);
  FillWindowPixelBuffer(param_1 + 0x20,0);
  uVar1 = String_New(0x80,param_4);
  *(undefined4 *)(param_1 + 0x3c) = uVar1;
  Save_PlayerData_GetOptionsAddr(*(undefined4 *)(param_2 + 4));
  uVar1 = Options_GetTextFrameDelay();
  *(undefined4 *)(param_1 + 0x38) = uVar1;
  uVar1 = String_New(0x80,param_4);
  uVar2 = String_New(0x80,param_4);
  uVar3 = Save_PlayerData_GetProfile(*(undefined4 *)(param_2 + 4));
  BufferPlayersName(param_3[0x14],0,uVar3);
  iVar6 = 0;
  iVar5 = 8;
  do {
    ReadMsgDataIntoString(param_3[0x15],iVar6 + 1,uVar2);
    StringExpandPlaceholders(param_3[0x14],uVar1,uVar2);
    iVar4 = FontID_String_GetWidth(4,uVar1,0);
    AddTextPrinterParameterizedWithColor
              (param_1 + 8,4,uVar1,0xc0U - iVar4 >> 1,iVar5,0xff,0x10f00,0);
    iVar6 = iVar6 + 1;
    iVar5 = iVar5 + 0x28;
  } while (iVar6 < 4);
  String_Delete(uVar1);
  String_Delete(uVar2);
  uVar1 = GfGfxLoader_GetScrnDataFromOpenNarc(param_3[0x16],0xb,1,param_1 + 0x1c,param_4);
  *(undefined4 *)(param_1 + 0x18) = uVar1;
  return;
}

