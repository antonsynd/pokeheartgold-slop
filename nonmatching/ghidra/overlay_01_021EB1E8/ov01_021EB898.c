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
typedef void code(void);
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
undefined4 GF2DGfxResHeader_GetExDat1ByIndex(undefined4, undefined4);
undefined4 AddCharResObjFromOpenNarcWithAtEndFlag(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 GF2dGfxResHeader_GetObjIdByIndex(undefined4, undefined4);
undefined4 AddPlttResObjFromOpenNarcWithAtEndFlag(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 GF2DGfxResHeader_GetByIndex(void);
undefined4 GF2DGfxResHeader_GetExDat0ByIndex(undefined4, undefined4);
undefined4 GF2DGfxResHeader_GetCompressFlagByIndex(undefined4, undefined4);
undefined4 func_0x0200a540(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_0200A540");
undefined4 GF2DGfxResHeader_GetNarcMemberIdByIndex(undefined4, undefined4);

undefined4
ov01_021EB898(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
             undefined4 param_5,undefined4 param_6)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uStack_2c;
  
  uVar1 = GF2DGfxResHeader_GetByIndex();
  uVar2 = GF2DGfxResHeader_GetNarcMemberIdByIndex(uVar1,param_3);
  uVar3 = GF2DGfxResHeader_GetCompressFlagByIndex(uVar1,param_3);
  uVar4 = GF2DGfxResHeader_GetExDat0ByIndex(uVar1,param_3);
  uVar5 = GF2DGfxResHeader_GetExDat1ByIndex(uVar1,param_3);
  uVar1 = GF2dGfxResHeader_GetObjIdByIndex(uVar1,param_3);
  switch(param_2) {
  case 0:
    uStack_2c = AddCharResObjFromOpenNarcWithAtEndFlag
                          (param_4,param_5,uVar2,uVar3,uVar1,uVar4,4,param_6);
    break;
  case 1:
    uStack_2c = AddPlttResObjFromOpenNarcWithAtEndFlag
                          (param_4,param_5,uVar2,uVar3,uVar1,uVar4,uVar5,4,param_6);
    break;
  case 2:
    uStack_2c = func_0x0200a540(param_4,param_5,uVar2,uVar3,uVar1,2,4);
    break;
  case 3:
    uStack_2c = func_0x0200a540(param_4,param_5,uVar2,uVar3,uVar1,3,4);
  }
  return uStack_2c;
}

