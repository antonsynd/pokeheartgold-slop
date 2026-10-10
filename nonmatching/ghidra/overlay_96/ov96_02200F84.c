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
undefined4 ov96_0220144C();
undefined4 ov96_021EB03C();
undefined4 LCRandom();
undefined4 GF_AssertFail();
undefined4 ov96_021EB0A4();
undefined4 ov96_0220146C();
undefined4 func_0x020f1b28() __asm__("sub_020F1B28");
undefined4 ov96_021E8228();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
extern undefined ov96_0221C770;

void ov96_02200F84(undefined4 param_1,uint *param_2,uint param_3,int param_4)

{
  undefined1 uVar1;
  uint uVar2;
  uint *puVar3;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;
  int extraout_r1;
  int extraout_r1_00;
  uint extraout_r1_01;
  int *piVar7;
  uint *puVar8;
  undefined4 *puVar9;
  uint *puVar10;
  int *piVar11;
  uint uVar12;
  int iVar13;
  int iVar14;
  bool bVar15;
  bool bVar16;
  int iStack_2e8;
  int iStack_2e4;
  int iStack_2dc;
  int iStack_2d8;
  int iStack_2d4;
  int iStack_2d0;
  int iStack_2cc;
  int iStack_2c8;
  int iStack_2c4;
  int iStack_2c0;
  int aiStack_2bc [4];
  uint auStack_2ac [16];
  uint auStack_26c [150];
  
  uVar2 = param_2[param_3 * 4];
  if (((*(char *)(uVar2 + 0x9d) == '\0') &&
      (*(char *)(uVar2 + (uint)*(byte *)(uVar2 + 0x8b) * 0x1c + 0x30) != '\x02')) &&
     (*(char *)(uVar2 + 0xa9) == '\0')) {
    iVar6 = 0;
    piVar7 = aiStack_2bc;
    iStack_2dc = 0;
    do {
      iVar6 = iVar6 + 1;
      *piVar7 = 0;
      piVar7 = piVar7 + 1;
    } while (iVar6 < 4);
    puVar10 = auStack_2ac;
    iVar6 = iStack_2dc;
    puVar8 = param_2;
    do {
      uVar2 = puVar8[1];
      *puVar10 = *puVar8;
      puVar10[1] = uVar2;
      uVar2 = puVar8[3];
      puVar10[2] = puVar8[2];
      puVar10[3] = uVar2;
      uVar2 = *puVar10;
      ov96_021EB0A4(*(undefined4 *)(uVar2 + (uint)*(byte *)(uVar2 + 0x8b) * 4),
                    (int)(*(int *)(uVar2 + 0x7c) + ((uint)(*(int *)(uVar2 + 0x7c) >> 0xb) >> 0x14))
                    >> 0xc,(int)(*(int *)(uVar2 + 0x80) +
                                ((uint)(*(int *)(uVar2 + 0x80) >> 0xb) >> 0x14)) >> 0xc,&iStack_2c0,
                    &iStack_2c4);
      ov96_021EB03C(*(undefined4 *)(uVar2 + (uint)*(byte *)(uVar2 + 0x8b) * 4),iStack_2c0 << 0xc,
                    iStack_2c4 << 0xc,&iStack_2c8,&iStack_2cc);
      puVar10[2] = (int)(iStack_2c8 + ((uint)(iStack_2c8 >> 0xb) >> 0x14)) >> 0xc;
      uVar2 = (int)(iStack_2cc + ((uint)(iStack_2cc >> 0xb) >> 0x14)) >> 0xc;
      puVar10[3] = uVar2;
      uVar1 = func_0x020f2998(uVar2 - 0x20,0x28);
      *(undefined1 *)((int)param_2 + iVar6 + 0x298) = uVar1;
      if (4 < *(byte *)((int)param_2 + iVar6 + 0x298)) {
        GF_AssertFail();
      }
      iVar6 = iVar6 + 1;
      puVar8 = puVar8 + 4;
      puVar10 = puVar10 + 4;
    } while (iVar6 < 4);
    puVar3 = auStack_2ac + param_3 * 4;
    iVar6 = 0;
    puVar10 = auStack_26c;
    puVar8 = param_2;
    do {
      uVar2 = puVar8[0x11];
      *puVar10 = puVar8[0x10];
      puVar10[1] = uVar2;
      uVar2 = puVar8[0x13];
      puVar10[2] = puVar8[0x12];
      puVar10[3] = uVar2;
      iVar6 = iVar6 + 1;
      puVar10[4] = puVar8[0x14];
      puVar8 = puVar8 + 5;
      puVar10 = puVar10 + 5;
    } while (iVar6 < 0x1e);
    if (0x35f < (int)auStack_2ac[param_3 * 4 + 2]) {
      iVar6 = 0;
      puVar10 = auStack_2ac;
      do {
        ov96_0220144C(puVar10 + 2,0xffffff60);
        iVar6 = iVar6 + 1;
        puVar10 = puVar10 + 4;
      } while (iVar6 < 4);
      iVar6 = 0;
      puVar10 = auStack_26c;
      do {
        ov96_0220144C(puVar10 + 1,0x50);
        iVar6 = iVar6 + 1;
        puVar10 = puVar10 + 5;
      } while (iVar6 < 0x1e);
    }
    iVar6 = 0;
    puVar10 = param_2;
    do {
      iVar13 = iVar6 >> 0x1f;
      *(short *)((int)puVar10 + 0x2ae) = (short)iVar6;
      iVar13 = (((uint)(iVar6 * 0x40000000 + iVar13) >> 0x1e | iVar13 << 2) - iVar13) * 0x28;
      puVar10[0xa7] = auStack_2ac[param_3 * 4 + 2] + 0x14 + iVar13;
      iVar14 = ((int)(iVar6 + ((uint)(iVar6 >> 1) >> 0x1e)) >> 2) * 0x28;
      puVar10[0xa8] = iVar14 + 0x34;
      uVar4 = LCRandom();
      func_0x020f2998(uVar4,0x28);
      puVar10[0xa9] = auStack_2ac[param_3 * 4 + 2] + iVar13 + extraout_r1;
      uVar4 = LCRandom();
      func_0x020f2998(uVar4,0x28);
      puVar10[0xaa] = iVar14 + 0x20 + extraout_r1_00;
      iVar6 = iVar6 + 1;
      puVar10 = puVar10 + 5;
    } while (iVar6 < 0x10);
    puVar9 = (undefined4 *)&ov96_0221C770;
    iVar6 = 0;
    puVar10 = param_2;
    do {
      iVar6 = iVar6 + 1;
      *(short *)(puVar10 + 0xab) = (short)*puVar9;
      puVar9 = puVar9 + 1;
      puVar10 = puVar10 + 5;
    } while (iVar6 < 0x10);
    iStack_2e8 = 0x20;
    uVar2 = 0;
    piVar7 = aiStack_2bc;
    iStack_2e4 = 0;
    do {
      uVar12 = 0;
      puVar10 = auStack_2ac;
      do {
        if (uVar12 != param_3) {
          if ((int)puVar10[2] <= (int)(auStack_2ac[param_3 * 4 + 2] + 0xa0)) {
            iVar6 = puVar10[2] - auStack_2ac[param_3 * 4 + 2];
            if ((iVar6 < 0) || (0x9f < iVar6)) {
              if ((-0x51 < iVar6) &&
                 ((uVar2 == *(byte *)((int)param_2 + uVar12 + 0x298) &&
                  (uVar2 == *(byte *)((int)param_2 + param_3 + 0x298))))) {
                *piVar7 = *piVar7 + 2;
              }
            }
            else {
              if (uVar2 == *(byte *)((int)param_2 + uVar12 + 0x298)) {
                if (uVar2 == *(byte *)((int)param_2 + param_3 + 0x298)) {
                  *piVar7 = *piVar7 + -4;
                }
                else {
                  *piVar7 = *piVar7 + -2;
                }
              }
              uVar5 = func_0x020f2998(iVar6,0x28);
              uVar5 = uVar5 & 0xff;
              if (uVar5 < 4) {
                *(short *)(param_2 + iStack_2e4 * 5 + uVar5 * 5 + 0xab) =
                     (short)param_2[iStack_2e4 * 5 + uVar5 * 5 + 0xab] + -3;
              }
              else {
                GF_AssertFail();
              }
            }
          }
        }
        uVar12 = uVar12 + 1;
        puVar10 = puVar10 + 4;
      } while ((int)uVar12 < 4);
      iStack_2d8 = 0;
      puVar10 = auStack_26c;
      piVar11 = aiStack_2bc;
      uVar12 = auStack_2ac[param_3 * 4 + 2];
      do {
        if (*puVar10 == 0) break;
        if (((((int)puVar10[1] <= (int)(uVar12 + 0xa0)) && (iVar6 = puVar10[1] - uVar12, 0 < iVar6))
            && (iVar6 < 0xa1)) &&
           ((iStack_2e8 < (int)(puVar10[2] + puVar10[4]) && ((int)puVar10[2] < iStack_2e8 + 0x28))))
        {
          if (puVar10[3] == 3) {
            *piVar11 = *piVar11 + -1;
          }
          else {
            *piVar11 = *piVar11 + -6;
          }
        }
        puVar10 = puVar10 + 5;
        iStack_2d8 = iStack_2d8 + 1;
        piVar11 = piVar11 + 1;
      } while (iStack_2d8 < 0x1e);
      uVar2 = uVar2 + 1;
      iStack_2e4 = iStack_2e4 + 4;
      piVar7 = piVar7 + 1;
      iStack_2e8 = iStack_2e8 + 0x28;
    } while ((int)uVar2 < 4);
    iVar6 = 0;
    puVar10 = param_2;
    do {
      iVar13 = iVar6 + ((uint)(iVar6 >> 1) >> 0x1e);
      iVar6 = iVar6 + 1;
      *(short *)(puVar10 + 0xab) = (short)puVar10[0xab] + (short)aiStack_2bc[iVar13 >> 2];
      puVar10 = puVar10 + 5;
    } while (iVar6 < 0x10);
    if (param_4 < 0xa8c) {
      iVar13 = 0;
      iVar6 = 0;
      do {
        iVar13 = iVar13 + 1;
        *(short *)(param_2 + iVar6 * 5 + 0xb5) = (short)param_2[iVar6 * 5 + 0xb5] + 3;
        *(short *)(param_2 + iVar6 * 5 + 0xba) = (short)param_2[iVar6 * 5 + 0xba] + 3;
        iVar6 = iVar6 + 4;
      } while (iVar13 < 4);
    }
    uVar12 = *puVar3;
    uVar2 = (uint)*(byte *)(uVar12 + 0x8b) * 0x1c;
    bVar16 = CARRY4(uVar12,uVar2);
    iVar6 = uVar12 + uVar2;
    bVar15 = iVar6 == 0;
    func_0x020f1b28(*(undefined4 *)(iVar6 + 0x24),0x41a00000);
    if (!bVar16 || bVar15) {
      iVar13 = 0;
      iVar6 = 0;
      do {
        iVar13 = iVar13 + 1;
        *(short *)(param_2 + iVar6 * 5 + 0xb5) = (short)param_2[iVar6 * 5 + 0xb5] + -2;
        *(short *)(param_2 + iVar6 * 5 + 0xba) = (short)param_2[iVar6 * 5 + 0xba] + -2;
        iVar6 = iVar6 + 4;
      } while (iVar13 < 4);
      iStack_2dc = 8;
    }
    uVar2 = *puVar3;
    func_0x020f2998(*(byte *)(uVar2 + 0x8b) + 1,3);
    if (*(char *)(uVar2 + (extraout_r1_01 & 0xff) * 0x1c + 0x30) == '\x01') {
      iStack_2dc = iStack_2dc + -5;
    }
    iVar6 = ov96_0220146C(param_2);
    if (*(short *)(iVar6 + 0x10) < iStack_2dc) {
      if ((byte)param_2[0xf9] <= param_3) {
        *(undefined1 *)(*puVar3 + 0x9d) = 1;
        *(undefined1 *)(*puVar3 + 0x9e) = 1;
        ov96_021E8228(param_1,*(undefined1 *)(*puVar3 + 0xd0),*(undefined1 *)(*puVar3 + 0x8b),7,1);
      }
    }
    else if ((byte)param_2[0xf9] <= param_3) {
      ov96_021EB0A4(*(undefined4 *)(*puVar3 + (uint)*(byte *)(*puVar3 + 0x8b) * 4),
                    auStack_2ac[param_3 * 4 + 2],auStack_2ac[param_3 * 4 + 3],&iStack_2d0,
                    &iStack_2d4);
      *(int *)(*puVar3 + 0xb0) = iStack_2d0 << 0xc;
      *(int *)(*puVar3 + 0xb4) = iStack_2d4 << 0xc;
      *(undefined4 *)(*puVar3 + 0xb8) = 0;
      *(int *)(*puVar3 + 0xbc) = *(int *)(iVar6 + 8) << 0xc;
      *(int *)(*puVar3 + 0xc0) = *(int *)(iVar6 + 0xc) << 0xc;
      *(undefined4 *)(*puVar3 + 0xc4) = 0;
      *(undefined1 *)(*puVar3 + 0xaa) = 1;
      return;
    }
  }
  return;
}

