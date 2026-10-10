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
undefined4 GetMonData();
undefined4 LoadFontPal1();
undefined4 ov83_02240F7C();
undefined4 FontID_Alloc();
undefined4 Party_GetMonByIndex();
undefined4 LoadFontPal0();
undefined4 func_0x02237b24() __asm__("sub_02237B24");
undefined4 NewMsgDataFromNarc();
undefined4 NARC_New();
undefined4 ov83_0223F690();
undefined4 func_0x02237d8c() __asm__("sub_02237D8C");
undefined4 CalculateHpBarColor();
undefined4 MessagePrinter_New();
undefined4 MessageFormat_New();
undefined4 ov83_0224755C();
undefined4 ov83_022478D4();
undefined4 String_New();
undefined4 ov83_02247454();
undefined4 ov83_0223F70C();
undefined4 ov83_022411DC();
undefined4 ov83_022411B0();
undefined4 sub_0203A880();
undefined4 ov83_02241E18();
undefined4 ov83_02247844();
undefined4 ov83_02247A24();
undefined4 ov83_02241FF0();
undefined4 ov83_022474C4();
undefined4 func_0x020cf15c() __asm__("sub_020CF15C");
undefined4 ov83_02242894();
undefined4 ov83_02247CB8();
undefined4 func_0x02009fe8() __asm__("sub_02009FE8");
undefined4 ov83_02240E70();
undefined4 ov83_022475EC();
undefined4 ov83_02247668();
undefined4 sub_02037474();
undefined4 func_0x0200a080() __asm__("sub_0200A080");
undefined4 Main_SetVBlankIntrCB();
undefined4 ov83_022421E0();

