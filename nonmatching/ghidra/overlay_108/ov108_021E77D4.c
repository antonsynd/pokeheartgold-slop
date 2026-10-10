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
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 FontID_String_GetWidth();
undefined4 FillWindowPixelBuffer();
undefined4 BufferIntegerAsString();
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 StringExpandPlaceholders();
undefined4 GetWindowWidth();
undefined4 Sprite_SetAnimCtrlSeq();

void ov108_021E77D4(int param_1)

{
  int iVar1;
  int iVar2;

  FillWindowPixelBuffer(param_1 + 0x3e4,2);
  BufferIntegerAsString(*(undefined4 *)(param_1 + 0x308),0,*(byte *)(param_1 + 0x184de) + 1,1,1,1);
  StringExpandPlaceholders
            (*(undefined4 *)(param_1 + 0x308),*(undefined4 *)(param_1 + 0x30c),
             *(undefined4 *)(param_1 + 0x334));
  iVar1 = GetWindowWidth(param_1 + 0x3e4);
  iVar2 = FontID_String_GetWidth(0,*(undefined4 *)(param_1 + 0x30c),0);
  AddTextPrinterParameterizedWithColor
            (param_1 + 0x3e4,0,*(undefined4 *)(param_1 + 0x30c),(uint)(iVar1 * 8 - iVar2) >> 1,0,0,
             0x30102,0);
  ScheduleBgTilemapBufferTransfer(*(undefined4 *)(param_1 + 0x340),3);
  Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0x364),0);
  if (*(char *)(param_1 + 0x184de) == '\0') {
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x364),6);
  }
  else {
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x364),4);
  }
  Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0x368),0);
  if (*(char *)(param_1 + 0x184de) == '\x01') {
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x368),7);
    return;
  }
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x368),5);
  return;
}

