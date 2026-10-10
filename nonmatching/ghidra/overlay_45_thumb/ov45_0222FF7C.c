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
undefined4 ov45_0222F154();
undefined4 ov45_02230164();
undefined4 ov45_0222E9E0();
undefined4 ov45_02230384();
undefined4 ov45_0222FB24();
extern int iRam022577c0 __asm__("sub_022577C0");

int ov45_0222FF7C(int param_1,uint *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  uint uStack_20;
  int iStack_1c;
  uint uStack_18;
  int iStack_14;
  undefined4 uStack_10;

  uStack_10 = param_4;
  iVar1 = ov45_0222FB24(iRam022577c0,param_1,0);
  if (iVar1 != -1) {
    iVar1 = ov45_0222E9E0();
    if (((iVar1 != param_1) && (*(char *)(iRam022577c0 + 0x69e) != '\0')) &&
       ((uint)*(ushort *)(iRam022577c0 + 0x69c) == *param_2)) {
      ov45_02230384(iRam022577c0 + 0x5b8 + (uint)*(ushort *)(iRam022577c0 + 0x69c) * 0x4c,&uStack_18
                   );
      ov45_02230384(param_2,&uStack_20);
      if ((int)((iStack_14 - iStack_1c) - (uint)(uStack_18 < uStack_20)) < 0 !=
          (SBORROW4(iStack_14,iStack_1c) !=
          SBORROW4(iStack_14 - iStack_1c,(uint)(uStack_18 < uStack_20)))) {
        return uStack_18 - uStack_20;
      }
      *(undefined1 *)(iRam022577c0 + 0x69f) = 1;
      ov45_0222F154();
    }
    iVar1 = ov45_02230164(iRam022577c0,*param_2,param_1,param_2);
  }
  return iVar1;
}

