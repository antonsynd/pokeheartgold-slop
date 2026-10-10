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
undefined4 GetMonData(void *, int, void *);
undefined4 ov57_0223BA40();
undefined4 func_0x02232a44() __asm__("sub_02232A44");
undefined4 ov57_0223B948();
unsigned char PaletteData_BeginPaletteFade(void *, unsigned short, unsigned short, signed char, unsigned char, unsigned char, unsigned short);
undefined4 ov57_0223857C();
undefined4 ov57_0223B7C4();
undefined4 func_0x02232a04() __asm__("sub_02232A04");
void * func_0x02233db8(void *) __asm__("sub_02233DB8");
undefined4 func_0x022329b0() __asm__("sub_022329B0");
undefined4 func_0x02232694() __asm__("sub_02232694");
undefined4 ov57_0223BA1C();
undefined4 SetMonData(void *, int, void *);
undefined4 ov57_0223B950();
undefined4 ov57_02239728();
undefined4 func_0x02233ea0() __asm__("sub_02233EA0");
unsigned short PaletteData_GetSelectedBuffersBitmask(void *);
undefined4 GfGfx_EngineATogglePlanes(unsigned char, unsigned char);
undefined4 ov57_0223BB38();
undefined4 func_0x02232a54() __asm__("sub_02232A54");
undefined4 ov57_0223B9C8();
undefined4 func_0x02233e88() __asm__("sub_02233E88");
undefined4 sub_02017068();
undefined4 ov57_0223BABC();
undefined4 Pokepic_IsAnimFinished(void *);
undefined4 func_0x02233ecc(void *) __asm__("sub_02233ECC");
undefined4 ov57_0223BB4C();
undefined4 func_0x02232ab8() __asm__("sub_02232AB8");
undefined4 ov57_0223BB5C();
undefined4 PlaySE(unsigned short);



undefined4 ov57_0223AB58(int *param_1)

