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
undefined4 ov96_02203BD0();
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 ov96_021E5F24(void *);
undefined4 MTX_RotY43_(void *, int, int);
undefined4 _fflt();
void * ov96_021E8A20(void *);
undefined4 ov96_02203BC0();
void * PokeathlonCourse_GetDataCopyArea(void *);
undefined4 PlaySE(unsigned short);
undefined4 ov96_021EB564();
undefined4 _s32_div_f();
undefined4 ov96_022038A0();
undefined4 ov96_021EB588();
undefined4 ov96_021EB52C();
undefined4 func_0x020cbe9c() __asm__("sub_020CBE9C");
undefined4 ov96_02204134();
extern undefined UNK_021094de __asm__("sub_021094DE");
extern undefined FX_SinCosTable_;
undefined4 IsSEPlaying(unsigned short);
undefined4 ov96_021EAC5C();
undefined4 ov96_02203CC4();
undefined4 ov96_02203CD4();
undefined4 GF_AssertFail(void);
undefined4 ov96_02203CA4();
undefined4 ov96_021EAD78();
extern undefined ov96_0221C98C;
extern undefined UNK_0221c994 __asm__("sub_0221C994");
undefined4 ov96_021E6454();
undefined4 ov96_021EB594();
undefined4 ov96_021EB5A0();
undefined4 _d2f();
undefined4 _f2d();
undefined4 _dadd();
undefined4 _ddiv();
undefined4 _ffix();
undefined4 _fmul();
undefined4 ov96_02203970(int, unsigned short, ...);
undefined4 _ffltu();
undefined4 _dmul();

void ov96_02202958(undefined *param_1)

