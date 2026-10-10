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
undefined4 func_0x020d4858(undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_020D4858");
undefined4 BattleHpBar_Util_GetBarTypeFromBattlerSide(undefined4, undefined4);
undefined4 BattleSystem_GetBattleType(undefined4);
undefined4 ov12_0226498C(undefined4, undefined4, undefined4);
undefined4 SysTask_CreateOnMainQueue(undefined4, undefined4, undefined4);
undefined4 BattleHpBar_SetEnabled(undefined4);

void ov12_0225A414(undefined4 param_1,int param_2,undefined1 *param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar3 = param_2 + 0x28;
  func_0x020d4858(0,iVar3,1,param_4,param_4);
  *(undefined4 *)(param_2 + 0x34) = param_1;
  *(undefined1 *)(param_2 + 0x4c) = *(undefined1 *)(param_2 + 0x194);
  uVar2 = BattleSystem_GetBattleType(param_1);
  uVar1 = BattleHpBar_Util_GetBarTypeFromBattlerSide(*(undefined1 *)(param_2 + 0x195),uVar2);
  *(undefined1 *)(param_2 + 0x4d) = uVar1;
  *(undefined1 *)(param_2 + 0x74) = *param_3;
  *(int *)(param_2 + 0x50) = (int)*(short *)(param_3 + 2);
  *(uint *)(param_2 + 0x54) = (uint)*(ushort *)(param_3 + 4);
  *(undefined1 *)(param_2 + 0x70) = param_3[1];
  *(char *)(param_2 + 0x71) = (char)(((byte)param_3[7] & 0x7f) >> 5);
  *(undefined4 *)(param_2 + 0x58) = 0;
  *(undefined4 *)(param_2 + 0x60) = *(undefined4 *)(param_3 + 8);
  *(undefined4 *)(param_2 + 100) = *(undefined4 *)(param_3 + 0xc);
  *(undefined1 *)(param_2 + 0x4e) = param_3[6];
  *(byte *)(param_2 + 0x72) = param_3[7] & 0x1f;
  *(byte *)(param_2 + 0x73) = (byte)param_3[7] >> 7;
  *(undefined1 *)(param_2 + 0x75) = param_3[0x14];
  *(char *)(param_2 + 0x4f) = (char)*(undefined4 *)(param_3 + 0x10);
  BattleHpBar_SetEnabled(iVar3);
  ov12_0226498C(iVar3,*(undefined4 *)(param_2 + 0x50),0xffffffff);
  uVar2 = SysTask_CreateOnMainQueue(0x225da19,iVar3,1000);
  *(undefined4 *)(param_2 + 0x38) = uVar2;
  return;
}

