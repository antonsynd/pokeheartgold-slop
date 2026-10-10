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
undefined4 ov10_0221EF24(undefined4, undefined4);
undefined4 func_0x0224ede0(undefined4, undefined4, undefined4, undefined4) __asm__("sub_0224EDE0");
undefined4 ov10_0221EEF0(undefined4);
undefined4 ov10_0221F084(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x022527cc(undefined4, undefined4) __asm__("sub_022527CC");
extern undefined ov10_0222B080;
extern undefined ov10_0222B098;

void ov10_0221D8F8(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  short sVar2;
  undefined1 uVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  short *psVar7;
  int iVar8;
  uint uVar9;
  undefined1 *puVar10;
  int iVar11;
  undefined1 auStack_20 [8];
  undefined4 uStack_18;

  uStack_18 = param_4;
  ov10_0221EF24(param_2,1);
  iVar4 = ov10_0221EEF0(param_2);
  uVar5 = ov10_0221EEF0(param_2);
  if (iVar4 == 1) {
    uVar1 = *(undefined1 *)(param_2 + (uint)*(byte *)(param_2 + 0x355) + 0x36c);
  }
  else {
    uVar1 = 100;
  }
  psVar7 = (short *)&ov10_0222B098;
  iVar4 = 0;
  iVar11 = (uint)*(ushort *)(param_2 + 0x356) * 0x10;
  sVar2 = *(short *)(param_2 + iVar11 + 0x3de);
  do {
    if (sVar2 == *psVar7) break;
    psVar7 = psVar7 + 1;
    iVar4 = iVar4 + 1;
  } while (*psVar7 != -1);
  psVar7 = (short *)&ov10_0222B080;
  iVar8 = 0;
  do {
    if (sVar2 == *psVar7) break;
    psVar7 = psVar7 + 1;
    iVar8 = iVar8 + 1;
  } while (*psVar7 != -1);
  if ((*(short *)(&ov10_0222B080 + iVar8 * 2) != -1) ||
     ((1 < *(byte *)(param_2 + iVar11 + 0x3e1) && (*(short *)(&ov10_0222B098 + iVar4 * 2) == -1))))
  {
    iVar4 = 0;
    puVar10 = auStack_20;
    do {
      uVar3 = func_0x0224ede0(param_2,*(undefined1 *)(param_2 + 0x3cf),iVar4 + 10,0);
      *puVar10 = uVar3;
      iVar4 = iVar4 + 1;
      puVar10 = puVar10 + 1;
    } while (iVar4 < 6);
    uVar9 = (uint)*(byte *)(param_2 + 0x3cf);
    uVar6 = func_0x022527cc(param_2,uVar9);
    iVar4 = param_2 + uVar9 * 0xc0;
    uVar9 = ov10_0221F084(param_1,param_2,*(undefined2 *)(param_2 + 0x356),
                          *(undefined2 *)(iVar4 + 0x2db8),auStack_20,uVar9,uVar6,
                          (*(uint *)(iVar4 + 0x2dcc) & 0x3fffff) >> 0x13,uVar1);
    if (uVar9 < *(uint *)(param_2 + (uint)*(byte *)(param_2 + 0x3d0) * 0xc0 + 0x2d8c)) {
      ov10_0221EF24(param_2,uVar5);
    }
  }
  return;
}

