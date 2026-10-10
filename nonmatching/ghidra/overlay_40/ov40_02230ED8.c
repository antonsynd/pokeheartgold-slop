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
undefined4 sub_020878B0();
undefined4 ov40_0222DAF0();
undefined4 ov40_02230E34();
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");
undefined4 sub_02087A30();
undefined4 ov40_0222C4DC();
undefined4 IsPaletteFadeFinished();
undefined4 sub_020879E0();
undefined4 PlaySE();
undefined4 sub_020878B8();
undefined4 sub_02087948();
undefined4 ov40_0222BF80();
undefined4 BeginNormalPaletteFade();
undefined4 System_GetTouchHeld();
undefined4 sub_02087A54();
undefined4 ov40_02230EB4();

undefined4 ov40_02230ED8(int param_1)

{
  undefined2 uVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 8);
  switch(iVar2) {
  case 0:
    iVar2 = ov40_0222C4DC();
    if (iVar2 == 1) {
      ov40_0222BF80(param_1,1);
    }
    else {
      BeginNormalPaletteFade(0,1,1,0,6,1,0x6d);
      uVar1 = ov40_0222DAF0(param_1);
      func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),2,0xfffe,0x10,uVar1);
      uVar1 = ov40_0222DAF0(param_1);
      func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),0,0xbfff,0x10,uVar1);
      uVar1 = ov40_0222DAF0(param_1);
      func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0x3ffe,0x10,uVar1);
      uVar1 = ov40_0222DAF0(param_1);
      func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),1,0xffff,0x10,uVar1);
      sub_02087A30(*(undefined4 *)(param_1 + 0x6f4));
      sub_02087A30(*(undefined4 *)(param_1 + 0x6f0));
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 1:
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 != 0) {
      sub_02087948(*(undefined4 *)(param_1 + 0x6f4),0x80,0x10);
      sub_020878B8(*(undefined4 *)(param_1 + 0x6f4),0x80,0xd8);
      sub_020879E0(*(undefined4 *)(param_1 + 0x6f4),1);
      sub_020878B0(*(undefined4 *)(param_1 + 0x6f4),1);
      PlaySE(0x576);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 2:
    iVar2 = *(int *)(param_1 + 0xc) + 1;
    *(int *)(param_1 + 0xc) = iVar2;
    if (0x18 < iVar2) {
      *(undefined4 *)(param_1 + 0xc) = 0;
      sub_02087948(*(undefined4 *)(param_1 + 0x6f0),0x80,0xfffffff0);
      sub_020878B8(*(undefined4 *)(param_1 + 0x6f0),0x80,0x60);
      sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),1);
      sub_020878B0(*(undefined4 *)(param_1 + 0x6f0),1);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 3:
    iVar2 = *(int *)(param_1 + 0xc) + 1;
    *(int *)(param_1 + 0xc) = iVar2;
    if (0x11 < iVar2) {
      ov40_02230E34();
      sub_020879E0(*(undefined4 *)(param_1 + 0x6f4),0);
      *(undefined4 *)(param_1 + 0xc) = 0;
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 4:
    if (*(int *)(param_1 + 0xc) < 0x10) {
      *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0xc) + 4;
      func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),0,0xf000,*(uint *)(param_1 + 0xc) & 0xff,
                      0xffff);
    }
    else {
      *(int *)(param_1 + 8) = iVar2 + 1;
    }
    break;
  case 5:
    if (*(int *)(param_1 + 0xc) < 1) {
      *(int *)(param_1 + 8) = iVar2 + 1;
    }
    else {
      *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0xc) + -4;
      func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),0,0xf000,*(uint *)(param_1 + 0xc) & 0xff,
                      0xffff);
    }
    break;
  case 6:
    iVar2 = System_GetTouchHeld();
    if (iVar2 == 1) {
      ov40_02230EB4(param_1);
      sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),0);
      sub_02087A54(*(undefined4 *)(param_1 + 0x6f4));
      sub_02087A54(*(undefined4 *)(param_1 + 0x6f0));
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  default:
    ov40_0222BF80(param_1,1);
  }
  return 0;
}

