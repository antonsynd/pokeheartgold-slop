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
undefined4 ov12_0223BBA8();
undefined4 ov12_0223A99C();
undefined4 ov12_0223AB0C();
undefined4 ov12_0223BBC0();
undefined4 ov12_0223BBD8();
undefined4 ov12_0223BB94();
undefined4 Pokepic_SetAttr();
undefined4 PokepicManager_CreatePokepicAt();
undefined4 func_0x02014540() __asm__("sub_02014540");

undefined4
ov12_022612A4(undefined4 param_1,undefined4 param_2,undefined2 *param_3,undefined4 param_4,
             int param_5,undefined4 param_6,int param_7,undefined4 param_8,undefined4 param_9,
             undefined4 param_10,undefined4 param_11,undefined4 param_12,undefined4 param_13)

{
  undefined4 uVar1;
  uint uVar2;
  undefined4 uVar3;

  uVar1 = ov12_0223A99C();
  uVar1 = ov12_0223BB94(uVar1,param_11);
  uVar2 = ov12_0223AB0C(param_1,param_11);
  if ((uVar2 & 1) == 0) {
    uVar3 = 0;
  }
  else {
    uVar3 = 2;
  }
  func_0x02014540(*param_3,param_3[1],5,uVar1,*(undefined4 *)(param_3 + 6),0,uVar3,param_3[3]);
  uVar1 = ov12_0223A99C(param_1);
  ov12_0223BBA8(uVar1,param_11,*param_3);
  uVar1 = ov12_0223A99C(param_1);
  ov12_0223BBC0(uVar1,param_11,param_3[2]);
  uVar1 = ov12_0223A99C(param_1);
  ov12_0223BBD8(uVar1,param_11,param_7);
  uVar1 = PokepicManager_CreatePokepicAt
                    (param_2,param_3,param_4,param_5 + param_7,param_6,param_11,param_11,param_12,
                     param_13);
  if ((uVar2 & 1) != 0) {
    if (1 < (int)uVar2) {
      uVar2 = (int)uVar2 >> 1;
    }
    Pokepic_SetAttr(uVar1,0x2a,uVar2);
    Pokepic_SetAttr(uVar1,0x2e,param_10);
    Pokepic_SetAttr(uVar1,0x14,param_5 + 0x24);
    Pokepic_SetAttr(uVar1,0x15,param_9);
    Pokepic_SetAttr(uVar1,0x16,0x24 - param_7);
    Pokepic_SetAttr(uVar1,0x29,param_8);
  }
  return uVar1;
}

