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
undefined4 func_0x0200a080() __asm__("sub_0200A080");
undefined4 ov81_0223EBE4();
undefined4 MessageFormat_New();
undefined4 NARC_New();
undefined4 sub_02037474();
undefined4 FontID_Alloc();
undefined4 PokepicManager_Create();
undefined4 LoadFontPal1();
undefined4 ov81_02240F08();
undefined4 NewMsgDataFromNarc();
undefined4 LoadFontPal0();
undefined4 ov81_0223E8B0();
undefined4 func_0x02009fe8() __asm__("sub_02009FE8");
undefined4 ov81_0223E87C();
undefined4 String_New();
undefined4 ov81_022403C0();
undefined4 ov81_0223EC44();
undefined4 ov81_02240448();
undefined4 sub_0203A880();
undefined4 ov81_02242500();
undefined4 GfGfx_BothDispOn();
undefined4 ov81_02243100();
undefined4 Main_SetVBlankIntrCB();
undefined4 ov81_0224271C();

void ov81_02240D64(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  
  uVar1 = NARC_New(0xb7,100,param_3,param_4,param_4);
  *(undefined4 *)(param_1 + 0x3dc) = uVar1;
  ov81_022403C0(param_1);
  ov81_02240448(param_1);
  FontID_Alloc(4,100);
  uVar1 = NewMsgDataFromNarc(1,0x1b,0xc2,100);
  *(undefined4 *)(param_1 + 0x1c) = uVar1;
  uVar1 = MessageFormat_New(100);
  *(undefined4 *)(param_1 + 0x20) = uVar1;
  uVar1 = String_New(800,100);
  *(undefined4 *)(param_1 + 0x24) = uVar1;
  uVar1 = String_New(800,100);
  *(undefined4 *)(param_1 + 0x28) = uVar1;
  iVar3 = 0;
  iVar2 = param_1;
  do {
    uVar1 = String_New(0x40,100);
    *(undefined4 *)(iVar2 + 0x2c) = uVar1;
    iVar3 = iVar3 + 1;
    iVar2 = iVar2 + 4;
  } while (iVar3 < 4);
  LoadFontPal0(0,0x1a0,100);
  LoadFontPal0(4,0x1a0,100);
  LoadFontPal1(0,0x180,100);
  LoadFontPal1(4,0x180,100);
  uVar1 = PokepicManager_Create(100);
  *(undefined4 *)(param_1 + 0x1a8) = uVar1;
  iVar2 = sub_02037474();
  if (iVar2 != 0) {
    func_0x02009fe8(1,0x10);
    func_0x0200a080(1);
    sub_0203A880();
  }
  iVar2 = ov81_02240F08(param_1,0);
  if (iVar2 == 1) {
    ov81_0223E87C(param_1);
    ov81_0223E8B0(param_1);
  }
  else {
    ov81_0223EBE4(param_1);
    ov81_0223EC44(param_1);
  }
  ov81_02242500(param_1);
  ov81_02243100(*(undefined4 *)(param_1 + 0x4c),*(undefined4 *)(param_1 + 0x3dc));
  ov81_0224271C(param_1);
  GfGfx_BothDispOn();
  Main_SetVBlankIntrCB(0x22401c9,param_1);
  return;
}

