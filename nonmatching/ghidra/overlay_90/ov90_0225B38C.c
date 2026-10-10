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
undefined4 func_0x021e69a8() __asm__("sub_021E69A8");
undefined4 ov90_02259464();
undefined4 sub_02037030();
undefined4 YesNoPrompt_Reset();
undefined4 sub_0203A948();
undefined4 ov90_02259554();
undefined4 ov90_02259538();
undefined4 ov90_0225927C();
undefined4 YesNoPrompt_InitFromTemplate();
undefined4 IsPaletteFadeFinished();
undefined4 sub_0203A914();
undefined4 func_0x021e6a4c() __asm__("sub_021E6A4C");
undefined4 YesNoPrompt_HandleInput();
undefined4 BeginNormalPaletteFade();

undefined4
ov90_0225B38C(char *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
             undefined4 param_5)

{
  int iVar1;
  
  switch(*param_1) {
  case '\0':
    BeginNormalPaletteFade(0,0,1,0,6,1,param_5,param_4);
    sub_0203A948(0,param_5);
    if (param_1[1] != '\0') {
      func_0x021e69a8(param_5);
    }
    *param_1 = *param_1 + '\x01';
    break;
  case '\x01':
    iVar1 = IsPaletteFadeFinished();
    if (iVar1 != 0) {
      *param_1 = *param_1 + '\x01';
    }
    break;
  case '\x02':
    ov90_0225927C(param_3,param_4);
    ov90_02259464(param_2,param_3,3,1);
    *param_1 = *param_1 + '\x01';
    break;
  case '\x03':
    iVar1 = ov90_02259538(param_2,1);
    if (iVar1 == 1) {
      *param_1 = *param_1 + '\x01';
    }
    break;
  case '\x04':
    YesNoPrompt_InitFromTemplate(*(undefined4 *)(param_1 + 4),param_1 + 8);
    *param_1 = *param_1 + '\x01';
    break;
  case '\x05':
    iVar1 = YesNoPrompt_HandleInput(*(undefined4 *)(param_1 + 4));
    if (iVar1 - 1U < 2) {
      if (iVar1 == 1) {
        sub_02037030(0x16,0,0);
      }
      else if (iVar1 == 2) {
        sub_02037030(0x17,0,0);
      }
      ov90_02259464(param_2,param_3,0xf,1);
      ov90_02259554(param_2,1);
      YesNoPrompt_Reset(*(undefined4 *)(param_1 + 4));
      *param_1 = *param_1 + '\x01';
    }
    break;
  case '\x06':
    if (param_1[0x1e] != '\0') {
      if (param_1[0x1f] == '\0') {
        *param_1 = *param_1 + '\x01';
      }
      else {
        *param_1 = '\n';
      }
    }
    break;
  case '\a':
    ov90_02259464(param_2,param_3,6,1);
    *param_1 = *param_1 + '\x01';
    break;
  case '\b':
    iVar1 = ov90_02259538(param_2,1);
    if (iVar1 == 1) {
      *param_1 = *param_1 + '\x01';
      param_1[2] = 'f';
      param_1[3] = '\0';
    }
    break;
  case '\t':
    *(short *)(param_1 + 2) = *(short *)(param_1 + 2) + -1;
    if (*(short *)(param_1 + 2) == 0) {
      *param_1 = *param_1 + '\x01';
    }
    break;
  case '\n':
    BeginNormalPaletteFade(4,0,0,0,6,1,param_5,param_4);
    *param_1 = *param_1 + '\x01';
    break;
  case '\v':
    iVar1 = IsPaletteFadeFinished();
    if (iVar1 != 0) {
      sub_0203A914();
      if (param_1[1] != '\0') {
        func_0x021e6a4c();
      }
      *param_1 = *param_1 + '\x01';
    }
    break;
  case '\f':
    return 1;
  }
  return 0;
}

