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
undefined4 ov85_021E7644();
undefined4 ov85_021E8558();
undefined4 ov85_021E750C();
undefined4 ov85_021E8150();
undefined4 sub_02096D4C();
undefined4 ov85_021E834C();
undefined4 ov85_021E8128();
undefined4 ov85_021E8570();
undefined4 ov85_021E8358();
undefined4 ov85_021E8144();

undefined4
ov85_021E5FE0(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined1 auStack_18 [2];
  undefined2 uStack_16;
  undefined2 uStack_14;
  undefined2 uStack_12;
  undefined4 uStack_10;
  
  uStack_10 = param_4;
  iVar1 = ov85_021E8570();
  if ((iVar1 == 1) && (iVar1 = ov85_021E8150(param_1), iVar1 == 0)) {
    *param_1 = 0x1d;
    return 1;
  }
  if ((param_1[0xd] != 0) && (iVar1 = ov85_021E8150(param_1), iVar1 == 0)) {
    ov85_021E8128(param_1);
  }
  iVar1 = ov85_021E834C(param_1);
  if ((iVar1 == 0) && (iVar1 = ov85_021E750C(param_1), iVar1 == 1)) {
    iVar1 = ov85_021E8150(param_1);
    if (iVar1 == 0) {
      ov85_021E8128(param_1);
      param_1[0xe] = 1;
    }
    ov85_021E8358(param_1);
  }
  if ((param_1[0xe] != 0) &&
     (iVar1 = sub_02096D4C(*(undefined4 *)(param_1[0x33] + 0x30),10,param_1 + 0xe,1), iVar1 == 1)) {
    param_1[0xe] = 0;
  }
  if ((int)param_1[2] < 300) {
    iVar1 = param_1[0x47] + 0xbf;
    param_1[0x47] = iVar1;
    if (0xdfff < iVar1) {
      param_1[0x47] = 0xe000;
    }
  }
  else {
    iVar1 = param_1[0x47] + -0xbf;
    param_1[0x47] = iVar1;
    if (iVar1 < 0x4000) {
      param_1[0x47] = 0x4000;
    }
  }
  iVar2 = param_1[0x47];
  iVar1 = ov85_021E8144(param_1);
  if (iVar1 == 1) {
    ov85_021E7644(param_1 + 0x35,iVar2 << 1);
  }
  else {
    ov85_021E8558(param_1,iVar2);
  }
  uStack_16 = (undefined2)param_1[2];
  uStack_14 = (undefined2)
              ((int)(param_1[0x47] + ((uint)((int)param_1[0x47] >> 0xb) >> 0x14)) >> 0xc);
  uStack_12 = (undefined2)
              ((int)(param_1[0x44] + ((uint)((int)param_1[0x44] >> 0xb) >> 0x14)) >> 0xc);
  sub_02096D4C(param_1[0x34],0xb,auStack_18,8);
  return 0;
}

