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
undefined4 ConvertRSStringToDPStringInternational();
undefined4 ov74_02232F5C();
undefined4 ov74_02231A1C();
undefined4 CopyU16ArrayToString();
undefined4 MessageFormat_New();
undefined4 MessageFormat_Delete();
undefined4 String_Delete();
undefined4 ov74_02232B18();
undefined4 String_New();
undefined4 BufferString();
undefined4 ov74_02233F84();
undefined4 PmAgbCartridge_GetLanguage();
extern undefined ov74_0223C980;

void ov74_02232F9C(int *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 auStack_20 [16];
  
  uVar1 = ov74_02233F84();
  uVar2 = PmAgbCartridge_GetLanguage();
  ConvertRSStringToDPStringInternational(uVar1,auStack_20,8,uVar2);
  iVar3 = MessageFormat_New(0x4c);
  uVar1 = String_New(8,0x4c);
  CopyU16ArrayToString(uVar1,auStack_20);
  BufferString(iVar3,1,uVar1,0,1,2);
  ov74_02232B18(param_1);
  param_1[0x118] = *(int *)(&ov74_0223C980 + *param_1 * 4);
  param_1[0x11b] = iVar3;
  ov74_02231A1C(param_1,param_1 + 0x10b,0x18);
  String_Delete(uVar1);
  MessageFormat_Delete(iVar3);
  ov74_02232F5C(param_1);
  return;
}

