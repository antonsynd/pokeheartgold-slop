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
undefined4 sub_02037AC0();
undefined4 ov65_0221FB90();
undefined4 NewMsgDataFromNarc();
undefined4 MessageFormat_New();
undefined4 sub_0202C6F4();
undefined4 sub_0203A1C4();

undefined4 ov65_0221E858(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = sub_0203A1C4(*(undefined4 *)(param_1 + 4),param_1 + 0x35f8,0x1a);
  if (iVar1 == 0) {
    sub_02037AC0(0x13);
    ov65_0221FB90(param_1 + 0x5b4,0x1c,1,*(undefined4 *)(param_1 + 400),
                  *(undefined4 *)(param_1 + 0x184),param_4);
    *(undefined4 *)(param_1 + 0x2220) = 0x221e72d;
    return 0;
  }
  uVar2 = MessageFormat_New(0x1a);
  *(undefined4 *)(param_1 + 0x3680) = uVar2;
  uVar2 = NewMsgDataFromNarc(0,0x1b,0x30b,0x1a);
  *(undefined4 *)(param_1 + 0x3684) = uVar2;
  uVar2 = sub_0202C6F4(*(undefined4 *)(param_1 + 4));
  *(undefined4 *)(param_1 + 0x36a0) = uVar2;
  *(undefined4 *)(param_1 + 0x2220) = 0x221e741;
  return 0;
}

