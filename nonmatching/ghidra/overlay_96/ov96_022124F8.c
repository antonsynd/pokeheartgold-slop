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
undefined4 func_0x020ccf80(void *) __asm__("sub_020CCF80");
undefined4 func_0x020ccd78(void *, void *, void *) __asm__("sub_020CCD78");
short CalcAngleBetweenVecs(void *, void *);
undefined4 func_0x020ccdac(void *, void *, void *) __asm__("sub_020CCDAC");
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 func_0x020cd224(int, void *, void *, void *) __asm__("sub_020CD224");
undefined4 func_0x020ccfe0(void *, void *) __asm__("sub_020CCFE0");
undefined4 ov96_02213FB4();
undefined4 ov96_02213728();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 ov96_02213558();

void ov96_022124F8(void)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int extraout_r1;
  int extraout_r1_00;
  int iVar5;
  int iVar6;
  int *piVar7;
  int *piStack_11c;
  undefined4 uStack_104;
  undefined4 uStack_100;
  undefined4 uStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  undefined4 uStack_f0;
  undefined4 uStack_ec;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined1 auStack_bc [12];
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  int aiStack_a4 [36];

  iVar1 = PokeathlonCourse_GetHeapAllocPtr4();
  iVar5 = 0;
  uStack_b0 = 0;
  uStack_ac = 0;
  uStack_a8 = 0;
  piVar7 = aiStack_a4;
  do {
    iVar2 = func_0x020f2998(iVar5,3);
    func_0x020f2998(iVar5,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
    iVar6 = iVar1 + 0x5c + iVar2 * 0x174 + extraout_r1 * 0x7c;
    *(undefined4 *)(iVar6 + 0x3c) = uStack_b0;
    *(undefined4 *)(iVar6 + 0x40) = uStack_ac;
    *(undefined4 *)(iVar6 + 0x44) = uStack_a8;
    iVar2 = *(int *)(iVar6 + 0x34);
    *piVar7 = *(int *)(iVar6 + 0x30);
    piVar7[1] = iVar2;
    piVar7[2] = *(int *)(iVar6 + 0x38);
    uStack_d4 = *(undefined4 *)(iVar6 + 0x30);
    uStack_d0 = *(undefined4 *)(iVar6 + 0x34);
    uStack_cc = *(undefined4 *)(iVar6 + 0x38);
    if (*(int *)(iVar6 + 0x48) != 0) {
      if ((*(int *)(iVar6 + 0x48) - 2U < 2) && (0 < *(short *)(iVar6 + 0x5a))) {
        *(short *)(iVar6 + 0x5a) = *(short *)(iVar6 + 0x5a) + -1;
      }
      if ((*(short *)(iVar6 + 0x58) == 0) && (*(short *)(iVar6 + 0x5a) < 1)) {
        *(undefined4 *)(iVar6 + 0x48) = 0;
        *(undefined2 *)(iVar6 + 0x5a) = 0;
      }
      else {
        func_0x020cd224((int)*(short *)(iVar6 + 0x58) << 0xc,iVar6 + 0x4c,&uStack_d4,&uStack_d4);
        *(undefined4 *)(iVar6 + 0x30) = uStack_d4;
        *(undefined4 *)(iVar6 + 0x34) = uStack_d0;
        *(undefined4 *)(iVar6 + 0x38) = uStack_cc;
        *(undefined4 *)(iVar6 + 0x24) = *(undefined4 *)(iVar6 + 0x30);
        *(undefined4 *)(iVar6 + 0x28) = *(undefined4 *)(iVar6 + 0x34);
        *(undefined4 *)(iVar6 + 0x2c) = *(undefined4 *)(iVar6 + 0x38);
        if (0 < *(short *)(iVar6 + 0x58)) {
          *(short *)(iVar6 + 0x58) = *(short *)(iVar6 + 0x58) + -1;
        }
        if ((*(int *)(iVar6 + 0x78) != 2) && (*(int *)(iVar6 + 0x48) == 3)) {
          ov96_02213FB4(iVar6);
        }
      }
    }
    if ((*(int *)(iVar6 + 0x78) == 2) || (*(char *)(iVar6 + 0x60) != '\0')) {
      *(char *)(iVar6 + 0x60) = *(char *)(iVar6 + 0x60) + -1;
      if (*(char *)(iVar6 + 0x60) == '\0') {
        *(undefined4 *)(iVar6 + 0x78) = 0;
        *(undefined1 *)(iVar6 + 0x71) = *(undefined1 *)(iVar6 + 0x70);
      }
    }
    else if (*(int *)(iVar6 + 0x48) == 0) {
      func_0x020ccdac(iVar6 + 0x24,&uStack_d4,auStack_bc);
      iVar2 = func_0x020ccf80(auStack_bc);
      if (iVar2 < 1) {
        ov96_02213558(iVar6);
      }
      else {
        func_0x020ccfe0(auStack_bc,&uStack_c8);
        *(undefined4 *)(iVar6 + 0x3c) = uStack_c8;
        *(undefined4 *)(iVar6 + 0x40) = uStack_c4;
        *(undefined4 *)(iVar6 + 0x44) = uStack_c0;
        if (*(int *)(iVar6 + 0x78) == 1) {
          iVar3 = *(int *)(iVar6 + 0x68);
        }
        else if (*(int *)(iVar6 + 0x78) == 3) {
          iVar3 = 0x2000;
        }
        else {
          iVar3 = *(int *)(iVar6 + 100);
        }
        if (iVar3 < iVar2) {
          uStack_e0 = 0;
          uStack_dc = 0;
          uStack_d8 = 0;
          func_0x020cd224(iVar3,&uStack_c8,&uStack_e0,auStack_bc);
          func_0x020ccd78(auStack_bc,&uStack_d4,&uStack_d4);
        }
        else {
          uStack_d4 = *(undefined4 *)(iVar6 + 0x24);
          uStack_d0 = *(undefined4 *)(iVar6 + 0x28);
          uStack_cc = *(undefined4 *)(iVar6 + 0x2c);
        }
        if (iVar2 != 0) {
          uStack_ec = 0;
          uStack_e8 = 0;
          uStack_e4 = 0x1000;
          uStack_f8 = uStack_c4;
          uStack_f0 = uStack_c8;
          uStack_f4 = 0;
          uVar4 = CalcAngleBetweenVecs(&uStack_ec,&uStack_f8);
          if ((uVar4 < 0x2001) || (0xdfff < uVar4)) {
            *(undefined2 *)(iVar6 + 0x5c) = 4;
          }
          else if ((uVar4 < 0x2001) || (0x5fff < uVar4)) {
            if ((uVar4 < 0x6000) || (0xa000 < uVar4)) {
              *(undefined2 *)(iVar6 + 0x5c) = 1;
            }
            else {
              *(undefined2 *)(iVar6 + 0x5c) = 3;
            }
          }
          else {
            *(undefined2 *)(iVar6 + 0x5c) = 2;
          }
        }
        *(undefined4 *)(iVar6 + 0x30) = uStack_d4;
        *(undefined4 *)(iVar6 + 0x34) = uStack_d0;
        *(undefined4 *)(iVar6 + 0x38) = uStack_cc;
      }
    }
    iVar5 = iVar5 + 1;
    piVar7 = piVar7 + 3;
  } while (iVar5 < 0xc);
  piVar7 = aiStack_a4;
  iVar5 = 0;
  piStack_11c = piVar7;
  do {
    iVar2 = func_0x020f2998(iVar5,3);
    func_0x020f2998(iVar5,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1_00) : : "cc");
    iVar2 = iVar1 + 0x5c + iVar2 * 0x174 + extraout_r1_00 * 0x7c;
    if (((*(int *)(iVar2 + 0x30) != *piVar7) || (*(int *)(iVar2 + 0x34) != piVar7[1])) &&
       (iVar6 = ov96_02213728(iVar2 + 0x30,piStack_11c,*(undefined4 *)(iVar2 + 0x20),1,&uStack_104),
       iVar6 != 0)) {
      *(undefined4 *)(iVar2 + 0x30) = uStack_104;
      *(undefined4 *)(iVar2 + 0x34) = uStack_100;
      *(undefined4 *)(iVar2 + 0x38) = uStack_fc;
      *(undefined4 *)(iVar2 + 0x24) = *(undefined4 *)(iVar2 + 0x30);
      *(undefined4 *)(iVar2 + 0x28) = *(undefined4 *)(iVar2 + 0x34);
      *(undefined4 *)(iVar2 + 0x2c) = *(undefined4 *)(iVar2 + 0x38);
    }
    if (((*(int *)(iVar2 + 0x30) == *(int *)(iVar2 + 0x24)) &&
        (*(int *)(iVar2 + 0x34) == *(int *)(iVar2 + 0x28))) &&
       ((*(int *)(iVar2 + 0x78) != 3 && (*(int *)(iVar2 + 0x78) != 2)))) {
      *(undefined4 *)(iVar2 + 0x78) = 0;
    }
    iVar5 = iVar5 + 1;
    piStack_11c = piStack_11c + 3;
    piVar7 = piVar7 + 3;
  } while (iVar5 < 0xc);
  return;
}

