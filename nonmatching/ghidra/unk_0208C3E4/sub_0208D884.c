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
undefined4 ReadMsgDataIntoString(void *, int, void *);
unsigned char GetMoveMaxPP(unsigned short, unsigned char);
undefined4 FontID_String_GetWidth(unsigned int, void *, unsigned int);
undefined4 sub_0208C8C8();
unsigned char AddTextPrinterParameterizedWithColor(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, unsigned int, void *);

uint sub_0208D884(int param_1,int param_2)

{
  ushort uVar1;
  byte bVar2;
  byte bVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  undefined4 uStack_18;

  iVar6 = (param_2 + 8) * 0x10;
  iVar5 = *(int *)(param_1 + 0x224);
  if (param_2 == 4) {
    uVar1 = *(ushort *)(*(int *)(param_1 + 0x22c) + 0x18);
    bVar3 = GetMoveMaxPP(uVar1,0);
    bVar2 = bVar3;
  }
  else {
    uVar1 = *(ushort *)(param_1 + param_2 * 2 + 0x264);
    bVar3 = *(byte *)(param_1 + param_2 + 0x26c);
    bVar2 = *(byte *)(param_1 + param_2 + 0x270);
  }
  uStack_18 = (uint)uVar1;
  ReadMsgDataIntoString(*(undefined **)(param_1 + 0x7b4),uStack_18,*(undefined **)(param_1 + 0x7ac))
  ;
  AddTextPrinterParameterizedWithColor
            ((undefined *)(iVar5 + iVar6),0,*(undefined **)(param_1 + 0x7ac),1,2,0xff,0x10200,
             (undefined *)0x0);
  if (uStack_18 != 0) {
    ReadMsgDataIntoString(*(undefined **)(param_1 + 0x7a0),0x87,*(undefined **)(param_1 + 0x7ac));
    AddTextPrinterParameterizedWithColor
              ((undefined *)(iVar5 + iVar6),0,*(undefined **)(param_1 + 0x7ac),0x10,0x10,0xff,
               0x10200,(undefined *)0x0);
    uVar4 = sub_0208C8C8(param_1,param_2 + 8,0x75,param_2 + 0x88,param_2 + 0x8d,bVar3,bVar2,2,0x3c,
                         0x10);
    return uVar4;
  }
  ReadMsgDataIntoString(*(undefined **)(param_1 + 0x7a0),0x99,*(undefined **)(param_1 + 0x7ac));
  uVar4 = FontID_String_GetWidth(0,*(undefined **)(param_1 + 0x7ac),0);
  bVar3 = AddTextPrinterParameterizedWithColor
                    ((undefined *)(iVar5 + iVar6),0,*(undefined **)(param_1 + 0x7ac),
                     0x3c - (uVar4 >> 1),0x10,0xff,0x10200,(undefined *)0x0);
  return (uint)bVar3;
}

