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
undefined4 MessageFormat_New();
undefined4 LoadFontPal0();
undefined4 ov87_021E80C0();
undefined4 ov87_021E79C4();
undefined4 LoadFontPal1();
undefined4 ov87_021E7FD4();
undefined4 MessagePrinter_New();
undefined4 ov87_021E7A04();
undefined4 NARC_New();
undefined4 NewMsgDataFromNarc();
undefined4 String_New();
undefined4 GfGfx_BothDispOn();
undefined4 FontID_Alloc();
undefined4 ov87_021E7F6C();
undefined4 ov87_021E7A2C();
undefined4 sub_020163E0();
undefined4 ov87_021E6B38();
undefined4 ov87_021E6BA8();
extern undefined ov87_021E82E4;
undefined4 sub_02021148();
undefined4 Main_SetVBlankIntrCB();
undefined4 ov87_021E7FE0();
undefined4 ov87_021E7FEC();
undefined4 sub_020210BC();
undefined4 ov87_021E6704();
extern undefined ov87_021E81A0;
extern ushort uRam04000304 __asm__("sub_04000304");

void ov87_021E68DC(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined2 *puVar3;
  short *psVar4;
  short sVar5;
  int iVar6;
  
  uVar1 = NARC_New(0xcf,0x7a);
  *(undefined4 *)(param_1 + 0x380) = uVar1;
  ov87_021E6B38(param_1);
  ov87_021E6BA8(param_1);
  uVar1 = NewMsgDataFromNarc(1,0x1b,0x1b0,0x7a);
  *(undefined4 *)(param_1 + 0x38) = uVar1;
  uVar1 = MessageFormat_New(0x7a);
  *(undefined4 *)(param_1 + 0x3c) = uVar1;
  uVar1 = String_New(600,0x7a);
  *(undefined4 *)(param_1 + 0x40) = uVar1;
  uVar1 = String_New(600,0x7a);
  *(undefined4 *)(param_1 + 0x44) = uVar1;
  LoadFontPal0(0,0x1a0,0x7a);
  LoadFontPal0(4,0x1a0,0x7a);
  LoadFontPal1(0,0x180,0x7a);
  LoadFontPal1(4,0x180,0x7a);
  FontID_Alloc(2,0x7a);
  uVar1 = MessagePrinter_New(0xf,0xe,0,0x7a);
  *(undefined4 *)(param_1 + 0x160) = uVar1;
  ov87_021E80C0(*(undefined4 *)(param_1 + 0x58),param_1 + 0x5c);
  uVar1 = sub_020163E0(0,1,0xc,0x7a);
  *(undefined4 *)(param_1 + 0x34) = uVar1;
  ov87_021E79C4(param_1);
  ov87_021E7A04(param_1);
  ov87_021E7A2C(param_1);
  GfGfx_BothDispOn();
  iVar6 = 0;
  sVar5 = 0x1a;
  iVar2 = param_1;
  do {
    uVar1 = ov87_021E7F6C(param_1 + 0x16c,0,iVar6,0x3c,sVar5,1,0,0);
    *(undefined4 *)(iVar2 + 0x2f8) = uVar1;
    ov87_021E7FD4(*(undefined4 *)(iVar2 + 0x2f8),0);
    iVar6 = iVar6 + 1;
    sVar5 = sVar5 + 0x2a;
    iVar2 = iVar2 + 4;
  } while (iVar6 < 4);
  puVar3 = (undefined2 *)&ov87_021E82E4;
  iVar6 = 0;
  iVar2 = param_1;
  do {
    uVar1 = ov87_021E7F6C(param_1 + 0x16c,1,0,*puVar3,puVar3[1],0,2,10);
    *(undefined4 *)(iVar2 + 0x308) = uVar1;
    ov87_021E7FD4(*(undefined4 *)(iVar2 + 0x308),0);
    iVar6 = iVar6 + 1;
    puVar3 = puVar3 + 2;
    iVar2 = iVar2 + 4;
  } while (iVar6 < 9);
  ov87_021E6704(param_1);
  psVar4 = (short *)&ov87_021E81A0;
  iVar6 = 0;
  iVar2 = param_1;
  do {
    uVar1 = ov87_021E7F6C(param_1 + 0x16c,2,iVar6,*psVar4,psVar4[1],0,1,0);
    *(undefined4 *)(iVar2 + 0x32c) = uVar1;
    ov87_021E7FEC(*(undefined4 *)(iVar2 + 0x32c),*psVar4 + -0x100,(int)psVar4[1]);
    ov87_021E7FE0(*(undefined4 *)(iVar2 + 0x32c),iVar6 + 0x14);
    iVar6 = iVar6 + 1;
    psVar4 = psVar4 + 2;
    iVar2 = iVar2 + 4;
  } while (iVar6 < 4);
  uVar1 = ov87_021E7F6C(param_1 + 0x16c,4,0,0x26,0x38,0,0,10);
  *(undefined4 *)(param_1 + 0x35c) = uVar1;
  ov87_021E7FD4(*(undefined4 *)(param_1 + 0x35c),0);
  uRam04000304 = uRam04000304 & 0x7fff;
  sub_020210BC();
  sub_02021148(1);
  Main_SetVBlankIntrCB(0x21e6c05,param_1);
  return;
}

