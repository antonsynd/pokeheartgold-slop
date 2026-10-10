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
undefined4 ReadMsgDataIntoString();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 FillBgTilemapRect();
undefined4 FontID_String_GetWidth();
undefined4 FillWindowPixelBuffer();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 BufferIntegerAsString();
undefined4 ScheduleWindowCopyToVram();
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 StringExpandPlaceholders();
undefined4 ov108_021EA52C();
undefined4 CopyToBgTilemapRect();

void ov108_021EA040(int param_1)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  ushort *puVar4;
  int iVar5;
  int iVar6;
  int iVar7;

  FillBgTilemapRect(*(undefined4 *)(param_1 + 0x438),6,0,0,5,0x20,0xe,0x11);
  iVar6 = 0;
  iVar7 = param_1 + 0x454;
  do {
    uVar1 = iVar6 + (uint)*(byte *)(param_1 + 0x430) * 6;
    iVar2 = (iVar6 + 6) * 0x10;
    FillWindowPixelBuffer(iVar7 + iVar2,0);
    if ((int)uVar1 < (int)(uint)*(byte *)(param_1 + 0x42d)) {
      iVar3 = ov108_021EA52C(param_1,uVar1 & 0xff);
      puVar4 = *(ushort **)(param_1 + 0x51c);
      iVar5 = iVar6 >> 0x1f;
      CopyToBgTilemapRect(*(undefined4 *)(param_1 + 0x438),6,
                          (((uint)(iVar6 * -0x80000000 + iVar5) >> 0x1f | iVar5 << 1) - iVar5 & 0xf)
                          << 4,(uint)((iVar6 / 2 + 1) * 0x5000000) >> 0x18,0x10,4,puVar4 + 6,
                          (uint)(0 < iVar3) << 4,0,(*puVar4 & 0x7ff) >> 3,(puVar4[1] & 0x7ff) >> 3);
      ReadMsgDataIntoString
                (*(undefined4 *)(param_1 + 0x30c),
                 *(byte *)(*(int *)(param_1 + 0x334) + uVar1 * 5) + 0xe,
                 *(undefined4 *)(param_1 + 0x318));
      iVar5 = FontID_String_GetWidth(4,*(undefined4 *)(param_1 + 0x318),0);
      AddTextPrinterParameterizedWithColor
                (iVar7 + iVar2,4,*(undefined4 *)(param_1 + 0x318),(0x70 - iVar5) / 2,0,0xff,0x10200,
                 0);
      ScheduleWindowCopyToVram(iVar7 + iVar2);
    }
    else {
      ScheduleWindowCopyToVram(iVar7 + iVar2);
    }
    iVar6 = iVar6 + 1;
  } while (iVar6 < 6);
  FillWindowPixelBuffer(param_1 + 0x484,0);
  BufferIntegerAsString(*(undefined4 *)(param_1 + 0x310),0,*(byte *)(param_1 + 0x430) + 1,1,1,1);
  BufferIntegerAsString(*(undefined4 *)(param_1 + 0x310),1,*(undefined1 *)(param_1 + 0x42e),1,1,1);
  StringExpandPlaceholders
            (*(undefined4 *)(param_1 + 0x310),*(undefined4 *)(param_1 + 0x314),
             *(undefined4 *)(param_1 + 0x32c));
  AddTextPrinterParameterizedWithColor
            (param_1 + 0x484,0,*(undefined4 *)(param_1 + 0x314),0,0,0xff,0x30400,0);
  ScheduleWindowCopyToVram(param_1 + 0x484);
  ScheduleBgTilemapBufferTransfer(*(undefined4 *)(param_1 + 0x438),5);
  ScheduleBgTilemapBufferTransfer(*(undefined4 *)(param_1 + 0x438),6);
  if (*(char *)(param_1 + 0x430) == '\0') {
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x44c),7);
  }
  else {
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x44c),5);
  }
  if ((uint)*(byte *)(param_1 + 0x430) == *(byte *)(param_1 + 0x42e) - 1) {
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x450),10);
    return;
  }
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x450),8);
  return;
}

