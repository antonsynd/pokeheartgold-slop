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
undefined4 sub_0200606C();
undefined4 ov96_022076E4();
undefined4 ov96_021EB588();
undefined4 ov96_021EB52C();
undefined4 ov96_02208658();
undefined4 ov96_021EAB38();
undefined4 ov96_021E8A20();
undefined4 ov96_021E5F24();
undefined4 ov96_021EB564();
undefined4 ov96_02206DEC();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 ov96_02207C38();
undefined4 PokeathlonCourse_GetParticipantCount();
undefined4 ov96_021EAF94();
undefined4 ov96_021EAC0C();
undefined4 ov96_02208840();
undefined4 sub_02006190();
undefined4 ov96_021E60C0();
undefined4 ov96_02208374();
undefined4 ov96_02207718();
undefined4 ov96_021EAC08();
undefined4 ov96_02208864();
undefined4 ov96_021EAC5C();

void ov96_02206380(undefined4 param_1,uint param_2,undefined4 *param_3,int param_4)

{
  bool bVar1;
  uint uVar2;
  uint *puVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int iVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  int iVar15;
  undefined4 *puVar16;
  int iVar17;
  int iVar18;
  int iStack_74;
  uint *puStack_70;
  uint *puStack_6c;
  int iStack_44;
  int iStack_40;
  undefined4 uStack_3c;
  int iStack_38;
  int iStack_34;
  undefined4 uStack_30;
  int iStack_2c;
  int iStack_28;
  undefined4 uStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;
  
  uVar2 = ov96_021E5F24();
  uVar2 = uVar2 & 0xff;
  puVar3 = (uint *)ov96_021E8A20(param_4 + 0xf0);
  iVar4 = PokeathlonCourse_GetHeapAllocPtr4(param_1);
  uVar8 = puVar3[param_2] & 0x1ff;
  uVar9 = puVar3[param_2] >> 9 & 0x1ff;
  uVar13 = puVar3[5];
  if ((uVar13 >> 0x12 & 1) != 0) {
    uVar14 = uVar13 >> 9 & 0x1ff;
    *(uint *)(iVar4 + (uint)*(byte *)(iVar4 + 0x518) * 4 + 0x524) = uVar13 & 0x1ff;
    *(uint *)(iVar4 + (uint)*(byte *)(iVar4 + 0x518) * 4 + 0x534) = uVar14;
    ov96_021EB52C(*(undefined4 *)(iVar4 + (uint)*(byte *)(iVar4 + 0x518) * 4 + 0x34c),1,1);
    ov96_021EB564(*(undefined4 *)(iVar4 + (uint)*(byte *)(iVar4 + 0x518) * 4 + 0x34c),7);
    *(byte *)(iVar4 + 0x518) = *(char *)(iVar4 + 0x518) + 1U & 3;
    ov96_02207C38(((uVar13 & 0x1ff) + 0x80) - uVar8,(uVar14 + 0x60) - uVar9,0x8a3,1);
  }
  if (((int)(puVar3[5] >> 0x13 & 0xf) >> uVar2 & 1U) != 0) {
    sub_0200606C(0x8ce,3);
  }
  uVar13 = puVar3[4];
  if ((uVar13 >> 0x12 & 1) != 0) {
    uVar14 = uVar13 >> 9 & 0x1ff;
    *(uint *)(iVar4 + (uint)*(byte *)(iVar4 + 0x51a) * 4 + 0x544) = uVar13 & 0x1ff;
    *(uint *)(iVar4 + (uint)*(byte *)(iVar4 + 0x51a) * 4 + 0x554) = uVar14;
    ov96_021EB52C(*(undefined4 *)(iVar4 + (uint)*(byte *)(iVar4 + 0x51a) * 4 + 0x35c),1,1);
    ov96_021EB564(*(undefined4 *)(iVar4 + (uint)*(byte *)(iVar4 + 0x51a) * 4 + 0x35c),4);
    *(byte *)(iVar4 + 0x51a) = *(char *)(iVar4 + 0x51a) + 1U & 3;
    ov96_02207C38(((uVar13 & 0x1ff) + 0x80) - uVar8,(uVar14 + 0x60) - uVar9,0x8cd,1);
  }
  iVar17 = 0;
  iVar15 = iVar4;
  do {
    uStack_18 = 0;
    iStack_1c = ((*(int *)(iVar15 + 0x534) + 0x60) - uVar9) * 0x1000;
    iStack_20 = ((*(int *)(iVar15 + 0x524) + 0x80) - uVar8) * 0x1000;
    ov96_021EB588(*(undefined4 *)(iVar15 + 0x34c),&iStack_20);
    iVar17 = iVar17 + 1;
    iVar15 = iVar15 + 4;
  } while (iVar17 < 4);
  iVar17 = 0;
  iVar15 = iVar4;
  do {
    uStack_24 = 0;
    iStack_28 = ((*(int *)(iVar15 + 0x554) + 0x60) - uVar9) * 0x1000;
    iStack_2c = ((*(int *)(iVar15 + 0x544) + 0x80) - uVar8) * 0x1000;
    ov96_021EB588(*(undefined4 *)(iVar15 + 0x35c),&iStack_2c);
    iVar17 = iVar17 + 1;
    iVar15 = iVar15 + 4;
  } while (iVar17 < 4);
  ov96_022076E4(iVar4);
  uVar13 = 0;
  iStack_74 = param_4 + 0x50;
  puStack_70 = puVar3;
  puStack_6c = puVar3;
  do {
    uVar10 = *puStack_6c;
    uVar14 = (uint)(ushort)puStack_70[6];
    uVar11 = (int)uVar14 >> 5 & 3;
    iVar17 = ((int)uVar14 >> 7 & 3U) + 1;
    uVar12 = (int)uVar14 >> 9 & 1;
    uVar14 = (int)(puVar3[4] >> 0x13 & 0xf) >> (uVar13 & 0xff) & 1;
    uVar5 = param_3[uVar11];
    iVar15 = PokeathlonCourse_GetParticipantCount(param_1);
    if ((int)uVar13 < iVar15) {
      uVar6 = ov96_021E8A20(param_4);
    }
    else {
      uVar6 = ov96_021E8A20(iStack_74);
    }
    if (param_2 == uVar13) {
      ov96_02206DEC(*(undefined4 *)(iVar4 + 0x370),param_3,puVar3,uVar13 & 0xff,uVar11,uVar6,
                    param_2 == 0,1,0);
    }
    else {
      ov96_02206DEC(*(undefined4 *)(iVar4 + 0x370),param_3,puVar3,uVar13 & 0xff,uVar11,uVar6,
                    param_2 == 0,0,iVar15 <= (int)uVar13);
    }
    iVar15 = ((uVar10 & 0x1ff) - uVar8) + 0x80;
    iVar7 = ((uVar10 >> 9 & 0x1ff) - uVar9) + 0x60 + (int)*(short *)(param_3 + 0x1c);
    uStack_30 = 0;
    iStack_38 = iVar15 * 0x1000;
    iStack_34 = iVar7 * 0x1000;
    ov96_02208658(*(undefined4 *)(iVar4 + 0x370),uVar13 & 0xff,uVar11,uVar14,uVar12);
    if (uVar14 == 0) {
      if (((iVar15 < -0x20) || (0x120 < iVar15)) && ((iVar7 < -0x20 || (0xe0 < iVar7)))) {
        ov96_021EAB38(uVar5,0);
      }
      else {
        ov96_021EAB38(uVar5,1);
      }
    }
    iVar18 = 0;
    puVar16 = param_3;
    do {
      ov96_021EAF94(*puVar16,iVar15,iVar7);
      iVar18 = iVar18 + 1;
      puVar16 = puVar16 + 1;
    } while (iVar18 < 3);
    uStack_3c = 0;
    iStack_44 = iVar15 * 0x1000;
    iStack_40 = iVar7 * 0x1000;
    iVar15 = ov96_021E60C0(param_1,uVar13,uVar11);
    if (*(char *)(iVar15 + 5) == '\0') {
      iStack_40 = iStack_40 + -0x10000;
    }
    else {
      iStack_40 = iStack_40 + -0x18000;
    }
    ov96_021EB588(param_3[0x12],&iStack_44);
    ov96_02207718(param_3,iVar7);
    if (uVar14 == 0) {
      bVar1 = false;
      if (uVar12 == 1) {
        if (*(char *)((int)param_3 + 0xa3) != '\x01') {
          ov96_021EB52C(param_3[0x12],1,1);
        }
        ov96_021EAC5C(uVar5,0x15);
        *(undefined1 *)((int)param_3 + 0x72) = 0;
        bVar1 = true;
        if (uVar2 == uVar13) {
          iVar15 = sub_02006190(3);
          if (iVar15 == 0) {
            ov96_02207C38((int)(iStack_38 + ((uint)(iStack_38 >> 0xb) >> 0x14)) >> 0xc,
                          (int)(iStack_34 + ((uint)(iStack_34 >> 0xb) >> 0x14)) >> 0xc,0x890,1);
          }
        }
        else {
          iVar15 = sub_02006190(4);
          if (iVar15 == 0) {
            ov96_02207C38((int)(iStack_38 + ((uint)(iStack_38 >> 0xb) >> 0x14)) >> 0xc,
                          (int)(iStack_34 + ((uint)(iStack_34 >> 0xb) >> 0x14)) >> 0xc,0x890,0);
          }
        }
      }
      else {
        ov96_021EB52C(param_3[0x12],1,0);
      }
      if (!bVar1) {
        ov96_021EAC08(uVar5,iVar17);
        if (*(char *)((int)param_3 + 0x72) == '\0') {
          ov96_021EAC5C(uVar5,0);
        }
        else {
          ov96_021EAC5C(uVar5,0x1a);
          *(char *)((int)param_3 + 0x72) = *(char *)((int)param_3 + 0x72) + -1;
        }
      }
    }
    else {
      ov96_021EB52C(param_3[0x12],1,0);
      ov96_021EAC0C(uVar5,iVar17);
    }
    *(char *)((int)param_3 + 0xa3) = (char)uVar12;
    uVar10 = *puStack_6c;
    uVar11 = uVar10 >> 0x1c;
    ov96_02208840(*(undefined4 *)(iVar4 + 0x370),uVar13,uVar11);
    if (*(byte *)((int)param_3 + 0x73) < uVar11) {
      *(undefined1 *)((int)param_3 + 0x72) = 10;
      ov96_021EB564(param_3[0x15],8);
      ov96_021EB52C(param_3[0x15],1,1);
      if (uVar2 == uVar13) {
        ov96_02207C38((int)(iStack_38 + ((uint)(iStack_38 >> 0xb) >> 0x14)) >> 0xc,
                      (int)(iStack_34 + ((uint)(iStack_34 >> 0xb) >> 0x14)) >> 0xc,0x5e2,1);
      }
      else {
        ov96_02207C38((int)(iStack_38 + ((uint)(iStack_38 >> 0xb) >> 0x14)) >> 0xc,
                      (int)(iStack_34 + ((uint)(iStack_34 >> 0xb) >> 0x14)) >> 0xc,0x5eb,0);
      }
    }
    else if ((uVar14 == 0) && (uVar11 < *(byte *)((int)param_3 + 0x73))) {
      ov96_021EB564(param_3[0x15],9);
      ov96_021EB52C(param_3[0x15],1,1);
    }
    *(byte *)((int)param_3 + 0x73) = (byte)(uVar10 >> 0x1c);
    ov96_021EB588(param_3[0x15],&iStack_38);
    uVar14 = *puStack_6c >> 0x12 & 0x3ff;
    if (param_2 == uVar13) {
      ov96_02208374(*(undefined4 *)(iVar4 + 0x370),uVar14);
    }
    if (*(ushort *)((int)param_3 + 0xae) < uVar14) {
      ov96_021EB564(param_3[*(ushort *)(param_3 + 0x1e) + 0x13],3);
      ov96_021EB52C(param_3[*(ushort *)(param_3 + 0x1e) + 0x13],1,1);
      *(short *)(param_3 + 0x1e) = -((short)((*(short *)(param_3 + 0x1e) + 1) * -0x8000) >> 0xf);
      ov96_02208864(*(undefined4 *)(iVar4 + 0x370),uVar13);
      if (uVar2 == uVar13) {
        ov96_02207C38((int)(iStack_38 + ((uint)(iStack_38 >> 0xb) >> 0x14)) >> 0xc,
                      (int)(iStack_34 + ((uint)(iStack_34 >> 0xb) >> 0x14)) >> 0xc,0x88f,1);
      }
      else {
        ov96_02207C38((int)(iStack_38 + ((uint)(iStack_38 >> 0xb) >> 0x14)) >> 0xc,
                      (int)(iStack_34 + ((uint)(iStack_34 >> 0xb) >> 0x14)) >> 0xc,0x88f,0);
      }
    }
    uVar10 = 0;
    do {
      ov96_021EB588(param_3[uVar10 + 0x13],&iStack_38);
      uVar10 = uVar10 + 1 & 0xff;
    } while (uVar10 < 2);
    *(short *)((int)param_3 + 0xae) = (short)uVar14;
    uVar13 = uVar13 + 1;
    puStack_6c = puStack_6c + 1;
    param_3 = param_3 + 0x2e;
    puStack_70 = (uint *)((int)puStack_70 + 2);
    iStack_74 = iStack_74 + 0x28;
  } while ((int)uVar13 < 4);
  return;
}

