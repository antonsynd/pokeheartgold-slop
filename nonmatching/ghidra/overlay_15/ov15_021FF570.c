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
unsigned short Bag_GetRegisteredItem1(void *);
undefined4 ov15_021FE9F0(int, int, unsigned short, int, ...);
undefined4 ov15_021FF66C();
unsigned short Bag_GetRegisteredItem2(void *);
undefined4 ov15_021FE914();
unsigned char AddTextPrinterParameterizedWithColor(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, unsigned int, void *);

void ov15_021FF570(int param_1,undefined *param_2,undefined *param_3,int *param_4,int param_5)

{
  ushort uVar1;
  int iVar2;

  if ((char)param_4[2] == '\x03') {
    AddTextPrinterParameterizedWithColor(param_2,0,param_3,0,0,0xff,0x10200,(undefined *)0x0);
    iVar2 = param_5 * 4;
    ov15_021FE914(param_1,param_2,(ushort *)(*param_4 + iVar2),0x10);
    uVar1 = *(ushort *)(*param_4 + iVar2);
    if ((0x147 < uVar1) && (uVar1 < 0x1a4)) {
      ov15_021FF66C(*(undefined **)(param_1 + 0x2f4),*(undefined **)(param_1 + 0x2f0),param_2,
                    (uint)*(ushort *)(*param_4 + iVar2 + 2));
      return;
    }
  }
  else if ((char)param_4[2] == '\a') {
    AddTextPrinterParameterizedWithColor(param_2,0,param_3,0,0,0xff,0x10200,(undefined *)0x0);
    uVar1 = Bag_GetRegisteredItem1(*(undefined **)(param_1 + 0x238));
    if (*(ushort *)(*param_4 + param_5 * 4) == uVar1) {
      ov15_021FE9F0(param_1,param_2,0x10,0);
    }
    uVar1 = Bag_GetRegisteredItem2(*(undefined **)(param_1 + 0x238));
    if (*(ushort *)(*param_4 + param_5 * 4) == uVar1) {
      ov15_021FE9F0(param_1,param_2,0x10,1);
      return;
    }
  }
  else {
    AddTextPrinterParameterizedWithColor(param_2,0,param_3,0,0,0xff,0x10200,(undefined *)0x0);
    ov15_021FF66C(*(undefined **)(param_1 + 0x2f4),*(undefined **)(param_1 + 0x2f0),param_2,
                  (uint)*(ushort *)(*param_4 + param_5 * 4 + 2));
  }
  return;
}

