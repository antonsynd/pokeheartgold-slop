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
undefined4 GF_AssertFail(void);
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 ov96_021E8BAC();
undefined4 ov96_021EB52C();
undefined4 ov96_02214418();
undefined4 ov96_021E60C0();
undefined4 func_0x02006184(unsigned short) __asm__("sub_02006184");
void * ov96_021E8A20(void *);
undefined4 ov96_021E5F24(void *);
undefined4 PlaySE(unsigned short);
undefined4 ov96_021EAA04();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 ov96_021EAA20();
undefined4 ov96_021EB588();
undefined4 ov96_021EB570();
void * PokeathlonCourse_GetDataCopyArea(void *);
undefined4 ov96_021EB564();
undefined4 ov96_0221497C();
undefined4 ov96_0221457C();
undefined4 ov96_02213F5C();
undefined4 ov96_021EAC5C();
undefined4 ov96_0221490C();
undefined4 ov96_021EB06C();
undefined4 ov96_02213FF4();
undefined4 ov96_02214490();
undefined4 ov96_022123B0(int, int, int, int, unsigned char, unsigned char, ...);
undefined4 ov96_0221236C();
undefined4 ov96_021EAC0C();
undefined4 ov96_021EB01C();
undefined4 ov96_021EB57C();
undefined4 ov96_021EB630();
undefined4 ov96_02214904();
undefined4 ov96_022144C0();

void ov96_02211F38(undefined4 param_1)

