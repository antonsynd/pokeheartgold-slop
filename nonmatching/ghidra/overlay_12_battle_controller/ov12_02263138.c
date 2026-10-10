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
undefined4 ov12_02262240(int, int, int, void *, unsigned char, ...);
undefined4 BattleSystem_GetBattleType(void *);
undefined4 MaskOfFlagNo(int);
undefined4 BattleBuffer_Clear(void *, int);

void ov12_02263138(undefined *param_1,undefined *param_2,int param_3)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  undefined *puVar4;
  byte *pbVar5;
  byte *pbVar6;
  uint *puVar7;
  int iVar8;
  byte local_38 [32];
  byte local_18 [4];

  BattleBuffer_Clear(param_2,param_3);
  pbVar5 = local_38;
  local_38[0] = 0x11;
  iVar8 = 0;
  puVar7 = (uint *)(param_2 + 0x2dcc);
  puVar4 = param_2;
  pbVar6 = pbVar5;
  do {
    pbVar6[4] = param_2[iVar8 + 0x219c];
    iVar2 = 0;
    do {
      iVar3 = iVar2 + 1;
      pbVar5[iVar2 + 8] = puVar4[iVar2 + 0x312c];
      iVar2 = iVar3;
    } while (iVar3 < 6);
    puVar4 = puVar4 + 6;
    pbVar6[0x20] = (byte)((*puVar7 & 0x3fffff) >> 0x13);
    iVar8 = iVar8 + 1;
    pbVar6 = pbVar6 + 1;
    pbVar5 = pbVar5 + 6;
    puVar7 = puVar7 + 0x30;
  } while (iVar8 < 4);
  uVar1 = BattleSystem_GetBattleType(param_1);
  if (uVar1 == 0x4a) {
    uVar1 = MaskOfFlagNo(1);
    if (((uVar1 & (byte)param_2[0x3108]) == 0) &&
       (uVar1 = MaskOfFlagNo(3), (uVar1 & (byte)param_2[0x3108]) == 0)) {
      local_38[1] = 1;
      local_38[2] = 0;
      local_38[3] = 0;
    }
    else {
      uVar1 = MaskOfFlagNo(1);
      if ((uVar1 & (byte)param_2[0x3108]) == 0) {
        local_38[1] = 0;
        if ((*(uint *)(param_2 + 0x2e80) & 0x200400c0) == 0) {
          local_38[2] = 0;
          if ((*(uint *)(param_2 + 0x2e70) & 0x1000000) == 0) {
            local_38[3] = 0;
          }
          else {
            local_38[3] = 1;
          }
        }
        else {
          local_38[2] = 1;
          local_38[3] = 0;
        }
      }
      else {
        local_38[1] = 0;
        if ((*(uint *)(param_2 + 0x3000) & 0x200400c0) == 0) {
          local_38[2] = 0;
          if ((*(uint *)(param_2 + 0x2ff0) & 0x1000000) == 0) {
            local_38[3] = 0;
          }
          else {
            local_38[3] = 1;
          }
        }
        else {
          local_38[2] = 1;
          local_38[3] = 0;
        }
      }
    }
  }
  else {
    uVar1 = BattleSystem_GetBattleType(param_1);
    if (uVar1 == 0) {
      local_38[1] = 0;
      if ((*(uint *)(param_2 + 0x2e80) & 0x200400c0) == 0) {
        local_38[2] = 0;
        if ((*(uint *)(param_2 + 0x2e70) & 0x1000000) == 0) {
          local_38[3] = 0;
        }
        else {
          local_38[3] = 1;
        }
      }
      else {
        local_38[2] = 1;
        local_38[3] = 0;
      }
    }
    else {
      local_38[1] = 0;
      local_38[2] = 0;
      local_38[3] = 0;
    }
  }
  ov12_02262240(param_1,1,param_3,local_38,0x24);
  return;
}

