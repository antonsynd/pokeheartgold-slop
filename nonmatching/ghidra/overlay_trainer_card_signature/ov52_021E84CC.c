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
undefined4 ReadMsgDataIntoString();
undefined4 func_0x020d4858() __asm__("sub_020D4858");
undefined4 String_New();
undefined4 YesNoPrompt_Create();

void ov52_021E84CC(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  byte *pbVar3;
  int iVar4;

  iVar4 = 0;
  pbVar3 = (byte *)(param_1 + 0x433d);
  iVar2 = param_1;
  do {
    uVar1 = String_New(8,0x27);
    *(undefined4 *)(iVar2 + 0x18) = uVar1;
    iVar4 = iVar4 + 1;
    *pbVar3 = *pbVar3 & 0xf;
    *(undefined2 *)(iVar2 + 0x4384) = 0;
    iVar2 = iVar2 + 4;
    pbVar3 = pbVar3 + 0x11;
  } while (iVar4 < 5);
  uVar1 = String_New(0x14,0x27);
  *(undefined4 *)(param_1 + 0x2c) = uVar1;
  uVar1 = String_New(0x28,0x27);
  *(undefined4 *)(param_1 + 0x30) = uVar1;
  uVar1 = String_New(0x50,0x27);
  *(undefined4 *)(param_1 + 0x34) = uVar1;
  *(undefined1 *)(param_1 + 0x431a) = 0;
  *(undefined4 *)(param_1 + 0x30c) = 1;
  ReadMsgDataIntoString(*(undefined4 *)(param_1 + 0x14),0xc,*(undefined4 *)(param_1 + 0x2c));
  ReadMsgDataIntoString(*(undefined4 *)(param_1 + 0x14),9,*(undefined4 *)(param_1 + 0x30));
  uVar1 = YesNoPrompt_Create(0x27);
  *(undefined4 *)(param_1 + 0x5c9c) = uVar1;
  func_0x020d4858(0,param_1 + 0x5ca0,5);
  return;
}

