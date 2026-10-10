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
undefined4 ov96_0220CCBC();
undefined4 ov96_0220CE04();
undefined4 ov96_0220CD00();
undefined4 ov96_0220CC38();
undefined4 MTRandom(void);
undefined4 ov96_0220D0F8();
undefined4 ov96_0220CD84();
undefined4 ov96_021E8228();
undefined4 _u32_div_f(unsigned int, unsigned int);

undefined4 ov96_0220CAC4(undefined4 *param_1)

{
  int iVar1;
  uint uVar2;
  int extraout_r1;
  uint uVar3;
  undefined4 uVar4;

  uVar4 = 0;
  uVar2 = ((param_1[5] & 0xffff) >> 8) + 1 & 0xff;
  param_1[5] = param_1[5] & 0xffff00ff | uVar2 << 8;
  if ((param_1[6] & 0x3fffffff) >> 0x16 <= uVar2) {
    iVar1 = ov96_0220CD00();
    if (iVar1 == 0) {
      iVar1 = ov96_0220CCBC(param_1);
      if (iVar1 != 0) {
        uVar4 = 2;
      }
      if ((int)(param_1[7] << 0x17) < 0) {
        if ((1 < (param_1[7] & 0xff)) && (iVar1 = ov96_0220CC38(param_1), iVar1 != 0)) {
          ov96_0220CE04(param_1,uVar4);
        }
      }
      else {
        ov96_0220CE04(param_1,uVar4);
      }
    }
    else {
      ov96_0220D0F8(param_1);
      ov96_021E8228(*param_1,(uint)param_1[6] >> 0x1e,(uint)param_1[5] >> 0x1e,7,1);
      ov96_0220CD84(param_1,1);
    }
    param_1[5] = param_1[5] & 0xffff00ff;
    uVar2 = MTRandom();
    { uint nug_a = (uint)(uVar2), nug_b = (uint)(3); extraout_r1 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
    param_1[6] = (extraout_r1 + 4U & 0xff) << 0x16 | param_1[6] & 0xc03fffff;
  }
  uVar2 = param_1[7];
  if ((int)(uVar2 << 0x17) < 0) {
    uVar3 = (uVar2 & 0xff) + 1 & 0xff;
    param_1[7] = uVar2 & 0xffffff00 | uVar3;
    if (9 < uVar3) {
      param_1[7] = param_1[7] & 0xfffffe00;
    }
  }
  return uVar4;
}