{
  bool bVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  undefined4 uVar11;
  uint uVar12;
  int iVar13;
  uint extraout_r1;
  uint extraout_r1_00;
  uint extraout_r1_01;
  uint extraout_r1_02;
  int extraout_r1_03;
  undefined *puVar14;
  int iVar15;
  undefined *puVar16;
  int iVar17;
  ulonglong uVar18;
  undefined4 in_stack_fffffea4;
  undefined4 in_stack_fffffea8;
  int iStack_14c;
  uint uStack_12c;
  uint uStack_128;
  undefined *puStack_124;
  uint uStack_120;
  int iStack_11c;
  int iStack_e4;
  int iStack_e0;
  int iStack_dc;
  int iStack_d8;
  int iStack_d4;
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  int iStack_c8;
  int iStack_c4;
  undefined4 uStack_c0;
  int aiStack_bc [2];
  int iStack_b4;
  int aiStack_b0 [3];
  undefined auStack_a4 [48];
  int iStack_74;
  int iStack_70;
  undefined4 uStack_6c;
  int aiStack_68 [2];
  int iStack_60;
  int aiStack_5c [3];
  undefined auStack_50 [48];
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;
  
  puVar2 = PokeathlonCourse_GetHeapAllocPtr4(param_1);
  puVar3 = PokeathlonCourse_GetDataCopyArea(param_1);
  puVar3 = ov96_021E8A20(puVar3 + 0xf0);
  uVar4 = ov96_021E5F24(param_1);
  uVar4 = uVar4 & 0xff;
  uVar5 = *(int *)(puVar3 + 0x20) >> 0x19 & 0x7f;
  if (uVar5 == 0) {
    uVar12 = 0;
  }
  else {
    uVar12 = uVar5 - 1 & 0xff;
  }
  ov96_022038A0(puVar2,uVar12);
  ov96_02203BD0(*(undefined4 *)(puVar2 + 0x5e0),*(ushort *)(puVar3 + uVar4 * 2) & 0x3ff);
  iVar13 = ((int)((4 - uVar4 & 0xff) << 0xe) >> 4) * 4;
  iVar15 = 0;
  puVar14 = puVar3;
  do {
    if ((((int)(uint)*(ushort *)(puVar14 + 8) >> 0xd & 1U) != 0) &&
       (uVar12 = _s32_div_f(iVar15,3), uVar4 == uVar12)) {
      { int nug_a = (int)(iVar15), nug_b = (int)(3); extraout_r1 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
      uVar12 = extraout_r1 & 0xff;
      ov96_021EB52C(*(undefined4 *)(puVar2 + uVar12 * 4 + 100),1,1);
      ov96_021EB564(*(undefined4 *)(puVar2 + uVar12 * 4 + 100),6);
      iVar17 = ((int)(uint)*(ushort *)(puVar14 + 8) >> 6 & 0x3fU) + 1;
      iVar6 = (*(ushort *)(puVar14 + 8) & 0x3f) + 1;
      if (uVar4 != 0) {
        aiStack_5c[1] = 0;
        aiStack_5c[0] = iVar6 * 0x1000 + -0x21000;
        aiStack_5c[2] = iVar17 * 0x1000 + -0x21000;
        MTX_RotY43_(auStack_50,(int)*(short *)(&FX_SinCosTable_ + iVar13),
                    (int)*(short *)(&UNK_021094de + iVar13));
        func_0x020cbe9c(aiStack_5c,auStack_50,aiStack_68);
        aiStack_68[0] = aiStack_68[0] + 0x21000;
        iStack_60 = iStack_60 + 0x21000;
        iVar6 = (int)(aiStack_68[0] + ((uint)(aiStack_68[0] >> 0xb) >> 0x14)) >> 0xc;
        iVar17 = (int)(iStack_60 + ((uint)(iStack_60 >> 0xb) >> 0x14)) >> 0xc;
      }
      uVar7 = _fflt(iVar6);
      uVar8 = _fflt(iVar17);
      ov96_02204134(uVar7,uVar8,&iStack_d8,&iStack_dc);
      iVar6 = iStack_dc;
      iStack_20 = iStack_d8 << 0xc;
      iStack_1c = iStack_dc << 0xc;
      uStack_18 = 0;
      iVar17 = _s32_div_f(iStack_dc,0x14);
      iStack_1c = ((iVar6 + -8) - iVar17) * 0x1000;
      ov96_021EB588(*(undefined4 *)(puVar2 + uVar12 * 4 + 100),&iStack_20);
      PlaySE(0x88f);
    }
    iVar15 = iVar15 + 1;
    puVar14 = puVar14 + 2;
  } while (iVar15 < 0xc);
  uVar12 = 0;
  uStack_12c = uVar4 * 3;
  do {
    uVar7 = uStack_12c & 0xff;
    iVar13 = (int)(uint)*(ushort *)(puVar3 + uVar7 * 2 + 8) >> 0xe;
    if (iVar13 == 1) {
      puVar14 = puVar2 + uVar7 * 0x20;
      ov96_021EB52C(*(undefined4 *)(puVar14 + 0x418),1,1);
      ov96_02203BC0(*(undefined4 *)(puVar2 + 0x5e0),uVar12 & 0xff,0);
    }
    else if (iVar13 == 2) {
      puVar14 = puVar2 + uVar7 * 0x20;
      ov96_021EB52C(*(undefined4 *)(puVar14 + 0x418),1,0);
      ov96_02203BC0(*(undefined4 *)(puVar2 + 0x5e0),uVar12 & 0xff,1);
    }
    else {
      puVar14 = puVar2 + uVar7 * 0x20;
      ov96_021EB52C(*(undefined4 *)(puVar14 + 0x418),1,0);
      ov96_02203BC0(*(undefined4 *)(puVar2 + 0x5e0),uVar12 & 0xff,0);
    }
    uVar8 = (int)(uint)*(ushort *)(puVar3 + uVar7 * 2 + 8) >> 0xc & 1;
    uVar9 = *(int *)(puVar3 + 0x20) >> ((uStack_12c & 0x7f) << 1) & 3;
    if (iVar13 == 1) {
      ov96_02203CA4(*(undefined4 *)(puVar2 + 0x5e0),uVar12 & 0xff,10);
      *(undefined2 *)(puVar14 + 0x434) = 10;
      iVar13 = IsSEPlaying(0x890);
      if (iVar13 == 0) {
        PlaySE(0x890);
      }
      if (uVar8 != 0) {
        PlaySE(0x8b0);
      }
    }
    else if (uVar8 == 0) {
      if ((uVar9 == 1) && (*(short *)(puVar14 + 0x436) == 0)) {
        if (iVar13 == 1) {
          GF_AssertFail();
        }
        ov96_02203CA4(*(undefined4 *)(puVar2 + 0x5e0),uVar12 & 0xff,4);
        *(undefined2 *)(puVar2 + uVar7 * 0x20 + 0x434) = 4;
        *(undefined2 *)(puVar2 + uVar7 * 0x20 + 0x436) = 1;
        if (puVar2[uVar12 + 0x5ef] == '\0') {
          PlaySE(0x8ac);
        }
      }
      else {
        bVar1 = false;
        if (*(short *)(puVar14 + 0x434) == 10) {
          bVar1 = true;
        }
        else {
          iVar13 = ov96_02203CC4(*(undefined4 *)(puVar2 + 0x5e0),uVar12 & 0xff);
          if (iVar13 == 0) {
            bVar1 = true;
          }
        }
        if (bVar1) {
          ov96_02203CA4(*(undefined4 *)(puVar2 + 0x5e0),uVar12 & 0xff,1);
          *(undefined2 *)(puVar14 + 0x434) = 1;
        }
      }
    }
    else {
      ov96_02203CA4(*(undefined4 *)(puVar2 + 0x5e0),uVar12 & 0xff,7);
      *(undefined2 *)(puVar14 + 0x434) = 7;
      PlaySE(0x8b0);
      ov96_02203CD4(*(undefined4 *)(puVar2 + 0x5e0));
    }
    if (uVar9 != 1) {
      *(undefined2 *)(puVar14 + 0x436) = 0;
    }
    uVar12 = uVar12 + 1;
    uStack_12c = uStack_12c + 1;
  } while ((int)uVar12 < 3);
  iStack_14c = 0;
  { int nug_a = (int)((uVar4 + 1) * 3), nug_b = (int)(0xc); extraout_r1_00 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
  uStack_128 = extraout_r1_00 & 0xff;
  puVar14 = puVar2;
  do {
    { int nug_a = (int)(uStack_128), nug_b = (int)(0xc); extraout_r1_01 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
    uVar12 = extraout_r1_01 & 0xff;
    iVar13 = (int)(uint)*(ushort *)(puVar3 + uVar12 * 2 + 8) >> 0xe;
    if (iVar13 == 1) {
      puVar16 = puVar2 + uVar12 * 0x20;
      ov96_021EB52C(*(undefined4 *)(puVar16 + 0x418),1,1);
      ov96_021EB52C(*(undefined4 *)(puVar14 + 0x70),1,0);
    }
    else if (iVar13 == 2) {
      puVar16 = puVar2 + uVar12 * 0x20;
      ov96_021EB52C(*(undefined4 *)(puVar16 + 0x418),1,0);
      ov96_021EB52C(*(undefined4 *)(puVar14 + 0x70),1,1);
    }
    else {
      puVar16 = puVar2 + uVar12 * 0x20;
      ov96_021EB52C(*(undefined4 *)(puVar16 + 0x418),1,0);
      ov96_021EB52C(*(undefined4 *)(puVar14 + 0x70),1,0);
    }
    uVar7 = (uint)*(ushort *)(puVar3 + uVar12 * 2 + 8);
    if (iVar13 == 1) {
      ov96_021EAC5C(*(undefined4 *)(puVar14 + 0x94),0x14);
      *(undefined2 *)(puVar16 + 0x434) = 0x14;
      iVar13 = IsSEPlaying(0x890);
      if (iVar13 == 0) {
        PlaySE(0x890);
      }
    }
    else if (((int)uVar7 >> 0xc & 1U) == 0) {
      if ((((*(int *)(puVar3 + 0x20) >> (uVar12 * 2 & 0xff) & 3U) == 1) &&
          ((uVar7 & 0x3f) + 1 ==
           (int)(*(int *)(&ov96_0221C98C + uVar12 * 0xc) +
                ((uint)(*(int *)(&ov96_0221C98C + uVar12 * 0xc) >> 0xb) >> 0x14)) >> 0xc)) &&
         (((int)uVar7 >> 6 & 0x3fU) + 1 ==
          (int)(*(int *)(&UNK_0221c994 + uVar12 * 0xc) +
               ((uint)(*(int *)(&UNK_0221c994 + uVar12 * 0xc) >> 0xb) >> 0x14)) >> 0xc)) {
        if (iVar13 == 1) {
          GF_AssertFail();
        }
        ov96_021EAC5C(*(undefined4 *)(puVar14 + 0x94),0x10);
        *(undefined2 *)(puVar16 + 0x434) = 0x10;
      }
      else {
        bVar1 = false;
        if (*(short *)(puVar16 + 0x434) == 0x14) {
          bVar1 = true;
        }
        else {
          iVar13 = ov96_021EAD78(*(undefined4 *)(puVar14 + 0x94));
          if (iVar13 == 0) {
            bVar1 = true;
          }
        }
        if (bVar1) {
          ov96_021EAC5C(*(undefined4 *)(puVar14 + 0x94),0);
          *(undefined2 *)(puVar16 + 0x434) = 0;
        }
      }
    }
    else {
      ov96_021EAC5C(*(undefined4 *)(puVar14 + 0x94),0x16);
      *(undefined2 *)(puVar16 + 0x434) = 0x16;
    }
    puVar14 = puVar14 + 4;
    uStack_128 = uStack_128 + 1;
    iStack_14c = iStack_14c + 1;
  } while (iStack_14c < 9);
  iStack_d4 = 0x1000;
  uStack_d0 = 0x1000;
  uStack_cc = 0x1000;
  iVar15 = 0;
  iVar13 = ((int)((4 - uVar4 & 0xff) << 0xe) >> 4) * 4;
  uStack_120 = 0;
  puVar14 = puVar2;
  puStack_124 = puVar3;
  do {
    uVar12 = *(int *)(puVar3 + 0x20) >> (uStack_120 & 0xff) & 3;
    if ((uVar12 + 0xff & 0xff) < 2) {
      puVar14[0xfa] = 0;
      if (uVar12 == 2) {
        ov96_021EB52C(*(undefined4 *)(puVar14 + 0xbc),1,0);
      }
      else {
        ov96_021EB52C(*(undefined4 *)(puVar14 + 0xbc),1,1);
      }
      ov96_021EB52C(*(undefined4 *)(puVar14 + 0xb8),1,1);
      uVar7 = _s32_div_f(iVar15,3);
      { int nug_a = (int)(iVar15), nug_b = (int)(3); extraout_r1_02 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
      uVar8 = ((int)(uint)*(ushort *)(puVar3 + uVar7 * 2) >> 10) >> ((extraout_r1_02 & 0x7f) << 1) &
              3;
      iStack_11c = ((int)(uint)*(ushort *)(puStack_124 + 8) >> 6 & 0x3fU) + 1;
      iVar6 = (*(ushort *)(puStack_124 + 8) & 0x3f) + 1;
      uVar12 = extraout_r1_02;
      if (uVar4 != 0) {
        aiStack_b0[1] = 0;
        aiStack_b0[0] = iVar6 * 0x1000 + -0x21000;
        aiStack_b0[2] = iStack_11c * 0x1000 + -0x21000;
        MTX_RotY43_(auStack_a4,(int)*(short *)(&FX_SinCosTable_ + iVar13),
                    (int)*(short *)(&UNK_021094de + iVar13));
        func_0x020cbe9c(aiStack_b0,auStack_a4,aiStack_bc);
        aiStack_bc[0] = aiStack_bc[0] + 0x21000;
        iStack_b4 = iStack_b4 + 0x21000;
        iVar6 = (int)(aiStack_bc[0] + ((uint)(aiStack_bc[0] >> 0xb) >> 0x14)) >> 0xc;
        iStack_11c = (int)(iStack_b4 + ((uint)(iStack_b4 >> 0xb) >> 0x14)) >> 0xc;
      }
      uVar9 = _fflt(iVar6);
      uVar10 = _fflt(iStack_11c);
      ov96_02204134(uVar9,uVar10,&iStack_e0,&iStack_e4);
      iStack_74 = iStack_e0 << 0xc;
      iStack_70 = iStack_e4 << 0xc;
      uStack_6c = 0;
      ov96_021EB588(*(undefined4 *)(puVar14 + 0xbc),&iStack_74);
      iVar6 = iStack_e4;
      iVar17 = _s32_div_f(iStack_e4,0x14);
      iStack_70 = ((iVar6 + -8) - iVar17) * 0x1000;
      ov96_021EB588(*(undefined4 *)(puVar14 + 0xb8),&iStack_74);
      iStack_c8 = iStack_d4;
      iStack_c4 = uStack_d0;
      uStack_c0 = uStack_cc;
      uVar9 = _fflt(iStack_e4);
      _f2d(uVar9);
      _dadd(CONCAT44(in_stack_fffffea4,param_1),CONCAT44(uVar12,in_stack_fffffea8));
      uVar18 = _ddiv(CONCAT44(in_stack_fffffea4,param_1),CONCAT44(uVar12,in_stack_fffffea8));
      in_stack_fffffea8 = (undefined4)(uVar18 >> 0x20);
      uVar9 = _ffltu(uVar8);
      _f2d(uVar9);
      _ddiv(CONCAT44(in_stack_fffffea4,param_1),CONCAT44(uVar12,in_stack_fffffea8));
      _dadd(CONCAT44(in_stack_fffffea4,param_1),CONCAT44(uVar12,in_stack_fffffea8));
      _dmul(CONCAT44(in_stack_fffffea4,param_1),CONCAT44(uVar12,in_stack_fffffea8));
      uVar9 = _d2f(CONCAT44(in_stack_fffffea4,param_1));
      uVar10 = _fmul(0x45800000,uVar9);
      iStack_c8 = _ffix(uVar10);
      uVar9 = _fmul(0x45800000,uVar9);
      iStack_c4 = _ffix(uVar9);
      ov96_021EB5A0(*(undefined4 *)(puVar14 + 0xbc),&iStack_c8,2);
      ov96_021EB5A0(*(undefined4 *)(puVar14 + 0xb8),&iStack_c8,2);
      ov96_021EB5A0(*(undefined4 *)(puVar14 + 0xc0),&iStack_c8,2);
      if ((uVar7 == uVar4) && (uVar8 != (byte)puVar2[uVar12 + 0x5ec])) {
        PlaySE(0x8b1);
        puVar2[uVar12 + 0x5ec] = (char)uVar8;
      }
    }
    else {
      ov96_021EB52C(*(undefined4 *)(puVar14 + 0xbc),1,0);
      ov96_021EB52C(*(undefined4 *)(puVar14 + 0xb8),1,0);
      if ((uVar12 == 3) && (puVar14[0xfa] == '\0')) {
        puVar14[0xfa] = 1;
        uVar11 = ov96_021EB594(*(undefined4 *)(puVar14 + 0xb8));
        ov96_021EB588(*(undefined4 *)(puVar14 + 0xc0),uVar11);
        ov96_021EB564(*(undefined4 *)(puVar14 + 0xc0),3);
        ov96_021EB52C(*(undefined4 *)(puVar14 + 0xc0),1,1);
        uVar12 = _s32_div_f(iVar15,3);
        if (uVar12 == uVar4) {
          PlaySE(0x8b3);
          { int nug_a = (int)(iVar15), nug_b = (int)(3); extraout_r1_03 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
          puVar2[extraout_r1_03 + 0x5ef] = 0;
          puVar2[extraout_r1_03 + 0x5ec] = 0;
        }
      }
    }
    iVar15 = iVar15 + 1;
    uStack_120 = uStack_120 + 2;
    puVar14 = puVar14 + 0x48;
    puStack_124 = puStack_124 + 2;
  } while (iVar15 < 0xc);
  ov96_02203970(puVar2,uVar4);
  ov96_021E6454(param_1,uVar5 * 0x1e);
  return;
}

