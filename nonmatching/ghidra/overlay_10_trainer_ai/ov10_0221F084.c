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
undefined4 func_0x02251d28() __asm__("sub_02251D28");
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 func_0x02257e74() __asm__("sub_02257E74");
undefined4 func_0x02253178() __asm__("sub_02253178");
undefined4 func_0x020f2ba4() __asm__("sub_020F2BA4");
undefined4 func_0x0223ab1c() __asm__("sub_0223AB1C");
undefined4 func_0x0223bd98() __asm__("sub_0223BD98");
undefined4 func_0x02256ff8() __asm__("sub_02256FF8");
extern undefined ov10_0222B068;
extern undefined ov10_0222B06A;

undefined4
ov10_0221F084(undefined4 param_1,int param_2,int param_3,undefined4 param_4,byte *param_5,
             uint param_6,int param_7,int param_8,byte param_9)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  byte bVar5;
  byte bVar6;
  int iVar7;
  int iVar8;
  undefined4 uVar9;
  int extraout_r1;
  int extraout_r1_00;
  ushort *puVar10;
  uint uVar11;
  uint uVar12;
  uint uStack_40;
  uint uStack_18;

  iVar7 = func_0x0223ab1c(param_1,*(undefined1 *)(param_2 + 0x3d0));
  uVar11 = 0;
  uVar12 = 0;
  uStack_40 = 0;
  uStack_18 = 0;
  if (param_3 < 0xd9) {
    if (0xd7 < param_3) {
      uVar11 = func_0x020f2998((uint)*(byte *)(param_2 + param_6 * 0xc0 + 0x2d75) * 10,0x19);
      goto LAB_0221f3b4;
    }
    if (param_3 < 0x53) {
      if (0x51 < param_3) {
        uStack_40 = 0x28;
        goto LAB_0221f3b4;
      }
      if (param_3 < 0x32) {
        if (param_3 == 0x31) {
          uStack_40 = 0x14;
          goto LAB_0221f3b4;
        }
      }
      else if ((param_3 < 0x46) && (0x42 < param_3)) {
        if (param_3 == 0x43) goto LAB_0221f374;
        if (param_3 == 0x45) goto LAB_0221f2be;
      }
    }
    else if (param_3 < 0x66) {
      if (param_3 == 0x65) {
LAB_0221f2be:
        uStack_40 = (uint)*(byte *)(param_2 + param_6 * 0xc0 + 0x2d74);
        goto LAB_0221f3b4;
      }
    }
    else if (param_3 == 0x95) {
      uVar9 = func_0x0223bd98(param_1);
      func_0x020f2998(uVar9,0xb);
      uStack_40 = func_0x020f2998((uint)*(byte *)(param_2 + param_6 * 0xc0 + 0x2d74) *
                                  (extraout_r1 + 5),10);
      goto LAB_0221f3b4;
    }
  }
  else if (param_3 < 0x169) {
    if (0x167 < param_3) {
      iVar8 = func_0x020f2ba4(*(int *)(param_2 + (uint)*(byte *)(param_2 + 0x3d0) * 4 + 0x21f0) *
                              0x19,*(undefined4 *)(param_2 + param_6 * 4 + 0x21f0));
      uVar11 = iVar8 + 1;
      if (0x96 < (int)uVar11) {
        uVar11 = 0x96;
      }
      uVar12 = 0;
      goto LAB_0221f3b4;
    }
    if (param_3 < 0xdf) {
      if (0xd9 < param_3) {
        if (param_3 == 0xda) {
          uVar11 = func_0x020f2998((0xff - (uint)*(byte *)(param_2 + param_6 * 0xc0 + 0x2d75)) * 10,
                                   0x19);
          goto LAB_0221f3b4;
        }
        if (param_3 == 0xde) {
          uVar9 = func_0x0223bd98(param_1);
          func_0x020f2998(uVar9,100);
          if (extraout_r1_00 < 5) {
            uVar11 = 10;
          }
          else if (extraout_r1_00 < 0xf) {
            uVar11 = 0x1e;
          }
          else if (extraout_r1_00 < 0x23) {
            uVar11 = 0x32;
          }
          else if (extraout_r1_00 < 0x41) {
            uVar11 = 0x46;
          }
          else if (extraout_r1_00 < 0x55) {
            uVar11 = 0x5a;
          }
          else if (extraout_r1_00 < 0x5f) {
            uVar11 = 0x6e;
          }
          else {
            uVar11 = 0x96;
          }
          uVar12 = 0;
          goto LAB_0221f3b4;
        }
      }
    }
    else if (param_3 == 0xed) {
      bVar1 = param_5[1];
      bVar2 = param_5[4];
      bVar3 = param_5[5];
      bVar4 = *param_5;
      bVar5 = param_5[2];
      bVar6 = param_5[3];
      iVar8 = func_0x020f2998(((bVar2 & 2) * 8 |
                               bVar1 & 2 | (int)(bVar4 & 2) >> 1 | (bVar5 & 2) << 1 |
                               (bVar6 & 2) << 2 | (bVar3 & 2) << 4) * 0x28,0x3f);
      uVar11 = iVar8 + 0x1e;
      iVar8 = func_0x020f2998(((bVar3 & 1) << 5 |
                              (bVar5 & 1) * 4 | bVar4 & 1 | (bVar1 & 1) << 1 | (bVar6 & 1) << 3 |
                              (bVar2 & 1) << 4) * 0xf,0x3f);
      uVar12 = iVar8 + 1;
      if (8 < (int)uVar12) {
        uVar12 = iVar8 + 2;
      }
      goto LAB_0221f3b4;
    }
  }
  else if (param_3 < 0x1c0) {
    if (0x1be < param_3) {
LAB_0221f374:
      puVar10 = (ushort *)&ov10_0222B068;
      iVar8 = 0;
      do {
        if (*(int *)(param_2 + (uint)*(byte *)(param_2 + 0x3d0) * 0xc0 + 0x2d60) <=
            (int)(uint)*puVar10) break;
        puVar10 = puVar10 + 2;
        iVar8 = iVar8 + 1;
      } while (*puVar10 != 0xffff);
      if (*(short *)(&ov10_0222B068 + iVar8 * 4) == -1) {
        uVar11 = 0x78;
      }
      else {
        uVar11 = (uint)*(ushort *)(&ov10_0222B06A + iVar8 * 4);
      }
      goto LAB_0221f3b4;
    }
    if (param_3 == 0x16b) {
      if (((param_7 != 0x67) && (param_8 == 0)) &&
         (uVar11 = func_0x02257e74(param_2,param_4,0xb), uVar11 != 0)) {
        uVar12 = func_0x02257e74(param_2,param_4,0xc);
      }
      goto LAB_0221f3b4;
    }
  }
  else if (param_3 == 0x1c1) {
    if ((param_7 != 0x67) && (param_8 == 0)) {
      uVar9 = func_0x02257e74(param_2,param_4,1);
      switch(uVar9) {
      case 0x7e:
        uVar12 = 10;
        break;
      case 0x7f:
        uVar12 = 0xb;
        break;
      case 0x80:
        uVar12 = 0xd;
        break;
      case 0x81:
        uVar12 = 0xc;
        break;
      case 0x82:
        uVar12 = 0xf;
        break;
      case 0x83:
        uVar12 = 1;
        break;
      case 0x84:
        uVar12 = 3;
        break;
      case 0x85:
        uVar12 = 4;
        break;
      case 0x86:
        uVar12 = 2;
        break;
      case 0x87:
        uVar12 = 0xe;
        break;
      case 0x88:
        uVar12 = 6;
        break;
      case 0x89:
        uVar12 = 5;
        break;
      case 0x8a:
        uVar12 = 7;
        break;
      case 0x8b:
        uVar12 = 0x10;
        break;
      case 0x8c:
        uVar12 = 0x11;
        break;
      case 0x8d:
        uVar12 = 8;
        break;
      default:
        uVar12 = 0;
      }
    }
    goto LAB_0221f3b4;
  }
  uVar11 = 0;
  uVar12 = 0;
LAB_0221f3b4:
  if (uStack_40 == 0) {
    uStack_40 = func_0x02256ff8(param_1,param_2,param_3,*(undefined4 *)(param_2 + iVar7 * 4 + 0x1bc)
                                ,*(undefined4 *)(param_2 + 0x180),uVar11 & 0xffff,uVar12 & 0xff,
                                param_6 & 0xff,*(undefined1 *)(param_2 + 0x3d0),1);
  }
  else {
    *(uint *)(param_2 + 0x213c) = *(uint *)(param_2 + 0x213c) | 0x800;
  }
  iVar7 = func_0x02251d28(param_1,param_2,param_3,uVar12,param_6,*(undefined1 *)(param_2 + 0x3d0),
                          uStack_40,&uStack_18);
  *(uint *)(param_2 + 0x213c) = *(uint *)(param_2 + 0x213c) & 0xfffff7ff;
  if ((uStack_18 & 0x140808) == 0) {
    uVar9 = func_0x02253178(iVar7 * (uint)param_9,100);
    return uVar9;
  }
  return 0;
}

