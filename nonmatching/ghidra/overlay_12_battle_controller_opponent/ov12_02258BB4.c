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
undefined4 func_0x020f2998(undefined4, undefined4) __asm__("sub_020F2998");
undefined4 GetMonData(undefined4, undefined4, undefined4);
undefined4 CheckAbilityActive(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 GetItemVar(undefined4, undefined4, undefined4);

int ov12_02258BB4(undefined4 param_1,int param_2,undefined4 param_3,int param_4)

{
  undefined2 uVar1;
  undefined4 uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  uint uVar9;
  int unaff_r5;
  
  if (param_4 < 0x138) {
    if (0x136 < param_4) {
      iVar8 = CheckAbilityActive(param_1,param_2,8,0,0xd);
      if (iVar8 != 0) {
        return unaff_r5;
      }
      iVar8 = CheckAbilityActive(param_1,param_2,8,0,0x4c);
      if (iVar8 != 0) {
        return unaff_r5;
      }
      uVar9 = *(uint *)(param_2 + 0x180);
      if ((uVar9 & 0x80ff) == 0) {
        return unaff_r5;
      }
      if ((uVar9 & 3) != 0) {
        unaff_r5 = 0xb;
      }
      if ((uVar9 & 0xc) != 0) {
        unaff_r5 = 5;
      }
      if ((uVar9 & 0x30) != 0) {
        unaff_r5 = 10;
      }
      if ((uVar9 & 0xc0) == 0) {
        return unaff_r5;
      }
      return 0xf;
    }
    if (param_4 == 0xed) {
      uVar9 = GetMonData(param_3,0x4b,0);
      uVar3 = GetMonData(param_3,0x4a,0);
      uVar4 = GetMonData(param_3,0x49,0);
      uVar5 = GetMonData(param_3,0x48,0);
      uVar6 = GetMonData(param_3,0x46,0);
      uVar7 = GetMonData(param_3,0x47,0);
      iVar8 = func_0x020f2998(((uVar7 & 1) << 1 | uVar6 & 1 | (uVar5 & 1) << 2 | (uVar4 & 1) << 3 |
                               (uVar3 & 1) << 4 | (uVar9 & 1) << 5) * 0xf,0x3f);
      if (iVar8 + 1 < 9) {
        return iVar8 + 1;
      }
      return iVar8 + 2;
    }
  }
  else if (param_4 < 0x16c) {
    if (param_4 == 0x16b) {
      uVar1 = GetMonData(param_3,6,0);
      iVar8 = GetItemVar(param_2,uVar1,0xc);
      return iVar8;
    }
  }
  else if (param_4 == 0x1c1) {
    uVar1 = GetMonData(param_3,6,0);
    uVar2 = GetItemVar(param_2,uVar1,1);
    switch(uVar2) {
    case 0x7e:
      return 10;
    case 0x7f:
      return 0xb;
    case 0x80:
      return 0xd;
    case 0x81:
      return 0xc;
    case 0x82:
      return 0xf;
    case 0x83:
      return 1;
    case 0x84:
      return 3;
    case 0x85:
      return 4;
    case 0x86:
      return 2;
    case 0x87:
      return 0xe;
    case 0x88:
      return 6;
    case 0x89:
      return 5;
    case 0x8a:
      return 7;
    case 0x8b:
      return 0x10;
    case 0x8c:
      return 0x11;
    case 0x8d:
      return 8;
    default:
      return 0;
    }
  }
  return 0;
}

