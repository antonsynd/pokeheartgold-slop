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
typedef void code(void);
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
undefined4 GetBgPriority(undefined4, undefined4);
undefined4 AllocAndReadWholeNarcMemberByIdPair(undefined4, undefined4, undefined4);
undefined4 ov07_0221C3DC(undefined4);
undefined4 ov07_0221C69C(void);
undefined4 GF_AssertFail(void);
extern undefined ov07_02234C64;

undefined4 ov07_0221C01C(undefined4 *param_1,undefined1 *param_2,int param_3,int *param_4)

{
  undefined1 uVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  int iVar6;
  int *piVar7;
  int iVar8;
  int iStack_80;
  int aiStack_78 [25];
  
  ov07_0221C69C();
  iVar2 = ov07_0221C3DC(param_1);
  if (iVar2 == 0) {
    return 0;
  }
  iVar6 = 0;
  iVar2 = 0;
  do {
    *(undefined1 *)((int)param_1 + iVar6 + 0x6c) = 1;
    iVar8 = iVar6 + 0x7c;
    iVar6 = iVar6 + 1;
    *(undefined1 *)((int)param_1 + iVar8) = 0;
  } while (iVar6 < 0x10);
  iVar6 = 0;
  puVar4 = param_1;
  do {
    puVar5 = puVar4 + 0x25;
    iVar2 = iVar2 + 1;
    puVar4 = puVar4 + 1;
    *puVar5 = 0;
    puVar5 = param_1;
  } while (iVar2 < 10);
  do {
    puVar5[0xc] = 0;
    puVar5[10] = 0;
    *(undefined1 *)(puVar5 + 0xb) = 0;
    iVar6 = iVar6 + 1;
    *(undefined1 *)((int)puVar5 + 0x2d) = 0;
    puVar5 = puVar5 + 3;
  } while (iVar6 < 3);
  *(undefined1 *)param_1[0x30] = *param_2;
  *(undefined1 *)(param_1[0x30] + 1) = param_2[1];
  *(undefined2 *)(param_1[0x30] + 2) = *(undefined2 *)(param_2 + 2);
  *(undefined4 *)(param_1[0x30] + 4) = *(undefined4 *)(param_2 + 4);
  *(undefined2 *)(param_1[0x30] + 8) = *(undefined2 *)(param_2 + 8);
  *(undefined2 *)(param_1[0x30] + 10) = *(undefined2 *)(param_2 + 0xc);
  *(undefined4 *)(param_1[0x30] + 0xc) = *(undefined4 *)(param_2 + 0x10);
  *(undefined2 *)(param_1[0x30] + 0x10) = *(undefined2 *)(param_2 + 10);
  *(short *)(param_1[0x30] + 0x12) = (short)*(undefined4 *)(param_2 + 0x54);
  *(undefined2 *)(param_1[0x30] + 0x14) = *(undefined2 *)(param_2 + 0x14);
  *(undefined2 *)(param_1[0x30] + 0x16) = *(undefined2 *)(param_2 + 0x16);
  *(uint *)(param_1[0x30] + 0x118) =
       *(uint *)(param_1[0x30] + 0x118) & 0xfffffffe | (*(ushort *)(param_2 + 0xe) & 3) >> 1;
  *(uint *)(param_1[0x30] + 0x118) =
       *(uint *)(param_1[0x30] + 0x118) & 0xfffffffd | ((*(ushort *)(param_2 + 0xe) & 7) >> 2) << 1;
  *(uint *)(param_1[0x30] + 0x118) =
       *(uint *)(param_1[0x30] + 0x118) & 0xfffffffb |
       ((*(ushort *)(param_2 + 0xe) & 0xf) >> 3) << 2;
  *(int *)(param_1[0x30] + 0xac) = *param_4;
  if (*param_4 == 0) {
    GF_AssertFail();
  }
  iVar6 = 0;
  param_1[0x31] = param_4[1];
  iVar8 = 0;
  param_1[0x32] = param_4[2];
  *(int *)(param_1[0x30] + 0xd4) = param_4[0xc];
  iVar2 = 0;
  piVar3 = param_4;
  piVar7 = param_4;
  do {
    *(int *)(param_1[0x30] + iVar2 + 0xb0) = piVar3[3];
    *(undefined1 *)(param_1[0x30] + iVar6 + 0xc0) = *(undefined1 *)((int)param_4 + iVar6 + 0x1c);
    *(int *)(param_1[0x30] + iVar2 + 0xc4) = piVar3[8];
    *(short *)(param_1[0x30] + iVar8 + 0xd8) = (short)piVar7[0xd];
    *(undefined1 *)(param_1[0x30] + iVar6 + 0xe0) = *(undefined1 *)((int)param_4 + iVar6 + 0x3c);
    *(undefined1 *)(param_1[0x30] + iVar6 + 0xe4) = *(undefined1 *)((int)param_4 + iVar6 + 0x40);
    *(undefined1 *)(param_1[0x30] + iVar6 + 0xe8) = *(undefined1 *)((int)param_4 + iVar6 + 0x44);
    *(int *)(param_1[0x30] + iVar2 + 0xec) = piVar3[0x12];
    *(int *)(param_1[0x30] + iVar2 + 0xfc) = piVar3[0x16];
    piVar7 = (int *)((int)piVar7 + 2);
    iVar6 = iVar6 + 1;
    piVar3 = piVar3 + 1;
    iVar2 = iVar2 + 4;
    iVar8 = iVar8 + 2;
  } while (iVar6 < 4);
  iVar2 = param_4[0x1c];
  param_1[100] = param_4[0x1b];
  param_1[0x65] = iVar2;
  iVar2 = param_4[0x1e];
  param_1[0x66] = param_4[0x1d];
  param_1[0x67] = iVar2;
  iVar2 = param_4[0x20];
  param_1[0x68] = param_4[0x1f];
  param_1[0x69] = iVar2;
  *(int *)(param_1[0x30] + 0x10c) = param_4[0x21];
  *(int *)(param_1[0x30] + 0x114) = param_4[0x23];
  *(int *)(param_1[0x30] + 0x110) = param_4[0x22];
  iStack_80 = param_3;
  if (param_3 == 0x122) {
    piVar7 = (int *)&ov07_02234C64;
    piVar3 = aiStack_78;
    iVar2 = 0xc;
    do {
      iVar6 = *piVar7;
      iVar8 = piVar7[1];
      piVar7 = piVar7 + 2;
      *piVar3 = iVar6;
      piVar3[1] = iVar8;
      piVar3 = piVar3 + 2;
      iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    *piVar3 = *piVar7;
    if (*(ushort *)(param_1[0x30] + 0x12) < 0x18) {
      iStack_80 = aiStack_78[*(ushort *)(param_1[0x30] + 0x12)];
    }
    else {
      iStack_80 = 0xa1;
    }
  }
  if ((iStack_80 == 0) || (0x1d3 < iStack_80)) {
    iStack_80 = 1;
  }
  iVar2 = param_4[0x1a];
  param_1[1] = iVar2;
  iVar2 = AllocAndReadWholeNarcMemberByIdPair(iVar2,iStack_80,*param_1);
  param_1[5] = iVar2;
  if (iVar2 == 0) {
    GF_AssertFail();
    return 0;
  }
  param_1[6] = iVar2;
  uVar1 = GetBgPriority(param_1[0x31],0);
  *(undefined1 *)(param_1 + 0x6b) = uVar1;
  uVar1 = GetBgPriority(param_1[0x31],1);
  *(undefined1 *)((int)param_1 + 0x1ad) = uVar1;
  uVar1 = GetBgPriority(param_1[0x31],2);
  *(undefined1 *)((int)param_1 + 0x1ae) = uVar1;
  uVar1 = GetBgPriority(param_1[0x31],3);
  iVar2 = 0;
  *(undefined1 *)((int)param_1 + 0x1af) = uVar1;
  iVar6 = 0;
  puVar4 = param_1;
  do {
    puVar5 = puVar4 + 0x37;
    iVar2 = iVar2 + 1;
    puVar4 = puVar4 + 1;
    *puVar5 = 0;
  } while (iVar2 < 10);
  iVar2 = 0;
  puVar4 = param_1;
  do {
    puVar4[0x4f] = 0;
    puVar4[0x54] = 0;
    iVar6 = iVar6 + 1;
    puVar4 = puVar4 + 1;
    puVar5 = param_1;
  } while (iVar6 < 5);
  do {
    iVar2 = iVar2 + 1;
    puVar5[0x60] = 0;
    puVar5 = puVar5 + 1;
  } while (iVar2 < 4);
  param_1[0x2f] = 0x221be45;
  *(undefined1 *)((int)param_1 + 0x8d) = 0;
  param_1[0x6a] = 0xff;
  param_1[4] = 1;
  return 1;
}

