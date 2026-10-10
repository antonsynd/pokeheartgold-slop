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
undefined4 ov82_0223FD18();
undefined4 MessageFormat_New();
undefined4 LoadFontPal1();
undefined4 Party_GetMonByIndex();
undefined4 ov82_0223F570();
undefined4 ov82_0223FC48();
undefined4 GfGfx_BothDispOn();
undefined4 ov82_0223FD2C();
undefined4 LoadFontPal0();
undefined4 NARC_New();
undefined4 ov82_0223F558();
undefined4 ov82_0223F580();
undefined4 String_New();
undefined4 MessagePrinter_New();
undefined4 ov82_0223EB9C();
undefined4 ov82_0223EB3C();
undefined4 NewMsgDataFromNarc();
extern ushort uRam04000304 __asm__("sub_04000304");
undefined4 ov82_0223FDB8();
undefined4 func_0x0200a080() __asm__("sub_0200A080");
undefined4 sub_0203A880();
undefined4 Main_SetVBlankIntrCB();
undefined4 func_0x02009fe8() __asm__("sub_02009FE8");
undefined4 sub_02037474();

void ov82_0223E9E8(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  
  uVar1 = NARC_New(0xb7,0x69);
  *(undefined4 *)(param_1 + 0x220) = uVar1;
  ov82_0223EB3C(param_1);
  ov82_0223EB9C(param_1);
  uVar1 = NewMsgDataFromNarc(1,0x1b,0x1b9,0x69);
  *(undefined4 *)(param_1 + 0x20) = uVar1;
  uVar1 = MessageFormat_New(0x69);
  *(undefined4 *)(param_1 + 0x24) = uVar1;
  uVar1 = String_New(600,0x69);
  *(undefined4 *)(param_1 + 0x28) = uVar1;
  uVar1 = String_New(600,0x69);
  *(undefined4 *)(param_1 + 0x2c) = uVar1;
  iVar4 = 0;
  iVar3 = param_1;
  do {
    uVar1 = String_New(0x20,0x69);
    *(undefined4 *)(iVar3 + 0x30) = uVar1;
    iVar4 = iVar4 + 1;
    iVar3 = iVar3 + 4;
  } while (iVar4 < 2);
  LoadFontPal0(0,0x1a0,0x69);
  LoadFontPal1(0,0x180,0x69);
  LoadFontPal0(4,0x40,0x69);
  uVar1 = MessagePrinter_New(0xf,0xe,0,0x69);
  *(undefined4 *)(param_1 + 0x98) = uVar1;
  ov82_0223FD2C(*(undefined4 *)(param_1 + 0x48),param_1 + 0x4c);
  ov82_0223F580(param_1,*(undefined4 *)(param_1 + 0x48));
  uRam04000304 = uRam04000304 & 0x7fff;
  GfGfx_BothDispOn();
  uVar1 = ov82_0223F558(param_1);
  uVar2 = ov82_0223F570(param_1);
  uVar1 = ov82_0223FC48(param_1 + 0xa8,0,1,uVar1,uVar2,0);
  *(undefined4 *)(param_1 + 0x204) = uVar1;
  uVar1 = ov82_0223FC48(param_1 + 0xa8,1,1,0xa0,0xa0,0);
  *(undefined4 *)(param_1 + 0x208) = uVar1;
  uVar1 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 0x214),0);
  ov82_0223FD18(*(undefined4 *)(param_1 + 0x208),uVar1);
  iVar3 = sub_02037474();
  if (iVar3 != 0) {
    func_0x02009fe8(1,0x10);
    func_0x0200a080(1);
    sub_0203A880();
  }
  uVar1 = ov82_0223FDB8(0x69);
  *(undefined4 *)(param_1 + 0x8c) = uVar1;
  Main_SetVBlankIntrCB(0x223ec0d,param_1);
  return;
}

