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
void * String_New(unsigned int, int);
void * Party_GetMonByIndex(void *, int);
void * Mon_GetBoxMon(void *);
void * NewString_ReadMsgData(void *, int);
undefined4 String_Delete(void *);
undefined4 BufferBoxMonSpeciesName(void *, unsigned int, void *);
unsigned char AddTextPrinterParameterizedWithColor(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, unsigned int, void *);
undefined4 StringExpandPlaceholders(void *, void *, void *);
unsigned char GetMonGender(void *);
undefined4 ScheduleWindowCopyToVram(void *);
undefined4 GetMonData(void *, int, void *);
unsigned char GetWindowWidth(void *);

void ov81_022409B0(int param_1,undefined *param_2,int param_3,uint param_4,uint param_5,byte param_6
                  ,byte param_7,byte param_8,byte param_9,undefined *param_10)

{
  byte bVar1;
  byte bVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  uint uVar7;
  
  FillWindowPixelBuffer(param_2,param_8);
  puVar3 = Party_GetMonByIndex(param_10,param_3);
  puVar4 = String_New(0xb,100);
  puVar5 = NewString_ReadMsgData(*(undefined **)(param_1 + 0x1c),0x1c);
  puVar6 = Mon_GetBoxMon(puVar3);
  BufferBoxMonSpeciesName(*(undefined **)(param_1 + 0x20),0,puVar6);
  StringExpandPlaceholders(*(undefined **)(param_1 + 0x20),puVar4,puVar5);
  AddTextPrinterParameterizedWithColor
            (param_2,param_9,puVar4,param_4,param_5,0xff,
             (uint)param_6 << 0x10 | (uint)param_7 << 8 | (uint)param_8,(undefined *)0x0);
  String_Delete(puVar5);
  String_Delete(puVar4);
  uVar7 = GetMonData(puVar3,0xb0,(undefined *)0x0);
  if (uVar7 == 1) {
    bVar1 = GetMonGender(puVar3);
    bVar2 = GetWindowWidth(param_2);
    uVar7 = (bVar2 - 1) * 8 - 4 & 0xffff;
    if (bVar1 == 0) {
      puVar3 = NewString_ReadMsgData(*(undefined **)(param_1 + 0x1c),0x1a);
      AddTextPrinterParameterizedWithColor
                (param_2,param_9,puVar3,uVar7,param_5,0xff,0x70800,(undefined *)0x0);
      String_Delete(puVar3);
    }
    else if (bVar1 == 1) {
      puVar3 = NewString_ReadMsgData(*(undefined **)(param_1 + 0x1c),0x1b);
      AddTextPrinterParameterizedWithColor
                (param_2,param_9,puVar3,uVar7,param_5,0xff,0x30400,(undefined *)0x0);
      String_Delete(puVar3);
    }
  }
  ScheduleWindowCopyToVram(param_2);
  return;
}

