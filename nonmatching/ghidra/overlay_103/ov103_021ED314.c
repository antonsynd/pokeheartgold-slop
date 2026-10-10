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
undefined4 Main_SetVBlankIntrCB();
undefined4 HBlankInterruptDisable();
undefined4 ov103_021EC9D8();
undefined4 ov103_021ECC1C();
undefined4 func_0x02022d04() __asm__("sub_02022D04");
undefined4 sub_020210BC();
undefined4 Heap_Alloc();
undefined4 ov103_021ED00C();
undefined4 ov103_021EC9E8();
undefined4 ov103_021EE390();
undefined4 ov103_021ECD18();
undefined4 func_0x02022c9c() __asm__("sub_02022C9C");
undefined4 Heap_Create();
undefined4 sub_02021148();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
extern undefined2 uRam04000050 __asm__("sub_04000050");
extern ushort uRam04000304 __asm__("sub_04000304");
extern undefined2 uRam04001050 __asm__("sub_04001050");
undefined4 ov103_021ECE18();
undefined4 ov103_021ECEEC();
undefined4 ov103_021EEA48();
undefined4 ov103_021ECE80();
undefined4 ov103_021ED0C0();
undefined4 ov103_021ECD68();
undefined4 ov103_021EE644();
undefined4 ov103_021EE550();
undefined4 ov103_021EDEA8();

undefined4 ov103_021ED314(int param_1)

{
  undefined4 uVar1;

  Main_SetVBlankIntrCB(0,0);
  HBlankInterruptDisable();
  func_0x02022c9c(0);
  func_0x02022d04(0);
  uRam04000050 = 0;
  uRam04001050 = 0;
  sub_020210BC();
  sub_02021148(4);
  uRam04000304 = uRam04000304 & 0x7fff;
  Heap_Create(3,0x9d,0x60000);
  uVar1 = Heap_Alloc(0x9d,0x2f0);
  *(undefined4 *)(param_1 + 0xc) = uVar1;
  func_0x020d4994(uVar1,0,0x2f0);
  ov103_021ED00C(param_1);
  ov103_021EC9D8();
  ov103_021EC9E8(param_1);
  ov103_021ECC1C(param_1);
  ov103_021ECD18(param_1);
  ov103_021EE390(param_1);
  ov103_021ECD68(param_1);
  ov103_021EDEA8(param_1);
  ov103_021ECE80(param_1);
  ov103_021EEA48(param_1);
  ov103_021ECE18(*(undefined4 *)(param_1 + 0xc));
  ov103_021EE550(param_1);
  ov103_021EE644(param_1);
  ov103_021ED0C0(param_1);
  ov103_021ECEEC(param_1);
  Main_SetVBlankIntrCB(0x21ec9b5,param_1);
  return *(undefined4 *)(param_1 + 0x28);
}

