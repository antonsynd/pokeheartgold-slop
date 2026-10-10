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
undefined4 FillWindowPixelBuffer(void *, unsigned char);
unsigned char AddTextPrinterParameterizedWithColor(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, unsigned int, void *);
undefined4 ScheduleWindowCopyToVram(void *);
undefined4 CopyToBgTilemapRect(void *, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, void *, unsigned char, unsigned char, unsigned char, unsigned char);

void ov34_0225DC18(int param_1,int param_2,undefined4 *param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = param_2 * 0x38;
  *(undefined4 *)(param_1 + 0x1f8 + iVar2) = param_3[4];
  CopyToBgTilemapRect(*(undefined **)(param_1 + 0x14),7,0,(char)param_2 * '\a' + 2,0x20,7,
                      (undefined *)(*(int *)(param_1 + 0x24) + 0xc),0,
                      (byte)((uint)(*(int *)(param_1 + 0x1f8 + iVar2) * 0x18000000) >> 0x18),0x20,
                      0x30);
  iVar3 = param_1 + 0x1c8;
  FillWindowPixelBuffer((undefined *)(iVar3 + iVar2),0);
  iVar1 = param_1 + 0x1d8;
  FillWindowPixelBuffer((undefined *)(iVar1 + iVar2),0);
  param_1 = param_1 + 0x1e8;
  FillWindowPixelBuffer((undefined *)(param_1 + iVar2),0);
  AddTextPrinterParameterizedWithColor
            ((undefined *)(iVar3 + iVar2),1,(undefined *)*param_3,0,1,0xff,0xf0200,(undefined *)0x0)
  ;
  AddTextPrinterParameterizedWithColor
            ((undefined *)(iVar1 + iVar2),1,(undefined *)param_3[1],0,0,0xff,0x10200,
             (undefined *)0x0);
  ScheduleWindowCopyToVram((undefined *)(iVar3 + iVar2));
  ScheduleWindowCopyToVram((undefined *)(iVar1 + iVar2));
  if ((undefined *)param_3[2] != (undefined *)0x0) {
    AddTextPrinterParameterizedWithColor
              ((undefined *)(param_1 + iVar2),1,(undefined *)param_3[2],0,1,0xff,0xf0200,
               (undefined *)0x0);
  }
  ScheduleWindowCopyToVram((undefined *)(param_1 + iVar2));
  return;
}

