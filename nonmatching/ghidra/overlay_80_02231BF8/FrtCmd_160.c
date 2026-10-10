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
void * Frontier_GetLaunchArgs(void *);
undefined4 ov80_022331E8();
undefined4 OS_ResetSystem(unsigned int);
undefined4 ov80_02232EE0();
undefined4 ov80_02232B58();
undefined4 ov80_02232E68();
undefined4 ov80_02232E58();
undefined4 sub_02030CD8();
undefined4 ov80_02233020();
undefined4 ov80_02232E9C();
undefined4 sub_02096910();
undefined4 ov80_02232F60();
void * Frontier_GetData(void *);
void * FrontierScript_ReadVarPtr(void *);
void * Party_GetMonByIndex(void *, int);
void * SaveArray_Party_Get(void *);
undefined4 SetMonData(void *, int, void *);
undefined4 ov80_02232E64();
undefined4 ov80_02237ED8();
undefined4 sub_02030E08();
undefined4 sub_02030E58(unsigned int, unsigned int, unsigned char, unsigned int, unsigned int);
undefined4 ov80_0222A474(void *, unsigned short, int, int);
unsigned short sub_0203769C(void);
undefined4 sub_02030E18(unsigned int, unsigned int, unsigned int, unsigned int, void *);
undefined4 ov80_02237FA4();
undefined4 ov80_02233648();
undefined4 ov80_02237D8C(unsigned char);
undefined4 ov80_02237EFC();
undefined4 sub_0205C268(unsigned int);
undefined4 ov80_0222A52C(void *, void *, void *, void *, void *, unsigned int, unsigned int, unsigned int);
void * FrontierSystem_GetFrontierMap(void *);
void * Save_Frontier_GetStatic(void *);
undefined4 ov80_02237E30();
undefined4 sub_0205C1F0(unsigned char);
unsigned short FrontierSave_GetStat(void *, int, int);
undefined4 sub_02031108(void *, int, int, unsigned short);

undefined4 FrtCmd_160(undefined4 *param_1)

