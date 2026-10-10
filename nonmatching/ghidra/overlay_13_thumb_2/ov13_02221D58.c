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
undefined4 ov13_02222A84();
undefined4 ov13_02222968();

undefined4 ov13_02221D58(int param_1,int param_2)

{
  byte bVar1;
  uint uVar2;
  byte *pbVar3;

  pbVar3 = (byte *)(param_1 + 6);
  do {
    uVar2 = ov13_02222A84((uint)*(ushort *)(pbVar3 + 2));
    bVar1 = *pbVar3;
    if (bVar1 < 0x22) {
      if (bVar1 < 0x21) {
        if (bVar1 < 0x16) {
          switch(bVar1) {
          case 0x10:
          case 0x11:
          case 0x12:
          case 0x13:
            if (5 < uVar2) {
              return 0xffffffff;
            }
            break;
          case 0x15:
            goto switchD_02221daa_caseD_15;
          }
        }
        else if (bVar1 == 0x20) goto LAB_02221ddc;
      }
      else {
LAB_02221ddc:
        if (0xd < uVar2) {
          return 0xffffffff;
        }
      }
    }
    else if (bVar1 < 0x24) {
      if ((0x22 < bVar1) || (bVar1 == 0x22)) goto LAB_02221ddc;
    }
    else if (bVar1 == 0x25) {
switchD_02221daa_caseD_15:
      if (0x21 < uVar2) {
        return 0xffffffff;
      }
    }
    if (bVar1 < 0x22) {
      if (bVar1 < 0x21) {
        if (bVar1 < 0x16) {
          switch(bVar1) {
          case 0x10:
            goto switchD_02221e0e_caseD_10;
          case 0x11:
            goto switchD_02221e0e_caseD_11;
          case 0x12:
            goto switchD_02221e0e_caseD_12;
          case 0x13:
            goto switchD_02221e0e_caseD_13;
          default:
            goto switchD_02221e0e_caseD_14;
          case 0x15:
            goto switchD_02221e0e_caseD_15;
          }
        }
        if (bVar1 != 0x20) {
switchD_02221e0e_caseD_14:
          return 0xffffffff;
        }
switchD_02221e0e_caseD_10:
        ov13_02222968((ushort *)(param_2 + 0x30),(ushort *)(pbVar3 + 6),uVar2);
        *(uint *)(param_2 + 4) = uVar2;
      }
      else {
switchD_02221e0e_caseD_11:
        ov13_02222968((ushort *)(param_2 + 0x70),(ushort *)(pbVar3 + 6),uVar2);
        *(uint *)(param_2 + 4) = uVar2;
      }
    }
    else if (bVar1 < 0x24) {
      if (bVar1 < 0x23) {
        if (bVar1 != 0x22) {
          return 0xffffffff;
        }
switchD_02221e0e_caseD_12:
        ov13_02222968((ushort *)(param_2 + 0xb0),(ushort *)(pbVar3 + 6),uVar2);
        *(uint *)(param_2 + 4) = uVar2;
      }
      else {
switchD_02221e0e_caseD_13:
        ov13_02222968((ushort *)(param_2 + 0xf0),(ushort *)(pbVar3 + 6),uVar2);
        *(uint *)(param_2 + 4) = uVar2;
      }
    }
    else {
      if (bVar1 != 0x25) {
        return 0xffffffff;
      }
switchD_02221e0e_caseD_15:
      if ((uVar2 != 0) && (pbVar3[uVar2 + 5] != 0)) {
        return 0xffffffff;
      }
      ov13_02222968((ushort *)(param_2 + 8),(ushort *)(pbVar3 + 6),uVar2);
    }
    if (*(ushort *)(pbVar3 + 4) == 0) {
      return 0;
    }
    uVar2 = ov13_02222A84((uint)*(ushort *)(pbVar3 + 4));
    pbVar3 = (byte *)(param_1 + 6) + uVar2;
  } while( true );
}

