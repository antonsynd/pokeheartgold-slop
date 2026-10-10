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
undefined4 GF_AssertFail(void);
undefined4 ov96_0220D014();
undefined4 ov96_0220D33C();
undefined4 ov96_021E8228();
undefined4 ov96_0220CD84();
ulonglong _u32_div_f(uint, uint);

void ov96_0220CE04(undefined4 *param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  ulonglong uVar4;

  uVar2 = 0;
  if (param_1 == (undefined4 *)0x0) {
    GF_AssertFail();
  }
  uVar1 = (uint)param_1[5] >> 0x1e;
  uVar3 = param_1[uVar1 + 1] & 0x1ff;
  if (param_2 != 0) {
    uVar3 = (int)((uVar3 + 0xa0) * 0x10000) >> 0x10;
  }
  while( true ) {
    param_1[4] = param_1[4] - uVar3;
    if (0 < (int)param_1[4]) break;
    uVar3 = (uint)(short)-(short)param_1[4];
    param_1[4] = 100;
    ov96_021E8228(*param_1,(uint)param_1[6] >> 0x1e,(uint)param_1[5] >> 0x1e,3,1);
    uVar2 = uVar2 + 1 & 0xffff;
  }
  param_1[5] = param_1[5] & 0xffffff00 | (param_1[5] & 0xff) + uVar2 & 0xff;
  uVar3 = param_1[7];
  if (-1 < (int)(uVar3 << 0x16)) {
    if ((int)(uVar3 << 0x17) < 0) {
      uVar3 = ov96_0220D33C((param_1[uVar1 + 1] & 0x3ffffff) >> 0x12,uVar3 & 0xff);
      param_1[uVar1 + 1] = param_1[uVar1 + 1] & 0xfc03ffff | (uVar3 & 0xff) << 0x12;
      if ((param_1[uVar1 + 1] & 0x3ffffff) >> 0x12 == 0) {
        ov96_021E8228(*param_1,(uint)param_1[6] >> 0x1e,(uint)param_1[5] >> 0x1e,1,1);
        ov96_0220CD84(param_1,2);
        return;
      }
    }
    ov96_0220D014(param_1,param_2,uVar2);
  }
  if (((uVar2 != 0) && ((param_1[5] & 0xff) != 0)) &&
     (uVar4 = _u32_div_f(param_1[5] & 0xff,10), (int)(uVar4 >> 0x20) == 0)) {
    ov96_0220CD84(param_1,3);
  }
  param_1[7] = param_1[7] & 0xffffff00 | 0x100;
  ov96_021E8228(*param_1,(uint)param_1[6] >> 0x1e,(uint)param_1[5] >> 0x1e,4,1);
  return;
}

