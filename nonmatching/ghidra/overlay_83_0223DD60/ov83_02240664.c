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
undefined4 ov83_02240EC4();
undefined4 ov83_02241DD8();
undefined4 ScheduleWindowCopyToVram();
undefined4 ov83_02240C48();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 FillWindowPixelBuffer();
undefined4 GetWindowWidth();

void ov83_02240664(int param_1)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  uint uVar8;

  uVar8 = 0;
  uVar1 = (uint)(*(short *)(param_1 + 0x862) * 0x60000) >> 0x10;
  iVar2 = uVar1 * 8;
  iVar7 = param_1 + 0x50;
  do {
    iVar3 = (uVar8 + 0x30) * 0x10;
    FillWindowPixelBuffer(iVar7 + iVar3,0);
    if (uVar1 + uVar8 < (uint)*(byte *)(param_1 + 0x861)) {
      iVar4 = (uVar8 + 0x30) * 0x10;
      AddTextPrinterParameterizedWithColor
                (iVar7 + iVar4,0,*(undefined4 *)(uVar8 * 8 + iVar2 + *(int *)(param_1 + 0x4dc)),4,4,
                 0xff,0x10200,0);
      uVar5 = ov83_02240EC4(param_1,*(uint *)(uVar8 * 8 + iVar2 + *(int *)(param_1 + 0x4dc) + 4) &
                                    0xffff,*(undefined1 *)(param_1 + 0x13));
      ov83_02240C48(param_1,0,uVar5,2,0);
      iVar6 = GetWindowWidth(iVar7 + iVar4);
      ov83_02241DD8(param_1,iVar7 + iVar4,*(undefined4 *)(param_1 + 0x20),0x68,iVar6 * 8 + -4,0x14,0
                    ,0x10200,1);
    }
    ScheduleWindowCopyToVram(iVar7 + iVar3);
    uVar8 = uVar8 + 1 & 0xffff;
  } while (uVar8 < 6);
  return;
}

