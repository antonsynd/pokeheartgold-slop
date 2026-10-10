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
undefined4 ov12_0223C140(undefined4, undefined4);
undefined4 BattleSystem_GetTerrainId(void);
undefined4 CheckAbilityActive(undefined4, undefined4, undefined4, undefined4, undefined4);

void ov12_022643C8(undefined4 param_1,int param_2,undefined1 *param_3,undefined4 param_4,
                  undefined4 param_5,int param_6,int param_7,ushort param_8)

{
  undefined4 uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  undefined1 *puVar5;
  int iVar6;
  undefined1 *puVar7;
  byte *pbVar8;
  byte *pbVar9;
  
  *param_3 = 0x16;
  *(ushort *)(param_3 + 2) = param_8;
  *(short *)(param_3 + 0x14) = (short)param_6;
  *(short *)(param_3 + 0x16) = (short)param_7;
  *(undefined4 *)(param_3 + 0x4c) = param_4;
  *(undefined4 *)(param_3 + 0x50) = param_5;
  uVar1 = BattleSystem_GetTerrainId();
  *(undefined4 *)(param_3 + 0x54) = uVar1;
  *(ushort *)(param_3 + 0xe) = *(ushort *)(param_3 + 0xe) & 0xfffb;
  *(ushort *)(param_3 + 0xe) = *(ushort *)(param_3 + 0xe) & 0xfff7;
  if (param_2 != 0) {
    *(undefined4 *)(param_3 + 4) = *(undefined4 *)(param_2 + 0x2144);
    uVar2 = *(uint *)(param_2 + 0x2154);
    if (uVar2 == 0) {
      uVar2 = (uint)*(byte *)(param_2 + (uint)param_8 * 0x10 + 0x3e1);
    }
    *(short *)(param_3 + 8) = (short)uVar2;
    *(ushort *)(param_3 + 0xc) = (ushort)*(byte *)(param_2 + param_6 * 0xc0 + 0x2d75);
    iVar3 = CheckAbilityActive(param_1,param_2,8,0,0xd);
    if ((iVar3 == 0) && (iVar3 = CheckAbilityActive(param_1,param_2,8,0,0x4c), iVar3 == 0)) {
      *(undefined4 *)(param_3 + 0x10) = *(undefined4 *)(param_2 + 0x180);
    }
    else {
      *(undefined4 *)(param_3 + 0x10) = 0;
    }
    *(short *)(param_3 + 10) = (short)*(undefined4 *)(param_2 + 0x2164);
    *(ushort *)(param_3 + 0xe) =
         *(ushort *)(param_3 + 0xe) & 0xfffe |
         (ushort)((*(uint *)(param_2 + 0x2db0 + param_6 * 0xc0) & 0x1000000) != 0);
    *(ushort *)(param_3 + 0xe) =
         *(ushort *)(param_3 + 0xe) & 0xfffd |
         (ushort)((*(uint *)(param_2 + 0x2db0 + param_6 * 0xc0) & 0x200000) != 0) << 1;
    pbVar8 = (byte *)(param_2 + 0x2d66);
    iVar4 = 0;
    pbVar9 = (byte *)(param_2 + 0x2dbe);
    iVar3 = param_2;
    puVar5 = param_3;
    puVar7 = param_3;
    do {
      *(undefined2 *)(puVar7 + 0x18) = *(undefined2 *)(iVar3 + 0x2d40);
      param_3[iVar4 + 0x24] = (char)((*pbVar8 & 0x3f) >> 5);
      param_3[iVar4 + 0x28] = *pbVar8 & 0x1f;
      *(undefined4 *)(puVar5 + 0x3c) = *(undefined4 *)(iVar3 + 0x2dc0);
      if ((*(uint *)(iVar3 + 0x2db0) & 0x200000) == 0) {
        param_3[iVar4 + 0x20] = *pbVar9 & 0xf;
        iVar6 = 0x2da8;
      }
      else {
        param_3[iVar4 + 0x20] = (char)*(undefined2 *)(iVar3 + 0x2dfa);
        iVar6 = 0x2de4;
      }
      iVar4 = iVar4 + 1;
      *(undefined4 *)(puVar5 + 0x2c) = *(undefined4 *)(iVar3 + iVar6);
      puVar7 = puVar7 + 2;
      iVar3 = iVar3 + 0xc0;
      pbVar8 = pbVar8 + 0xc0;
      puVar5 = puVar5 + 4;
      pbVar9 = pbVar9 + 0xc0;
    } while (iVar4 < 4);
    if (((param_6 != 0xff) && (uVar2 = ov12_0223C140(param_1,param_6), uVar2 != 0xff)) &&
       (uVar2 == *(byte *)(param_2 + param_6 + 0x219c))) {
      *(ushort *)(param_3 + 0xe) = *(ushort *)(param_3 + 0xe) | 4;
    }
    if (((param_7 != 0xff) && (uVar2 = ov12_0223C140(param_1,param_7), uVar2 != 0xff)) &&
       (uVar2 == *(byte *)(param_2 + param_7 + 0x219c))) {
      *(ushort *)(param_3 + 0xe) = *(ushort *)(param_3 + 0xe) | 8;
    }
  }
  return;
}

