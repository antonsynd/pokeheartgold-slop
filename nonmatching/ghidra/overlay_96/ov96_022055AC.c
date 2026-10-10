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
undefined4 _ddiv();
undefined4 _fflt(void);
undefined4 ov96_02208B34();
undefined4 ov96_021E5F24(void *);
undefined4 _dmul();
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 VEC_Mag(void *);
void * PokeathlonCourse_GetDataCopyArea(void *);
undefined4 VEC_MultAdd(int, void *, void *, void *);
undefined4 ov96_02205AFC();
void * ov96_021E8A20(void *);
undefined4 _fmul(void);
undefined4 ov96_02207400();
undefined4 ov96_02205DD4();
undefined4 ov96_022073F0();
undefined4 _f2d();
undefined4 _dfix();
undefined4 VEC_Subtract(void *, void *, void *);
undefined4 _fgr(void);
undefined4 ov96_02207870();
undefined4 _ffix(void);
undefined4 ov96_02205E30();
undefined4 ov96_022079B8();
undefined4 VEC_Normalize(void *, void *);
undefined4 _s32_div_f(void);



void ov96_022055AC(undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  uint *puVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  undefined4 uVar8;
  int *piVar9;
  uint uVar10;
  undefined1 extraout_r1;
  undefined4 uVar11;
  undefined4 extraout_r1_00;
  int *piVar12;
  undefined *puVar13;
  undefined *puVar14;
  undefined *puVar15;
  bool bVar16;
  bool bVar17;
  longlong lVar18;
  ulonglong uVar19;
  int *piStack_8c;
  int *piStack_88;
  undefined *puStack_84;
  undefined *puStack_80;
  undefined *puStack_78;
  uint uStack_60;
  int aiStack_54 [4];
  undefined4 uStack_44;
  int iStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  int iStack_30;
  undefined4 uStack_2c;
  int iStack_28;
  int iStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  puVar2 = PokeathlonCourse_GetDataCopyArea(param_1);
  puVar3 = PokeathlonCourse_GetHeapAllocPtr4(param_1);
  iVar4 = ov96_021E5F24(param_1);
  if (iVar4 == 0) {
    if (puVar3[0x50e] != '\0') {
      puVar5 = (uint *)ov96_021E8A20(puVar2 + 0x28);
      ov96_02205AFC((int)puVar3,puVar5);
      return;
    }
    puVar6 = (undefined4 *)ov96_021E8A20(puVar2 + 0x50);
    puVar7 = (undefined4 *)ov96_021E8A20(puVar2);
    iVar4 = 4;
    do {
      uVar8 = *puVar7;
      uVar11 = puVar7[1];
      puVar7 = puVar7 + 2;
      *puVar6 = uVar8;
      puVar6[1] = uVar11;
      puVar6 = puVar6 + 2;
      iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    *puVar6 = *puVar7;
    if (*(short *)(puVar3 + 0x50c) != 0) {
      *(short *)(puVar3 + 0x50c) = *(short *)(puVar3 + 0x50c) + -1;
    }
    ov96_02208B34(*(int **)(puVar3 + 0x36c));
    uStack_60 = 0;
    puVar3[0x51b] = 0;
    puStack_78 = puVar2 + 0x50;
    puStack_80 = puVar3 + 0xa0;
    puStack_84 = puVar3 + 0xac;
    piStack_8c = (int *)(puVar3 + 0x88);
    puVar13 = puVar3;
    puVar14 = puVar3;
    puVar15 = puVar3;
    piStack_88 = piStack_8c;
    do {
      piVar9 = (int *)ov96_021E8A20(puStack_78);
      if (*piVar9 == 0) {
        *(undefined4 *)(puVar14 + 0x304) = 0;
        *(undefined4 *)(puVar14 + 0x308) = 0;
      }
      else if ((*(int *)(puVar14 + 0x304) == 0) || (*(int *)(puVar14 + 0x308) == 0)) {
        if ((*(int *)(puVar14 + 0x304) == 0) && (*(int *)(puVar14 + 0x308) == 0)) {
          *(undefined4 *)(puVar14 + 0x304) = 1;
          *(undefined4 *)(puVar14 + 0x308) = 1;
        }
      }
      else {
        *(undefined4 *)(puVar14 + 0x304) = 0;
      }
      if (puVar13[0xc0] == '\0') {
        if (puVar13[0xca] == '\x01') {
          *(undefined4 *)(puVar15 + 0x334) = 0;
          *(undefined2 *)(puVar13 + 0x9e) = 0;
          *(undefined4 *)(puVar13 + 0xa0) = 0;
          *(undefined4 *)(puVar13 + 0xa4) = 0;
          *(undefined4 *)(puVar13 + 0xa8) = 0;
          *(undefined4 *)(puVar13 + 0xac) = *(undefined4 *)(puVar13 + 0xa0);
          *(undefined4 *)(puVar13 + 0xb0) = *(undefined4 *)(puVar13 + 0xa4);
          *(undefined4 *)(puVar13 + 0xb4) = *(undefined4 *)(puVar13 + 0xa8);
        }
        else if (puVar13[200] == '\0') {
          if (puVar13[0xcf] == '\0') {
            bVar1 = false;
            if (*(int *)(puVar14 + 0x304) == 0) {
              if (*(int *)(puVar14 + 0x308) == 0) {
                if (*(int *)(puVar15 + 0x334) != 0) {
                  if (*(ushort *)(puVar13 + 0x9e) < 0x1f) {
                    puVar13[0xc9] = 1;
                  }
                  *(undefined4 *)(puVar15 + 0x334) = 0;
                  puVar3[0x510] = 0;
                }
                bVar1 = true;
              }
              else {
                if (*(ushort *)(puVar13 + 0x9e) < 0xff) {
                  *(short *)(puVar13 + 0x9e) = *(short *)(puVar13 + 0x9e) + 1;
                }
                else {
                  puVar3[0x510] = 1;
                }
                if (*(int *)(puVar15 + 0x334) == 0) goto LAB_02205a72;
                *(uint *)(puVar13 + 0xac) = (uint)*(byte *)(piVar9 + 1) << 0xc;
                *(uint *)(puVar13 + 0xb0) = (uint)*(byte *)((int)piVar9 + 5) << 0xc;
              }
            }
            else {
              iVar4 = ov96_02205DD4((int)puVar3,uStack_60 & 0xff,(uint)*(byte *)(piVar9 + 1),
                                    (uint)*(byte *)((int)piVar9 + 5));
              if (iVar4 != 0) {
                *(undefined4 *)(puVar15 + 0x334) = 1;
                *(uint *)(puVar13 + 0xa0) = (uint)*(byte *)(piVar9 + 1) << 0xc;
                *(uint *)(puVar13 + 0xa4) = (uint)*(byte *)((int)piVar9 + 5) << 0xc;
                *(undefined4 *)(puVar13 + 0xa8) = 0;
                *(undefined4 *)(puVar13 + 0xac) = *(undefined4 *)(puVar13 + 0xa0);
                *(undefined4 *)(puVar13 + 0xb0) = *(undefined4 *)(puVar13 + 0xa4);
                *(undefined4 *)(puVar13 + 0xb4) = *(undefined4 *)(puVar13 + 0xa8);
              }
            }
            if (puVar13[0xc9] != '\0') {
              uStack_3c = 0;
              uStack_38 = 0;
              uStack_34 = 0;
              uVar10 = *(uint *)(puVar13 + (uint)(byte)puVar13[0xd5] * 0x14 + 0x30);
              ov96_022073F0();
              _fmul();
              lVar18 = _f2d(uVar10);
              uVar19 = _ddiv((uint)lVar18,(uint)((ulonglong)lVar18 >> 0x20),0,0x40200000);
              uVar19 = _dmul(0,0x40b00000,(uint)uVar19,(uint)(uVar19 >> 0x20));
              uVar10 = _dfix((uint)uVar19,(uint)(uVar19 >> 0x20));
              VEC_Subtract(puStack_84,puStack_80,(undefined *)&iStack_30);
              VEC_MultAdd(uVar10,(undefined *)&iStack_30,(undefined *)&uStack_3c,
                          (undefined *)&iStack_30);
              VEC_Mag((undefined *)&iStack_30);
              _fflt();
              iStack_24 = *(int *)(puVar13 + 0x88);
              uStack_20 = *(undefined4 *)(puVar13 + 0x8c);
              uStack_1c = *(undefined4 *)(puVar13 + 0x90);
              ov96_02207400(&iStack_24,&iStack_30,&iStack_24);
              VEC_Mag((undefined *)&iStack_24);
              _fflt();
              iVar4 = 0x45800000;
              _fmul();
              bVar17 = iVar4 == 0;
              bVar16 = false;
              _fgr();
              if (!bVar16 || bVar17) {
                ov96_02207400(piStack_8c,&iStack_30,piStack_88);
                piVar12 = &iStack_28;
                aiStack_54[3] = iStack_30;
                uStack_44 = uStack_2c;
                piVar9 = &iStack_40;
                iStack_40 = iStack_28;
                uVar8 = uStack_2c;
              }
              else {
                aiStack_54[0] = 0;
                aiStack_54[1] = 0;
                aiStack_54[2] = 0;
                VEC_Normalize((undefined *)&iStack_24,(undefined *)&iStack_24);
                iVar4 = 0x45800000;
                _fmul();
                _ffix();
                VEC_MultAdd(iVar4,(undefined *)&iStack_24,(undefined *)aiStack_54,
                            (undefined *)piStack_88);
                iVar4 = 0x45800000;
                _fmul();
                _ffix();
                piVar9 = aiStack_54;
                piVar12 = aiStack_54 + 3;
                VEC_MultAdd(iVar4,(undefined *)&iStack_24,(undefined *)piVar9,(undefined *)piVar12);
                uVar8 = extraout_r1_00;
              }
              uVar8 = ov96_022079B8((undefined *)piStack_8c,uVar8,piVar9,piVar12);
              puVar13[0xd4] = (char)uVar8;
              puVar3[0x51b] = 1;
              *(short *)(puVar3 + 0x522) =
                   (short)((int)(*(int *)(puVar13 + 0x7c) +
                                ((uint)(*(int *)(puVar13 + 0x7c) >> 0xb) >> 0x14)) >> 0xc);
              *(short *)(puVar3 + 0x520) =
                   (short)((int)(*(int *)(puVar13 + 0x80) +
                                ((uint)(*(int *)(puVar13 + 0x80) >> 0xb) >> 0x14)) >> 0xc);
              puVar13[0xc9] = 0;
            }
            if (bVar1) {
              *(undefined2 *)(puVar13 + 0x9e) = 0;
              *(undefined4 *)(puVar13 + 0xa0) = 0;
              *(undefined4 *)(puVar13 + 0xa4) = 0;
              *(undefined4 *)(puVar13 + 0xa8) = 0;
              *(undefined4 *)(puVar13 + 0xac) = *(undefined4 *)(puVar13 + 0xa0);
              *(undefined4 *)(puVar13 + 0xb0) = *(undefined4 *)(puVar13 + 0xa4);
              *(undefined4 *)(puVar13 + 0xb4) = *(undefined4 *)(puVar13 + 0xa8);
            }
          }
          else {
            *(undefined4 *)(puVar15 + 0x334) = 0;
            *(undefined2 *)(puVar13 + 0x9e) = 0;
            *(undefined4 *)(puVar13 + 0xa0) = 0;
            *(undefined4 *)(puVar13 + 0xa4) = 0;
            *(undefined4 *)(puVar13 + 0xa8) = 0;
            *(undefined4 *)(puVar13 + 0xac) = *(undefined4 *)(puVar13 + 0xa0);
            *(undefined4 *)(puVar13 + 0xb0) = *(undefined4 *)(puVar13 + 0xa4);
            *(undefined4 *)(puVar13 + 0xb4) = *(undefined4 *)(puVar13 + 0xa8);
          }
        }
        else {
          *(undefined4 *)(puVar15 + 0x334) = 0;
          *(undefined2 *)(puVar13 + 0x9e) = 0;
          *(undefined4 *)(puVar13 + 0xa0) = 0;
          *(undefined4 *)(puVar13 + 0xa4) = 0;
          *(undefined4 *)(puVar13 + 0xa8) = 0;
          *(undefined4 *)(puVar13 + 0xac) = *(undefined4 *)(puVar13 + 0xa0);
          *(undefined4 *)(puVar13 + 0xb0) = *(undefined4 *)(puVar13 + 0xa4);
          *(undefined4 *)(puVar13 + 0xb4) = *(undefined4 *)(puVar13 + 0xa8);
        }
      }
      else {
        if ((puVar13[0xc1] == '\x01') && ((char)piVar9[2] == '\x01')) {
          _s32_div_f();
          puVar13[0xd5] = extraout_r1;
          puVar13[0xc1] = 2;
          puVar13[0xd4] = 1;
        }
        else if ((puVar13[0xc1] == '\x02') && ((char)piVar9[2] == '\x02')) {
          puVar13[0xc1] = 0;
          puVar13[0xc0] = 0;
          puVar13[0xcf] = 0;
          puVar13[0xd4] = 1;
        }
        *(undefined4 *)(puVar15 + 0x334) = 0;
        *(undefined2 *)(puVar13 + 0x9e) = 0;
        *(undefined4 *)(puVar13 + 0xa0) = 0;
        *(undefined4 *)(puVar13 + 0xa4) = 0;
        *(undefined4 *)(puVar13 + 0xa8) = 0;
        *(undefined4 *)(puVar13 + 0xac) = *(undefined4 *)(puVar13 + 0xa0);
        *(undefined4 *)(puVar13 + 0xb0) = *(undefined4 *)(puVar13 + 0xa4);
        *(undefined4 *)(puVar13 + 0xb4) = *(undefined4 *)(puVar13 + 0xa8);
      }
LAB_02205a72:
      puVar14 = puVar14 + 0xc;
      puStack_78 = puStack_78 + 0x28;
      puVar13 = puVar13 + 0xb8;
      puVar15 = puVar15 + 4;
      puStack_80 = puStack_80 + 0xb8;
      puStack_84 = puStack_84 + 0xb8;
      piStack_88 = piStack_88 + 0x2e;
      piStack_8c = piStack_8c + 0x2e;
      uStack_60 = uStack_60 + 1;
    } while ((int)uStack_60 < 4);
    ov96_02205E30(param_1);
    ov96_02207870((int)puVar3);
    puVar3[0x50e] = *(short *)(puVar3 + 0x50c) == 0;
    puVar5 = (uint *)ov96_021E8A20(puVar2 + 0x28);
    ov96_02205AFC((int)puVar3,puVar5);
  }
  return;
}

