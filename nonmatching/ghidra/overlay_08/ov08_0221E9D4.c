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
undefined4 FontID_String_GetWidth(unsigned int, void *, unsigned int);
undefined4 StringExpandPlaceholders(void *, void *, void *);
undefined4 String_Delete(void *);
unsigned char GetWindowWidth(void *);
void * NewString_ReadMsgData(void *, int);
undefined4 BufferIntegerAsString(void *, unsigned int, int, unsigned int, int, int);
undefined4 ScheduleWindowCopyToVram(void *);
unsigned char AddTextPrinterParameterizedWithColor(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, unsigned int, void *);
void * String_New(unsigned int, int);

void ov08_0221E9D4(int *param_1,int param_2)

{
  byte bVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  int iVar5;
  
  bVar1 = *(byte *)((int)param_1 + 0x2075);
  puVar2 = NewString_ReadMsgData((undefined *)param_1[0x7ea],0x26);
  AddTextPrinterParameterizedWithColor
            ((undefined *)(param_1[0x81c] + 0x120),0,puVar2,0,0,0xff,0xf0e00,(undefined *)0x0);
  String_Delete(puVar2);
  puVar2 = NewString_ReadMsgData((undefined *)param_1[0x7ea],0x27);
  puVar3 = String_New(8,*(int *)(*param_1 + 0xc));
  BufferIntegerAsString
            ((undefined *)param_1[0x7eb],0,(uint)*(ushort *)((int)param_1 + param_2 * 0x50 + 0x12),3
             ,0,1);
  StringExpandPlaceholders((undefined *)param_1[0x7eb],puVar3,puVar2);
  uVar4 = FontID_String_GetWidth(0,puVar3,0);
  iVar5 = (((uint)bVar1 * 0x160000 >> 0x10) + 9) * 0x10;
  bVar1 = GetWindowWidth((undefined *)(param_1[0x81c] + iVar5));
  AddTextPrinterParameterizedWithColor
            ((undefined *)(param_1[0x81c] + iVar5),0,puVar3,(uint)bVar1 * 8 - (uVar4 & 0xff) & 0xff,
             0,0xff,0x10200,(undefined *)0x0);
  String_Delete(puVar2);
  String_Delete(puVar3);
  ScheduleWindowCopyToVram((undefined *)(param_1[0x81c] + 0x120));
  ScheduleWindowCopyToVram((undefined *)(param_1[0x81c] + iVar5));
  return;
}

