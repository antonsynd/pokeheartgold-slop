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
undefined4 GF_CosDeg(unsigned short);
undefined4 ManagedSprite_SetPositionFxXYWithSubscreenOffset(void *, int, int, int);
undefined4 SysTask_Destroy(void *);
undefined4 ManagedSprite_GetPositionFxXYWithSubscreenOffset(void *, void *, void *, int);
undefined4 ManagedSprite_SetDrawFlag(void *, int);
undefined4 ov92_02261E80();
undefined4 ov92_02261F60();
undefined4 IsPaletteFadeFinished(void);
undefined4 ov92_02262018();
undefined4 ov92_02261E88();
undefined4 GF_SinDeg(unsigned short);
undefined4 ov92_022620D0();

void ov92_022628F0(int *param_1,undefined4 *param_2)

{
  short sVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 *puVar5;
  int local_30;
  undefined auStack_2c [4];
  undefined auStack_28 [4];
  int local_24;
  int local_20;
  int local_1c;
  int local_18;

  local_24 = 1;
  local_20 = 1;
  local_1c = 1;
  local_18 = 1;
  iVar2 = IsPaletteFadeFinished();
  if ((iVar2 == 0) || (*(char *)(param_2[0x5f] + 0x34) == '\x01')) {
    SysTask_Destroy(param_1);
    return;
  }
  switch(param_2[0x5a]) {
  case 0:
    break;
  case 1:
    goto switchD_0226293a_caseD_1;
  case 2:
    goto switchD_0226293a_caseD_2;
  case 3:
    goto switchD_0226293a_caseD_3;
  case 4:
    goto switchD_0226293a_caseD_4;
  case 5:
    goto switchD_0226293a_caseD_5;
  case 6:
    goto switchD_0226293a_caseD_6;
  default:
    SysTask_Destroy(param_1);
    return;
  }
  local_30 = 0;
  puVar5 = param_2;
  if (0 < (int)param_2[0x50]) {
    do {
      *(undefined2 *)(puVar5 + 2) = 0;
      *(undefined2 *)(puVar5 + 5) = 0x80;
      *(undefined2 *)((int)puVar5 + 0x16) = 0xa0;
      puVar5[6] = 0x40;
      puVar5[7] = 0x18;
      ManagedSprite_SetDrawFlag((undefined *)*puVar5,1);
      *(undefined2 *)(puVar5 + 0x2a) = 0;
      *(undefined2 *)(puVar5 + 0x2d) = 0x80;
      *(undefined2 *)((int)puVar5 + 0xb6) = 0xa0;
      puVar5[0x2e] = 0x40;
      puVar5[0x2f] = 0x18;
      ManagedSprite_SetDrawFlag((undefined *)puVar5[0x28],1);
      ManagedSprite_GetPositionFxXYWithSubscreenOffset
                ((undefined *)*puVar5,auStack_28,auStack_2c,0x100000);
      iVar2 = GF_SinDeg(*(ushort *)(puVar5 + 2));
      sVar1 = *(short *)(puVar5 + 5);
      iVar4 = puVar5[6];
      iVar3 = GF_CosDeg(*(ushort *)(puVar5 + 2));
      ManagedSprite_SetPositionFxXYWithSubscreenOffset
                ((undefined *)*puVar5,sVar1 * 0x1000 + iVar2 * iVar4,
                 *(short *)((int)puVar5 + 0x16) * 0x1000 + iVar3 * puVar5[7],0x100000);
      ManagedSprite_GetPositionFxXYWithSubscreenOffset
                ((undefined *)puVar5[0x28],auStack_28,auStack_2c,0x100000);
      iVar2 = GF_SinDeg(*(ushort *)(puVar5 + 0x2a));
      sVar1 = *(short *)(puVar5 + 0x2d);
      iVar4 = puVar5[0x2e];
      iVar3 = GF_CosDeg(*(ushort *)(puVar5 + 0x2a));
      ManagedSprite_SetPositionFxXYWithSubscreenOffset
                ((undefined *)puVar5[0x28],sVar1 * 0x1000 + iVar2 * iVar4,
                 *(short *)((int)puVar5 + 0xb6) * 0x1000 - puVar5[0x2f] * iVar3,0x100000);
      local_30 = local_30 + 1;
      puVar5 = puVar5 + 0x14;
    } while (local_30 < (int)param_2[0x50]);
  }
  ov92_02261E80((int)(param_2 + 0x28));
  ov92_02261E80((int)(param_2 + 0x3c));
  ov92_02261E80((int)param_2);
  ov92_02261E80((int)(param_2 + 0x14));
  ManagedSprite_SetDrawFlag((undefined *)param_2[0x14],0);
  param_2[0x5a] = param_2[0x5a] + 1;
switchD_0226293a_caseD_1:
  local_24 = ov92_02261E88(param_2 + 0x28,param_2[0x51],0,3);
  local_20 = ov92_02261F60(param_2 + 0x3c,param_2[0x51],0,2);
  local_1c = ov92_02262018(param_2,param_2[0x52],1,3);
  local_18 = 1;
  if (((local_24 != 0) && (local_20 != 0)) && (local_1c != 0)) {
    ov92_02261E80((int)(param_2 + 0x28));
    ov92_02261E80((int)(param_2 + 0x3c));
    ov92_02261E80((int)param_2);
    ov92_02261E80((int)(param_2 + 0x14));
    ManagedSprite_SetDrawFlag((undefined *)param_2[0x14],1);
    param_2[0x5a] = param_2[0x5a] + 1;
switchD_0226293a_caseD_2:
    local_24 = 1;
    local_20 = ov92_022620D0(param_2 + 0x3c,param_2[0x51],0,1);
    local_1c = ov92_02261E88(param_2,param_2[0x52],1,2);
    local_18 = ov92_02262018(param_2 + 0x14,param_2[0x52],1,3);
    if (((local_24 != 0) && (local_20 != 0)) && ((local_1c != 0 && (local_18 != 0)))) {
      ov92_02261E80((int)(param_2 + 0x28));
      ov92_02261E80((int)(param_2 + 0x3c));
      ov92_02261E80((int)param_2);
      ov92_02261E80((int)(param_2 + 0x14));
      param_2[0x5a] = param_2[0x5a] + 1;
switchD_0226293a_caseD_3:
      local_20 = ov92_022620D0(param_2 + 0x3c,param_2[0x51],1,1);
      if (local_20 != 0) {
        ov92_02261E80((int)(param_2 + 0x3c));
        param_2[0x5a] = param_2[0x5a] + 1;
switchD_0226293a_caseD_4:
        local_24 = ov92_02261F60(param_2 + 0x28,param_2[0x51],0,2);
        local_20 = ov92_02261E88(param_2 + 0x3c,param_2[0x51],0,3);
        local_1c = 1;
        local_18 = ov92_02261E88(param_2 + 0x14,param_2[0x52],1,2);
        if (((local_24 != 0) && (local_20 != 0)) && ((local_1c != 0 && (local_18 != 0)))) {
          ov92_02261E80((int)(param_2 + 0x28));
          ov92_02261E80((int)(param_2 + 0x3c));
          ov92_02261E80((int)param_2);
          ov92_02261E80((int)(param_2 + 0x14));
          param_2[0x5a] = param_2[0x5a] + 1;
switchD_0226293a_caseD_5:
          local_24 = ov92_022620D0(param_2 + 0x28,param_2[0x51],0,1);
          local_20 = 1;
          local_1c = 1;
          local_18 = ov92_02261E88(param_2 + 0x14,param_2[0x52],1,2);
          if ((((local_24 != 0) && (local_20 != 0)) && (local_1c != 0)) && (local_18 != 0)) {
            ov92_02261E80((int)(param_2 + 0x28));
            ov92_02261E80((int)(param_2 + 0x3c));
            ov92_02261E80((int)param_2);
            ov92_02261E80((int)(param_2 + 0x14));
            param_2[0x5a] = param_2[0x5a] + 1;
switchD_0226293a_caseD_6:
            local_24 = ov92_022620D0(param_2 + 0x28,param_2[0x51],1,1);
            if (local_24 != 0) {
              ov92_02261E80((int)(param_2 + 0x28));
              if (param_2[0x53] == 1) {
                param_2[0x53] = 0;
                param_2[0x5a] = param_2[0x5a] + 1;
                return;
              }
              param_2[0x53] = param_2[0x53] + 1;
              param_2[0x5a] = 1;
              return;
            }
          }
        }
      }
    }
  }
  return;
}

