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
undefined4 BufferString(void *, unsigned int, void *, int, int, int);
undefined4 ov40_02230DCC();
undefined4 StringExpandPlaceholders(void *, void *, void *);
unsigned char AddTextPrinterParameterizedWithColor(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, unsigned int, void *);
undefined4 String_Delete(void *);
undefined4 MessageFormat_Delete(void *);
void * NewString_ReadMsgData(void *, int);
void * sub_020315B8(void *, int);
undefined4 ScheduleWindowCopyToVram(void *);
undefined4 ov40_0222DAB0();
undefined4 FillWindowPixelBuffer(void *, unsigned char);
void * String_New(unsigned int, int);

void ov40_022442F0(int param_1,int param_2,int param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;

  if (param_2 == 0x11a) {
    puVar4 = *(undefined **)(param_1 + param_3 * 4 + 0x88c);
    puVar1 = (undefined *)ov40_0222DAB0(0x6d);
    puVar2 = String_New(0xff,0x6d);
    puVar4 = sub_020315B8(puVar4,0x6d);
    ov40_02230DCC(param_1,puVar4);
    puVar3 = NewString_ReadMsgData(*(undefined **)(param_1 + 0x48),0x11a);
    BufferString(puVar1,0,puVar4,0,1,2);
    StringExpandPlaceholders(puVar1,puVar2,puVar3);
    String_Delete(puVar4);
    String_Delete(puVar3);
    MessageFormat_Delete(puVar1);
  }
  else {
    puVar2 = NewString_ReadMsgData(*(undefined **)(param_1 + 0x48),param_2);
  }
  FillWindowPixelBuffer((undefined *)(param_1 + 0x8a4),0xcc);
  AddTextPrinterParameterizedWithColor
            ((undefined *)(param_1 + 0x8a4),0,puVar2,0,0,0xff,0xf0d0c,(undefined *)0x0);
  ScheduleWindowCopyToVram((undefined *)(param_1 + 0x8a4));
  String_Delete(puVar2);
  return;
}