{
  byte bVar1;
  char cVar2;
  byte bVar3;
  byte bVar4;
  undefined1 uVar5;
  int iVar6;
  uint uVar7;
  int iVar8;
  uint uVar9;
  int iVar10;
  uint uVar11;
  undefined1 *puVar12;
  undefined4 uVar13;
  int iVar14;
  undefined1 extraout_r1;
  int extraout_r1_00;
  undefined4 extraout_r1_01;
  uint uVar15;
  undefined4 *puVar16;
  int iVar17;
  uint uVar18;
  uint uStack_68;
  int iStack_40;
  int iStack_3c;
  int iStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  int iStack_2c;
  int iStack_28;
  undefined4 uStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;

  iVar6 = PokeathlonCourse_GetHeapAllocPtr4();
  uVar7 = ov96_021E5F24(param_1);
  uVar7 = uVar7 & 0xff;
  iVar8 = PokeathlonCourse_GetDataCopyArea(param_1);
  iVar8 = ov96_021E8A20(iVar8 + 0xf0);
  ov96_02214418(iVar6);
  uVar15 = 0;
  uVar18 = 0;
  do {
    uVar9 = func_0x020f2998(uVar15,3);
    func_0x020f2998(uVar15,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1_00) : : "cc");
    iVar10 = iVar6 + 0x5c + uVar9 * 0x174;
    iVar17 = iVar10 + extraout_r1_00 * 0x7c;
    ov96_021EAA20(*(undefined4 *)(iVar10 + extraout_r1_00 * 0x7c));
    ov96_021E8BAC();
    uVar11 = *(int *)(iVar8 + 0x20) >> (uVar18 & 0xff) & 3;
    if (uVar11 == 3) {
      ov96_021EB52C(*(undefined4 *)(iVar17 + 4),1,1);
      ov96_021EB570(*(undefined4 *)(iVar17 + 4),0xc);
    }
    else if (uVar11 == 2) {
      ov96_021EB52C(*(undefined4 *)(iVar17 + 4),1,1);
      ov96_021EB570(*(undefined4 *)(iVar17 + 4),0x10);
      iVar10 = func_0x02006184(0x890);
      if (iVar10 == 0) {
        PlaySE(0x890);
      }
    }
    else {
      ov96_021EB52C(*(undefined4 *)(iVar17 + 4),1,0);
    }
    puVar12 = (undefined1 *)(iVar8 + uVar15);
    bVar4 = *(byte *)(iVar8 + uVar15);
    bVar1 = puVar12[0xc];
    iVar10 = *(int *)(iVar8 + 0x1c);
    uStack_18 = 0;
    iStack_20 = (uint)bVar4 << 0xc;
    iStack_1c = (uint)bVar1 << 0xc;
    uVar13 = func_0x020f2998(uVar15,3);
    func_0x020f2998(uVar15,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1_01) : : "cc");
    iVar14 = ov96_021E60C0(param_1,uVar13,extraout_r1_01);
    cVar2 = *(char *)(iVar14 + 7);
    if (cVar2 == '\x01') {
      iStack_1c = iStack_1c + -0x8000;
    }
    else if (cVar2 == '\x02') {
      iStack_1c = iStack_1c + -0x8000;
    }
    else if (cVar2 == '\x03') {
      iStack_1c = iStack_1c + -0x10000;
    }
    else {
      GF_AssertFail();
    }
    ov96_021EB588(*(undefined4 *)(iVar17 + 4),&iStack_20);
    if (uVar11 == 1) {
      if (*(char *)(iVar17 + 99) == '\0') {
        iStack_2c = 0;
        iStack_28 = 0;
        uStack_24 = 0;
        uVar13 = ov96_021EAA04(*(undefined4 *)(iVar6 + 0x748),uVar15 & 0xff);
        bVar3 = *(byte *)(iVar17 + 0x62);
        ov96_021EB06C(uVar13,*puVar12,puVar12[0xc],&iStack_3c,&iStack_40);
        iStack_2c = iStack_3c << 0xc;
        iStack_28 = iStack_40 << 0xc;
        iVar14 = iVar17 + (uint)bVar3 * 4;
        ov96_021EB588(*(undefined4 *)(iVar14 + 8),&iStack_2c);
        ov96_021EB52C(*(undefined4 *)(iVar14 + 8),1,1);
        ov96_021EB564(*(undefined4 *)(iVar14 + 8),0xe);
        func_0x020f2998(*(byte *)(iVar17 + 0x62) + 1,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
        *(undefined1 *)(iVar17 + 0x62) = extraout_r1;
        *(undefined1 *)(iVar17 + 99) = 5;
        if (uVar9 == uVar7) {
          PlaySE(0x8cc);
        }
      }
      else {
        *(char *)(iVar17 + 99) = *(char *)(iVar17 + 99) + -1;
      }
    }
    uVar13 = ov96_021EAA04(*(undefined4 *)(iVar6 + 0x748),uVar15 & 0xff);
    if (uVar11 == 2) {
      ov96_021EAC5C(uVar13,0x14);
    }
    else {
      ov96_021EAC0C(uVar13,(iVar10 >> (uVar18 & 0xff) & 3U) + 1);
    }
    ov96_021EB01C(uVar13,(uint)bVar4,(uint)bVar1,1);
    uVar15 = uVar15 + 1;
    uVar18 = uVar18 + 2;
  } while ((int)uVar15 < 0xc);
  ov96_022144C0(iVar6 + 0x5c + uVar7 * 0x174,iVar8 + 0xc + uVar7 * 3);
  ov96_0221457C(iVar6,iVar8,uVar7);
  iVar10 = *(int *)(iVar8 + 0x1c);
  uVar18 = 0;
  uVar15 = iVar10 >> 0x1e & 1;
  uStack_68 = 0;
  puVar16 = (undefined4 *)(iVar6 + 0x62c);
  do {
    iStack_38 = 0;
    uStack_34 = 0;
    uStack_30 = 0;
    uVar9 = (int)(*(int *)(iVar8 + 0x1c) >> 0x18 & 0xffU) >> (uStack_68 & 0xff) & 3;
    if (uVar9 == 1) {
      ov96_021EB52C(*puVar16,1,0);
      ov96_021EB52C(puVar16[1],1,0);
      if ((uVar18 == 0) && (uVar15 != 0)) {
        uVar13 = 1;
      }
      else {
        uVar13 = 0;
      }
      ov96_022123B0(iVar6,uVar18 & 0xff,uVar13,*(undefined1 *)(iVar8 + uVar18 + 0x18),
                    *(undefined1 *)(iVar8 + uVar18 + 0x1a),uVar7);
    }
    else {
      *(undefined1 *)((int)puVar16 + 0x3f) = 0;
      if (uVar18 == 1) {
        if ((iVar10 >> 0x1f & 1U) == 0) {
          ov96_021EB52C(*puVar16,1,0);
        }
        else {
          ov96_021EB52C(*puVar16,1,1);
        }
      }
      else {
        ov96_021EB52C(*puVar16,1,1);
      }
      if (uVar9 == 2) {
        ov96_021EB52C(puVar16[1],1,1);
        if (*(char *)(puVar16 + 0x11) != '\x02') {
          PlaySE(0x8c7);
        }
      }
      else {
        ov96_021EB52C(puVar16[1],1,0);
      }
      if ((uVar18 == 0) && (uVar15 != 0)) {
        ov96_021EB570(*puVar16,0xb);
      }
      else {
        ov96_021EB570(*puVar16,10);
      }
    }
    *(char *)(puVar16 + 0x11) = (char)uVar9;
    iVar17 = iVar8 + uVar18;
    iStack_38 = (uint)*(byte *)(iVar17 + 0x18) << 0xc;
    uStack_34 = ov96_02213F5C(*(undefined1 *)(iVar17 + 0x1a));
    ov96_02213FF4(iVar6,uVar18 & 0xff,uVar15,*(undefined1 *)(iVar17 + 0x1a));
    ov96_021EB588(*puVar16,&iStack_38);
    ov96_021EB588(puVar16[1],&iStack_38);
    if (*(byte *)(iVar17 + 0x1a) < 0xc0) {
      ov96_021EB630(*puVar16,0x2e);
    }
    else {
      ov96_021EB630(*puVar16,4);
    }
    uVar18 = uVar18 + 1;
    uStack_68 = uStack_68 + 2;
    puVar16 = puVar16 + 0x13;
  } while ((int)uVar18 < 2);
  iVar10 = 0;
  iVar8 = iVar6;
  do {
    iVar17 = ov96_021EB57C(*(undefined4 *)(iVar8 + 0x6d4));
    if (iVar17 == 0) {
      ov96_021EB52C(*(undefined4 *)(iVar8 + 0x6e4),1,0);
    }
    iVar10 = iVar10 + 1;
    iVar8 = iVar8 + 4;
  } while (iVar10 < 4);
  ov96_0221236C(param_1);
  uVar5 = ov96_02214904(*(undefined4 *)(iVar6 + 0x750));
  ov96_0221497C(*(undefined4 *)(iVar6 + 0x750),uVar5);
  ov96_0221490C(*(undefined4 *)(iVar6 + 0x750),*(undefined4 *)(iVar6 + 0x738));
  ov96_02214490(iVar6);
  return;
}