{
  ushort uVar1;
  int iVar2;
  int iVar3;
  int local_84 [6];
  undefined4 local_6c;
  undefined4 local_68;
  int local_64;
  int local_60;
  undefined4 local_58;
  undefined4 local_54;
  int local_50;
  undefined1 auStack_4c [24];
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  undefined4 local_20;
  undefined4 local_1c;
  int local_18;
  int local_14;

  switch(param_1[0x101]) {
  case 0:
    GfGfx_EngineATogglePlanes(0x10,1);
    PaletteData_BeginPaletteFade((undefined *)param_1[0x3a],2,0x80b,0,0,10,0);
    PaletteData_BeginPaletteFade((undefined *)param_1[0x3a],8,0xffff,0,0,10,0);
    ov57_0223B948((int)param_1,0);
    param_1[0x102] = 0;
    ov57_0223B7C4(param_1);
    ov57_0223B950((int)param_1);
    ov57_0223BB38((int)param_1,1);
    ov57_02239728((undefined *)(param_1 + 0x3b),0,0xd,0);
    param_1[0x101] = param_1[0x101] + 1;
    break;
  case 1:
    uVar1 = PaletteData_GetSelectedBuffersBitmask((undefined *)param_1[0x3a]);
    if (uVar1 == 0) {
      local_30 = 0x34;
      local_28 = 0xff;
      local_34 = 1;
      local_1c = 1;
      local_2c = 0;
      local_20 = 0;
      local_18 = param_1[0x37];
      local_14 = param_1[0x3a];
      local_24 = GetMonData((undefined *)param_1[0x116],0x9b,(undefined *)0x0);
      iVar2 = func_0x02233db8(&local_34);
      param_1[0x95] = iVar2;
      param_1[0x101] = param_1[0x101] + 1;
    }
    break;
  case 2:
    local_54 = 0;
    local_58 = 1;
    local_50 = param_1[0x116];
    local_84[0] = param_1[0xfb] + 1;
    ov57_0223857C(auStack_4c,(int)param_1);
    SetMonData((undefined *)param_1[0x116],0xa2,(undefined *)local_84);
    SetMonData((undefined *)param_1[0x116],0xab,auStack_4c);
    iVar2 = func_0x02232694(0x34,&local_58);
    param_1[0x94] = iVar2;
    func_0x022329b0(param_1[0x94]);
    param_1[0x101] = param_1[0x101] + 1;
    param_1[0x102] = 0;
    break;
  case 3:
    iVar2 = func_0x02232a04(param_1[0x94]);
    if ((iVar2 == 1) && (iVar2 = func_0x02233ea0(param_1[0x95]), iVar2 == 1)) {
      ov57_0223BA40((int)param_1);
      func_0x02232a44(param_1[0x94]);
      ov57_0223BB38((int)param_1,0);
      ov57_0223BA1C((int)param_1);
      PlaySE(0x6c5);
      param_1[0x101] = param_1[0x101] + 1;
    }
    break;
  case 4:
    iVar2 = ov57_0223BA40((int)param_1);
    iVar3 = func_0x02233e88(param_1[0x95]);
    if ((iVar3 == 0) && (iVar2 == 0)) {
      func_0x02233ecc(param_1[0x95]);
      GfGfx_EngineATogglePlanes(0x10,0);
      ov57_0223B9C8((int)param_1);
      param_1[0x102] = 0;
      param_1[0x101] = param_1[0x101] + 1;
    }
    break;
  case 5:
    iVar2 = func_0x02232a54(param_1[0x94]);
    if (((iVar2 == 0) && (iVar2 = sub_02017068((int *)param_1[0xa1],0), iVar2 == 1)) &&
       (iVar2 = Pokepic_IsAnimFinished((undefined *)param_1[0x72]), iVar2 == 0)) {
      func_0x02232ab8(param_1[0x94]);
      param_1[0x101] = param_1[0x101] + 1;
    }
    break;
  case 6:
    param_1[0x102] = param_1[0x102] + 1;
    if (0x1d < param_1[0x102]) {
      param_1[0x102] = 0;
      local_84[2] = 0x34;
      local_84[3] = 5;
      local_84[4] = 0xff;
      local_84[1] = 1;
      local_6c = 0;
      local_68 = 1;
      local_64 = param_1[0x37];
      local_60 = param_1[0x3a];
      local_84[5] = GetMonData((undefined *)param_1[0x116],0x9b,(undefined *)0x0);
      iVar2 = func_0x02233db8(local_84 + 1);
      param_1[0x95] = iVar2;
      ov57_0223BB5C();
      GfGfx_EngineATogglePlanes(0x10,1);
      param_1[0x101] = param_1[0x101] + 1;
    }
    break;
  case 7:
    iVar2 = ov57_0223BABC((int)param_1);
    iVar3 = func_0x02233e88(param_1[0x95]);
    if ((iVar3 == 0) && (iVar2 == 0)) {
      PaletteData_BeginPaletteFade((undefined *)param_1[0x3a],2,0x80b,0,10,0,0);
      PaletteData_BeginPaletteFade((undefined *)param_1[0x3a],8,0xffff,0,10,0,0);
      ov57_0223BB38((int)param_1,1);
      ov57_0223BB4C((int)param_1);
      func_0x02233ecc(param_1[0x95]);
      param_1[0x101] = param_1[0x101] + 1;
    }
    break;
  default:
    uVar1 = PaletteData_GetSelectedBuffersBitmask((undefined *)param_1[0x3a]);
    if (uVar1 == 0) {
      GfGfx_EngineATogglePlanes(0x10,0);
      ov57_0223B948((int)param_1,1);
      param_1[0x101] = 0;
      param_1[0xff] = 4;
      ov57_02239728((undefined *)(param_1 + 0x3b),0,0xffff,0);
      return 4;
    }
  }
  return 5;
}

