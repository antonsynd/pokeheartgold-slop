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
undefined4 PlaySE();
undefined4 ov43_0222BC78();
undefined4 ov43_0222C844();
undefined4 func_0x0202529c() __asm__("sub_0202529C");
extern undefined ov43_0222EF60;

undefined4 ov43_0222BEEC(short *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  short sVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  
  puVar6 = param_4;
  uVar2 = func_0x0202529c(&ov43_0222EF60);
  iVar5 = -1;
  if (uVar2 == 0xffffffff) {
    return 0;
  }
  if (uVar2 < 9) {
    *param_4 = 1;
    param_1[2] = (short)uVar2;
    PlaySE(0x5e5);
    ov43_0222C844(param_1 + 4,param_3,(int)param_1[2]);
    uVar3 = ov43_0222BC78(param_1,param_2,param_3,5,puVar6);
    return uVar3;
  }
  if (uVar2 != 9) {
    if (uVar2 == 10) {
      iVar5 = 1;
    }
    else {
      iVar5 = (int)(((uVar2 - 0xb) - (int)*param_1) * 0x1000000) >> 0x18;
    }
  }
  if (iVar5 == 0) {
    return 0;
  }
  *param_4 = 1;
  param_1[1] = *param_1;
  *param_1 = *param_1 + (short)iVar5;
  sVar1 = *param_1;
  iVar4 = (int)sVar1;
  if (-1 < iVar5) {
    *param_1 = ((ushort)((uint)(iVar4 * 0x40000000 + (iVar4 >> 0x1f)) >> 0x1e) |
               (ushort)((iVar4 >> 0x1f) << 2)) - (sVar1 >> 0xf);
    uVar3 = ov43_0222BC78(param_1,param_2,param_3,2,puVar6);
    return uVar3;
  }
  if (iVar4 < 0) {
    *param_1 = sVar1 + 4;
  }
  uVar3 = ov43_0222BC78(param_1,param_2,param_3,1,puVar6);
  return uVar3;
}

