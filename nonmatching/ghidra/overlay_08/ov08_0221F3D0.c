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
void * NewString_ReadMsgData(void *, int);
undefined4 BufferIntegerAsString(void *, unsigned int, int, unsigned int, int, int);
undefined4 ScheduleWindowCopyToVram(void *);
unsigned char AddTextPrinterParameterizedWithColor(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, unsigned int, void *);
undefined4 FillWindowPixelRect(void *, unsigned char, unsigned short, unsigned short, unsigned short, unsigned short);
void * String_New(unsigned int, int);

void ov08_0221F3D0(int *param_1,int param_2,int param_3)

{
  ushort uVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  int iVar5;
  
  iVar5 = param_1[0x81c];
  param_3 = param_3 * 0x10;
  puVar2 = String_New(6,*(int *)(*param_1 + 0xc));
  puVar3 = NewString_ReadMsgData((undefined *)param_1[0x7ea],0x2b);
  uVar4 = FontID_String_GetWidth(0,puVar3,0);
  String_Delete(puVar3);
  uVar1 = (short)uVar4 + 0x28;
  FillWindowPixelRect((undefined *)(iVar5 + param_3),0,uVar1,0x18,0x50 - uVar1,0x10);
  puVar3 = NewString_ReadMsgData((undefined *)param_1[0x7ea],0x2c);
  BufferIntegerAsString((undefined *)param_1[0x7eb],0,(uint)*(byte *)(param_2 + 2),2,0,1);
  StringExpandPlaceholders((undefined *)param_1[0x7eb],puVar2,puVar3);
  uVar4 = FontID_String_GetWidth(0,puVar2,0);
  AddTextPrinterParameterizedWithColor
            ((undefined *)(iVar5 + param_3),0,puVar2,0x50 - uVar4,0x18,0xff,0xf0e00,(undefined *)0x0
            );
  String_Delete(puVar3);
  String_Delete(puVar2);
  ScheduleWindowCopyToVram((undefined *)(iVar5 + param_3));
  return;
}

