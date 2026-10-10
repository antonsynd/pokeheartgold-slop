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
undefined4 LoadFontPal1();
undefined4 ov83_02244DF4();
undefined4 FontID_Alloc();
undefined4 Party_GetMonByIndex();
undefined4 LoadFontPal0();
undefined4 NewMsgDataFromNarc();
undefined4 ov83_022475EC();
undefined4 func_0x02237d8c() __asm__("sub_02237D8C");
undefined4 NARC_New();
undefined4 MessagePrinter_New();
undefined4 MessageFormat_New();
undefined4 func_0x02237b58() __asm__("sub_02237B58");
undefined4 ov83_0224755C();
undefined4 ov83_02244408();
undefined4 String_New();
undefined4 ov83_02247454();
undefined4 ov83_022478D4();
undefined4 ov83_02244394();
undefined4 ov83_02246114();
undefined4 ov83_02245D48();
undefined4 sub_0203A880();
undefined4 ov83_02247844();
undefined4 func_0x020cf15c() __asm__("sub_020CF15C");
undefined4 ov83_022474C4();
undefined4 ov83_02245C80();
undefined4 ov83_02247A7C();
undefined4 ov83_02247CB8();
undefined4 ov83_02246988();
undefined4 func_0x02009fe8() __asm__("sub_02009FE8");
undefined4 sub_02037474();
undefined4 func_0x0200a080() __asm__("sub_0200A080");
undefined4 Main_SetVBlankIntrCB();
undefined4 ov83_02244DA0();
undefined4 ov83_02245CE8();
undefined4 ov83_02245F24();