void ov83_0223F200(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined2 uVar1;
  undefined2 uVar2;
  short sVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  short sVar10;
  short sStack_2c;
  short sStack_2a;
  undefined1 auStack_28 [2];
  undefined1 auStack_26 [2];
  undefined1 auStack_24 [2];
  undefined1 auStack_22 [2];
  short asStack_20 [2];
  short asStack_1c [2];
  undefined4 uStack_18;

  uStack_18 = param_4;
  uVar4 = NARC_New(0xb7,0x6b);
  *(undefined4 *)(param_1 + 0x7a8) = uVar4;
  ov83_0223F690(param_1);
  ov83_0223F70C(param_1);
  FontID_Alloc(4,0x6b);
  uVar4 = NewMsgDataFromNarc(1,0x1b,0x1f,0x6b);
  *(undefined4 *)(param_1 + 0x20) = uVar4;
  uVar4 = NewMsgDataFromNarc(1,0x1b,0xdd,0x6b);
  *(undefined4 *)(param_1 + 0x1c) = uVar4;
  uVar4 = MessageFormat_New(0x6b);
  *(undefined4 *)(param_1 + 0x24) = uVar4;
  uVar4 = String_New(600,0x6b);
  *(undefined4 *)(param_1 + 0x28) = uVar4;
  uVar4 = String_New(600,0x6b);
  *(undefined4 *)(param_1 + 0x2c) = uVar4;
  iVar8 = 0;
  iVar7 = param_1;
  do {
    uVar4 = String_New(0x20,0x6b);
    *(undefined4 *)(iVar7 + 0x30) = uVar4;
    iVar8 = iVar8 + 1;
    iVar7 = iVar7 + 4;
  } while (iVar8 < 3);
  LoadFontPal0(0,0x1c0,0x6b);
  LoadFontPal1(0,0x1a0,0x6b);
  uVar4 = MessagePrinter_New(1,2,0,0x6b);
  *(undefined4 *)(param_1 + 0x504) = uVar4;
  ov83_022478D4(*(undefined4 *)(param_1 + 0x4c),param_1 + 0x50,0);
  ov83_02240F7C(param_1,auStack_22,auStack_24,auStack_26,auStack_28);
  uVar4 = ov83_02247454(param_1 + 0x518,0,0,0,4,0xa0,10,0,0);
  *(undefined4 *)(param_1 + 0x734) = uVar4;
  uVar4 = ov83_02247454(param_1 + 0x518,0,0,0,5,0xa0,0x7c,0,0);
  *(undefined4 *)(param_1 + 0x738) = uVar4;
  ov83_0224755C(*(undefined4 *)(param_1 + 0x734),0);
  ov83_0224755C(*(undefined4 *)(param_1 + 0x738),0);
  iVar7 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
  if (iVar7 == 0) {
    sVar10 = 0x40;
    sVar3 = 0x48;
  }
  else {
    sVar10 = 0x20;
    sVar3 = 0x28;
  }
  iVar8 = func_0x02237b24(*(undefined1 *)(param_1 + 9),1);
  iVar9 = 0;
  iVar7 = param_1;
  if (0 < iVar8) {
    do {
      uVar4 = ov83_02247454(param_1 + 0x518,1,1,1,0,(int)sVar3,0x3e,2,0);
      *(undefined4 *)(iVar7 + 0x74c) = uVar4;
      uVar4 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 0x7a4),iVar9);
      iVar5 = GetMonData(uVar4,6,0);
      if (iVar5 == 0) {
        ov83_0224755C(*(undefined4 *)(iVar7 + 0x74c),0);
      }
      uVar1 = GetMonData(uVar4,0xa3,0);
      uVar2 = GetMonData(uVar4,0xa4,0);
      uVar4 = CalculateHpBarColor(uVar1,uVar2,0x30);
      uVar4 = ov83_022411B0(param_1,uVar4);
      uVar6 = CalculateHpBarColor(uVar1,uVar2,0x30);
      uVar6 = ov83_022411DC(param_1,uVar6);
      uVar6 = ov83_02247454(param_1 + 0x518,0,0,0,uVar6,(int)sVar10,0x4e,3,0);
      *(undefined4 *)(iVar7 + 0x768) = uVar6;
      uVar4 = ov83_02247454(param_1 + 0x518,iVar9 + 10,10,5,uVar4,(int)sVar10,0x3a,2,0);
      *(undefined4 *)(iVar7 + 0x73c) = uVar4;
      uVar4 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 0x7a4),iVar9);
      ov83_022475EC(*(undefined4 *)(iVar7 + 0x73c),uVar4);
      iVar9 = iVar9 + 1;
      sVar3 = sVar3 + 0x40;
      iVar7 = iVar7 + 4;
      sVar10 = sVar10 + 0x40;
    } while (iVar9 < iVar8);
  }
  uVar4 = ov83_022474C4(param_1 + 0x518,3,3,3,0,0x10,0xa0,0,0);
  *(undefined4 *)(param_1 + 0x79c) = uVar4;
  ov83_0224755C(*(undefined4 *)(param_1 + 0x79c),0);
  iVar8 = 0;
  iVar7 = param_1;
  do {
    ov83_02242894(iVar8,&sStack_2a,&sStack_2c);
    uVar4 = ov83_02247454(param_1 + 0x518,iVar8 + 4,iVar8 + 4,4,0,(int)sStack_2a,(int)sStack_2c,0,0)
    ;
    *(undefined4 *)(iVar7 + 0x784) = uVar4;
    ov83_0224755C(*(undefined4 *)(iVar7 + 0x784),0);
    iVar8 = iVar8 + 1;
    iVar7 = iVar7 + 4;
  } while (iVar8 < 6);
  ov83_02240E70(param_1,asStack_1c,asStack_20,0);
  uVar4 = ov83_02247454(param_1 + 0x518,0,0,0,1,(int)asStack_1c[0],(int)asStack_20[0],2,0);
  *(undefined4 *)(param_1 + 0x760) = uVar4;
  uVar4 = ov83_02247454(param_1 + 0x518,0,0,0,2,(int)asStack_1c[0],(int)asStack_20[0],2,0);
  *(undefined4 *)(param_1 + 0x764) = uVar4;
  iVar7 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
  if (iVar7 == 0) {
    ov83_0224755C(*(undefined4 *)(param_1 + 0x764),0);
  }
  uVar4 = ov83_02247454(param_1 + 0x518,0,0,0,0xb,0x14,0x14,0,0);
  *(undefined4 *)(param_1 + 0x778) = uVar4;
  ov83_0224755C(*(undefined4 *)(param_1 + 0x778),0);
  uVar4 = ov83_02247454(param_1 + 0x518,0,0,0,3,0x14,0x14,1,0);
  *(undefined4 *)(param_1 + 0x77c) = uVar4;
  ov83_0224755C(*(undefined4 *)(param_1 + 0x77c),0);
  ov83_02241E18(param_1);
  ov83_02241FF0(param_1);
  ov83_022421E0(param_1,1);
  uVar4 = ov83_022474C4(param_1 + 0x518,2,2,2,0,0x30,0x28,0,0);
  *(undefined4 *)(param_1 + 0x780) = uVar4;
  ov83_02247668(*(undefined4 *)(param_1 + 0x780),*(undefined4 *)(param_1 + 0x808),
                *(undefined2 *)(param_1 + 0x80c),*(undefined4 *)(param_1 + 0x814));
  uVar4 = ov83_02247A24(param_1,1,*(undefined1 *)(param_1 + 0x14));
  *(undefined4 *)(param_1 + 0x838) = uVar4;
  uVar4 = ov83_02247CB8(*(undefined4 *)(param_1 + 0x518),*(undefined4 *)(param_1 + 0x500));
  *(undefined4 *)(param_1 + 0x83c) = uVar4;
  ov83_02247844(param_1 + 0x84c);
  iVar7 = sub_02037474();
  if (iVar7 != 0) {
    func_0x02009fe8(1,0x10);
    func_0x0200a080(1);
    sub_0203A880();
  }
  func_0x020cf15c(0x4000050,0,0xe,6,10);
  Main_SetVBlankIntrCB(0x223f7a1,param_1);
  return;
}