{
  undefined1 uVar1;
  byte bVar2;
  byte bVar3;
  bool bVar4;
  ushort uVar5;
  ushort *puVar6;
  undefined *puVar7;
  undefined *puVar8;
  undefined *puVar9;
  int iVar10;
  undefined4 *puVar11;
  undefined *puVar12;
  uint uVar13;
  undefined1 *puVar14;
  uint uVar15;
  undefined auStack_18 [4];
  
  puVar14 = (undefined1 *)param_1[7];
  param_1[7] = puVar14 + 1;
  uVar1 = *puVar14;
  param_1[7] = puVar14 + 2;
  bVar2 = puVar14[1];
  uVar15 = (uint)bVar2;
  param_1[7] = puVar14 + 3;
  bVar3 = puVar14[2];
  puVar6 = (ushort *)FrontierScript_ReadVarPtr((undefined *)param_1);
  puVar7 = Frontier_GetData(*(undefined **)*param_1);
  puVar8 = Frontier_GetLaunchArgs(*(undefined **)*param_1);
  switch(uVar1) {
  case 2:
    puVar7[0x10] = bVar2;
    break;
  case 3:
    *puVar6 = *(ushort *)(puVar7 + uVar15 * 2 + 0x380);
    break;
  case 4:
    *puVar6 = *(ushort *)(puVar7 + 0x14);
    break;
  case 5:
    if (*(ushort *)(puVar7 + 0x14) < 9999) {
      *(ushort *)(puVar7 + 0x14) = *(ushort *)(puVar7 + 0x14) + 1;
    }
    break;
  case 7:
    OS_ResetSystem(0);
    break;
  case 9:
    uVar15 = sub_02030CD8(*(undefined **)(puVar7 + 8));
    *puVar6 = (ushort)uVar15;
    break;
  case 10:
    ov80_02232B58(puVar7,2);
    break;
  case 0xe:
    uVar5 = ov80_02232E58(puVar7);
    *puVar6 = uVar5;
    break;
  case 0xf:
    *puVar6 = *(ushort *)(puVar7 + uVar15 * 0x38 + 0x288) & 0x7ff;
    break;
  case 0x10:
    *puVar6 = *(ushort *)(puVar7 + (uint)bVar3 * 2 + uVar15 * 0x38 + 0x28c);
    break;
  case 0x11:
    *puVar6 = (ushort)(byte)puVar7[0x10];
    break;
  case 0x12:
    puVar8 = SaveArray_Party_Get(*(undefined **)(puVar8 + 8));
    iVar10 = 0;
    puVar12 = puVar7 + 0x36a;
    do {
      puVar9 = Party_GetMonByIndex(puVar8,(uint)(byte)puVar7[iVar10 + 0x24]);
      SetMonData(puVar9,6,puVar12);
      iVar10 = iVar10 + 1;
      puVar12 = puVar12 + 2;
    } while (iVar10 < 3);
    break;
  case 0x13:
    uVar5 = ov80_02237ED8(puVar7);
    *puVar6 = uVar5;
    break;
  case 0x14:
    uVar5 = ov80_02232E68(puVar7,uVar15);
    *puVar6 = uVar5;
    break;
  case 0x15:
    ov80_02232E9C(puVar7);
    break;
  case 0x16:
    ov80_02232EE0(puVar7);
    break;
  case 0x17:
    uVar5 = ov80_02232E64(puVar7);
    *puVar6 = uVar5;
    break;
  case 0x18:
    *puVar6 = (ushort)(byte)puVar7[0xa10];
    break;
  case 0x19:
    *puVar6 = (ushort)(byte)puVar7[0x12];
    break;
  case 0x1a:
    *puVar6 = (ushort)(byte)puVar7[0xa11];
    break;
  case 0x1b:
    uVar5 = ov80_02233020(puVar7);
    *puVar6 = uVar5;
    ov80_022331E8(*(undefined4 *)(puVar7 + 4),puVar7[0x10],*puVar6);
    break;
  case 0x1c:
    ov80_02232F60(puVar7);
    break;
  case 0x1d:
    sub_02096910(puVar7);
    break;
  case 0x1e:
    bVar2 = puVar7[0xa1b];
    if (bVar2 < 6) {
      *puVar6 = (ushort)bVar2;
    }
    else {
      *puVar6 = bVar2 - 6;
    }
    break;
  case 0x1f:
    puVar7[0xa1b] = 0;
    puVar7[0xa19] = 0;
    puVar7[0xa18] = 0;
    break;
  case 0x20:
    puVar7[0xa18] = bVar2;
    break;
  case 0x21:
    bVar4 = false;
    if ((byte)puVar7[0xa1b] < 6) {
      uVar5 = sub_0203769C();
      if (uVar5 == 0) {
        bVar4 = true;
      }
    }
    else {
      uVar5 = sub_0203769C();
      if (uVar5 != 0) {
        bVar4 = true;
      }
    }
    if (bVar4) {
      puVar8 = Save_Frontier_GetStatic(*(undefined **)(puVar8 + 8));
      ov80_02237FA4(puVar8,puVar7[0x10],0x32);
    }
    else {
      *(short *)(puVar7 + 0xa1c) = *(short *)(puVar7 + 0xa1c) + -0x32;
    }
    break;
  case 0x22:
    *puVar6 = 0;
    iVar10 = ov80_02237D8C(puVar7[0x10]);
    if (iVar10 == 1) {
      if ((byte)puVar7[0xa1b] < 6) {
        uVar5 = sub_0203769C();
        if (uVar5 != 0) {
          *puVar6 = 1;
        }
      }
      else {
        uVar5 = sub_0203769C();
        if (uVar5 == 0) {
          *puVar6 = 1;
        }
      }
    }
    break;
  case 0x23:
    iVar10 = ov80_02237D8C(puVar7[0x10]);
    *puVar6 = (ushort)iVar10;
    break;
  case 0x24:
    puVar11 = (undefined4 *)FrontierSystem_GetFrontierMap((undefined *)*param_1);
    ov80_02237EFC(*puVar11,puVar7,3);
    break;
  case 0x25:
    ov80_0222A474(puVar7 + 0x4c,*(ushort *)(puVar7 + (uint)(byte)puVar7[0x11] * 2 + 0x30),0xb,0xcc);
    ov80_0222A474(puVar7 + 0x15c,*(ushort *)(puVar7 + ((byte)puVar7[0x11] + 7) * 2 + 0x30),0xb,0xcc)
    ;
    break;
  case 0x26:
    uVar5 = ov80_02233648(puVar7);
    *puVar6 = uVar5;
    break;
  case 0x27:
    uVar15 = sub_02030E08(*(undefined **)(puVar8 + 8));
    uVar15 = sub_02030E58(uVar15,10,0,0,0);
    *puVar6 = (ushort)uVar15;
    auStack_18[0] = 1;
    uVar15 = sub_02030E08(*(undefined **)(puVar8 + 8));
    sub_02030E18(uVar15,10,0,0,auStack_18);
    break;
  case 0x28:
    *puVar6 = 0;
    if (puVar7[0x10] == '\0') {
      if (*(short *)(puVar7 + 0x14) == 0x14) {
        *puVar6 = 1;
      }
      else if (*(short *)(puVar7 + 0x14) == 0x30) {
        *puVar6 = 2;
      }
    }
    break;
  case 0x29:
    ov80_0222A52C(puVar7 + 0x288,puVar7 + 0x26c,puVar7 + 0x274,puVar7 + 0x278,(undefined *)0x0,4,0xb
                  ,0xcd);
    break;
  case 0x2a:
    ov80_02237E30(puVar7);
    break;
  case 0x2b:
    *puVar6 = (ushort)(byte)puVar7[0x13];
    puVar7[0x13] = 1;
    break;
  case 0x2c:
    if (puVar7[0x10] == '\x03') {
      if (uVar15 == 0) {
        puVar12 = Save_Frontier_GetStatic(*(undefined **)(puVar8 + 8));
        uVar15 = sub_0205C1F0(puVar7[0x10]);
        uVar13 = sub_0205C1F0(3);
        uVar13 = sub_0205C268(uVar13);
        uVar5 = FrontierSave_GetStat(puVar12,uVar15,uVar13);
        *(ushort *)(puVar7 + 0x22) = uVar5;
        puVar8 = Save_Frontier_GetStatic(*(undefined **)(puVar8 + 8));
        uVar15 = sub_0205C1F0(puVar7[0x10]);
        uVar13 = sub_0205C1F0(puVar7[0x10]);
        uVar13 = sub_0205C268(uVar13);
        sub_02031108(puVar8,uVar15,uVar13,*(ushort *)(puVar7 + 0x20));
      }
      else {
        puVar8 = Save_Frontier_GetStatic(*(undefined **)(puVar8 + 8));
        uVar15 = sub_0205C1F0(puVar7[0x10]);
        uVar13 = sub_0205C1F0(3);
        uVar13 = sub_0205C268(uVar13);
        sub_02031108(puVar8,uVar15,uVar13,*(ushort *)(puVar7 + 0x22));
      }
    }
  }
  return 0;
}

