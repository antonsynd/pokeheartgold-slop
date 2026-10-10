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
undefined4 AddWindow();
undefined4 GF_AssertFail();
undefined4 NewMsgDataFromNarc();
undefined4 LoadFontPal1();
undefined4 BG_FillCharDataRange();
undefined4 FontID_Alloc();
undefined4 func_0x0200bd18() __asm__("sub_0200BD18");

void ov112_021F1288(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  if (param_1 == 0) {
    GF_AssertFail();
  }
  if (*(int *)(param_1 + 0x14) == 0) {
    GF_AssertFail();
  }
  uVar1 = NewMsgDataFromNarc(1,0x1b,0x113,*(undefined4 *)(param_1 + 4),param_4);
  *(undefined4 *)(param_1 + 0x5c) = uVar1;
  uVar1 = NewMsgDataFromNarc(1,0x1b,0xed,*(undefined4 *)(param_1 + 4));
  *(undefined4 *)(param_1 + 0x60) = uVar1;
  uVar1 = NewMsgDataFromNarc(1,0x1b,0xde,*(undefined4 *)(param_1 + 4));
  *(undefined4 *)(param_1 + 100) = uVar1;
  uVar1 = func_0x0200bd18(0xd,0x20,*(undefined4 *)(param_1 + 4));
  iVar3 = 0x21ff350;
  *(undefined4 *)(param_1 + 0x58) = uVar1;
  iVar4 = 0;
  iVar2 = param_1 + 0x18;
  do {
    AddWindow(*(undefined4 *)(param_1 + 0x14),iVar2,iVar3);
    iVar4 = iVar4 + 1;
    iVar3 = iVar3 + 8;
    iVar2 = iVar2 + 0x10;
  } while (iVar4 < 4);
  BG_FillCharDataRange(*(undefined4 *)(param_1 + 0x14),2,0,1,0);
  LoadFontPal1(0,0x1c0,*(undefined4 *)(param_1 + 4));
  LoadFontPal1(4,0x1c0,*(undefined4 *)(param_1 + 4));
  FontID_Alloc(4,*(undefined4 *)(param_1 + 4));
  return;
}

