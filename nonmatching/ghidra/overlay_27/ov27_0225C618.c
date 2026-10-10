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
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 func_0x021eef60() __asm__("sub_021EEF60");
undefined4 ScheduleWindowCopyToVram();
undefined4 NARC_New();
undefined4 func_0x021eef58() __asm__("sub_021EEF58");
undefined4 FillWindowPixelBuffer();
undefined4 AddWindow();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 NARC_Delete();

void ov27_0225C618(int param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iStack_1c;
  
  puVar1 = (undefined4 *)func_0x021eef58(*(undefined4 *)(param_1 + 0xc));
  iVar2 = func_0x021eef60(*(undefined4 *)(param_1 + 0xc));
  uVar3 = NARC_New(0xef,8);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar3,1,*(undefined4 *)(param_1 + 0x18),4,0,0,0,8);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar3,iVar2,*(undefined4 *)(param_1 + 0x18),4,0,0,0,8);
  NARC_Delete(uVar3);
  iStack_1c = 0;
  if (0 < iVar2) {
    iVar4 = 0;
    iVar5 = param_1 + 0x54;
    do {
      AddWindow(*(undefined4 *)(param_1 + 0x18),iVar5,*(int *)((iVar2 + -2) * 4 + 0x225d4b8) + iVar4
               );
      iVar4 = iVar4 + 8;
      iStack_1c = iStack_1c + 1;
      iVar5 = iVar5 + 0x10;
    } while (iStack_1c < iVar2);
  }
  iVar4 = 0;
  if (0 < iVar2) {
    iVar5 = param_1 + 0x54;
    do {
      FillWindowPixelBuffer(iVar5,0);
      AddTextPrinterParameterizedWithColor(iVar5,4,*puVar1,0,0,0xff,0x20100,0);
      ScheduleWindowCopyToVram(iVar5);
      iVar4 = iVar4 + 1;
      iVar5 = iVar5 + 0x10;
      puVar1 = puVar1 + 2;
    } while (iVar4 < iVar2);
  }
  *(int *)(param_1 + 0x214) = iVar2;
  return;
}

