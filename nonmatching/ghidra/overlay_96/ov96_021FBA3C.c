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
undefined4 PlaySE(unsigned short);
undefined4 _fsub();
undefined4 _s32_div_f();
unsigned short LCRandom(void);
undefined4 _ffix();
undefined4 _fadd();
undefined4 ov96_021FC164();
undefined4 _fflt();
undefined4 ov96_021E8228();
extern undefined ov96_0221C444;




void ov96_021FBA3C(undefined4 param_1,int param_2,int param_3,undefined4 param_4,int param_5,
                  byte param_6)

{
  ushort uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint extraout_r1;
  char *pcVar7;
  bool bVar8;
  byte bVar9;
  
  pcVar7 = (char *)(param_2 + 0x238 + (uint)param_6 * 0x28);
  if (((*(int *)(pcVar7 + 0x18) != 1) && (*pcVar7 != '\x02')) && (pcVar7[2] == '\0')) {
    uVar2 = *(uint *)(pcVar7 + 8);
    uVar5 = *(uint *)(pcVar7 + 0x10);
    if (uVar2 * 2 < 0xff000001 && uVar5 * 2 < 0xff000001) {
      if ((int)uVar2 < 0) {
        uVar2 = -(uVar2 & 0x7fffffff);
      }
      if ((int)uVar5 < 0) {
        uVar5 = -(uVar5 & 0x7fffffff);
      }
      bVar8 = (int)uVar5 <= (int)uVar2;
    }
    else {
      bVar8 = true;
    }
    bVar9 = 0;
    if (!bVar8) {
      uVar5 = _fadd(*(uint *)(pcVar7 + 8),*(uint *)(pcVar7 + 0x14));
      *(uint *)(pcVar7 + 8) = uVar5;
      uVar6 = *(uint *)(pcVar7 + 0x10);
      uVar2 = uVar5 * 2;
      bVar8 = false;
      if (uVar2 < 0xff000001) {
        uVar2 = uVar6 * 2;
        bVar8 = uVar2 < 0xff000001;
      }
      if (bVar8) {
        if ((int)uVar5 < 0) {
          uVar5 = -(uVar5 & 0x7fffffff);
        }
        if ((int)uVar6 < 0) {
          uVar6 = -(uVar6 & 0x7fffffff);
        }
        uVar2 = (uint)(byte)((uVar5 == uVar6) << 3 | bVar9) << 0x1b;
        if ((int)uVar5 <= (int)uVar6) {
          uVar2 = uVar2 & 0xdfffffff;
        }
        bVar8 = (int)uVar5 > (int)uVar6;
        uVar2 = uVar2 >> 0x1b;
      }
      else {
        uVar2 = (byte)((uVar2 == 0xff000000) << 3 | bVar9) & 0x1b;
        bVar8 = false;
      }
      if (bVar8 && (uVar2 >> 3 & 1) == 0) {
        *(undefined4 *)(pcVar7 + 8) = *(undefined4 *)(pcVar7 + 0x10);
      }
    }
  }
  if (*pcVar7 == '\x02') {
    pcVar7[1] = pcVar7[1] + -1;
    if (pcVar7[1] == '\0') {
      *pcVar7 = '\0';
    }
  }
  else {
    iVar3 = ov96_021FC164(*(undefined4 *)(param_2 + 0xd8),param_5,*(undefined4 *)(pcVar7 + 0x20));
    if ((iVar3 != -1) && (*(int *)(pcVar7 + 0x24) != iVar3)) {
      uVar1 = LCRandom();
      { int nug_a = (int)((uint)uVar1), nug_b = (int)(100); extraout_r1 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
      if ((extraout_r1 & 0xff) < (uint)(byte)pcVar7[3]) {
        if ((byte)pcVar7[2] < 4) {
          pcVar7[2] = pcVar7[2] + 1;
          uVar2 = _fadd(*(uint *)(pcVar7 + 0x10),
                        *(uint *)(&ov96_0221C444 + ((byte)pcVar7[2] - 1) * 4));
          *(uint *)(pcVar7 + 8) = uVar2;
        }
        ov96_021E8228(param_1,param_4,param_5,6,1);
        ov96_021E8228(param_1,param_4,param_5,2,1);
      }
      else if ((extraout_r1 & 0xff) < (uint)(byte)pcVar7[4]) {
        *pcVar7 = '\x02';
        pcVar7[1] = '\x1e';
        pcVar7[2] = '\0';
        pcVar7[8] = '\0';
        pcVar7[9] = '\0';
        pcVar7[10] = '\0';
        pcVar7[0xb] = '?';
        ov96_021E8228(param_1,param_4,param_5,1,1);
      }
      else {
        ov96_021E8228(param_1,param_4,param_5,2,1);
      }
      *(int *)(pcVar7 + 0x24) = iVar3;
    }
  }
  uVar2 = _fadd(*(uint *)(pcVar7 + 8),*(uint *)(pcVar7 + 0xc));
  iVar3 = _ffix(uVar2);
  uVar5 = _fflt(iVar3);
  uVar2 = _fsub(uVar2,uVar5);
  *(uint *)(pcVar7 + 0xc) = uVar2;
  iVar4 = *(int *)(pcVar7 + 0x20);
  *(int *)(pcVar7 + 0x20) = iVar4 + iVar3;
  *(short *)(param_3 + param_5 * 2) = (short)(iVar4 + iVar3);
  if ((*(int *)(pcVar7 + 0x18) == 0) && (0xfff < *(int *)(pcVar7 + 0x20))) {
    param_3 = param_3 + param_5 * 2;
    *(undefined2 *)(param_3 + 0x10) = 1;
    *(short *)(param_3 + 10) = (short)*(undefined4 *)(param_2 + 0x230);
    *(undefined4 *)(pcVar7 + 0x1c) = *(undefined4 *)(param_2 + 0x230);
    pcVar7[0x18] = '\x01';
    pcVar7[0x19] = '\0';
    pcVar7[0x1a] = '\0';
    pcVar7[0x1b] = '\0';
    PlaySE(0x8a1);
  }
  return;
}

