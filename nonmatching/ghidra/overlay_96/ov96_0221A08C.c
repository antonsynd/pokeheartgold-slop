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
undefined4 ov96_02215F2C();
undefined4 ov96_02215DD4();
undefined4 GF_AssertFail(void);
undefined4 ov96_02215E48();
undefined4 ov96_0221A034();
undefined4 ov96_02215EE8();
undefined4 ov96_02215DBC();
undefined4 ov96_0221A05C();
undefined4 ov96_02215F80();
undefined4 MTRandom(void);
undefined4 ov96_02215E2C();
undefined4 ov96_02215E94();
undefined4 _u32_div_f(unsigned int, unsigned int);

void ov96_0221A08C(undefined4 *param_1)

{
  undefined1 uVar1;
  byte bVar2;
  char cVar3;
  undefined1 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int iVar7;
  int *piVar8;
  int iVar9;
  short extraout_r1;
  short extraout_r1_00;
  int extraout_r1_01;
  int extraout_r1_02;
  int extraout_r1_03;
  int extraout_r1_04;
  byte *pbVar10;
  uint uVar11;
  undefined1 uVar12;
  uint uVar13;
  int iStack_3c;
  uint uStack_34;
  short sStack_24;
  short sStack_22;
  undefined2 uStack_20;
  undefined2 uStack_1e;
  undefined1 uStack_1c;
  byte bStack_1b;
  undefined1 uStack_1a;
  undefined1 uStack_19;
  byte abStack_18 [4];
  
  cVar3 = '\0';
  uStack_34 = 0;
  abStack_18[0] = 0;
  abStack_18[1] = 0;
  abStack_18[2] = 0;
  abStack_18[3] = 0;
  uVar5 = ov96_02215DD4(*param_1,param_1[2] & 3);
  uVar1 = ov96_02215E2C(*param_1,param_1[2] & 3);
  uVar13 = 0;
  pbVar10 = abStack_18;
  do {
    if (uVar13 != (param_1[2] & 3)) {
      uVar6 = ov96_02215DD4(*param_1,uVar13 & 0xff);
      iVar7 = ov96_0221A034(uVar5,uVar6,0x20000);
      if (iVar7 == 0) {
        iVar7 = ov96_0221A034(uVar5,uVar6,0x30000);
        if (iVar7 != 0) {
          iVar7 = ov96_0221A05C(uVar5,uVar6,uVar1);
          if (iVar7 != 0) {
            *pbVar10 = 2;
          }
          cVar3 = cVar3 + '\x01';
        }
      }
      else {
        iVar7 = ov96_0221A05C(uVar5,uVar6,uVar1);
        if (iVar7 == 0) {
          bVar2 = 1;
        }
        else {
          bVar2 = 3;
        }
        *pbVar10 = bVar2;
        uStack_34 = uStack_34 + 1 & 0xff;
      }
    }
    uVar13 = uVar13 + 1;
    pbVar10 = pbVar10 + 1;
  } while ((int)uVar13 < 4);
  uVar11 = 0;
  uStack_1c = 0;
  bStack_1b = 0;
  uStack_1a = 0;
  uStack_19 = 0;
  uVar13 = 0;
  pbVar10 = abStack_18;
  do {
    if ((uVar13 != (param_1[2] & 3)) && (bStack_1b < *pbVar10)) {
      uStack_1c = (undefined1)uVar13;
      bStack_1b = *pbVar10;
    }
    uVar13 = uVar13 + 1;
    pbVar10 = pbVar10 + 1;
  } while ((int)uVar13 < 4);
  uVar13 = MTRandom();
  { uint nug_a = (uint)(uVar13), nug_b = (uint)(100); extraout_r1_01 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
  if (extraout_r1_01 < (int)(uint)*(byte *)(bStack_1b + 0x221d97c)) {
    piVar8 = (int *)ov96_02215DD4(*param_1,uStack_1c);
    uStack_20 = (undefined2)(*piVar8 >> 0xc);
    uStack_1e = (undefined2)(piVar8[1] >> 0xc);
    ov96_02215EE8(*param_1,param_1[2] & 3,&uStack_20);
    *(undefined1 *)(param_1 + 1) = 0x10;
    return;
  }
  uVar13 = MTRandom();
  { uint nug_a = (uint)(uVar13), nug_b = (uint)(100); extraout_r1_02 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
  if (cVar3 != '\0') {
    uVar11 = 5;
  }
  if (uStack_34 != 0) {
    uVar11 = uVar11 + *(byte *)(uStack_34 + 0x221d977) & 0xff;
  }
  if (extraout_r1_02 < (int)uVar11) {
    ov96_02215F2C(*param_1,param_1[2] & 3);
    *(undefined1 *)(param_1 + 1) = 0x14;
    return;
  }
  uVar13 = MTRandom();
  { uint nug_a = (uint)(uVar13), nug_b = (uint)(100); extraout_r1_03 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
  if (extraout_r1_03 < 0x3c) {
    uVar13 = MTRandom();
    { uint nug_a = (uint)(uVar13), nug_b = (uint)(100); extraout_r1_04 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
    if (-1 < (int)(param_1[2] << 0x1a)) {
      uVar1 = 0xff;
      iStack_3c = 999;
      uVar13 = 0;
      uVar12 = 0xff;
      do {
        iVar7 = ov96_02215E48(*param_1,uVar13 & 0xff);
        iVar9 = ov96_02215DBC(*param_1,uVar13 & 0xff);
        uVar4 = uVar12;
        if ((((uVar13 != (param_1[2] & 3)) && (iVar9 != 3)) && (iVar9 != 4)) &&
           ((iVar9 = ov96_02215E94(*param_1,*(undefined1 *)((int)param_1 + 7)), iVar9 == 0 &&
            (iVar7 < iStack_3c)))) {
          uVar4 = (undefined1)uVar13;
          iStack_3c = iVar7;
          uVar1 = uVar12;
        }
        uVar13 = uVar13 + 1;
        uVar12 = uVar4;
      } while ((int)uVar13 < 4);
      if (extraout_r1_04 < 0x3c) {
        *(undefined1 *)((int)param_1 + 7) = uVar4;
      }
      else if (extraout_r1_04 < 100) {
        *(undefined1 *)((int)param_1 + 7) = uVar1;
      }
      else {
        GF_AssertFail();
      }
      if (*(char *)((int)param_1 + 7) != -1) {
        param_1[2] = param_1[2] | 0x20;
        *(undefined1 *)(param_1 + 1) = 0;
        return;
      }
    }
  }
  else {
    if (extraout_r1_03 < 0x50) {
      *(undefined1 *)(param_1 + 1) = 10;
      return;
    }
    if (extraout_r1_03 < 100) {
      uVar13 = MTRandom();
      { uint nug_a = (uint)(uVar13), nug_b = (uint)(0x91); extraout_r1 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
      sStack_24 = extraout_r1 + 0x38;
      uVar13 = MTRandom();
      { uint nug_a = (uint)(uVar13), nug_b = (uint)(0x50); extraout_r1_00 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
      sStack_22 = extraout_r1_00 + 0x48;
      ov96_02215F80(*param_1,param_1[2] & 3,&sStack_24);
      *(undefined1 *)(param_1 + 1) = 10;
    }
  }
  return;
}

