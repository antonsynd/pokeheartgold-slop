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
undefined4 String_Delete(undefined4);
undefined4 FillWindowPixelBuffer(undefined4, undefined4);
undefined4 ScheduleWindowCopyToVram(undefined4);
undefined4 BufferItemName(undefined4, undefined4, undefined4);
undefined4 FontID_String_GetWidth(undefined4, undefined4, undefined4);
undefined4 NewString_ReadMsgData(undefined4, undefined4);
undefined4 AddTextPrinterParameterizedWithColor(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 GetWindowWidth(undefined4);
undefined4 StringExpandPlaceholders(undefined4, undefined4, undefined4);
extern undefined ov08_02225BE0;

void ov08_022235D4(int param_1,int param_2,int param_3,int param_4,undefined4 param_5,
                  undefined4 param_6)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar4 = *(int *)(param_1 + 0x2c);
  param_4 = param_4 * 0x10;
  FillWindowPixelBuffer(iVar4 + param_4,0);
  if (*(short *)(param_1 + (uint)*(byte *)(param_1 + 0x114d) * 0x90 + param_2 * 4 + 0x3c) != 0) {
    uVar1 = NewString_ReadMsgData
                      (*(undefined4 *)(param_1 + 0x10),*(undefined4 *)(&ov08_02225BE0 + param_3 * 8)
                      );
    BufferItemName(*(undefined4 *)(param_1 + 0x14),0,
                   *(undefined2 *)
                    (param_1 + (uint)*(byte *)(param_1 + 0x114d) * 0x90 + param_2 * 4 + 0x3c));
    StringExpandPlaceholders(*(undefined4 *)(param_1 + 0x14),*(undefined4 *)(param_1 + 0x18),uVar1);
    iVar2 = FontID_String_GetWidth(param_5,*(undefined4 *)(param_1 + 0x18),0);
    iVar3 = GetWindowWidth(iVar4 + param_4);
    AddTextPrinterParameterizedWithColor
              (iVar4 + param_4,param_5,*(undefined4 *)(param_1 + 0x18),
               (uint)(iVar3 * 8 - iVar2) >> 1,7,0xff,param_6,0);
    String_Delete(uVar1);
  }
  ScheduleWindowCopyToVram(iVar4 + param_4);
  return;
}

