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
undefined4 ov12_0223B870();
undefined4 ov12_022581D4();
undefined4 sub_020164C4();
undefined4 PaletteData_FreeBuffers();
undefined4 BattleSystem_TryChangeForm();
undefined4 Pokedex_Copy();
undefined4 Save_Bag_Copy();
undefined4 PaletteData_Free();
undefined4 Heap_Free();
undefined4 OverlayManager_GetData();
undefined4 PlayerProfile_Copy();
undefined4 OverlayManager_GetArgs();
undefined4 sub_020302A4();
undefined4 DestroyMsgData();
undefined4 Party_GetMonByIndex();
undefined4 sub_0200FBF4();
undefined4 Party_Copy();
undefined4 ov12_02237ED0();
undefined4 MessagePrinter_Delete();
undefined4 ov12_022396E8();
undefined4 sub_02014F84();
undefined4 sub_02016F2C();
undefined4 ov12_02258E7C();
undefined4 WindowArray_Delete();
undefined4 func_0x0201fd38() __asm__("sub_0201FD38");
undefined4 ov12_02237B6C();
undefined4 SysTask_Destroy();
undefined4 MessageFormat_Delete();
undefined4 TextFlags_SetCanABSpeedUpPrint();
undefined4 sub_02021238();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 func_0x02006154() __asm__("sub_02006154");
undefined4 BattleContext_Delete();
undefined4 func_0x02002b50() __asm__("sub_02002B50");
undefined4 BattleSystem_GetCriticalHpMusicFlag();
undefined4 func_0x0221bfe0() __asm__("sub_0221BFE0");
undefined4 PokepicManager_Delete();
undefined4 BattleSystem_IsRecordingPaused();
undefined4 ov12_0226BEF0();
undefined4 func_0x0202067c() __asm__("sub_0202067C");
undefined4 Sound_SetMasterVolume();
undefined4 sub_02039998();
undefined4 func_0x02006f7c() __asm__("sub_02006F7C");

void ov12_0223843C(undefined4 param_1)

