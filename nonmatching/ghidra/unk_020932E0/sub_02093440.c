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
undefined4 sub_02095D40();
undefined4 AddWindowParameterized();
undefined4 sub_020942B0();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 sub_020950C0();
undefined4 sub_02094004();
undefined4 sub_02094D1C();
undefined4 sub_020943EC();
undefined4 sub_02093B40();
undefined4 sub_02093A50();
undefined4 sub_02094D9C();
undefined4 FontID_Alloc();
undefined4 sub_02095794();
undefined4 sub_02093B84();
undefined4 LoadFontPal0();
undefined4 sub_02095D1C();
undefined4 YesNoPrompt_Create();
undefined4 sub_020941CC();

void sub_02093440(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined1 param_5,undefined1 param_6,undefined1 param_7,undefined1 param_8,
                 undefined4 param_9,undefined4 param_10,undefined4 param_11,undefined4 param_12,
                 undefined4 param_13)

{
  undefined4 uVar1;

  uVar1 = YesNoPrompt_Create(param_1[1]);
  param_1[2] = uVar1;
  param_1[0x118f] = param_3;
  param_1[0x1190] = param_4;
  *param_1 = param_2;
  param_1[0x11b7] = param_13;
  param_1[0x11b6] = param_12;
  *(undefined1 *)((int)param_1 + 0xf) = param_8;
  param_1[0x11b9] = 0xffffffff;
  param_1[0x11b8] = 0xffffffff;
  *(undefined1 *)((int)param_1 + 0x13) = param_7;
  sub_02094D9C(*param_1,param_1[1]);
  sub_02093A50(param_1);
  sub_02093B40(param_1);
  sub_02094004(param_1);
  GfGfx_EngineATogglePlanes(0x10,1);
  FontID_Alloc(4,param_1[1]);
  LoadFontPal0(0,0x1a0,param_1[1]);
  LoadFontPal0(0,0x180,param_1[1]);
  *(undefined1 *)((int)param_1 + 0x11) = param_5;
  *(undefined1 *)((int)param_1 + 0x12) = param_6;
  sub_02095D1C(param_1[0x11ae],param_7);
  sub_02095D40(param_1[0x11ae],2,0);
  sub_02093B84(param_1);
  param_1[0x1192] = param_9;
  param_1[0x1193] = param_10;
  AddWindowParameterized(*param_1,param_1 + 0x1194,1,4,1,0xd,2,0xd,0xa0);
  AddWindowParameterized(*param_1,param_1 + 0x119c,1,0x19,0x15,6,2,0xc,0xba);
  sub_02094D1C(param_1);
  sub_020941CC(param_1,*param_1,param_1[1]);
  sub_020942B0(param_1);
  sub_020943EC(param_1);
  sub_020950C0(param_1);
  sub_02095794();
  param_1[0x11ad] = param_11;
  param_1[5] = 0;
  param_1[0x11af] = 0;
  param_1[0x11b0] = 0;
  param_1[0x11b1] = 0;
  return;
}

