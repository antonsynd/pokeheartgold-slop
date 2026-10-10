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
undefined4 func_0x02073f64() __asm__("sub_02073F64");
undefined4 GetMonData();
undefined4 func_0x02078068() __asm__("sub_02078068");
undefined4 ov14_021E6480();
undefined4 ov14_021E6070();
undefined4 Party_GetMonByIndex();
undefined4 ov14_021E6464();

undefined4 ov14_021E690C(int param_1,uint param_2,uint param_3,undefined4 param_4)

{
  undefined2 uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  
  ov14_021E6070(param_1,param_3,0xac,0,param_4);
  if ((param_3 & 0x80) == 0) {
    uVar2 = (uint)*(byte *)(param_1 + 0x1f);
    iVar3 = ov14_021E6070(param_1,param_3,0xac,0);
  }
  else {
    uVar2 = ov14_021E6464(param_1,param_3);
    if ((uVar2 == *(byte *)(param_1 + 0x1f)) ||
       (iVar3 = func_0x02073f64(*(undefined4 *)(param_1 + 4),uVar2), iVar3 == 0x1e)) {
      return 0;
    }
    param_3 = param_3 ^ 0x80;
    iVar3 = 0;
  }
  if (param_2 < 0x1e) {
    if ((0x1d < param_3) && (iVar3 != 0)) {
      uVar5 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 8),param_3 - 0x1e);
      uVar1 = GetMonData(uVar5,6,0);
      iVar3 = func_0x02078068(uVar1);
      if (iVar3 == 1) {
        return 0;
      }
      iVar3 = GetMonData(uVar5,0xa2,0);
      if (iVar3 != 0) {
        return 0;
      }
      iVar3 = ov14_021E6070(param_1,param_2,0x4c,0);
      if ((iVar3 != 0) && (iVar3 = ov14_021E6480(param_1,param_3 - 0x1e), iVar3 == 0)) {
        return 0;
      }
    }
  }
  else {
    iVar4 = ov14_021E6480(param_1,param_2 - 0x1e);
    if (iVar4 == 0) {
      if (iVar3 == 0) {
        if ((param_3 < 0x1e) || (uVar2 != *(byte *)(param_1 + 0x1f))) {
          return 0;
        }
      }
      else {
        iVar3 = ov14_021E6070(param_1,param_3,0x4c,0);
        if ((iVar3 != 0) && (param_3 < 0x1e)) {
          return 0;
        }
      }
    }
    if (param_3 < 0x1e) {
      uVar5 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 8),param_2 - 0x1e);
      uVar1 = GetMonData(uVar5,6,0);
      iVar3 = func_0x02078068(uVar1);
      if (iVar3 == 1) {
        return 0;
      }
      iVar3 = GetMonData(uVar5,0xa2,0);
      if (iVar3 != 0) {
        return 0;
      }
    }
  }
  return 1;
}