{
  undefined4 *puVar1;
  uint *puVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 *puVar7;
  uint *puVar8;
  int iStack_18;

  puVar1 = (undefined4 *)OverlayManager_GetData();
  puVar2 = (uint *)OverlayManager_GetArgs(param_1);
  puVar2[0x67] = puVar1[0x913];
  puVar2[99] = puVar1[0x903];
  if ((puVar1[0x903] & 0x10) == 0) {
    sub_020302A4();
  }
  if (*(char *)((int)puVar1 + 0x2445) != '\0') {
    ov12_02237ED0(puVar1,0);
  }
  if ((*puVar2 & 0xaa4) == 0) {
    if ((byte)(*(char *)(puVar1 + 0x908) - 2U) < 2) {
      uVar6 = 0x7fff;
    }
    else {
      uVar6 = 0;
    }
  }
  else {
    uVar6 = 0;
  }
  sub_0200FBF4(0,uVar6);
  sub_0200FBF4(1,uVar6);
  BattleSystem_TryChangeForm(puVar1);
  if (*(char *)(puVar1 + 0x908) != '\x04') {
    uVar6 = Party_GetMonByIndex(puVar1[0x1b],0);
    ov12_0223B870(puVar1,uVar6);
  }
  iStack_18 = 0;
  puVar7 = puVar1;
  puVar8 = puVar2;
  do {
    Party_Copy(puVar7[0x1a],puVar8[1]);
    Heap_Free(puVar7[0x1a]);
    PlayerProfile_Copy(puVar7[0x12],puVar8[0x3e]);
    Heap_Free(puVar7[0x12]);
    puVar8 = puVar8 + 1;
    iStack_18 = iStack_18 + 1;
    puVar7 = puVar7 + 1;
  } while (iStack_18 < 4);
  sub_020164C4(puVar1[0x6c]);
  Save_Bag_Copy(puVar1[0x16],puVar2[0x42]);
  Heap_Free(puVar1[0x16]);
  Pokedex_Copy(puVar1[0x18],puVar2[0x44]);
  Heap_Free(puVar1[0x18]);
  puVar2[0x45] = puVar1[0x19];
  puVar2[0x43] = puVar1[0x17];
  puVar2[0x6e] = puVar1[0x70];
  puVar2[0x4a] = puVar1[0x26];
  puVar2[0x4d] = puVar1[0x27];
  puVar2[100] = puVar1[0x905];
  puVar2[5] = *(byte *)(puVar1 + 0x908) & 0x3f;
  puVar2[0x5c] = puVar1[0x90f];
  uVar3 = ov12_022581D4(puVar1,puVar1[0xc],4,0);
  puVar2[0x5e] = uVar3;
  iVar4 = ov12_022581D4(puVar1,puVar1[0xc],3,0);
  puVar2[0x4e] = puVar2[0x4e] + iVar4;
  iVar4 = ov12_022581D4(puVar1,puVar1[0xc],6,0);
  iVar5 = ov12_022581D4(puVar1,puVar1[0xc],6,2);
  puVar2[0x4f] = puVar2[0x4f] + iVar4 + iVar5;
  iVar4 = ov12_022581D4(puVar1,puVar1[0xc],7,0);
  iVar5 = ov12_022581D4(puVar1,puVar1[0xc],7,2);
  puVar2[0x50] = puVar2[0x50] + iVar4 + iVar5;
  uVar3 = ov12_022581D4(puVar1,puVar1[0xc],3,0);
  puVar2[0x6d] = uVar3;
  iVar4 = 0;
  puVar2[0x71] = puVar1[0x91e] & 1;
  puVar7 = puVar1;
  do {
    Heap_Free(puVar7[0x74]);
    iVar4 = iVar4 + 1;
    puVar7 = puVar7 + 4;
  } while (iVar4 < 4);
  Heap_Free(puVar1[6]);
  PaletteData_FreeBuffers(puVar1[10],0);
  PaletteData_FreeBuffers(puVar1[10],1);
  PaletteData_FreeBuffers(puVar1[10],2);
  PaletteData_FreeBuffers(puVar1[10],3);
  PaletteData_Free(puVar1[10]);
  DestroyMsgData(puVar1[3]);
  DestroyMsgData(puVar1[4]);
  MessageFormat_Delete(puVar1[5]);
  sub_02016F2C(puVar1[0x72]);
  sub_02014F84();
  func_0x0221bfe0(puVar1[0x23]);
  BattleContext_Delete(puVar1[0xc]);
  iVar4 = 0;
  puVar7 = puVar1;
  if (0 < (int)puVar1[0x11]) {
    do {
      ov12_02258E7C(puVar1,puVar7[0xd],*(undefined1 *)((int)puVar1 + 0x23fd));
      iVar4 = iVar4 + 1;
      puVar7 = puVar7 + 1;
    } while (iVar4 < (int)puVar1[0x11]);
  }
  PokepicManager_Delete(puVar1[0x22]);
  if (*(char *)((int)puVar1 + 0x23fd) != '\x02') {
    ov12_02237B6C(puVar1);
  }
  TextFlags_SetCanABSpeedUpPrint(0);
  func_0x02002b50(0);
  TextFlags_SetCanTouchSpeedUpPrint(0);
  WindowArray_Delete(puVar1[2],3);
  Heap_Free(puVar1[1]);
  Heap_Free(puVar1[0x88]);
  Heap_Free(puVar1[0x89]);
  MessagePrinter_Delete(puVar1[0x6a]);
  SysTask_Destroy(puVar1[7]);
  SysTask_Destroy(puVar1[8]);
  sub_02021238();
  ov12_022396E8(*puVar1);
  func_0x0201fd38(puVar1[0x90d]);
  iVar4 = BattleSystem_GetCriticalHpMusicFlag(puVar1);
  if (iVar4 != 0) {
    func_0x02006154(0x704,0);
  }
  func_0x0202067c(puVar1[0x73]);
  iVar4 = BattleSystem_IsRecordingPaused(puVar1);
  if (iVar4 != 0) {
    Sound_SetMasterVolume(0x7f);
  }
  if (puVar1[0x920] != 0) {
    ov12_0226BEF0();
  }
  Heap_Free(puVar1);
  func_0x02006f7c(6);
  func_0x02006f7c(7);
  iVar4 = sub_02039998();
  if (iVar4 == 0) {
    func_0x02006f7c(0x12);
  }
  return;
}

