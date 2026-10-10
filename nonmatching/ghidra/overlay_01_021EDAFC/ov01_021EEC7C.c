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
typedef void code(void);
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
undefined4 FontID_String_GetWidth(undefined4, undefined4, undefined4);
undefined4 MessageFormat_New(undefined4);
undefined4 NewMsgDataFromNarc(undefined4, undefined4, undefined4, undefined4);
undefined4 StringExpandPlaceholders(undefined4, undefined4, undefined4);
undefined4 Save_PlayerData_GetCoinsAddr(undefined4);
undefined4 func_0x02031968(undefined4) __asm__("sub_02031968");
undefined4 NewString_ReadMsgData(undefined4, undefined4);
undefined4 Coins_GetValue(void);
undefined4 AddTextPrinterParameterized(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x02031a6c(void) __asm__("sub_02031A6C");
undefined4 String_Delete(undefined4);
undefined4 String_New(undefined4, undefined4);
undefined4 FillWindowPixelBuffer(undefined4, undefined4);
undefined4 func_0x0202d3f8(undefined4, undefined4, undefined4) __asm__("sub_0202D3F8");
undefined4 func_0x0202d918(undefined4) __asm__("sub_0202D918");
undefined4 MessageFormat_Delete(undefined4);
undefined4 BufferIntegerAsString(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 DestroyMsgData(undefined4);
undefined4 ScheduleWindowCopyToVram(undefined4);

void ov01_021EEC7C(int param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  
  FillWindowPixelBuffer(param_2,0xf);
  uVar1 = NewMsgDataFromNarc(0,0x1b,0xbf,4);
  uVar2 = MessageFormat_New(4);
  uVar3 = String_New(0x10,4);
  if (param_3 == 0) {
    uVar4 = NewString_ReadMsgData(uVar1,0xc1);
    Save_PlayerData_GetCoinsAddr(*(undefined4 *)(param_1 + 0xc));
    uVar5 = Coins_GetValue();
  }
  else if (param_3 == 1) {
    uVar4 = NewString_ReadMsgData(uVar1,0xdc);
    uVar5 = func_0x0202d918(*(undefined4 *)(param_1 + 0xc));
    uVar5 = func_0x0202d3f8(uVar5,0,0);
  }
  else {
    uVar4 = NewString_ReadMsgData(uVar1,0xdf);
    func_0x02031968(*(undefined4 *)(param_1 + 0xc));
    uVar5 = func_0x02031a6c();
  }
  BufferIntegerAsString(uVar2,0,uVar5,5,1,1);
  StringExpandPlaceholders(uVar2,uVar3,uVar4);
  iVar6 = FontID_String_GetWidth(0,uVar3,0);
  AddTextPrinterParameterized(param_2,0,uVar3,0x50 - iVar6,0,0xff,0);
  String_Delete(uVar4);
  String_Delete(uVar3);
  MessageFormat_Delete(uVar2);
  DestroyMsgData(uVar1);
  ScheduleWindowCopyToVram(param_2);
  return;
}

