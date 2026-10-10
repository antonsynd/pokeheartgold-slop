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
undefined4 ov12_0223C1C4(undefined4, undefined4);
undefined4 Heap_Alloc(undefined4, undefined4);
undefined4 BattleSystem_GetMaxBattlers(undefined4);
undefined4 SysTask_CreateOnMainQueue(undefined4, undefined4, undefined4);
undefined4 BattleSystem_GetBattleType(undefined4);

void ov12_0225A674(undefined4 param_1,int param_2,int param_3)

{
  undefined2 *puVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined1 auStack_1c [8];

  puVar2 = (undefined4 *)Heap_Alloc(5,0x34);
  *(undefined1 *)((int)puVar2 + 0xf) = 0;
  *puVar2 = param_1;
  *(undefined1 *)(puVar2 + 3) = *(undefined1 *)(param_2 + 0x94);
  *(undefined1 *)((int)puVar2 + 0xd) = *(undefined1 *)(param_2 + 0x194);
  *(undefined1 *)((int)puVar2 + 0xe) = *(undefined1 *)(param_2 + 0x195);
  *(undefined2 *)(puVar2 + 0xc) = *(undefined2 *)(param_3 + 2);
  puVar2[1] = param_2 + 0x28;
  *(undefined1 *)((int)puVar2 + 0x32) = *(undefined1 *)(param_3 + 1);
  ov12_0223C1C4(param_1,auStack_1c);
  iVar3 = BattleSystem_GetMaxBattlers(param_1);
  BattleSystem_GetBattleType(param_1);
  iVar4 = 0;
  puVar5 = puVar2;
  if (0 < iVar3) {
    do {
      iVar4 = iVar4 + 1;
      *(undefined2 *)(puVar5 + 4) = *(undefined2 *)(param_3 + 4);
      *(undefined2 *)((int)puVar5 + 0x12) = *(undefined2 *)(param_3 + 6);
      *(undefined2 *)(puVar5 + 5) = *(undefined2 *)(param_3 + 8);
      puVar1 = (undefined2 *)(param_3 + 10);
      param_3 = param_3 + 8;
      *(undefined2 *)((int)puVar5 + 0x16) = *puVar1;
      puVar5 = puVar5 + 2;
    } while (iVar4 < iVar3);
  }
  SysTask_CreateOnMainQueue(*(undefined4 *)(param_2 + 8),puVar2,0);
  return;
}

