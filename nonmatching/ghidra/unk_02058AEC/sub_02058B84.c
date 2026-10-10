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
undefined4 FieldSystem_LaunchApplication();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 Heap_Alloc();
undefined4 SaveArray_Party_Get();
undefined4 Save_PlayerData_GetOptionsAddr();
undefined4 LinkBattleRuleset_GetRuleValue();
undefined4 Save_Bag_Get();
extern undefined gOverlayTemplate_PartyMenu;

void sub_02058B84(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  byte bVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  byte bVar7;

  puVar3 = (undefined4 *)Heap_Alloc(param_2,0x44,param_3,param_4,param_4);
  func_0x020d4994(puVar3,0,0x44);
  uVar4 = Save_PlayerData_GetOptionsAddr(*(undefined4 *)(*(int *)(param_1 + 0x24) + 0xc));
  puVar3[3] = uVar4;
  puVar3[5] = *(undefined4 *)(*(int *)(param_1 + 0x24) + 0xa4);
  uVar4 = SaveArray_Party_Get(*(undefined4 *)(*(int *)(param_1 + 0x24) + 0xc));
  *puVar3 = uVar4;
  uVar4 = Save_Bag_Get(*(undefined4 *)(*(int *)(param_1 + 0x24) + 0xc));
  puVar3[1] = uVar4;
  puVar3[8] = *(int *)(param_1 + 0x24) + 0x10c;
  *(undefined1 *)((int)puVar3 + 0x25) = 0;
  *(undefined1 *)(puVar3 + 9) = 2;
  iVar5 = *(int *)(*(int *)(param_1 + 0x24) + 0xa4);
  if (iVar5 == 0) {
    *(byte *)((int)puVar3 + 0x36) = *(byte *)((int)puVar3 + 0x36) & 0xf0 | 3;
    bVar7 = *(byte *)((int)puVar3 + 0x36) & 0xf;
    bVar2 = 0x30;
  }
  else {
    bVar2 = LinkBattleRuleset_GetRuleValue(iVar5,1);
    *(byte *)((int)puVar3 + 0x36) = *(byte *)((int)puVar3 + 0x36) & 0xf0 | bVar2 & 0xf;
    bVar2 = *(byte *)((int)puVar3 + 0x36) & 0xf;
    bVar7 = *(char *)((int)puVar3 + 0x36) << 4;
  }
  *(byte *)((int)puVar3 + 0x36) = bVar7 | bVar2;
  *(undefined1 *)((int)puVar3 + 0x37) = 100;
  *(undefined1 *)((int)puVar3 + 0x26) = *(undefined1 *)(param_1 + 0x3c);
  iVar5 = 0;
  do {
    iVar6 = param_1 + iVar5;
    iVar1 = iVar5 + 0x30;
    iVar5 = iVar5 + 1;
    *(undefined1 *)((int)puVar3 + iVar1) = *(undefined1 *)(iVar6 + 0x3d);
  } while (iVar5 < 6);
  FieldSystem_LaunchApplication(*(undefined4 *)(param_1 + 0x24),&gOverlayTemplate_PartyMenu,puVar3);
  *(undefined4 **)(param_1 + 4) = puVar3;
  return;
}

