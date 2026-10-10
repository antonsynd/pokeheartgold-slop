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
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");
undefined4 func_0x020f1520() __asm__("sub_020F1520");
undefined4 ov96_021E6104();
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 ov96_022158D4();
undefined4 ov96_022158EC();
undefined4 ov96_0221862C();
undefined4 ov96_02217E7C();
undefined4 ov96_022186B8();
undefined4 ov96_02217FD0();
undefined4 ov96_02218B1C();
undefined4 ov96_0221910C();

void ov96_022180CC(short *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  short *psVar4;
  short *psVar5;
  uint *puVar6;
  int iStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  iStack_30 = 0;
  psVar5 = param_1;
  do {
    uStack_20 = 0;
    uStack_1c = 0;
    uStack_18 = 0;
    uStack_2c = 0;
    uStack_28 = 0;
    uStack_24 = 0;
    iVar1 = (int)*psVar5;
    puVar6 = (uint *)(psVar5 + 4);
    psVar4 = psVar5 + 6;
    if (iVar1 < 1) {
      uVar2 = func_0x020f2178(iVar1 << 0xc);
      func_0x020f24c8(uVar2,0x3f000000);
    }
    else {
      uVar2 = func_0x020f2178(iVar1 << 0xc);
      func_0x020f1520(0x3f000000,uVar2);
    }
    uStack_20 = func_0x020f2104();
    iVar1 = (int)psVar5[1];
    if (iVar1 < 1) {
      uVar2 = func_0x020f2178(iVar1 << 0xc);
      func_0x020f24c8(uVar2,0x3f000000);
    }
    else {
      uVar2 = func_0x020f2178(iVar1 << 0xc);
      func_0x020f1520(0x3f000000,uVar2);
    }
    uStack_1c = func_0x020f2104();
    iVar1 = (int)psVar5[2];
    if (iVar1 < 1) {
      uVar2 = func_0x020f2178(iVar1 << 0xc);
      func_0x020f24c8(uVar2,0x3f000000);
    }
    else {
      uVar2 = func_0x020f2178(iVar1 << 0xc);
      func_0x020f1520(0x3f000000,uVar2);
    }
    uStack_2c = func_0x020f2104();
    iVar1 = (int)psVar5[3];
    if (iVar1 < 1) {
      uVar2 = func_0x020f2178(iVar1 << 0xc);
      func_0x020f24c8(uVar2,0x3f000000);
    }
    else {
      uVar2 = func_0x020f2178(iVar1 << 0xc);
      func_0x020f1520(0x3f000000,uVar2);
    }
    uStack_28 = func_0x020f2104();
    uVar3 = *puVar6;
    if ((int)(uVar3 << 0x11) < 0) {
      iVar1 = ov96_022158D4((int)*psVar5,(int)psVar5[1]);
      if (iVar1 == 0) {
        iVar1 = ov96_021E6104();
        if (iVar1 < 1) {
          iVar1 = ov96_021E6104();
          uVar2 = func_0x020f2178(iVar1 << 0xc);
          func_0x020f24c8(uVar2,0x3f000000);
        }
        else {
          iVar1 = ov96_021E6104();
          uVar2 = func_0x020f2178(iVar1 << 0xc);
          func_0x020f1520(0x3f000000,uVar2);
        }
        uVar2 = func_0x020f2104();
        if (((-1 < *(int *)(psVar5 + 0x36) << 5) && (*(int *)(psVar5 + 0x10) != 3)) &&
           (iVar1 = ov96_022158EC(psVar5 + 0x1c,&uStack_20,uVar2), iVar1 != 0)) {
          *puVar6 = *puVar6 | 0x20000000;
        }
      }
      else {
        iVar1 = ov96_0221862C(psVar4);
        if (iVar1 != 0) {
          ov96_0221910C(psVar4);
        }
      }
    }
    else if ((int)(uVar3 << 0x10) < 0) {
      if ((uVar3 & 0x3fffffff) >> 0x1d == 1) {
        if (*(int *)(psVar5 + 0x10) == 3) {
          *puVar6 = uVar3 & 0xdfffffff;
        }
        else {
          iVar1 = (int)*psVar5 - ((*(int *)(psVar5 + 0x1c) << 4) >> 0x10);
          if (iVar1 < 0) {
            iVar1 = -iVar1;
          }
          if (iVar1 < 2) {
            iVar1 = (int)psVar5[1] - ((*(int *)(psVar5 + 0x1e) << 4) >> 0x10);
            if (iVar1 < 0) {
              iVar1 = -iVar1;
            }
            if (iVar1 < 2) goto LAB_022182fc;
          }
          ov96_022186B8(psVar4,psVar5);
        }
      }
    }
    else if ((uVar3 & 0x1fffffff) >> 0x10 != 0) {
      if (((uVar3 & 0x3fffffff) >> 0x1d == 1) &&
         ((((*(int *)(psVar5 + 0x10) == 1 || (*(int *)(psVar5 + 0x10) == 4)) &&
           (-1 < *(int *)(psVar5 + 0x36) << 3)) && (-1 < *(int *)(psVar5 + 0x36) << 5)))) {
        iVar1 = ov96_022158EC(&uStack_2c,&uStack_20,0x4000);
        if (iVar1 == 0) {
          iVar1 = ov96_022158EC(&uStack_2c,&uStack_20,0xc000);
          if ((iVar1 == 0) && ((*puVar6 & 0x1fffffff) >> 0x10 < 8)) {
            *(uint *)(psVar5 + 0x36) = *(uint *)(psVar5 + 0x36) & 0xdfffffff | 0x40000000;
            psVar5[0x14] = *psVar5;
            psVar5[0x15] = psVar5[1];
          }
        }
        else if ((*puVar6 & 0x1fffffff) >> 0x10 < 8) {
          *(uint *)(psVar5 + 0x36) = *(uint *)(psVar5 + 0x36) & 0xbfffffff | 0x20000000;
        }
      }
      *puVar6 = *puVar6 & 0xdfffffff;
    }
LAB_022182fc:
    ov96_02218B1C(psVar5 + 6,param_2);
    psVar5 = psVar5 + 0x54;
    iStack_30 = iStack_30 + 1;
    if (3 < iStack_30) {
      ov96_02217E7C(param_2);
      ov96_02217FD0(param_1,param_2);
      return;
    }
  } while( true );
}

