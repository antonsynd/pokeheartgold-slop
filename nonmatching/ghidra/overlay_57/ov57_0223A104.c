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
undefined4 ov57_0223B78C();
undefined4 ov57_02238DD0();
undefined4 ov57_02237F3C();
undefined4 ov57_02238E48();
undefined4 ov57_02239114();
undefined4 ov57_02239BEC();
undefined4 ov57_02239EB4();
undefined4 ov57_02239C88();
undefined4 ov57_0223B75C();
undefined4 ov57_02238F48();
undefined4 ov57_02239184();
undefined4 ov57_022392F4();
undefined4 NARC_New();
undefined4 ov57_02239CE8();
undefined4 ov57_02239D48();
undefined4 ov57_022385DC();
undefined4 ov57_022383D0();
undefined4 ov57_02239014();
undefined4 ov57_02237F14();
undefined4 ov57_022387C0();
undefined4 ov57_0223B180();
undefined4 ov57_02238794();
undefined4 ov57_02239728();
undefined4 ov57_022388E4();
undefined4 func_0x020186a4() __asm__("sub_020186A4");
undefined4 ov57_02239B94();
undefined4 ov57_02238A00();
undefined4 NARC_Delete();
undefined4 ov57_0223B700();
undefined4 ov57_02239240();
undefined4 ov57_0223B948();
undefined4 ov57_0223866C();
undefined4 ov57_02239BAC();
undefined4 ov57_0223A034();
undefined4 ov57_02238958();
undefined4 IsPaletteFadeFinished();
extern ushort uRam04000304 __asm__("sub_04000304");
undefined4 ov57_02239BCC();
undefined4 ov57_02239558();
undefined4 ov57_02238FC4();
undefined4 ov57_02238AC0();
undefined4 ov57_0223864C();
undefined4 ov57_02238FEC();
undefined4 ov57_02239260();
undefined4 ov57_02239588();
undefined4 ov57_0223A05C();

undefined4 ov57_0223A104(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  code *pcVar2;
  int iVar3;
  
  switch(*(undefined4 *)(param_1 + 0x3fc)) {
  case 0:
    uVar1 = NARC_New(0x57,0x34,param_3,param_4,param_4);
    ov57_02238DD0(param_1);
    ov57_02238E48(param_1);
    ov57_02238F48(param_1);
    ov57_02239BEC(param_1,uVar1);
    ov57_02239C88(param_1,uVar1);
    ov57_02239CE8(param_1,uVar1);
    ov57_02239014(param_1);
    ov57_022392F4(param_1,uVar1);
    ov57_022385DC(param_1);
    ov57_02237F3C(param_1);
    ov57_022383D0(param_1,1);
    ov57_02237F14(param_1);
    ov57_02239D48(param_1,uVar1);
    ov57_02239EB4(param_1);
    ov57_02239114(param_1,uVar1);
    ov57_02239184(param_1);
    ov57_0223B75C(param_1);
    ov57_0223B78C(param_1);
    ov57_022388E4(param_1,*(undefined4 *)(param_1 + 0x448));
    ov57_02238958(param_1);
    ov57_02238A00(param_1);
    ov57_0223A034(param_1,0);
    ov57_02239240(param_1,0);
    ov57_02238794(param_1);
    ov57_022387C0(param_1,0);
    ov57_02239728(param_1 + 0x11c,3,7,0);
    ov57_02239B94();
    ov57_0223B948(param_1,0);
    ov57_0223866C(param_1,1);
    uRam04000304 = uRam04000304 & 0x7fff;
    NARC_Delete(uVar1);
    *(int *)(param_1 + 0x3fc) = *(int *)(param_1 + 0x3fc) + 1;
    break;
  case 1:
    ov57_02239BAC();
    *(int *)(param_1 + 0x3fc) = *(int *)(param_1 + 0x3fc) + 1;
    break;
  case 2:
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 != 1) break;
    *(int *)(param_1 + 0x3fc) = *(int *)(param_1 + 0x3fc) + 1;
  case 3:
    uVar1 = ov57_0223B180(param_1);
    *(undefined4 *)(param_1 + 0x3fc) = uVar1;
    break;
  case 4:
    pcVar2 = (code *)func_0x020186a4(*(undefined4 *)(param_1 + 0x24c));
    if (pcVar2 == (code *)0xfffffffe) {
      ov57_0223B700(param_1);
      ov57_02239728(param_1 + 0x11c,3,7,0);
      *(undefined4 *)(param_1 + 0x3fc) = 3;
    }
    else if ((pcVar2 != (code *)0xffffffff) && (pcVar2 != (code *)0x0)) {
      iVar3 = (*pcVar2)(param_1);
      if (iVar3 == 1) {
        ov57_02239728(param_1 + 0x11c,3,7,0);
        *(undefined4 *)(param_1 + 0x3fc) = 3;
      }
      else {
        ov57_0223B700(param_1);
      }
    }
    break;
  case 5:
    ov57_02239BCC();
    *(int *)(param_1 + 0x3fc) = *(int *)(param_1 + 0x3fc) + 1;
    break;
  case 6:
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 == 1) {
      ov57_0223864C(param_1);
      ov57_02239588(param_1);
      ov57_02238FEC(param_1);
      ov57_0223A05C(param_1);
      ov57_02239260(param_1);
      ov57_02238AC0(param_1);
      return 0;
    }
  }
  ov57_02238FC4(param_1);
  ov57_02239558(param_1);
  return 1;
}