void ov83_02243FD4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  short sVar6;
  int iStack_3c;
  int iStack_30;
  int iStack_2c;
  undefined1 auStack_28 [2];
  undefined1 auStack_26 [2];
  undefined1 auStack_24 [2];
  undefined1 auStack_22 [2];
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  uVar2 = NARC_New(0xb7,0x6b);
  *(undefined4 *)(param_1 + 0x560) = uVar2;
  ov83_02244394(param_1);
  ov83_02244408(param_1);
  FontID_Alloc(4,0x6b);
  uVar2 = NewMsgDataFromNarc(1,0x1b,0x21,0x6b);
  *(undefined4 *)(param_1 + 0x20) = uVar2;
  uVar2 = MessageFormat_New(0x6b);
  *(undefined4 *)(param_1 + 0x24) = uVar2;
  uVar2 = String_New(600,0x6b);
  *(undefined4 *)(param_1 + 0x28) = uVar2;
  uVar2 = String_New(600,0x6b);
  *(undefined4 *)(param_1 + 0x2c) = uVar2;
  iVar4 = 0;
  iVar3 = param_1;
  do {
    uVar2 = String_New(0x20,0x6b);
    *(undefined4 *)(iVar3 + 0x30) = uVar2;
    iVar4 = iVar4 + 1;
    iVar3 = iVar3 + 4;
  } while (iVar4 < 3);
  LoadFontPal0(0,0x1c0,0x6b);
  LoadFontPal1(0,0x1a0,0x6b);
  uVar2 = MessagePrinter_New(1,2,0,0x6b);
  *(undefined4 *)(param_1 + 0x2b4) = uVar2;
  ov83_022478D4(*(undefined4 *)(param_1 + 0x4c),param_1 + 0x50,1);
  ov83_02244DF4(param_1,auStack_22,auStack_24,auStack_26,auStack_28);
  iVar3 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
  if (iVar3 == 0) {
    sVar6 = 0x40;
    sVar1 = 0x3c;
  }
  else {
    sVar6 = 0x20;
    sVar1 = 0x1c;
  }
  iVar4 = func_0x02237b58(*(undefined1 *)(param_1 + 9),1);
  iVar5 = 0;
  iVar3 = param_1;
  if (0 < iVar4) {
    do {
      uVar2 = ov83_02247454(param_1 + 0x2c8,0,0,0,7,(int)sVar1,0x3e,2,0);
      *(undefined4 *)(iVar3 + 0x4f4) = uVar2;
      uVar2 = ov83_02247454(param_1 + 0x2c8,0,0,0,0xf,(int)sVar6,0x4e,3,0);
      *(undefined4 *)(iVar3 + 0x510) = uVar2;
      uVar2 = ov83_02247454(param_1 + 0x2c8,iVar5 + 10,10,5,1,(int)sVar6,0x3a,2,0);
      *(undefined4 *)(iVar3 + 0x4e4) = uVar2;
      uVar2 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 0x55c),iVar5);
      ov83_022475EC(*(undefined4 *)(iVar3 + 0x4e4),uVar2);
      if (*(char *)(*(int *)(param_1 + 0x54c) + iVar5) == '\0') {
        ov83_0224755C(*(undefined4 *)(iVar3 + 0x4f4),1);
        ov83_0224755C(*(undefined4 *)(iVar3 + 0x4e4),0);
        ov83_0224755C(*(undefined4 *)(iVar3 + 0x510),0);
      }
      else {
        ov83_0224755C(*(undefined4 *)(iVar3 + 0x4f4),0);
        ov83_0224755C(*(undefined4 *)(iVar3 + 0x4e4),1);
        ov83_0224755C(*(undefined4 *)(iVar3 + 0x510),1);
      }
      iVar5 = iVar5 + 1;
      sVar1 = sVar1 + 0x40;
      sVar6 = sVar6 + 0x40;
      iVar3 = iVar3 + 4;
    } while (iVar5 < iVar4);
  }
  ov83_02244DA0(param_1,&iStack_1c,&iStack_20,0);
  uVar2 = ov83_02247454(param_1 + 0x2c8,0,0,0,1,(int)(short)iStack_1c,(int)(short)iStack_20,2,0);
  *(undefined4 *)(param_1 + 0x508) = uVar2;
  uVar2 = ov83_02247454(param_1 + 0x2c8,0,0,0,2,(int)(short)iStack_1c,(int)(short)iStack_20,2,0);
  *(undefined4 *)(param_1 + 0x50c) = uVar2;
  iVar3 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
  if (iVar3 == 0) {
    ov83_0224755C(*(undefined4 *)(param_1 + 0x50c),0);
  }
  iStack_3c = 0;
  iStack_30 = 0;
  iStack_2c = param_1;
  do {
    iVar5 = 0;
    iVar4 = 0;
    iVar3 = iStack_2c;
    do {
      ov83_02245CE8(param_1,&iStack_1c,&iStack_20);
      uVar2 = ov83_02247454(param_1 + 0x2c8,0,0,0,0xc,(iStack_1c + iStack_30) * 0x10000 >> 0x10,
                            (iStack_20 + iVar4) * 0x10000 >> 0x10,2,0);
      *(undefined4 *)(iVar3 + 0x520) = uVar2;
      ov83_0224755C(*(undefined4 *)(iVar3 + 0x520),0);
      iVar5 = iVar5 + 1;
      iVar4 = iVar4 + 0xc;
      iVar3 = iVar3 + 4;
    } while (iVar5 < 2);
    iStack_30 = iStack_30 + 0x40;
    iStack_2c = iStack_2c + 8;
    iStack_3c = iStack_3c + 1;
  } while (iStack_3c < 4);
  ov83_02245C80(param_1);
  uVar2 = ov83_02247454(param_1 + 0x2c8,0,0,0,0xb,0x14,0x14,0,0);
  *(undefined4 *)(param_1 + 0x540) = uVar2;
  ov83_0224755C(*(undefined4 *)(param_1 + 0x540),0);
  ov83_02245D48(param_1);
  ov83_02245F24(param_1);
  ov83_02246114(param_1,1);
  uVar2 = ov83_022474C4(param_1 + 0x2c8,2,2,2,0,0x30,0x28,0,0);
  *(undefined4 *)(param_1 + 0x544) = uVar2;
  ov83_02246988(param_1);
  uVar2 = ov83_02247A7C(param_1,1,*(undefined1 *)(param_1 + 0x14));
  *(undefined4 *)(param_1 + 0x5f0) = uVar2;
  uVar2 = ov83_02247CB8(*(undefined4 *)(param_1 + 0x2c8),*(undefined4 *)(param_1 + 0x2b0));
  *(undefined4 *)(param_1 + 0x5f4) = uVar2;
  ov83_02247844(param_1 + 0x604);
  iVar3 = sub_02037474();
  if (iVar3 != 0) {
    func_0x02009fe8(1,0x10);
    func_0x0200a080(1);
    sub_0203A880();
  }
  func_0x020cf15c(0x4000050,0,0xe,6,10);
  Main_SetVBlankIntrCB(0x2244489,param_1);
  return;
}

