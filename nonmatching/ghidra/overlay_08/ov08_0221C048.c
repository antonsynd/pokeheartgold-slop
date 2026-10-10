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
undefined4 FontID_Alloc();
undefined4 ov08_02222524();
undefined4 ov08_0221D8B0();
undefined4 ov08_022221CC();
undefined4 ov08_0221CDF8();
undefined4 ov08_0221DB24();
undefined4 ov08_02220C5C();
undefined4 ov08_022205E0();
undefined4 ov08_0221D0F4();
undefined4 PaletteData_BeginPaletteFade();
undefined4 ov08_0221CF38();
undefined4 ov08_0221DD70();
undefined4 ov08_0221D6CC();
undefined4 ov08_02224B64();
undefined4 ov08_02224B90();
undefined4 ov08_0222171C();
undefined4 ov08_0221DC00();
undefined4 ov08_0221D184();
extern undefined2 uRam04001050 __asm__("sub_04001050");

undefined4 ov08_0221C048(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  uRam04001050 = 0;
  if (*(char *)(*param_1 + 0x35) == '\x03') {
    *(undefined1 *)((int)param_1 + 0x207a) = 6;
    uVar2 = 0x13;
  }
  else {
    *(undefined1 *)((int)param_1 + 0x207a) = 0;
    uVar2 = 1;
  }
  iVar1 = ov08_02224B64(*(undefined4 *)(*param_1 + 0xc));
  param_1[0x822] = iVar1;
  ov08_0221D184(param_1);
  ov08_0221CDF8(param_1);
  ov08_0221CF38(param_1);
  ov08_0221D0F4(param_1);
  FontID_Alloc(4,*(undefined4 *)(*param_1 + 0xc));
  ov08_0221D8B0(param_1,*(undefined1 *)((int)param_1 + 0x207a));
  ov08_022221CC(param_1,*(undefined1 *)((int)param_1 + 0x207a));
  ov08_02222524(param_1,*(undefined1 *)((int)param_1 + 0x207a));
  ov08_022205E0(param_1);
  ov08_02220C5C(param_1,*(undefined1 *)((int)param_1 + 0x207a));
  ov08_0221DC00(param_1);
  ov08_0221DD70(param_1,*(undefined1 *)((int)param_1 + 0x207a));
  if (*(char *)(*param_1 + 0x32) != '\0') {
    ov08_02224B90(param_1[0x822],1);
  }
  if ((*(char *)((int)param_1 + 0x207a) == '\0') && (iVar1 = ov08_0221DB24(param_1,0), iVar1 == 1))
  {
    *(undefined1 *)(*param_1 + 0x11) = 1;
  }
  ov08_0222171C(param_1,*(undefined1 *)((int)param_1 + 0x207a));
  ov08_0221D6CC(param_1,*(undefined1 *)((int)param_1 + 0x207a));
  PaletteData_BeginPaletteFade(param_1[0x7a],10,0xffff,0xfffffff8,0x10,0,0);
  return uVar2;
}

