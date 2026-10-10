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
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 sub_0200606C();
undefined4 ov96_021EB564();
undefined4 ov96_021EB588();
undefined4 ov96_021E8A20();
undefined4 ov96_021EB52C();
undefined4 ov96_021EAF94();
undefined4 ov96_021FEECC();
undefined4 ov96_021E5F24(void *);
undefined4 ov96_021FFAEC();
unsigned char PokeathlonCourse_GetParticipantCount(void *);
undefined4 ov96_021EB570();
undefined4 sub_02006190(unsigned int);
undefined4 ov96_021EAC5C();
undefined4 ov96_02200950();
undefined4 ov96_021EAB38();
undefined4 ov96_021FFB7C();
undefined4 ov96_021E60C0();
undefined4 ov96_021FFE38();
undefined4 ov96_02200BC8();
undefined4 ov96_02200A18();

void ov96_021FE550(undefined *param_1,uint param_2,undefined4 *param_3,undefined *param_4)

{
  bool bVar1;
  byte bVar2;
  ushort *puVar3;
  undefined *puVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  undefined4 uVar8;
  undefined *puVar9;
  uint uVar10;
  undefined4 uVar11;
  int iVar12;
  int iVar13;
  uint uVar14;
  undefined4 *puVar15;
  int iVar16;
  char cVar17;
  bool bVar18;
  bool bVar19;
  undefined1 uVar20;
  undefined8 uVar21;
  undefined8 uVar22;
  uint uStack_70;
  undefined *puStack_64;
  int iStack_60;
  ushort *puStack_5c;
  int iStack_3c;
  int iStack_38;
  undefined4 uStack_34;
  int iStack_30;
  int iStack_2c;
  undefined4 uStack_28;
  int iStack_24;
  int iStack_20;
  undefined4 uStack_1c;
  undefined *puStack_18;

  
  puStack_18 = param_4;
  puVar3 = (ushort *)ov96_021E8A20(param_4 + 0xf0);
  puVar4 = PokeathlonCourse_GetHeapAllocPtr4(param_1);
  uVar5 = (uint)puVar3[param_2];
  iStack_24 = 0;
  iStack_20 = 0;
  uStack_1c = 0;
  if ((*(int *)(puVar3 + 10) >> 0x19 & 1U) != 0) {
    iVar13 = uVar5 - puVar3[0xd];
    if ((double)iVar13 >= 768.0) {
      iVar13 = (int)(80.0 + (1024.0 - (double)iVar13));
    }
    else {
      iVar13 = 0x50 - iVar13;
    }
    iStack_24 = iVar13 << 0xc;
    iStack_20 = (uint)(byte)puVar3[0xe] << 0xc;
    ov96_021EB588(*(undefined4 *)(puVar4 + (uint)(byte)puVar4[0x3c3] * 4 + 0x3cc),&iStack_24);
    ov96_021EB52C(*(undefined4 *)(puVar4 + (uint)(byte)puVar4[0x3c3] * 4 + 0x3cc),1,1);
    ov96_021EB564(*(undefined4 *)(puVar4 + (uint)(byte)puVar4[0x3c3] * 4 + 0x3cc),9);
    puVar4[0x3c3] = puVar4[0x3c3] + 1 & 3;
    if ((-1 < iVar13) && (iVar13 < 0x100)) {
      sub_0200606C(0x8a3,5);
    }
  }
  uStack_70 = 0;
  iStack_60 = 0;
  puStack_64 = param_4 + 0x50;
  puStack_5c = puVar3;
  do {
    bVar18 = param_2 == uStack_70;
    uVar6 = (uint)*(byte *)((int)puVar3 + uStack_70 + 0xc);
    uVar7 = uVar6 & 3;
    uVar14 = (uint)*puStack_5c;
    iVar13 = uVar14 - uVar5;
    if ((double)(int)uVar5 > 720.0) {
      if (uVar14 < 300) {
        iVar13 = (int)((1024.0 - (double)(int)uVar5) + (double)uVar14);
      }
    }
    else if ((int)uVar5 < 100) {
      if ((double)uVar14 > 910.0) {
        iVar13 = (int)(0.0 - ((double)(int)uVar5 + (1024.0 - (double)uVar14)));
      }
    }
    iVar13 = iVar13 + 0x50;
    iVar12 = (int)(uint)*(byte *)((int)puVar3 + uStack_70 + 0x10) >> 7;
    uVar14 = *(int *)(puVar3 + 10) >> ((uVar7 + iStack_60 & 0x7f) << 1) & 3;
    uVar6 = (int)uVar6 >> 2 & 3;
    uVar8 = param_3[uVar7];
    iStack_30 = iVar13 * 0x1000;
    iStack_2c = (uint)*(byte *)((int)puVar3 + uStack_70 + 8) << 0xc;
    uStack_28 = 0;
    bVar2 = PokeathlonCourse_GetParticipantCount(param_1);
    if ((int)uStack_70 < (int)(uint)bVar2) {
      puVar9 = ov96_021E8A20(param_4);
    }
    else {
      puVar9 = ov96_021E8A20(puStack_64);
    }
    if (param_2 == uStack_70) {
      ov96_021FEECC(*(undefined4 *)(puVar4 + 0x3e0),param_3,&iStack_30,puVar3,uStack_70 & 0xff,uVar7
                    ,puVar9,param_2 == 0,1,0);
    }
    else {
      ov96_021FEECC(*(undefined4 *)(puVar4 + 0x3e0),param_3,&iStack_30,puVar3,uStack_70 & 0xff,uVar7
                    ,puVar9,param_2 == 0,0,(int)(uint)bVar2 <= (int)uStack_70);
    }
    ov96_02200950(*(undefined4 *)(puVar4 + 0x3e0),uStack_70 & 0xff,uVar7,iVar12,uVar14);
    if (((param_3[0x32] == 0) && (-0x21 < iVar13)) && (iVar13 < 0x121)) {
      ov96_021EAB38(uVar8,1);
    }
    else {
      ov96_021EAB38(uVar8,0);
    }
    iVar16 = 0;
    puVar15 = param_3;
    do {
      ov96_021EAF94(*puVar15,iVar13,*(undefined1 *)((int)puVar3 + uStack_70 + 8));
      iVar16 = iVar16 + 1;
      puVar15 = puVar15 + 1;
    } while (iVar16 < 3);
    uVar10 = ov96_021E5F24(param_1);
    ov96_021FFB7C(param_3,*(undefined1 *)((int)puVar3 + uStack_70 + 8),uStack_70 == uVar10);
    uVar11 = ov96_021E60C0(param_1,uStack_70,uVar7);
    ov96_021FFAEC(uVar11,&iStack_30,param_3[0x1b]);
    iStack_3c = iStack_30;
    uStack_34 = uStack_28;
    iStack_38 = iStack_2c + -0x18000;
    ov96_021EB588(param_3[0x1e],&iStack_3c);
    if (iVar12 == 0) {
      bVar19 = false;
      bVar1 = false;
      if (uVar6 == 2) {
        if (*(char *)((int)param_3 + 0xa7) != '\x02') {
          ov96_021EB52C(param_3[0x1e],1,1);
          ov96_021EB564(param_3[0x1e],4);
        }
        ov96_021EAC5C(uVar8,8);
        bVar19 = true;
        if ((*(byte *)((int)param_3 + 0xd2) < 2) && (*(char *)((int)param_3 + 0xd3) == '\0')) {
          ov96_021FFE38(iVar13,0x8a7,bVar18);
          *(undefined1 *)((int)param_3 + 0xd2) = 2;
          *(undefined1 *)((int)param_3 + 0xd3) = 1;
        }
      }
      else if (uVar6 == 3) {
        if (*(char *)((int)param_3 + 0xa7) != '\x03') {
          ov96_021EB52C(param_3[0x1e],1,1);
          ov96_021EB564(param_3[0x1e],5);
        }
        ov96_021EAC5C(uVar8,8);
        bVar19 = true;
        if ((*(byte *)((int)param_3 + 0xd2) < 2) && (*(char *)((int)param_3 + 0xd3) == '\0')) {
          ov96_021FFE38(iVar13,0x8a7,bVar18);
          *(undefined1 *)((int)param_3 + 0xd2) = 3;
          *(undefined1 *)((int)param_3 + 0xd3) = 1;
        }
      }
      else {
        ov96_021EB52C(param_3[0x1e],1,0);
        *(char *)((int)param_3 + 0xd2) = (char)uVar6;
        *(undefined1 *)((int)param_3 + 0xd3) = 0;
      }
      if (uVar14 == 1) {
        ov96_021EB52C(param_3[0x1b],1,1);
        ov96_021EB570(param_3[0x1b],6);
      }
      else if (uVar14 == 2) {
        if (*(char *)((int)param_3 + 0xa6) != '\x02') {
          ov96_021EB52C(param_3[0x1b],1,1);
          ov96_021EB564(param_3[0x1b],7);
        }
        ov96_021EAC5C(uVar8,0x15);
        bVar1 = true;
        if (bVar18) {
          uVar7 = sub_02006190(3);
          if (uVar7 == 0) {
            ov96_021FFE38(iVar13,0x890,bVar18);
          }
        }
        else {
          uVar7 = sub_02006190(4);
          if (uVar7 == 0) {
            ov96_021FFE38(iVar13,0x890,0);
          }
        }
      }
      else {
        ov96_021EB52C(param_3[0x1b],1,0);
      }
      if ((!bVar19) && (!bVar1)) {
        ov96_021EAC5C(uVar8,0);
      }
    }
    else {
      ov96_021EB52C(param_3[0x1e],1,0);
      ov96_021EB52C(param_3[0x1b],1,0);
    }
    *(char *)((int)param_3 + 0xa7) = (char)uVar6;
    *(char *)((int)param_3 + 0xa6) = (char)uVar14;
    param_3 = param_3 + 0x35;
    puStack_5c = puStack_5c + 1;
    iStack_60 = iStack_60 + 3;
    puStack_64 = puStack_64 + 0x28;
    uStack_70 = uStack_70 + 1;
  } while ((int)uStack_70 < 4);
  iVar13 = ov96_02200BC8(*(undefined4 *)(puVar4 + 0x3e0),0);
  iVar12 = ov96_02200BC8(*(undefined4 *)(puVar4 + 0x3e0),1);
  ov96_02200A18(*(undefined4 *)(puVar4 + 0x3e0),
                *(int *)(puVar3 + 10) >> ((iVar13 + param_2 * 3 & 0x7f) << 1) & 3,
                *(int *)(puVar3 + 10) >> ((iVar12 + param_2 * 3 & 0x7f) << 1) & 3);
  return;
}

