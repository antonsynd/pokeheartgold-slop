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
unsigned char PokeathlonCourse_GetParticipantCount(void *);
undefined4 ov96_021EAA04(undefined4, undefined4);
undefined4 ManagedSprite_SetPositionXYWithSubscreenOffset(void *, short, short, int);
undefined4 ov96_02215884(undefined4, undefined4, undefined4);
undefined4 ManagedSprite_SetDrawFlag(void *, int);
undefined4 ManagedSprite_ResetSpriteAnimCtrlState(void *);
undefined4 PlaySE(unsigned short);
undefined4 ov96_02219770(undefined4, undefined4, undefined4);
undefined4 ov96_021E5F24(void *);
undefined4 ov96_021EAC0C(undefined4, undefined4);
undefined4 ov96_021EAF60(undefined4, undefined4, undefined4, undefined4);
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 GF_AssertFail(void);
undefined4 _s32_div_f();
undefined4 ov96_02219794(undefined4, undefined4, undefined4);
undefined4 IsSEPlaying(unsigned short);
undefined4 ov96_0221935C(undefined4, undefined4, undefined4);
undefined4 sub_02006118(unsigned short, unsigned short);
undefined4 ManagedSprite_SetAnim(void *, int);
undefined4 ov96_02216AA4(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov96_0221996C(undefined4, undefined4, undefined4, undefined4);
undefined4 ov96_021EB01C(undefined4, undefined4, undefined4, undefined4);
undefined4 ov96_022193CC(undefined4, undefined4);
undefined4 ManagedSprite_SetAnimNoRestart(void *, int);
undefined4 ov96_02219940(undefined4, undefined4, undefined4);
undefined4 ov96_021EAB38(undefined4, undefined4);
undefined4 PlaySE_SetPitch(int, int);
undefined4 ov96_021EAC5C(undefined4, undefined4);
undefined4 ManagedSprite_IsAnimated(void *);
undefined4 func_0x020f2080() __asm__("sub_020F2080");
undefined4 ov96_021EB10C(undefined4, float, float);
undefined4 ov96_02218510(undefined4, undefined4);
undefined4 func_0x020f0c18() __asm__("sub_020F0C18");
undefined4 _fflt();
undefined4 ov96_021EB06C(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 _fdiv();
undefined4 _fsub();
undefined4 func_0x020f0c54() __asm__("sub_020F0C54");
undefined4 func_0x020f09a4() __asm__("sub_020F09A4");
undefined4 func_0x020f116c() __asm__("sub_020F116C");
void MATH_QSort(void *, unsigned int, unsigned int, int (*)(void *, void *), void *);
int ov96_02216C00(void *, void *);
undefined4 ov96_021EABA8(undefined4, undefined4);



void ov96_02216C38(undefined4 *param_1,byte *param_2,undefined *param_3)

{
  byte *pbVar1;
  byte bVar2;
  byte bVar3;
  bool bVar4;
  byte bVar5;
  undefined *puVar6;
  int iVar7;
  uint uVar8;
  float fVal, fA, fB, fx;
  uint bVar4_a;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  undefined4 uVar13;
  int extraout_r1;
  int extraout_r1_00;
  int iVar14;
  int iVar15;
  uint uVar16;
  ushort uVar17;
  char cVar18;
  int *piVar19;
  undefined4 *puVar20;
  byte *pbVar21;
  uint uVar22;
  uint uVar23;
  bool bVar24;
  undefined8 uVar25;
  undefined8 uVar26;
  byte *pbStack_b8;
  undefined4 uStack_94;
  int iStack_84;
  undefined4 uStack_74;
  uint uStack_48;
  uint uStack_44;
  uint uStack_40;
  uint uStack_3c;
  undefined4 sortArr [8];

  sortArr[0] = 0;
  sortArr[1] = 0;
  sortArr[2] = 0;
  sortArr[3] = 0;
  sortArr[4] = 0;
  sortArr[5] = 0;
  sortArr[6] = 0;
  sortArr[7] = 0;
  puVar6 = PokeathlonCourse_GetHeapAllocPtr4(param_3);
  if ((*(int *)(param_2 + 0x1c) << 0x18 < 0) &&
     (-1 < (int)((uint)*(byte *)((int)param_1 + 0x3b9) << 0x1f))) {
    PlaySE(0x8d4);
  }
  uVar22 = 0;
  iStack_84 = 0;
  *(byte *)((int)param_1 + 0x3b9) =
       (byte)((*(uint *)(param_2 + 0x1c) & 0xff) >> 7) | *(byte *)((int)param_1 + 0x3b9) & 0xfe;
  piVar19 = param_1 + 4;
  pbVar21 = param_2;
  do {
    bVar5 = PokeathlonCourse_GetParticipantCount(param_3);
    iVar7 = ov96_021E5F24(param_3);
    bVar4 = false;
    if ((iVar7 == 0) && ((int)(uint)bVar5 <= (int)uVar22)) {
      bVar4 = true;
    }
    if (pbVar21 == (byte *)0x0) {
      GF_AssertFail();
    }
    if (piVar19 == (int *)0x0) {
      GF_AssertFail();
    }
    uVar8 = (uint)(pbVar21[4] >> 6);
    piVar19[0x39] = piVar19[0x39] & 0xffff3fffU | uVar8 << 0xe;
    uVar9 = (uint)(pbVar21[4] >> 6) + iStack_84;
    uVar10 = uVar9 & 0xff;
    iVar7 = ov96_021EAA04(*(undefined4 *)(puVar6 + 0x1c),uVar10);
    *piVar19 = iVar7;
    if (iVar7 == 0) {
      GF_AssertFail();
    }
    uVar11 = ov96_021E5F24(param_3);
    if (uVar22 == uVar11) {
      uVar11 = *(uint *)(param_2 + 0x1c) >> 8;
      iVar14 = (int)(uVar8 + 2) % 3;
      bVar4_a = ((uVar11 >> (((iVar14 + iStack_84) & 0xffU) << 1)) & 3) == 1;
      iVar14 = (int)(uVar8 + 1) % 3;
      ov96_02219770(*param_1, bVar4_a, ((uVar11 >> (((iVar14 + iStack_84) & 0xffU) << 1)) & 3) == 1);
    }
    if (((piVar19[0x39] & 0x1ffffffU) >> 0x17 != 0) && (bVar5 = pbVar21[2] >> 6, bVar5 != 0)) {
      uVar11 = (pbVar21[4] & 0x3f) >> 4;
      bVar24 = false;
      if ((int)uVar11 <= (int)uVar22) {
        uVar11 = uVar11 - 1;
      }
      if (bVar5 == 1) {
        uVar12 = ov96_021E5F24(param_3);
        if (uVar11 == uVar12) {
          ov96_02215884(puVar6 + 0x7f8,4,10);
        }
        bVar24 = true;
        PlaySE(0x8d0);
      }
      else if (bVar5 == 2) {
        uVar12 = ov96_021E5F24(param_3);
        if (uVar11 == uVar12) {
          ov96_02215884(puVar6 + 0x7f8,10,0xf);
        }
        bVar24 = true;
        PlaySE(0x8d2);
      }
      if (bVar24) {
        uVar23 = (uint)*pbVar21;
        uVar16 = (uint)param_2[uVar11 * 6 + 1];
        uVar12 = (uint)pbVar21[1];
        uVar11 = (uint)param_2[uVar11 * 6];
        iVar14 = uVar23 - uVar11;
        if (iVar14 < 0) {
          iVar14 = -iVar14;
        }
        iVar15 = uVar12 - uVar16;
        if (iVar15 < 0) {
          iVar15 = -iVar15;
        }
        if (uVar11 < uVar23) {
          uVar23 = uVar11;
        }
        if (uVar16 < uVar12) {
          uVar12 = uVar16;
        }
        ManagedSprite_SetPositionXYWithSubscreenOffset
                  ((undefined *)piVar19[5],
                   (short)((((iVar14 - (iVar14 >> 0x1f)) * 0x8000 >> 0x10) + uVar23) * 0x10000 >>
                          0x10),
                   (short)((((iVar15 - (iVar15 >> 0x1f)) * 0x8000 >> 0x10) + uVar12) * 0x10000 >>
                          0x10),0x1e0000);
        ManagedSprite_ResetSpriteAnimCtrlState((undefined *)piVar19[5]);
        ManagedSprite_SetDrawFlag((undefined *)piVar19[5],1);
      }
    }
    piVar19[0x39] = (uint)(pbVar21[2] >> 6) << 0x17 | piVar19[0x39] & 0xfe7fffffU;
    piVar19[0x39] = ((pbVar21[4] & 0x3f) >> 4) << 0x10 | piVar19[0x39] & 0xfffcffffU;
    ov96_021EAC0C(iVar7,((pbVar21[5] & 0x1f) >> 3) + 1);
    if (((pbVar21[4] & 0xf) == 4) && (piVar19[6] != 4)) {
      ov96_021EAF60(*(undefined4 *)(puVar6 + 0x1c),uVar10,1,piVar19 + uVar8 * 0x10 + 0xf);
    }
    else if ((piVar19[6] == 4) && ((pbVar21[4] & 0xf) != 4)) {
      ov96_021EAF60(*(undefined4 *)(puVar6 + 0x1c),uVar10,1,piVar19 + uVar8 * 0x10 + 7);
    }
    if (((pbVar21[4] & 0xf) == 5) && (piVar19[6] != 5)) {
      uVar10 = ov96_021E5F24(param_3);
      if (uVar22 == uVar10) {
        PlaySE_SetPitch(0x8d1,0x100);
      }
      else {
        sub_02006118(0x8d5,0x40);
      }
    }
    else if (((pbVar21[4] & 0xf) == 0xc) &&
            ((piVar19[6] != 0xc &&
             (iVar14 = ov96_0221935C(param_3,uVar22 & 0xff,uVar8), *(char *)(iVar14 + 0x18) != '\0')
             ))) {
      PlaySE(0x8d3);
    }
    bVar5 = pbVar21[4] & 0xf;
    if ((bVar5 == 6) && (piVar19[6] != 6)) {
      ManagedSprite_SetAnimNoRestart((undefined *)piVar19[1],((pbVar21[5] & 0x1f) >> 3) + 0xb);
      ManagedSprite_SetDrawFlag((undefined *)piVar19[1],1);
    }
    else if (((bVar5 != 6) && (piVar19[6] == 6)) || ((bVar5 == 7 && (piVar19[6] == 5)))) {
      ManagedSprite_SetAnim((undefined *)piVar19[1],((pbVar21[5] & 0x1f) >> 3) + 0xf);
      ManagedSprite_SetDrawFlag((undefined *)piVar19[1],1);
    }
    iVar14 = ManagedSprite_IsAnimated((undefined *)piVar19[1]);
    if (iVar14 == 1) {
      ManagedSprite_SetPositionXYWithSubscreenOffset
                ((undefined *)piVar19[1],(ushort)*pbVar21,(ushort)pbVar21[1],0x1e0000);
    }
    if ((pbVar21[4] & 0xf) == 6) {
      ov96_021EAC5C(iVar7,0xc);
    }
    bVar5 = *pbVar21;
    if ((((bVar5 == 0) || (bVar5 == 0xff)) || (uVar17 = (ushort)pbVar21[1], uVar17 == 0)) ||
       (uVar17 == 0xff)) {
      ov96_021EAB38(iVar7,0);
      ManagedSprite_SetDrawFlag((undefined *)piVar19[1],0);
      ManagedSprite_SetDrawFlag((undefined *)piVar19[2],0);
    }
    else {
      bVar2 = pbVar21[5];
      bVar3 = pbVar21[4];
      uVar9 = (*(uint *)(param_2 + 0x1c) >> 8) >> ((uVar9 & 0x7f) << 1) & 3;
      ManagedSprite_SetPositionXYWithSubscreenOffset
                ((undefined *)piVar19[2],(ushort)bVar5,(uVar17 - (pbVar21[2] & 0x3f)) + -0x18,
                 0x1e0000);
      if (((bVar3 & 0xf) == 3) || ((bVar2 & 0x7f) >> 5 != 0)) {
        uVar9 = 0;
      }
      else if (uVar9 == 2) {
        ManagedSprite_SetAnimNoRestart((undefined *)piVar19[2],1);
        iVar14 = IsSEPlaying(0x890);
        if (iVar14 == 0) {
          PlaySE(0x890);
        }
      }
      else if (uVar9 == 1) {
        ManagedSprite_SetAnimNoRestart((undefined *)piVar19[2],9);
      }
      ManagedSprite_SetDrawFlag((undefined *)piVar19[2],(uint)(uVar9 != 0));
    }
    ov96_02216AA4(pbVar21,piVar19,*param_1,param_3,uVar22 & 0xff);
    bVar24 = (pbVar21[4] & 0xf) == 3;
    if ((bVar24) && (-1 < piVar19[0x39] << 0xb)) {
      piVar19[0x39] = piVar19[0x39] | 0x80000;
      *(undefined1 *)((int)piVar19 + 0xe1) = 6;
      piVar19[0x37] = 0x1000;
      PlaySE(0x89e);
      ov96_0221996C(*param_1,uVar22 & 0xff,uVar8,1);
      uVar9 = ov96_021E5F24(param_3);
      if ((uVar22 == uVar9) || (bVar4)) {
        piVar19[0x39] = piVar19[0x39] | 0x200000;
      }
    }
    else if ((!bVar24) && ((piVar19[0x39] & 0x1fffffU) >> 0x14 == 1)) {
      ManagedSprite_SetPositionXYWithSubscreenOffset
                ((undefined *)piVar19[4],(ushort)*pbVar21,(ushort)pbVar21[1],0x1e0000);
      ManagedSprite_SetDrawFlag((undefined *)piVar19[4],1);
      ManagedSprite_ResetSpriteAnimCtrlState((undefined *)piVar19[4]);
      uVar9 = ov96_021E5F24(param_3);
      ov96_022193CC(0x8b6,uVar22 == uVar9);
      ov96_0221996C(*param_1,uVar22 & 0xff,uVar8,0);
      ov96_021EAB38(iVar7,1);
      piVar19[0x39] = piVar19[0x39] & 0xfff7ffff;
    }
    piVar19[0x39] = piVar19[0x39] & 0xffefffffU | (uint)bVar24 << 0x14;
    ov96_021EB01C(iVar7,*pbVar21,pbVar21[1],1);
    ov96_021EB01C(iVar7,*pbVar21,(uint)pbVar21[1] - (pbVar21[2] & 0x3f),0);
    uVar9 = piVar19[0x39];
    if ((int)(uVar9 << 0xc) < 0) {
      if ((int)(uVar9 << 10) < 0) {
        if (bVar4) {
          iVar14 = ov96_02219940(*(undefined4 *)(puVar6 + 0x180),uVar22 & 0xff,
                                 (uVar9 & 0xffff) >> 0xe);
          if (iVar14 != 0) {
            piVar19[0x39] = piVar19[0x39] & 0xffdfffff;
          }
        }
        else {
          iVar14 = ov96_02219794(*(undefined4 *)(puVar6 + 0x180),uVar22 & 0xff,
                                 (uVar9 & 0xffff) >> 0xe);
          if (iVar14 != 0) {
            piVar19[0x39] = piVar19[0x39] & 0xffdfffff;
          }
        }
      }
      *(char *)((int)piVar19 + 0xe1) = *(char *)((int)piVar19 + 0xe1) + -1;
      if (*(char *)((int)piVar19 + 0xe1) < '\x01') {
        ov96_021EAB38(iVar7,0);
      }
      else {
        uStack_3c = (uint)*pbVar21;
        uStack_40 = (uint)pbVar21[1];
        piVar19[0x37] = piVar19[0x37] + -0x19a;
        fx = (float)piVar19[0x37] / 4096.0f;
        ov96_021EB10C(iVar7,fx,fx);
        ov96_021EB06C(iVar7,uStack_3c,uStack_40,&uStack_3c,&uStack_40);
        if (0x9f < (int)uStack_40) {
          ov96_021EB01C(iVar7,*pbVar21,(uint)pbVar21[1] + (6 - *(char *)((int)piVar19 + 0xe1)) * 4,1
                       );
        }
      }
    }
    else {
      fVal = 1.2f - (float)(12 * (0xa0 - (int)pbVar21[1])) / 4096.0f;
      fA = fVal;
      fB = fVal;
      if ((pbVar21[4] & 0xf) == 5) {
        uVar9 = piVar19[0x39] & 0xff;
        fA = (float)((double)fVal * (0.8 - 0.1 * (double)uVar9));
        if (uVar9 < 4) {
          piVar19[0x39] = uVar9 + 1 & 0xff | piVar19[0x39] & 0xffffff00U;
        }
      }
      if ((pbVar21[4] & 0xf) == 8) {
        iVar14 = ov96_0221935C(param_3,uVar22 & 0xff,uVar8);
        if ((piVar19[0x39] & 0xffU) == 0) {
          if (*(char *)(iVar14 + 0x18) == '\0') {
            uVar8 = ov96_021E5F24(param_3);
            if (uVar22 == uVar8) {
              PlaySE(0x5f3);
            }
          }
          else {
            PlaySE(0x60a);
          }
        }
        uVar8 = piVar19[0x39] & 0xff;
        fB = (float)((double)fB * (0.8 - 0.1 * (double)uVar8));
        if (uVar8 < 5) {
          piVar19[0x39] = uVar8 + 1 & 0xff | piVar19[0x39] & 0xffffff00U;
        }
      }
      if (((pbVar21[4] & 0xf) == 8) || ((pbVar21[4] & 0xf) == 5)) {
        ov96_02218510(iVar7,0);
      }
      else if ((piVar19[0x39] & 0xffU) != 0) {
        ov96_02218510(iVar7,1);
        piVar19[0x39] = piVar19[0x39] & 0xffffff00;
      }
      ov96_021EB10C(iVar7,fA,fB);
    }
    pbVar1 = pbVar21 + 4;
    uVar22 = uVar22 + 1;
    pbVar21 = pbVar21 + 6;
    piVar19[6] = *pbVar1 & 0xf;
    piVar19 = piVar19 + 0x3a;
    iStack_84 = iStack_84 + 3;
  } while ((int)uVar22 < 4);
  iVar7 = 0;
  cVar18 = '\0';
  puVar20 = sortArr;
  pbStack_b8 = param_2;
  do {
    uVar13 = ov96_021EAA04(*(undefined4 *)(puVar6 + 0x1c),(pbStack_b8[4] >> 6) + cVar18);
    uStack_44 = (uint)*pbStack_b8;
    uStack_48 = (uint)pbStack_b8[1];
    ov96_021EB06C(uVar13,uStack_44,uStack_48,&uStack_44,&uStack_48);
    iVar7 = iVar7 + 1;
    *(char *)puVar20 = (char)uStack_48;
    puVar20[1] = uVar13;
    pbStack_b8 = pbStack_b8 + 6;
    cVar18 = cVar18 + '\x03';
    puVar20 = puVar20 + 2;
  } while (iVar7 < 4);
  MATH_QSort(sortArr,4,8,ov96_02216C00,0);
  iVar7 = 0;
  puVar20 = sortArr;
  do {
    ov96_021EABA8(puVar20[1],iVar7 + 7);
    iVar7 = iVar7 + 1;
    puVar20 = puVar20 + 2;
  } while (iVar7 < 4);
  return;
}

