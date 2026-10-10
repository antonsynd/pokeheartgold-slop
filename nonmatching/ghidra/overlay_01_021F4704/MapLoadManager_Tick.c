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
undefined4 ov01_021F5D10();
undefined4 ov01_021F61DC();
undefined4 sub_02039AD8();
undefined4 ov01_021F5024();
undefined4 ov01_021F5D38();
undefined4 ov01_021F477C();
undefined4 ov01_021F5F64();
undefined4 ov01_021FBA00();
undefined4 GF_AssertFail();
undefined4 ov01_021EA3B0();
undefined4 ov01_021F5D20();
undefined4 func_0x020c3b40() __asm__("sub_020C3B40");
undefined4 ov01_021F613C();
undefined4 ov01_021F5CB4();

void MapLoadManager_Tick(int param_1)

{
  uint uVar1;
  undefined1 uVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int *piVar6;
  int *piVar7;
  int iVar8;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  piVar7 = (int *)(param_1 + 0xd0);
  iVar8 = param_1 + 4 + (uint)*(byte *)(param_1 + 0xa2) * 0x30;
  if ((*(int *)(param_1 + 0xf0) == 1) && (piVar6 = *(int **)(param_1 + 0xdc), piVar6 != (int *)0x0))
  {
    if (*(int *)(param_1 + 0xe8) == 0) {
      if ((*piVar7 == *piVar6) || (*(int *)(param_1 + 0xd8) == piVar6[2])) {
        if ((*piVar7 != *piVar6) || (*(int *)(param_1 + 0xd8) != piVar6[2])) {
          *(undefined4 *)(param_1 + 0xe8) = 1;
          piVar6 = *(int **)(param_1 + 0xdc);
          if (*piVar7 == *piVar6) {
            if (*(int *)(*(int *)(param_1 + 0xdc) + 8) < *(int *)(param_1 + 0xd8)) {
              *(int *)(param_1 + 0xe0) = param_1 + 0xd8;
              *(int *)(param_1 + 0xe4) = *(int *)(param_1 + 0xdc) + 8;
              uVar2 = 4;
            }
            else {
              *(int **)(param_1 + 0xe0) = piVar6 + 2;
              *(int *)(param_1 + 0xe4) = param_1 + 0xd8;
              uVar2 = 2;
            }
            *(undefined1 *)(param_1 + 0xec) = uVar2;
            uVar1 = *(int *)(param_1 + 0xd8) >> 0x1f;
            if (((*(int *)(param_1 + 0xd8) * 0x20000 + uVar1 >> 0x11 | uVar1 << 0xf) != uVar1) &&
               (iVar4 = sub_02039AD8(1), iVar4 != 0)) {
              return;
            }
            uVar1 = *(int *)(param_1 + 0xd8) >> 0x1f;
            if ((*(int *)(param_1 + 0xd8) * 0x20000 + uVar1 >> 0x11 | uVar1 << 0xf) != uVar1) {
              GF_AssertFail();
            }
          }
          else {
            if (*piVar6 < *piVar7) {
              *(int **)(param_1 + 0xe0) = piVar7;
              *(undefined4 *)(param_1 + 0xe4) = *(undefined4 *)(param_1 + 0xdc);
              *(undefined1 *)(param_1 + 0xec) = 3;
            }
            else {
              *(int **)(param_1 + 0xe0) = piVar6;
              *(int **)(param_1 + 0xe4) = piVar7;
              *(undefined1 *)(param_1 + 0xec) = 1;
            }
            uVar1 = *piVar7 >> 0x1f;
            if (((*piVar7 * 0x20000 + uVar1 >> 0x11 | uVar1 << 0xf) != uVar1) &&
               (iVar4 = sub_02039AD8(1), iVar4 != 0)) {
              return;
            }
            uVar1 = *piVar7 >> 0x1f;
            if ((*piVar7 * 0x20000 + uVar1 >> 0x11 | uVar1 << 0xf) != uVar1) {
              GF_AssertFail();
            }
          }
          ov01_021F613C(*(undefined1 *)(param_1 + 0xec),param_1);
        }
      }
      else {
        GF_AssertFail();
      }
    }
    else {
      if (**(int **)(param_1 + 0xe0) < **(int **)(param_1 + 0xe4)) {
        GF_AssertFail();
      }
      if (0xffff < **(int **)(param_1 + 0xe0) - **(int **)(param_1 + 0xe4)) {
        ov01_021F61DC(**(undefined4 **)(param_1 + 0xdc),(*(undefined4 **)(param_1 + 0xdc))[2],
                      &uStack_18,&uStack_1c);
        ov01_021F5F64(uStack_18,uStack_1c,param_1);
        piVar6 = *(int **)(param_1 + 0xdc);
        iVar4 = piVar6[1];
        *piVar7 = *piVar6;
        *(int *)(param_1 + 0xd4) = iVar4;
        *(int *)(param_1 + 0xd8) = piVar6[2];
        uVar1 = *(int *)(param_1 + 0xd8) >> 0x1f;
        if (((*(int *)(param_1 + 0xd8) * 0x20000 + uVar1 >> 0x11 | uVar1 << 0xf) != uVar1) &&
           (iVar4 = sub_02039AD8(1), iVar4 != 0)) {
          return;
        }
        uVar1 = *(int *)(param_1 + 0xd8) >> 0x1f;
        if ((*(int *)(param_1 + 0xd8) * 0x20000 + uVar1 >> 0x11 | uVar1 << 0xf) != uVar1) {
          GF_AssertFail();
        }
        *(undefined4 *)(param_1 + 0xe8) = 0;
        *(undefined4 *)(param_1 + 0xe0) = 0;
        *(undefined4 *)(param_1 + 0xe4) = 0;
      }
    }
  }
  switch(*(undefined4 *)(param_1 + 0xb4)) {
  case 0:
    if (*(int *)(param_1 + (uint)*(byte *)(iVar8 + (uint)*(byte *)(iVar8 + 0x22) + 0x20) * 4 + 0x80)
        != 1) {
      (**(code **)(*(int *)(param_1 + 0xfc) + 4))
                ((uint)*(byte *)(iVar8 + 0x22),*(undefined4 *)(param_1 + 0xb8),
                 *(undefined4 *)(param_1 + 0xc0),*(undefined4 *)(param_1 + 0xc4),
                 *(undefined4 *)(param_1 + 200),param_1,iVar8);
    }
    *(char *)(iVar8 + 0x22) = *(char *)(iVar8 + 0x22) + '\x01';
    *(undefined4 *)(param_1 + 0xb4) = 1;
    break;
  case 1:
    if (*(int *)(param_1 + (uint)*(byte *)(iVar8 + (uint)*(byte *)(iVar8 + 0x22) + 0x1f) * 4 + 0x80)
        == 1) {
      ov01_021F477C(iVar8);
      *(undefined4 *)
       (param_1 + (uint)*(byte *)(iVar8 + (uint)*(byte *)(iVar8 + 0x22) + 0x1f) * 4 + 0x80) = 0;
    }
    if ((2 < *(byte *)(iVar8 + 0x22)) || (iVar4 = ov01_021F5024(iVar8 + 0x10), iVar4 != 1)) break;
    if (*(byte *)(iVar8 + 0x22) < 2) {
      *(undefined4 *)(param_1 + 0xb4) = 0;
    }
    else {
      *(undefined4 *)(iVar8 + 0x24) = 1;
    }
    iVar4 = *(int *)(iVar8 + (*(byte *)(iVar8 + 0x22) - 1) * 4);
    if (*(int *)(iVar4 + 0x864) == 1) {
      iVar4 = func_0x020c3b40(*(undefined4 *)(iVar4 + 0x854));
      if (iVar4 == 0) {
code_r0x021f5392:
        iVar4 = 0;
      }
      else {
        if ((iVar4 + 8 == 0) || (*(char *)(iVar4 + 9) == '\0')) {
          piVar7 = (int *)0x0;
        }
        else {
          piVar7 = (int *)(iVar4 + 8 + (uint)*(ushort *)(iVar4 + 0xe) + 4);
        }
        if (piVar7 == (int *)0x0) goto code_r0x021f5392;
        iVar4 = iVar4 + *piVar7;
      }
      iVar3 = ov01_021FBA00(*(undefined4 *)(param_1 + 0xb8));
      if (iVar3 == 1) {
        ov01_021EA3B0(iVar4);
      }
    }
    if (*(code **)(param_1 + 0x108) != (code *)0x0) {
      iVar4 = *(int *)(iVar8 + (*(byte *)(iVar8 + 0x22) - 1) * 4);
      iVar8 = *(int *)(iVar4 + 0x860);
      if ((-1 < iVar8) && (iVar8 < *(int *)(param_1 + 0xc4) * *(int *)(param_1 + 200))) {
        (**(code **)(param_1 + 0x108))
                  (*(undefined4 *)(param_1 + 0x10c),iVar8,*(undefined4 *)(iVar4 + 0x868));
      }
    }
    break;
  case 3:
    iVar8 = ov01_021F5024(iVar8 + 0x10);
    if (iVar8 == 1) {
      *(undefined1 *)(param_1 + 0xa0) = 0;
    }
  }
  if (*(char *)(param_1 + 0xa0) != '\0') {
    iVar8 = ov01_021F5D10(param_1);
    if (iVar8 == 1) {
      *(undefined4 *)(param_1 + (uint)*(byte *)(param_1 + 0xa2) * 0x30 + 0x2c) = 0;
      ov01_021F5D20(param_1);
      *(char *)(param_1 + 0xa0) = *(char *)(param_1 + 0xa0) + -1;
      *(char *)(param_1 + 0xa2) = -((char)((*(char *)(param_1 + 0xa2) + '\x01') * -0x80) >> 7);
      if (*(char *)(param_1 + 0xa0) == '\0') {
        *(undefined1 *)(param_1 + 0xa2) = 0;
        *(undefined1 *)(param_1 + 0xa1) = 0;
        uVar5 = 2;
      }
      else {
        uVar5 = 0;
      }
      *(undefined4 *)(param_1 + 0xb4) = uVar5;
      if (*(int *)(param_1 + 0x6c) == 1) {
        *(undefined4 *)(param_1 + 0x6c) = 0;
        ov01_021F5D38(*(undefined1 *)(param_1 + 0x70),param_1);
        ov01_021F5CB4(param_1);
      }
    }
    return;
  }
  *(undefined1 *)(param_1 + 0xa2) = 0;
  *(undefined1 *)(param_1 + 0xa1) = 0;
  *(undefined4 *)(param_1 + 0xb4) = 2;
  return;
}

