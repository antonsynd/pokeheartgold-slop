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
undefined4 func_0x020139d0() __asm__("sub_020139D0");
undefined4 ov40_02230DCC();
undefined4 String_Delete();
undefined4 NewString_ReadMsgData();
undefined4 MessageFormat_Delete();
undefined4 sub_020315B8();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 func_0x0201d494() __asm__("sub_0201D494");
undefined4 ov40_0222DAB0();
undefined4 String_New();
undefined4 StringExpandPlaceholders();
undefined4 BufferString();
undefined4 RemoveWindow();

void ov40_02240D50(int param_1,int param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined1 auStack_28 [16];
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  if (*(int *)(param_2 + 0x88c + param_3 * 4) == 0) {
    uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_2 + 0x48),8);
  }
  else {
    uVar2 = ov40_0222DAB0(0x6d);
    uVar3 = NewString_ReadMsgData(*(undefined4 *)(param_2 + 0x48),7);
    uVar4 = sub_020315B8(*(undefined4 *)(param_2 + 0x88c + param_3 * 4),0x6d);
    ov40_02230DCC(param_2,uVar4);
    uVar1 = String_New(0xff,0x6d);
    BufferString(uVar2,0,uVar4,0,1,2);
    StringExpandPlaceholders(uVar2,uVar1,uVar3);
    String_Delete(uVar3);
    String_Delete(uVar4);
    MessageFormat_Delete(uVar2);
  }
  InitWindow(auStack_28);
  func_0x0201d494(*(undefined4 *)(param_2 + 0x24),auStack_28,0x14,2,0,0);
  AddTextPrinterParameterizedWithColor(auStack_28,0,uVar1,0,0,0xff,0xe0d00,0);
  func_0x020139d0(*(undefined4 *)(param_1 + 8),*(undefined4 *)(param_1 + 0xc),auStack_28,0x6d);
  String_Delete(uVar1);
  RemoveWindow(auStack_28);
  return;
}

