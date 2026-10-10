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
undefined4 ov40_0222E7B8();
undefined4 ov40_0222C4E8();
undefined4 ov40_022421FC();
undefined4 ov40_02230964();
undefined4 IsPaletteFadeFinished();
undefined4 TouchHitboxController_Destroy();
undefined4 ov40_0223064C();
undefined4 ov40_02240910();
undefined4 ov40_02241A34();
undefined4 sub_02087A84();
undefined4 ov40_0222D8C8();
undefined4 BeginNormalPaletteFade();

undefined4 ov40_02242CFC(int param_1)

{
  int iVar1;
  int iVar2;

  iVar2 = *(int *)(param_1 + 0x860);
  iVar1 = *(int *)(param_1 + 8);
  if (iVar1 == 0) {
    BeginNormalPaletteFade(0,0,0,0,6,1,0x6d);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  }
  else if (iVar1 == 1) {
    iVar1 = IsPaletteFadeFinished();
    if (iVar1 == 1) {
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
  }
  else {
    if (iVar1 != 2) {
      return 1;
    }
    ov40_02230964(param_1,1);
    if (*(int *)(iVar2 + 0x1cc) == 0) {
      ov40_0223064C(iVar2 + 0x10c,param_1);
    }
    else {
      ov40_0222E7B8(iVar2 + 0x80,param_1);
    }
    ov40_02230964(param_1,0);
    TouchHitboxController_Destroy(*(undefined4 *)(iVar2 + 0x608));
    TouchHitboxController_Destroy(*(undefined4 *)(iVar2 + 0x60c));
    TouchHitboxController_Destroy(*(undefined4 *)(iVar2 + 0x610));
    ov40_02230964(param_1,1);
    ov40_02240910(param_1);
    ov40_02241A34(param_1);
    ov40_022421FC(param_1);
    ov40_0222D8C8(param_1);
    ov40_02230964(param_1,0);
    ov40_0222C4E8(param_1,**(undefined4 **)(param_1 + 0x10));
    sub_02087A84(*(undefined4 *)(param_1 + 0x868),1,0);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  }
  return 0;
}

