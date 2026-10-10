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
unsigned char AddTextPrinterParameterizedWithColor(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, unsigned int, void *);
undefined4 ov40_022306C0();
undefined4 String_Delete(void *);
undefined4 ov40_022371D4();
undefined4 CopyU16ArrayToString(void *, void *);
undefined4 ScheduleWindowCopyToVram(void *);
undefined4 GetSpeciesNameIntoArray(unsigned short, int, void *);
undefined4 FillWindowPixelBuffer(void *, unsigned char);
void * String_New(unsigned int, int);

void ov40_022371E4(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  ushort uVar5;
  undefined auStack_218 [512];
  undefined4 uStack_18;

  iVar4 = *(int *)(param_1 + 0x860);
  uStack_18 = param_4;
  FillWindowPixelBuffer((undefined *)(iVar4 + 0x1b4),0);
  uVar5 = *(ushort *)(iVar4 + param_2 * 2 + 0x2c);
  if (uVar5 == 0) {
    ScheduleWindowCopyToVram((undefined *)(iVar4 + 0x1b4));
    return;
  }
  puVar1 = String_New(0xff,0x6d);
  iVar2 = ov40_022371D4(*(undefined4 *)(iVar4 + 0x158),1 << (*(uint *)(iVar4 + 0x1b0) & 0xff));
  if (iVar2 == 1) {
    uVar5 = 0x1ee;
  }
  GetSpeciesNameIntoArray(uVar5,0x6d,auStack_218);
  CopyU16ArrayToString(puVar1,auStack_218);
  uVar3 = ov40_022306C0(iVar4 + 0x1b4,puVar1);
  AddTextPrinterParameterizedWithColor
            ((undefined *)(iVar4 + 0x1b4),0,puVar1,uVar3,6,0xff,0xf0d00,(undefined *)0x0);
  ScheduleWindowCopyToVram((undefined *)(iVar4 + 0x1b4));
  String_Delete(puVar1);
  return;
}

